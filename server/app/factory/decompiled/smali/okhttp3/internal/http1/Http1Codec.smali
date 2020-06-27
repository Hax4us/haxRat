.class public final Lokhttp3/internal/http1/Http1Codec;
.super Ljava/lang/Object;
.source "Http1Codec.java"

# interfaces
.implements Lokhttp3/internal/http/HttpCodec;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/http1/Http1Codec$UnknownLengthSource;,
        Lokhttp3/internal/http1/Http1Codec$ChunkedSource;,
        Lokhttp3/internal/http1/Http1Codec$FixedLengthSource;,
        Lokhttp3/internal/http1/Http1Codec$AbstractSource;,
        Lokhttp3/internal/http1/Http1Codec$ChunkedSink;,
        Lokhttp3/internal/http1/Http1Codec$FixedLengthSink;
    }
.end annotation


# static fields
.field private static final STATE_CLOSED:I = 0x6

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_OPEN_REQUEST_BODY:I = 0x1

.field private static final STATE_OPEN_RESPONSE_BODY:I = 0x4

.field private static final STATE_READING_RESPONSE_BODY:I = 0x5

.field private static final STATE_READ_RESPONSE_HEADERS:I = 0x3

.field private static final STATE_WRITING_REQUEST_BODY:I = 0x2


# instance fields
.field final client:Lokhttp3/OkHttpClient;

.field final sink:Lokio/BufferedSink;

.field final source:Lokio/BufferedSource;

.field state:I

.field final streamAllocation:Lokhttp3/internal/connection/StreamAllocation;


# direct methods
.method public constructor <init>(Lokhttp3/OkHttpClient;Lokhttp3/internal/connection/StreamAllocation;Lokio/BufferedSource;Lokio/BufferedSink;)V
    .locals 7

    .prologue
    .line 88
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 85
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Lokhttp3/internal/http1/Http1Codec;->state:I

    .line 89
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lokhttp3/internal/http1/Http1Codec;->client:Lokhttp3/OkHttpClient;

    .line 90
    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Lokhttp3/internal/http1/Http1Codec;->streamAllocation:Lokhttp3/internal/connection/StreamAllocation;

    .line 91
    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Lokhttp3/internal/http1/Http1Codec;->source:Lokio/BufferedSource;

    .line 92
    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Lokhttp3/internal/http1/Http1Codec;->sink:Lokio/BufferedSink;

    .line 93
    return-void
.end method

.method private getTransferStream(Lokhttp3/Response;)Lokio/Source;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 141
    move-object v0, p0

    move-object v1, p1

    move-object v4, v1

    invoke-static {v4}, Lokhttp3/internal/http/HttpHeaders;->hasBody(Lokhttp3/Response;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 142
    move-object v4, v0

    const-wide/16 v5, 0x0

    invoke-virtual {v4, v5, v6}, Lokhttp3/internal/http1/Http1Codec;->newFixedLengthSource(J)Lokio/Source;

    move-result-object v4

    move-object v0, v4

    .line 157
    :goto_0
    return-object v0

    .line 145
    :cond_0
    const-string v4, "chunked"

    move-object v5, v1

    const-string v6, "Transfer-Encoding"

    invoke-virtual {v5, v6}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 146
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v5}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v5

    invoke-virtual {v5}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v5

    invoke-virtual {v4, v5}, Lokhttp3/internal/http1/Http1Codec;->newChunkedSource(Lokhttp3/HttpUrl;)Lokio/Source;

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    .line 149
    :cond_1
    move-object v4, v1

    invoke-static {v4}, Lokhttp3/internal/http/HttpHeaders;->contentLength(Lokhttp3/Response;)J

    move-result-wide v4

    move-wide v2, v4

    .line 150
    move-wide v4, v2

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2

    .line 151
    move-object v4, v0

    move-wide v5, v2

    invoke-virtual {v4, v5, v6}, Lokhttp3/internal/http1/Http1Codec;->newFixedLengthSource(J)Lokio/Source;

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    .line 157
    :cond_2
    move-object v4, v0

    invoke-virtual {v4}, Lokhttp3/internal/http1/Http1Codec;->newUnknownLengthSource()Lokio/Source;

    move-result-object v4

    move-object v0, v4

    goto :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 3

    .prologue
    .line 111
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lokhttp3/internal/http1/Http1Codec;->streamAllocation:Lokhttp3/internal/connection/StreamAllocation;

    invoke-virtual {v2}, Lokhttp3/internal/connection/StreamAllocation;->connection()Lokhttp3/internal/connection/RealConnection;

    move-result-object v2

    move-object v1, v2

    .line 112
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Lokhttp3/internal/connection/RealConnection;->cancel()V

    .line 113
    :cond_0
    return-void
