.class Lokhttp3/internal/http1/Http1Codec$FixedLengthSource;
.super Lokhttp3/internal/http1/Http1Codec$AbstractSource;
.source "Http1Codec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/http1/Http1Codec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FixedLengthSource"
.end annotation


# instance fields
.field private bytesRemaining:J

.field final synthetic this$0:Lokhttp3/internal/http1/Http1Codec;


# direct methods
.method public constructor <init>(Lokhttp3/internal/http1/Http1Codec;J)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 373
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lokhttp3/internal/http1/Http1Codec$FixedLengthSource;->this$0:Lokhttp3/internal/http1/Http1Codec;

    move-object v4, v0

    move-object v5, v1

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lokhttp3/internal/http1/Http1Codec$AbstractSource;-><init>(Lokhttp3/internal/http1/Http1Codec;Lokhttp3/internal/http1/Http1Codec$1;)V

    .line 374
    move-object v4, v0

    move-wide v5, v2

    iput-wide v5, v4, Lokhttp3/internal/http1/Http1Codec$FixedLengthSource;->bytesRemaining:J

    .line 375
    move-object v4, v0

    iget-wide v4, v4, Lokhttp3/internal/http1/Http1Codec$FixedLengthSource;->bytesRemaining:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 376
    move-object v4, v0

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lokhttp3/internal/http1/Http1Codec$FixedLengthSource;->endOfInput(Z)V

    .line 378
    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 399
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lokhttp3/internal/http1/Http1Codec$FixedLengthSource;->closed:Z

    if-eqz v1, :cond_0

    .line 406
    :goto_0
    return-void

    .line 401
    :cond_0
    move-object v1, v0

    iget-wide v1, v1, Lokhttp3/internal/http1/Http1Codec$FixedLengthSource;->bytesRemaining:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    move-object v1, v0

    const/16 v2, 0x64

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v1, v2, v3}, Lokhttp3/internal/Util;->discard(Lokio/Source;ILjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 402
    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lokhttp3/internal/http1/Http1Codec$FixedLengthSource;->endOfInput(Z)V

    .line 405
    :cond_1
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lokhttp3/internal/http1/Http1Codec$FixedLengthSource;->closed:Z

    .line 406
    goto :goto_0
.end method

.method public read(Lokio/Buffer;J)J
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 381
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v6, v2

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-gez v6, :cond_0

    new-instance v6, Ljava/lang/IllegalArgumentException;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "byteCount < 0: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide v9, v2

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 382
    :cond_0
    move-object v6, v0

    iget-boolean v6, v6, Lokhttp3/internal/http1/Http1Codec$FixedLengthSource;->closed:Z

    if-eqz v6, :cond_1

    new-instance v6, Ljava/lang/IllegalStateException;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    const-string v8, "closed"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 383
    :cond_1
    move-object v6, v0

    iget-wide v6, v6, Lokhttp3/internal/http1/Http1Codec$FixedLengthSource;->bytesRemaining:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_2

    const-wide/16 v6, -0x1

    move-wide v0, v6

    .line 395
    :goto_0
    return-wide v0

    .line 385
    :cond_2
    move-object v6, v0

    iget-object v6, v6, Lokhttp3/internal/http1/Http1Codec$FixedLengthSource;->this$0:Lokhttp3/internal/http1/Http1Codec;

    iget-object v6, v6, Lokhttp3/internal/http1/Http1Codec;->source:Lokio/BufferedSource;

    move-object v7, v1

    move-object v8, v0

    iget-wide v8, v8, Lokhttp3/internal/http1/Http1Codec$FixedLengthSource;->bytesRemaining:J

    move-wide v10, v2

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    invoke-interface {v6, v7, v8, v9}, Lokio/BufferedSource;->read(Lokio/Buffer;J)J

    move-result-wide v6

    move-wide v4, v6

    .line 386
    move-wide v6, v4

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-nez v6, :cond_3

    .line 387
    move-object v6, v0

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lokhttp3/internal/http1/Http1Codec$FixedLengthSource;->endOfInput(Z)V

    .line 388
    new-instance v6, Ljava/net/ProtocolException;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    const-string v8, "unexpected end of stream"

    invoke-direct {v7, v8}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 391
    :cond_3
    move-object v6, v0

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    iget-wide v7, v7, Lokhttp3/internal/http1/Http1Codec$FixedLengthSource;->bytesRemaining:J

    move-wide v9, v4

    sub-long/2addr v7, v9

    iput-wide v7, v6, Lokhttp3/internal/http1/Http1Codec$FixedLengthSource;->bytesRemaining:J

    .line 392
    move-object v6, v0

    iget-wide v6, v6, Lokhttp3/internal/http1/Http1Codec$FixedLengthSource;->bytesRemaining:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_4

    .line 393
    move-object v6, v0

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lokhttp3/internal/http1/Http1Codec$FixedLengthSource;->endOfInput(Z)V

    .line 395
    :cond_4
    move-wide v6, v4

    move-wide v0, v6

    goto :goto_0
.end method
