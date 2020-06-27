.class final Lokhttp3/Cache$CacheRequestImpl;
.super Ljava/lang/Object;
.source "Cache.java"

# interfaces
.implements Lokhttp3/internal/cache/CacheRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/Cache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CacheRequestImpl"
.end annotation


# instance fields
.field private body:Lokio/Sink;

.field private cacheOut:Lokio/Sink;

.field done:Z

.field private final editor:Lokhttp3/internal/cache/DiskLruCache$Editor;

.field final synthetic this$0:Lokhttp3/Cache;


# direct methods
.method public constructor <init>(Lokhttp3/Cache;Lokhttp3/internal/cache/DiskLruCache$Editor;)V
    .locals 11

    .prologue
    .line 435
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lokhttp3/Cache$CacheRequestImpl;->this$0:Lokhttp3/Cache;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 436
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lokhttp3/Cache$CacheRequestImpl;->editor:Lokhttp3/internal/cache/DiskLruCache$Editor;

    .line 437
    move-object v3, v0

    move-object v4, v2

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lokhttp3/internal/cache/DiskLruCache$Editor;->newSink(I)Lokio/Sink;

    move-result-object v4

    iput-object v4, v3, Lokhttp3/Cache$CacheRequestImpl;->cacheOut:Lokio/Sink;

    .line 438
    move-object v3, v0

    new-instance v4, Lokhttp3/Cache$CacheRequestImpl$1;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Lokhttp3/Cache$CacheRequestImpl;->cacheOut:Lokio/Sink;

    move-object v8, v1

    move-object v9, v2

    invoke-direct {v5, v6, v7, v8, v9}, Lokhttp3/Cache$CacheRequestImpl$1;-><init>(Lokhttp3/Cache$CacheRequestImpl;Lokio/Sink;Lokhttp3/Cache;Lokhttp3/internal/cache/DiskLruCache$Editor;)V

    iput-object v4, v3, Lokhttp3/Cache$CacheRequestImpl;->body:Lokio/Sink;

    .line 451
    return-void
.end method


# virtual methods
.method public abort()V
    .locals 7

    .prologue
    .line 454
    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lokhttp3/Cache$CacheRequestImpl;->this$0:Lokhttp3/Cache;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v1, v4

    monitor-enter v3

    .line 455
    move-object v3, v0

    :try_start_0
    iget-boolean v3, v3, Lokhttp3/Cache$CacheRequestImpl;->done:Z

    if-eqz v3, :cond_0

    .line 456
    move-object v3, v1

    monitor-exit v3

    .line 466
    :goto_0
    return-void

    .line 458
    :cond_0
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lokhttp3/Cache$CacheRequestImpl;->done:Z

    .line 459
    move-object v3, v0

    iget-object v3, v3, Lokhttp3/Cache$CacheRequestImpl;->this$0:Lokhttp3/Cache;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Lokhttp3/Cache;->writeAbortCount:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lokhttp3/Cache;->writeAbortCount:I

    .line 460
    move-object v3, v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 461
    move-object v3, v0

    iget-object v3, v3, Lokhttp3/Cache$CacheRequestImpl;->cacheOut:Lokio/Sink;

    invoke-static {v3}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 463
    move-object v3, v0

    :try_start_1
    iget-object v3, v3, Lokhttp3/Cache$CacheRequestImpl;->editor:Lokhttp3/internal/cache/DiskLruCache$Editor;

    invoke-virtual {v3}, Lokhttp3/internal/cache/DiskLruCache$Editor;->abort()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 466
    :goto_1
    goto :goto_0

    .line 460
    :catchall_0
    move-exception v3

    move-object v2, v3

    move-object v3, v1

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v3, v2

    throw v3

    .line 464
    :catch_0
    move-exception v3

    move-object v1, v3

    goto :goto_1
.end method

.method public body()Lokio/Sink;
    .locals 2

    .prologue
    .line 469
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/Cache$CacheRequestImpl;->body:Lokio/Sink;

    move-object v0, v1

    return-object v0
.end method