.end method

.method public createRequestBody(Lokhttp3/Request;J)Lokio/Sink;
    .locals 9

    .prologue
    .line 96
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    const-string v4, "chunked"

    move-object v5, v1

    const-string v6, "Transfer-Encoding"

    invoke-virtual {v5, v6}, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 98
    move-object v4, v0

    invoke-virtual {v4}, Lokhttp3/internal/http1/Http1Codec;->newChunkedSink()Lokio/Sink;

    move-result-object v4

    move-object v0, v4

    .line 103
    :goto_0
    return-object v0

    .line 101
    :cond_0
    move-wide v4, v2

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    .line 103
    move-object v4, v0

    move-wide v5, v2

    invoke-virtual {v4, v5, v6}, Lokhttp3/internal/http1/Http1Codec;->newFixedLengthSink(J)Lokio/Sink;

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    .line 106
    :cond_1
    new-instance v4, Ljava/lang/IllegalStateException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const-string v6, "Cannot stream a request body without chunked encoding or a known content length!"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method detachTimeout(Lokio/ForwardingTimeout;)V
    .locals 5

    .prologue
    .line 260
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    invoke-virtual {v3}, Lokio/ForwardingTimeout;->delegate()Lokio/Timeout;

    move-result-object v3

    move-object v2, v3

    .line 261
    move-object v3, v1

    sget-object v4, Lokio/Timeout;->NONE:Lokio/Timeout;

    invoke-virtual {v3, v4}, Lokio/ForwardingTimeout;->setDelegate(Lokio/Timeout;)Lokio/ForwardingTimeout;

    move-result-object v3

    .line 262
    move-object v3, v2

    invoke-virtual {v3}, Lokio/Timeout;->clearDeadline()Lokio/Timeout;

    move-result-object v3

    .line 263
    move-object v3, v2

    invoke-virtual {v3}, Lokio/Timeout;->clearTimeout()Lokio/Timeout;

    move-result-object v3

    .line 264
    return-void
.end method

.method public finishRequest()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 166
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/internal/http1/Http1Codec;->sink:Lokio/BufferedSink;

    invoke-interface {v1}, Lokio/BufferedSink;->flush()V

    .line 167
    return-void
.end method

.method public isClosed()Z
    .locals 3

    .prologue
    .line 162
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lokhttp3/internal/http1/Http1Codec;->state:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public newChunkedSink()Lokio/Sink;
    .locals 6

    .prologue
    .line 223
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lokhttp3/internal/http1/Http1Codec;->state:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    iget v4, v4, Lokhttp3/internal/http1/Http1Codec;->state:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 224
    :cond_0
    move-object v1, v0

    const/4 v2, 0x2

    iput v2, v1, Lokhttp3/internal/http1/Http1Codec;->state:I

    .line 225
    new-instance v1, Lokhttp3/internal/http1/Http1Codec$ChunkedSink;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    move-object v3, v0

    invoke-direct {v2, v3}, Lokhttp3/internal/http1/Http1Codec$ChunkedSink;-><init>(Lokhttp3/internal/http1/Http1Codec;)V

    move-object v0, v1

    return-object v0
