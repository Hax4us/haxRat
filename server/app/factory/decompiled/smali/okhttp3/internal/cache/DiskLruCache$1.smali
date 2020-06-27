.class Lokhttp3/internal/cache/DiskLruCache$1;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/cache/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lokhttp3/internal/cache/DiskLruCache;


# direct methods
.method constructor <init>(Lokhttp3/internal/cache/DiskLruCache;)V
    .locals 4

    .prologue
    .line 168
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lokhttp3/internal/cache/DiskLruCache$1;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 170
    move-object v0, p0

    move-object v4, v0

    iget-object v4, v4, Lokhttp3/internal/cache/DiskLruCache$1;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    move-object v1, v5

    monitor-enter v4

    .line 171
    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Lokhttp3/internal/cache/DiskLruCache$1;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    iget-boolean v4, v4, Lokhttp3/internal/cache/DiskLruCache;->initialized:Z

    if-nez v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    move-object v5, v0

    iget-object v5, v5, Lokhttp3/internal/cache/DiskLruCache$1;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    iget-boolean v5, v5, Lokhttp3/internal/cache/DiskLruCache;->closed:Z

    or-int/2addr v4, v5

    if-eqz v4, :cond_1

    .line 172
    move-object v4, v1

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    :goto_1
    return-void

    .line 171
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 176
    :cond_1
    move-object v4, v0

    :try_start_1
    iget-object v4, v4, Lokhttp3/internal/cache/DiskLruCache$1;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v4}, Lokhttp3/internal/cache/DiskLruCache;->trimToSize()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 182
    :goto_2
    move-object v4, v0

    :try_start_2
    iget-object v4, v4, Lokhttp3/internal/cache/DiskLruCache$1;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v4}, Lokhttp3/internal/cache/DiskLruCache;->journalRebuildRequired()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 183
    move-object v4, v0

    iget-object v4, v4, Lokhttp3/internal/cache/DiskLruCache$1;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v4}, Lokhttp3/internal/cache/DiskLruCache;->rebuildJournal()V

    .line 184
    move-object v4, v0

    iget-object v4, v4, Lokhttp3/internal/cache/DiskLruCache$1;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    const/4 v5, 0x0

    iput v5, v4, Lokhttp3/internal/cache/DiskLruCache;->redundantOpCount:I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 190
    :cond_2
    :goto_3
    move-object v4, v1

    :try_start_3
    monitor-exit v4

    .line 191
    goto :goto_1

    .line 177
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 178
    move-object v4, v0

    iget-object v4, v4, Lokhttp3/internal/cache/DiskLruCache$1;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lokhttp3/internal/cache/DiskLruCache;->mostRecentTrimFailed:Z

    goto :goto_2

    .line 190
    :catchall_0
    move-exception v4

    move-object v3, v4

    move-object v4, v1

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v4, v3

    throw v4

    .line 186
    :catch_1
    move-exception v4

    move-object v2, v4

    .line 187
    move-object v4, v0

    :try_start_4
    iget-object v4, v4, Lokhttp3/internal/cache/DiskLruCache$1;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lokhttp3/internal/cache/DiskLruCache;->mostRecentRebuildFailed:Z

    .line 188
    move-object v4, v0

    iget-object v4, v4, Lokhttp3/internal/cache/DiskLruCache$1;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    invoke-static {}, Lokio/Okio;->blackhole()Lokio/Sink;

    move-result-object v5

    invoke-static {v5}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v5

    iput-object v5, v4, Lokhttp3/internal/cache/DiskLruCache;->journalWriter:Lokio/BufferedSink;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3
.end method
