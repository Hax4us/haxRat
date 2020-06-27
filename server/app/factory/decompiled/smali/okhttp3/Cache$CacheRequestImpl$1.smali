.class Lokhttp3/Cache$CacheRequestImpl$1;
.super Lokio/ForwardingSink;
.source "Cache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/Cache$CacheRequestImpl;-><init>(Lokhttp3/Cache;Lokhttp3/internal/cache/DiskLruCache$Editor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lokhttp3/Cache$CacheRequestImpl;

.field final synthetic val$editor:Lokhttp3/internal/cache/DiskLruCache$Editor;

.field final synthetic val$this$0:Lokhttp3/Cache;


# direct methods
.method constructor <init>(Lokhttp3/Cache$CacheRequestImpl;Lokio/Sink;Lokhttp3/Cache;Lokhttp3/internal/cache/DiskLruCache$Editor;)V
    .locals 7

    .prologue
    .line 438
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lokhttp3/Cache$CacheRequestImpl$1;->this$1:Lokhttp3/Cache$CacheRequestImpl;

    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Lokhttp3/Cache$CacheRequestImpl$1;->val$this$0:Lokhttp3/Cache;

    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Lokhttp3/Cache$CacheRequestImpl$1;->val$editor:Lokhttp3/internal/cache/DiskLruCache$Editor;

    move-object v5, v0

    move-object v6, v2

    invoke-direct {v5, v6}, Lokio/ForwardingSink;-><init>(Lokio/Sink;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 440
    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lokhttp3/Cache$CacheRequestImpl$1;->this$1:Lokhttp3/Cache$CacheRequestImpl;

    iget-object v3, v3, Lokhttp3/Cache$CacheRequestImpl;->this$0:Lokhttp3/Cache;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v1, v4

    monitor-enter v3

    .line 441
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Lokhttp3/Cache$CacheRequestImpl$1;->this$1:Lokhttp3/Cache$CacheRequestImpl;

    iget-boolean v3, v3, Lokhttp3/Cache$CacheRequestImpl;->done:Z

    if-eqz v3, :cond_0

    .line 442
    move-object v3, v1

    monitor-exit v3

    .line 449
    :goto_0
    return-void

    .line 444
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lokhttp3/Cache$CacheRequestImpl$1;->this$1:Lokhttp3/Cache$CacheRequestImpl;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lokhttp3/Cache$CacheRequestImpl;->done:Z

    .line 445
    move-object v3, v0

    iget-object v3, v3, Lokhttp3/Cache$CacheRequestImpl$1;->this$1:Lokhttp3/Cache$CacheRequestImpl;

    iget-object v3, v3, Lokhttp3/Cache$CacheRequestImpl;->this$0:Lokhttp3/Cache;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Lokhttp3/Cache;->writeSuccessCount:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lokhttp3/Cache;->writeSuccessCount:I

    .line 446
    move-object v3, v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 447
    move-object v3, v0

    invoke-super {v3}, Lokio/ForwardingSink;->close()V

    .line 448
    move-object v3, v0

    iget-object v3, v3, Lokhttp3/Cache$CacheRequestImpl$1;->val$editor:Lokhttp3/internal/cache/DiskLruCache$Editor;

    invoke-virtual {v3}, Lokhttp3/internal/cache/DiskLruCache$Editor;->commit()V

    .line 449
    goto :goto_0

    .line 446
    :catchall_0
    move-exception v3

    move-object v2, v3

    move-object v3, v1

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v3, v2

    throw v3
.end method