.end method

.method public newChunkedSource(Lokhttp3/HttpUrl;)Lokio/Source;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 241
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget v2, v2, Lokhttp3/internal/http1/Http1Codec;->state:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    new-instance v2, Ljava/lang/IllegalStateException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    iget v5, v5, Lokhttp3/internal/http1/Http1Codec;->state:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 242
    :cond_0
    move-object v2, v0

    const/4 v3, 0x5

    iput v3, v2, Lokhttp3/internal/http1/Http1Codec;->state:I

    .line 243
    new-instance v2, Lokhttp3/internal/http1/Http1Codec$ChunkedSource;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lokhttp3/internal/http1/Http1Codec$ChunkedSource;-><init>(Lokhttp3/internal/http1/Http1Codec;Lokhttp3/HttpUrl;)V

    move-object v0, v2

    return-object v0
.end method

.method public newFixedLengthSink(J)Lokio/Sink;
    .locals 9

    .prologue
    .line 229
    move-object v0, p0

    move-wide v1, p1

    move-object v3, v0

    iget v3, v3, Lokhttp3/internal/http1/Http1Codec;->state:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    new-instance v3, Ljava/lang/IllegalStateException;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "state: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    iget v6, v6, Lokhttp3/internal/http1/Http1Codec;->state:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 230
    :cond_0
    move-object v3, v0

    const/4 v4, 0x2

    iput v4, v3, Lokhttp3/internal/http1/Http1Codec;->state:I

    .line 231
    new-instance v3, Lokhttp3/internal/http1/Http1Codec$FixedLengthSink;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    move-wide v6, v1

    invoke-direct {v4, v5, v6, v7}, Lokhttp3/internal/http1/Http1Codec$FixedLengthSink;-><init>(Lokhttp3/internal/http1/Http1Codec;J)V

    move-object v0, v3

    return-object v0
.end method

.method public newFixedLengthSource(J)Lokio/Source;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 235
    move-object v0, p0

    move-wide v1, p1

    move-object v3, v0

    iget v3, v3, Lokhttp3/internal/http1/Http1Codec;->state:I

    const/4 v4, 0x4

    if-eq v3, v4, :cond_0

    new-instance v3, Ljava/lang/IllegalStateException;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "state: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    iget v6, v6, Lokhttp3/internal/http1/Http1Codec;->state:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 236
    :cond_0
    move-object v3, v0

    const/4 v4, 0x5

    iput v4, v3, Lokhttp3/internal/http1/Http1Codec;->state:I

    .line 237
    new-instance v3, Lokhttp3/internal/http1/Http1Codec$FixedLengthSource;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    move-wide v6, v1

    invoke-direct {v4, v5, v6, v7}, Lokhttp3/internal/http1/Http1Codec$FixedLengthSource;-><init>(Lokhttp3/internal/http1/Http1Codec;J)V

    move-object v0, v3

    return-object v0
.end method

.method public newUnknownLengthSource()Lokio/Source;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 247
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lokhttp3/internal/http1/Http1Codec;->state:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    iget v4, v4, Lokhttp3/internal/http1/Http1Codec;->state:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 248
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lokhttp3/internal/http1/Http1Codec;->streamAllocation:Lokhttp3/internal/connection/StreamAllocation;

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const-string v3, "streamAllocation == null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 249
    :cond_1
    move-object v1, v0

    const/4 v2, 0x5

    iput v2, v1, Lokhttp3/internal/http1/Http1Codec;->state:I

    .line 250
    move-object v1, v0

    iget-object v1, v1, Lokhttp3/internal/http1/Http1Codec;->streamAllocation:Lokhttp3/internal/connection/StreamAllocation;

    invoke-virtual {v1}, Lokhttp3/internal/connection/StreamAllocation;->noNewStreams()V

    .line 251
    new-instance v1, Lokhttp3/internal/http1/Http1Codec$UnknownLengthSource;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    move-object v3, v0

    invoke-direct {v2, v3}, Lokhttp3/internal/http1/Http1Codec$UnknownLengthSource;-><init>(Lokhttp3/internal/http1/Http1Codec;)V

    move-object v0, v1

    return-object v0
