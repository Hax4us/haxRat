.class final Lokhttp3/internal/http1/Http1Codec$FixedLengthSink;
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
    name = "FixedLengthSink"
.end annotation


# instance fields
.field private bytesRemaining:J

.field private closed:Z

.field final synthetic this$0:Lokhttp3/internal/http1/Http1Codec;

.field private final timeout:Lokio/ForwardingTimeout;


# direct methods
.method constructor <init>(Lokhttp3/internal/http1/Http1Codec;J)V
    .locals 9

    .prologue
    .line 272
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lokhttp3/internal/http1/Http1Codec$FixedLengthSink;->this$0:Lokhttp3/internal/http1/Http1Codec;

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 268
    move-object v4, v0

    new-instance v5, Lokio/ForwardingTimeout;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v0

    iget-object v7, v7, Lokhttp3/internal/http1/Http1Codec$FixedLengthSink;->this$0:Lokhttp3/internal/http1/Http1Codec;

    iget-object v7, v7, Lokhttp3/internal/http1/Http1Codec;->sink:Lokio/BufferedSink;

    invoke-interface {v7}, Lokio/BufferedSink;->timeout()Lokio/Timeout;

    move-result-object v7

    invoke-direct {v6, v7}, Lokio/ForwardingTimeout;-><init>(Lokio/Timeout;)V

    iput-object v5, v4, Lokhttp3/internal/http1/Http1Codec$FixedLengthSink;->timeout:Lokio/ForwardingTimeout;

    .line 273
    move-object v4, v0

    move-wide v5, v2

    iput-wide v5, v4, Lokhttp3/internal/http1/Http1Codec$FixedLengthSink;->bytesRemaining:J

    .line 274
    return-void
.end method


# virtual methods
.method public close()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 297
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lokhttp3/internal/http1/Http1Codec$FixedLengthSink;->closed:Z

    if-eqz v1, :cond_0

    .line 302
    :goto_0
    return-void

    .line 298
    :cond_0
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lokhttp3/internal/http1/Http1Codec$FixedLengthSink;->closed:Z

    .line 299
    move-object v1, v0

    iget-wide v1, v1, Lokhttp3/internal/http1/Http1Codec$FixedLengthSink;->bytesRemaining:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    new-instance v1, Ljava/net/ProtocolException;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const-string v3, "unexpected end of stream"

    invoke-direct {v2, v3}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 300
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Lokhttp3/internal/http1/Http1Codec$FixedLengthSink;->this$0:Lokhttp3/internal/http1/Http1Codec;

    move-object v2, v0

    iget-object v2, v2, Lokhttp3/internal/http1/Http1Codec$FixedLengthSink;->timeout:Lokio/ForwardingTimeout;

    invoke-virtual {v1, v2}, Lokhttp3/internal/http1/Http1Codec;->detachTimeout(Lokio/ForwardingTimeout;)V

    .line 301
    move-object v1, v0

    iget-object v1, v1, Lokhttp3/internal/http1/Http1Codec$FixedLengthSink;->this$0:Lokhttp3/internal/http1/Http1Codec;

    const/4 v2, 0x3

    iput v2, v1, Lokhttp3/internal/http1/Http1Codec;->state:I

    .line 302
    goto :goto_0
.end method

.method public flush()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 292
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lokhttp3/internal/http1/Http1Codec$FixedLengthSink;->closed:Z

    if-eqz v1, :cond_0

    .line 294
    :goto_0
    return-void

    .line 293
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lokhttp3/internal/http1/Http1Codec$FixedLengthSink;->this$0:Lokhttp3/internal/http1/Http1Codec;

    iget-object v1, v1, Lokhttp3/internal/http1/Http1Codec;->sink:Lokio/BufferedSink;

    invoke-interface {v1}, Lokio/BufferedSink;->flush()V

    .line 294
    goto :goto_0
.end method

.method public timeout()Lokio/Timeout;
    .locals 2

    .prologue
    .line 277
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/internal/http1/Http1Codec$FixedLengthSink;->timeout:Lokio/ForwardingTimeout;

    move-object v0, v1

    return-object v0
.end method

.method public write(Lokio/Buffer;J)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 281
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, v0

    iget-boolean v4, v4, Lokhttp3/internal/http1/Http1Codec$FixedLengthSink;->closed:Z

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/IllegalStateException;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    const-string v6, "closed"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 282
    :cond_0
    move-object v4, v1

    invoke-virtual {v4}, Lokio/Buffer;->size()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    move-wide v8, v2

    invoke-static/range {v4 .. v9}, Lokhttp3/internal/Util;->checkOffsetAndCount(JJJ)V

    .line 283
    move-wide v4, v2

    move-object v6, v0

    iget-wide v6, v6, Lokhttp3/internal/http1/Http1Codec$FixedLengthSink;->bytesRemaining:J

    cmp-long v4, v4, v6

    if-lez v4, :cond_1

    .line 284
    new-instance v4, Ljava/net/ProtocolException;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "expected "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v0

    iget-wide v7, v7, Lokhttp3/internal/http1/Http1Codec$FixedLengthSink;->bytesRemaining:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " bytes but received "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide v7, v2

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 287
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Lokhttp3/internal/http1/Http1Codec$FixedLengthSink;->this$0:Lokhttp3/internal/http1/Http1Codec;

    iget-object v4, v4, Lokhttp3/internal/http1/Http1Codec;->sink:Lokio/BufferedSink;

    move-object v5, v1

    move-wide v6, v2

    invoke-interface {v4, v5, v6, v7}, Lokio/BufferedSink;->write(Lokio/Buffer;J)V

    .line 288
    move-object v4, v0

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    iget-wide v5, v5, Lokhttp3/internal/http1/Http1Codec$FixedLengthSink;->bytesRemaining:J

    move-wide v7, v2

    sub-long/2addr v5, v7

    iput-wide v5, v4, Lokhttp3/internal/http1/Http1Codec$FixedLengthSink;->bytesRemaining:J

    .line 289
    return-void
.end method
