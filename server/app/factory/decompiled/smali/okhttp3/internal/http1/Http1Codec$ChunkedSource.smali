.class Lokhttp3/internal/http1/Http1Codec$ChunkedSource;
.super Lokhttp3/internal/http1/Http1Codec$AbstractSource;
.source "Http1Codec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/http1/Http1Codec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChunkedSource"
.end annotation


# static fields
.field private static final NO_CHUNK_YET:J = -0x1L


# instance fields
.field private bytesRemainingInChunk:J

.field private hasMoreChunks:Z

.field final synthetic this$0:Lokhttp3/internal/http1/Http1Codec;

.field private final url:Lokhttp3/HttpUrl;


# direct methods
.method constructor <init>(Lokhttp3/internal/http1/Http1Codec;Lokhttp3/HttpUrl;)V
    .locals 6

    .prologue
    .line 416
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lokhttp3/internal/http1/Http1Codec$ChunkedSource;->this$0:Lokhttp3/internal/http1/Http1Codec;

    move-object v3, v0

    move-object v4, v1

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lokhttp3/internal/http1/Http1Codec$AbstractSource;-><init>(Lokhttp3/internal/http1/Http1Codec;Lokhttp3/internal/http1/Http1Codec$1;)V

    .line 413
    move-object v3, v0

    const-wide/16 v4, -0x1

    iput-wide v4, v3, Lokhttp3/internal/http1/Http1Codec$ChunkedSource;->bytesRemainingInChunk:J

    .line 414
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lokhttp3/internal/http1/Http1Codec$ChunkedSource;->hasMoreChunks:Z

    .line 417
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lokhttp3/internal/http1/Http1Codec$ChunkedSource;->url:Lokhttp3/HttpUrl;

    .line 418
    return-void
.end method