.end method

.method public openResponseBody(Lokhttp3/Response;)Lokhttp3/ResponseBody;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 136
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lokhttp3/internal/http1/Http1Codec;->getTransferStream(Lokhttp3/Response;)Lokio/Source;

    move-result-object v3

    move-object v2, v3

    .line 137
    new-instance v3, Lokhttp3/internal/http/RealResponseBody;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v1

    invoke-virtual {v5}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v5

    move-object v6, v2

    invoke-static {v6}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lokhttp3/internal/http/RealResponseBody;-><init>(Lokhttp3/Headers;Lokio/BufferedSource;)V

    move-object v0, v3

    return-object v0
.end method

.method public readHeaders()Lokhttp3/Headers;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 214
    move-object v0, p0

    new-instance v3, Lokhttp3/Headers$Builder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Lokhttp3/Headers$Builder;-><init>()V

    move-object v1, v3

    .line 216
    :goto_0
    move-object v3, v0

    iget-object v3, v3, Lokhttp3/internal/http1/Http1Codec;->source:Lokio/BufferedSource;

    invoke-interface {v3}, Lokio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v3

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v2, v4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    .line 217
    sget-object v3, Lokhttp3/internal/Internal;->instance:Lokhttp3/internal/Internal;

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lokhttp3/internal/Internal;->addLenient(Lokhttp3/Headers$Builder;Ljava/lang/String;)V

    goto :goto_0

    .line 219
    :cond_0
    move-object v3, v1

    invoke-virtual {v3}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method public readResponse()Lokhttp3/Response$Builder;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 185
    move-object v0, p0

    move-object v3, v0

    iget v3, v3, Lokhttp3/internal/http1/Http1Codec;->state:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    move-object v3, v0

    iget v3, v3, Lokhttp3/internal/http1/Http1Codec;->state:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    .line 186
    new-instance v3, Ljava/lang/IllegalStateException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "state: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    iget v6, v6, Lokhttp3/internal/http1/Http1Codec;->state:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 191
    :cond_0
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Lokhttp3/internal/http1/Http1Codec;->source:Lokio/BufferedSource;

    invoke-interface {v3}, Lokio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lokhttp3/internal/http/StatusLine;->parse(Ljava/lang/String;)Lokhttp3/internal/http/StatusLine;

    move-result-object v3

    move-object v1, v3

    .line 193
    new-instance v3, Lokhttp3/Response$Builder;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Lokhttp3/Response$Builder;-><init>()V

    move-object v4, v1

    iget-object v4, v4, Lokhttp3/internal/http/StatusLine;->protocol:Lokhttp3/Protocol;

    .line 194
    invoke-virtual {v3, v4}, Lokhttp3/Response$Builder;->protocol(Lokhttp3/Protocol;)Lokhttp3/Response$Builder;

    move-result-object v3

    move-object v4, v1

    iget v4, v4, Lokhttp3/internal/http/StatusLine;->code:I

    .line 195
    invoke-virtual {v3, v4}, Lokhttp3/Response$Builder;->code(I)Lokhttp3/Response$Builder;

    move-result-object v3

    move-object v4, v1

    iget-object v4, v4, Lokhttp3/internal/http/StatusLine;->message:Ljava/lang/String;

    .line 196
    invoke-virtual {v3, v4}, Lokhttp3/Response$Builder;->message(Ljava/lang/String;)Lokhttp3/Response$Builder;

    move-result-object v3

    move-object v4, v0

    .line 197
    invoke-virtual {v4}, Lokhttp3/internal/http1/Http1Codec;->readHeaders()Lokhttp3/Headers;

    move-result-object v4

    invoke-virtual {v3, v4}, Lokhttp3/Response$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Response$Builder;

    move-result-object v3

    move-object v2, v3

    .line 199
    move-object v3, v1

    iget v3, v3, Lokhttp3/internal/http/StatusLine;->code:I

    const/16 v4, 0x64

    if-eq v3, v4, :cond_0

    .line 200
    move-object v3, v0

    const/4 v4, 0x4

    iput v4, v3, Lokhttp3/internal/http1/Http1Codec;->state:I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    move-object v3, v2

    move-object v0, v3

    return-object v0

    .line 204
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 206
    new-instance v3, Ljava/io/IOException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unexpected end of stream on "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Lokhttp3/internal/http1/Http1Codec;->streamAllocation:Lokhttp3/internal/connection/StreamAllocation;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    .line 207
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v3

    .line 208
    move-object v3, v2

    throw v3
