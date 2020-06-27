.class final Lokhttp3/internal/http1/Http1Codec$ChunkedSink;
.super Ljava/lang/Object;
.source "Http1Codec.java"

# interfaces
.implements Lokio/Sink;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/http1/Http1Codec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ChunkedSink"
.end annotation


# instance fields
.field private closed:Z

.field final synthetic this$0:Lokhttp3/internal/http1/Http1Codec;

.field private final timeout:Lokio/ForwardingTimeout;


# direct methods
.method constructor <init>(Lokhttp3/internal/http1/Http1Codec;)V
    .locals 7

    .prologue
    .line 313
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lokhttp3/internal/http1/Http1Codec$ChunkedSink;->this$0:Lokhttp3/internal/http1/Http1Codec;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 310
    move-object v2, v0

    new-instance v3, Lokio/ForwardingTimeout;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    iget-object v5, v5, Lokhttp3/internal/http1/Http1Codec$ChunkedSink;->this$0:Lokhttp3/internal/http1/Http1Codec;

    iget-object v5, v5, Lokhttp3/internal/http1/Http1Codec;->sink:Lokio/BufferedSink;

    invoke-interface {v5}, Lokio/BufferedSink;->timeout()Lokio/Timeout;

    move-result-object v5

    invoke-direct {v4, v5}, Lokio/ForwardingTimeout;-><init>(Lokio/Timeout;)V

    iput-object v3, v2, Lokhttp3/internal/http1/Http1Codec$ChunkedSink;->timeout:Lokio/ForwardingTimeout;

    .line 314
    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 336
    move-object v0, p0

    move-object v3, p0

    monitor-enter v3

    move-object v1, v0

    :try_start_0
    iget-boolean v1, v1, Lokhttp3/internal/http1/Http1Codec$ChunkedSink;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 341
    :goto_0
    monitor-exit v3

    return-void

    .line 337
    :cond_0
    move-object v1, v0

    const/4 v2, 0x1

    :try_start_1
    iput-boolean v2, v1, Lokhttp3/internal/http1/Http1Codec$ChunkedSink;->closed:Z

    .line 338
    move-object v1, v0

    iget-object v1, v1, Lokhttp3/internal/http1/Http1Codec$ChunkedSink;->this$0:Lokhttp3/internal/http1/Http1Codec;

    iget-object v1, v1, Lokhttp3/internal/http1/Http1Codec;->sink:Lokio/BufferedSink;

    const-string v2, "0\r\n\r\n"

    invoke-interface {v1, v2}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v1

    .line 339
    move-object v1, v0

    iget-object v1, v1, Lokhttp3/internal/http1/Http1Codec$ChunkedSink;->this$0:Lokhttp3/internal/http1/Http1Codec;

    move-object v2, v0

    iget-object v2, v2, Lokhttp3/internal/http1/Http1Codec$ChunkedSink;->timeout:Lokio/ForwardingTimeout;

    invoke-virtual {v1, v2}, Lokhttp3/internal/http1/Http1Codec;->detachTimeout(Lokio/ForwardingTimeout;)V

    .line 340
    move-object v1, v0

    iget-object v1, v1, Lokhttp3/internal/http1/Http1Codec$ChunkedSink;->this$0:Lokhttp3/internal/http1/Http1Codec;

    const/4 v2, 0x3

    iput v2, v1, Lokhttp3/internal/http1/Http1Codec;->state:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 341
    goto :goto_0

    .line 336
    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0
.end method

.method public declared-synchronized flush()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 331
    move-object v0, p0

    move-object v2, p0

    monitor-enter v2

    move-object v1, v0

    :try_start_0
    iget-boolean v1, v1, Lokhttp3/internal/http1/Http1Codec$ChunkedSink;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 333
    :goto_0
    monitor-exit v2

    return-void

    .line 332
    :cond_0
    move-object v1, v0

    :try_start_1
    iget-object v1, v1, Lokhttp3/internal/http1/Http1Codec$ChunkedSink;->this$0:Lokhttp3/internal/http1/Http1Codec;

    iget-object v1, v1, Lokhttp3/internal/http1/Http1Codec;->sink:Lokio/BufferedSink;

    invoke-interface {v1}, Lokio/BufferedSink;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 333
    goto :goto_0

    .line 331
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public timeout()Lokio/Timeout;
    .locals 2

    .prologue
    .line 317
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/internal/http1/Http1Codec$ChunkedSink;->timeout:Lokio/ForwardingTimeout;

    move-object v0, v1

    return-object v0
.end method

.method public write(Lokio/Buffer;J)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 321
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, v0

    iget-boolean v4, v4, Lokhttp3/internal/http1/Http1Codec$ChunkedSink;->closed:Z

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/IllegalStateException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const-string v6, "closed"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 322
    :cond_0
    move-wide v4, v2

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    .line 328
    :goto_0
    return-void

    .line 324
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Lokhttp3/internal/http1/Http1Codec$ChunkedSink;->this$0:Lokhttp3/internal/http1/Http1Codec;

    iget-object v4, v4, Lokhttp3/internal/http1/Http1Codec;->sink:Lokio/BufferedSink;

    move-wide v5, v2

    invoke-interface {v4, v5, v6}, Lokio/BufferedSink;->writeHexadecimalUnsignedLong(J)Lokio/BufferedSink;

    move-result-object v4

    .line 325
    move-object v4, v0

    iget-object v4, v4, Lokhttp3/internal/http1/Http1Codec$ChunkedSink;->this$0:Lokhttp3/internal/http1/Http1Codec;

    iget-object v4, v4, Lokhttp3/internal/http1/Http1Codec;->sink:Lokio/BufferedSink;

    const-string v5, "\r\n"

    invoke-interface {v4, v5}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v4

    .line 326
    move-object v4, v0

    iget-object v4, v4, Lokhttp3/internal/http1/Http1Codec$ChunkedSink;->this$0:Lokhttp3/internal/http1/Http1Codec;

    iget-object v4, v4, Lokhttp3/internal/http1/Http1Codec;->sink:Lokio/BufferedSink;

    move-object v5, v1

    move-wide v6, v2

    invoke-interface {v4, v5, v6, v7}, Lokio/BufferedSink;->write(Lokio/Buffer;J)V

    .line 327
    move-object v4, v0

    iget-object v4, v4, Lokhttp3/internal/http1/Http1Codec$ChunkedSink;->this$0:Lokhttp3/internal/http1/Http1Codec;

    iget-object v4, v4, Lokhttp3/internal/http1/Http1Codec;->sink:Lokio/BufferedSink;

    const-string v5, "\r\n"

    invoke-interface {v4, v5}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v4

    .line 328
    goto :goto_0
.end method