.method private readChunkSize()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 441
    move-object v0, p0

    move-object v2, v0

    iget-wide v2, v2, Lokhttp3/internal/http1/Http1Codec$ChunkedSource;->bytesRemainingInChunk:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 442
    move-object v2, v0

    iget-object v2, v2, Lokhttp3/internal/http1/Http1Codec$ChunkedSource;->this$0:Lokhttp3/internal/http1/Http1Codec;

    iget-object v2, v2, Lokhttp3/internal/http1/Http1Codec;->source:Lokio/BufferedSource;

    invoke-interface {v2}, Lokio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v2

    .line 445
    :cond_0
    move-object v2, v0

    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Lokhttp3/internal/http1/Http1Codec$ChunkedSource;->this$0:Lokhttp3/internal/http1/Http1Codec;

    iget-object v3, v3, Lokhttp3/internal/http1/Http1Codec;->source:Lokio/BufferedSource;

    invoke-interface {v3}, Lokio/BufferedSource;->readHexadecimalUnsignedLong()J

    move-result-wide v3

    iput-wide v3, v2, Lokhttp3/internal/http1/Http1Codec$ChunkedSource;->bytesRemainingInChunk:J

    .line 446
    move-object v2, v0

    iget-object v2, v2, Lokhttp3/internal/http1/Http1Codec$ChunkedSource;->this$0:Lokhttp3/internal/http1/Http1Codec;

    iget-object v2, v2, Lokhttp3/internal/http1/Http1Codec;->source:Lokio/BufferedSource;

    invoke-interface {v2}, Lokio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 447
    move-object v2, v0

    iget-wide v2, v2, Lokhttp3/internal/http1/Http1Codec$ChunkedSource;->bytesRemainingInChunk:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    move-object v2, v1

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 448
    :cond_1
    new-instance v2, Ljava/net/ProtocolException;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "expected chunk size and optional extensions but was \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    iget-wide v5, v5, Lokhttp3/internal/http1/Http1Codec$ChunkedSource;->bytesRemainingInChunk:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 451
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 452
    new-instance v2, Ljava/net/ProtocolException;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 454
    :cond_2
    move-object v2, v0

    iget-wide v2, v2, Lokhttp3/internal/http1/Http1Codec$ChunkedSource;->bytesRemainingInChunk:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    .line 455
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lokhttp3/internal/http1/Http1Codec$ChunkedSource;->hasMoreChunks:Z

    .line 456
    move-object v2, v0

    iget-object v2, v2, Lokhttp3/internal/http1/Http1Codec$ChunkedSource;->this$0:Lokhttp3/internal/http1/Http1Codec;

    iget-object v2, v2, Lokhttp3/internal/http1/Http1Codec;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v2}, Lokhttp3/OkHttpClient;->cookieJar()Lokhttp3/CookieJar;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lokhttp3/internal/http1/Http1Codec$ChunkedSource;->url:Lokhttp3/HttpUrl;

    move-object v4, v0

    iget-object v4, v4, Lokhttp3/internal/http1/Http1Codec$ChunkedSource;->this$0:Lokhttp3/internal/http1/Http1Codec;

    invoke-virtual {v4}, Lokhttp3/internal/http1/Http1Codec;->readHeaders()Lokhttp3/Headers;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lokhttp3/internal/http/HttpHeaders;->receiveHeaders(Lokhttp3/CookieJar;Lokhttp3/HttpUrl;Lokhttp3/Headers;)V

    .line 457
    move-object v2, v0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lokhttp3/internal/http1/Http1Codec$ChunkedSource;->endOfInput(Z)V

    .line 459
    :cond_3
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
    .line 462
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lokhttp3/internal/http1/Http1Codec$ChunkedSource;->closed:Z

    if-eqz v1, :cond_0

    .line 467
    :goto_0
    return-void

    .line 463
    :cond_0
    move-object v1, v0

    iget-boolean v1, v1, Lokhttp3/internal/http1/Http1Codec$ChunkedSource;->hasMoreChunks:Z

    if-eqz v1, :cond_1

    move-object v1, v0

    const/16 v2, 0x64

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v1, v2, v3}, Lokhttp3/internal/Util;->discard(Lokio/Source;ILjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 464
    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lokhttp3/internal/http1/Http1Codec$ChunkedSource;->endOfInput(Z)V

    .line 466
    :cond_1
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lokhttp3/internal/http1/Http1Codec$ChunkedSource;->closed:Z

    .line 467
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
    .line 421
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

    .line 422
    :cond_0
    move-object v6, v0

    iget-boolean v6, v6, Lokhttp3/internal/http1/Http1Codec$ChunkedSource;->closed:Z

    if-eqz v6, :cond_1

    new-instance v6, Ljava/lang/IllegalStateException;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    const-string v8, "closed"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 423
    :cond_1
    move-object v6, v0

    iget-boolean v6, v6, Lokhttp3/internal/http1/Http1Codec$ChunkedSource;->hasMoreChunks:Z

    if-nez v6, :cond_2

    const-wide/16 v6, -0x1

    move-wide v0, v6

    .line 436
    :goto_0
    return-wide v0

    .line 425
    :cond_2
    move-object v6, v0

    iget-wide v6, v6, Lokhttp3/internal/http1/Http1Codec$ChunkedSource;->bytesRemainingInChunk:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_3

    move-object v6, v0

    iget-wide v6, v6, Lokhttp3/internal/http1/Http1Codec$ChunkedSource;->bytesRemainingInChunk:J

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-nez v6, :cond_4

    .line 426
    :cond_3
    move-object v6, v0

    invoke-direct {v6}, Lokhttp3/internal/http1/Http1Codec$ChunkedSource;->readChunkSize()V

    .line 427
    move-object v6, v0

    iget-boolean v6, v6, Lokhttp3/internal/http1/Http1Codec$ChunkedSource;->hasMoreChunks:Z

    if-nez v6, :cond_4

    const-wide/16 v6, -0x1

    move-wide v0, v6

    goto :goto_0

    .line 430
    :cond_4
    move-object v6, v0

    iget-object v6, v6, Lokhttp3/internal/http1/Http1Codec$ChunkedSource;->this$0:Lokhttp3/internal/http1/Http1Codec;

    iget-object v6, v6, Lokhttp3/internal/http1/Http1Codec;->source:Lokio/BufferedSource;

    move-object v7, v1

    move-wide v8, v2

    move-object v10, v0

    iget-wide v10, v10, Lokhttp3/internal/http1/Http1Codec$ChunkedSource;->bytesRemainingInChunk:J

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    invoke-interface {v6, v7, v8, v9}, Lokio/BufferedSource;->read(Lokio/Buffer;J)J

    move-result-wide v6

    move-wide v4, v6

    .line 431
    move-wide v6, v4

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-nez v6, :cond_5

    .line 432
    move-object v6, v0

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lokhttp3/internal/http1/Http1Codec$ChunkedSource;->endOfInput(Z)V

    .line 433
    new-instance v6, Ljava/net/ProtocolException;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    const-string v8, "unexpected end of stream"

    invoke-direct {v7, v8}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 435
    :cond_5
    move-object v6, v0

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    iget-wide v7, v7, Lokhttp3/internal/http1/Http1Codec$ChunkedSource;->bytesRemainingInChunk:J

    move-wide v9, v4

    sub-long/2addr v7, v9

    iput-wide v7, v6, Lokhttp3/internal/http1/Http1Codec$ChunkedSource;->bytesRemainingInChunk:J

    .line 436
    move-wide v6, v4

    move-wide v0, v6

    goto :goto_0
.end method
