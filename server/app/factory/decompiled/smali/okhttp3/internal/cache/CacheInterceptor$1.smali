.class Lokhttp3/internal/cache/CacheInterceptor$1;
.super Ljava/lang/Object;
.source "CacheInterceptor.java"

# interfaces
.implements Lokio/Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/internal/cache/CacheInterceptor;->cacheWritingResponse(Lokhttp3/internal/cache/CacheRequest;Lokhttp3/Response;)Lokhttp3/Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field cacheRequestClosed:Z

.field final synthetic this$0:Lokhttp3/internal/cache/CacheInterceptor;

.field final synthetic val$cacheBody:Lokio/BufferedSink;

.field final synthetic val$cacheRequest:Lokhttp3/internal/cache/CacheRequest;

.field final synthetic val$source:Lokio/BufferedSource;


# direct methods
.method constructor <init>(Lokhttp3/internal/cache/CacheInterceptor;Lokio/BufferedSource;Lokhttp3/internal/cache/CacheRequest;Lokio/BufferedSink;)V
    .locals 7

    .prologue
    .line 177
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lokhttp3/internal/cache/CacheInterceptor$1;->this$0:Lokhttp3/internal/cache/CacheInterceptor;

    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Lokhttp3/internal/cache/CacheInterceptor$1;->val$source:Lokio/BufferedSource;

    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Lokhttp3/internal/cache/CacheInterceptor$1;->val$cacheRequest:Lokhttp3/internal/cache/CacheRequest;

    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Lokhttp3/internal/cache/CacheInterceptor$1;->val$cacheBody:Lokio/BufferedSink;

    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 210
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lokhttp3/internal/cache/CacheInterceptor$1;->cacheRequestClosed:Z

    if-nez v1, :cond_0

    move-object v1, v0

    const/16 v2, 0x64

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 211
    invoke-static {v1, v2, v3}, Lokhttp3/internal/Util;->discard(Lokio/Source;ILjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 212
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lokhttp3/internal/cache/CacheInterceptor$1;->cacheRequestClosed:Z

    .line 213
    move-object v1, v0

    iget-object v1, v1, Lokhttp3/internal/cache/CacheInterceptor$1;->val$cacheRequest:Lokhttp3/internal/cache/CacheRequest;

    invoke-interface {v1}, Lokhttp3/internal/cache/CacheRequest;->abort()V

    .line 215
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lokhttp3/internal/cache/CacheInterceptor$1;->val$source:Lokio/BufferedSource;

    invoke-interface {v1}, Lokio/BufferedSource;->close()V

    .line 216
    return-void
.end method

.method public read(Lokio/Buffer;J)J
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 183
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v7, v0

    :try_start_0
    iget-object v7, v7, Lokhttp3/internal/cache/CacheInterceptor$1;->val$source:Lokio/BufferedSource;

    move-object v8, v1

    move-wide v9, v2

    invoke-interface {v7, v8, v9, v10}, Lokio/BufferedSource;->read(Lokio/Buffer;J)J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v7

    move-wide v4, v7

    .line 192
    move-wide v7, v4

    const-wide/16 v9, -0x1

    cmp-long v7, v7, v9

    if-nez v7, :cond_2

    .line 193
    move-object v7, v0

    iget-boolean v7, v7, Lokhttp3/internal/cache/CacheInterceptor$1;->cacheRequestClosed:Z

    if-nez v7, :cond_0

    .line 194
    move-object v7, v0

    const/4 v8, 0x1

    iput-boolean v8, v7, Lokhttp3/internal/cache/CacheInterceptor$1;->cacheRequestClosed:Z

    .line 195
    move-object v7, v0

    iget-object v7, v7, Lokhttp3/internal/cache/CacheInterceptor$1;->val$cacheBody:Lokio/BufferedSink;

    invoke-interface {v7}, Lokio/BufferedSink;->close()V

    .line 197
    :cond_0
    const-wide/16 v7, -0x1

    move-wide v0, v7

    .line 202
    :goto_0
    return-wide v0

    .line 184
    :catch_0
    move-exception v7

    move-object v6, v7

    .line 185
    move-object v7, v0

    iget-boolean v7, v7, Lokhttp3/internal/cache/CacheInterceptor$1;->cacheRequestClosed:Z

    if-nez v7, :cond_1

    .line 186
    move-object v7, v0

    const/4 v8, 0x1

    iput-boolean v8, v7, Lokhttp3/internal/cache/CacheInterceptor$1;->cacheRequestClosed:Z

    .line 187
    move-object v7, v0

    iget-object v7, v7, Lokhttp3/internal/cache/CacheInterceptor$1;->val$cacheRequest:Lokhttp3/internal/cache/CacheRequest;

    invoke-interface {v7}, Lokhttp3/internal/cache/CacheRequest;->abort()V

    .line 189
    :cond_1
    move-object v7, v6

    throw v7

    .line 200
    :cond_2
    move-object v7, v1

    move-object v8, v0

    iget-object v8, v8, Lokhttp3/internal/cache/CacheInterceptor$1;->val$cacheBody:Lokio/BufferedSink;

    invoke-interface {v8}, Lokio/BufferedSink;->buffer()Lokio/Buffer;

    move-result-object v8

    move-object v9, v1

    invoke-virtual {v9}, Lokio/Buffer;->size()J

    move-result-wide v9

    move-wide v11, v4

    sub-long/2addr v9, v11

    move-wide v11, v4

    invoke-virtual/range {v7 .. v12}, Lokio/Buffer;->copyTo(Lokio/Buffer;JJ)Lokio/Buffer;

    move-result-object v7

    .line 201
    move-object v7, v0

    iget-object v7, v7, Lokhttp3/internal/cache/CacheInterceptor$1;->val$cacheBody:Lokio/BufferedSink;

    invoke-interface {v7}, Lokio/BufferedSink;->emitCompleteSegments()Lokio/BufferedSink;

    move-result-object v7

    .line 202
    move-wide v7, v4

    move-wide v0, v7

    goto :goto_0
.end method

.method public timeout()Lokio/Timeout;
    .locals 2

    .prologue
    .line 206
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/internal/cache/CacheInterceptor$1;->val$source:Lokio/BufferedSource;

    invoke-interface {v1}, Lokio/BufferedSource;->timeout()Lokio/Timeout;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method