.end method

.method public readResponseHeaders()Lokhttp3/Response$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 132
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lokhttp3/internal/http1/Http1Codec;->readResponse()Lokhttp3/Response$Builder;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public writeRequest(Lokhttp3/Headers;Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 171
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v0

    iget v5, v5, Lokhttp3/internal/http1/Http1Codec;->state:I

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/IllegalStateException;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "state: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v0

    iget v8, v8, Lokhttp3/internal/http1/Http1Codec;->state:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 172
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Lokhttp3/internal/http1/Http1Codec;->sink:Lokio/BufferedSink;

    move-object v6, v2

    invoke-interface {v5, v6}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v5

    const-string v6, "\r\n"

    invoke-interface {v5, v6}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v5

    .line 173
    const/4 v5, 0x0

    move v3, v5

    move-object v5, v1

    invoke-virtual {v5}, Lokhttp3/Headers;->size()I

    move-result v5

    move v4, v5

    :goto_0
    move v5, v3

    move v6, v4

    if-ge v5, v6, :cond_1

    .line 174
    move-object v5, v0

    iget-object v5, v5, Lokhttp3/internal/http1/Http1Codec;->sink:Lokio/BufferedSink;

    move-object v6, v1

    move v7, v3

    invoke-virtual {v6, v7}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v5

    const-string v6, ": "

    .line 175
    invoke-interface {v5, v6}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v5

    move-object v6, v1

    move v7, v3

    .line 176
    invoke-virtual {v6, v7}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v5

    const-string v6, "\r\n"

    .line 177
    invoke-interface {v5, v6}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v5

    .line 173
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 179
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Lokhttp3/internal/http1/Http1Codec;->sink:Lokio/BufferedSink;

    const-string v6, "\r\n"

    invoke-interface {v5, v6}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v5

    .line 180
    move-object v5, v0

    const/4 v6, 0x1

    iput v6, v5, Lokhttp3/internal/http1/Http1Codec;->state:I

    .line 181
    return-void
.end method

.method public writeRequestHeaders(Lokhttp3/Request;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 126
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lokhttp3/internal/http1/Http1Codec;->streamAllocation:Lokhttp3/internal/connection/StreamAllocation;

    .line 127
    invoke-virtual {v4}, Lokhttp3/internal/connection/StreamAllocation;->connection()Lokhttp3/internal/connection/RealConnection;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/internal/connection/RealConnection;->route()Lokhttp3/Route;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/Route;->proxy()Ljava/net/Proxy;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v4

    .line 126
    invoke-static {v3, v4}, Lokhttp3/internal/http/RequestLine;->get(Lokhttp3/Request;Ljava/net/Proxy$Type;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 128
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Lokhttp3/Request;->headers()Lokhttp3/Headers;

    move-result-object v4

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lokhttp3/internal/http1/Http1Codec;->writeRequest(Lokhttp3/Headers;Ljava/lang/String;)V

    .line 129
    return-void
.end method
