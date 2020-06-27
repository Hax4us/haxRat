.class public final Lokhttp3/internal/http/CallServerInterceptor;
.super Ljava/lang/Object;
.source "CallServerInterceptor.java"

# interfaces
.implements Lokhttp3/Interceptor;


# instance fields
.field private final forWebSocket:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 4

    .prologue
    .line 33
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 34
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lokhttp3/internal/http/CallServerInterceptor;->forWebSocket:Z

    .line 35
    return-void
.end method


# virtual methods
.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 38
    move-object v0, p0

    move-object/from16 v1, p1

    move-object v9, v1

    check-cast v9, Lokhttp3/internal/http/RealInterceptorChain;

    invoke-virtual {v9}, Lokhttp3/internal/http/RealInterceptorChain;->httpStream()Lokhttp3/internal/http/HttpCodec;

    move-result-object v9

    move-object v2, v9

    .line 39
    move-object v9, v1

    check-cast v9, Lokhttp3/internal/http/RealInterceptorChain;

    invoke-virtual {v9}, Lokhttp3/internal/http/RealInterceptorChain;->streamAllocation()Lokhttp3/internal/connection/StreamAllocation;

    move-result-object v9

    move-object v3, v9

    .line 40
    move-object v9, v1

    invoke-interface {v9}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v9

    move-object v4, v9

    .line 42
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    move-wide v5, v9

    .line 43
    move-object v9, v2

    move-object v10, v4

    invoke-interface {v9, v10}, Lokhttp3/internal/http/HttpCodec;->writeRequestHeaders(Lokhttp3/Request;)V

    .line 45
    move-object v9, v4

    invoke-virtual {v9}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lokhttp3/internal/http/HttpMethod;->permitsRequestBody(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    move-object v9, v4

    invoke-virtual {v9}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 46
    move-object v9, v2

    move-object v10, v4

    move-object v11, v4

    invoke-virtual {v11}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v11

    invoke-virtual {v11}, Lokhttp3/RequestBody;->contentLength()J

    move-result-wide v11

    invoke-interface {v9, v10, v11, v12}, Lokhttp3/internal/http/HttpCodec;->createRequestBody(Lokhttp3/Request;J)Lokio/Sink;

    move-result-object v9

    move-object v7, v9

    .line 47
    move-object v9, v7

    invoke-static {v9}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v9

    move-object v8, v9

    .line 48
    move-object v9, v4

    invoke-virtual {v9}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v9

    move-object v10, v8

    invoke-virtual {v9, v10}, Lokhttp3/RequestBody;->writeTo(Lokio/BufferedSink;)V

    .line 49
    move-object v9, v8

    invoke-interface {v9}, Lokio/BufferedSink;->close()V

    .line 52
    :cond_0
    move-object v9, v2

    invoke-interface {v9}, Lokhttp3/internal/http/HttpCodec;->finishRequest()V

    .line 54
    move-object v9, v2

    invoke-interface {v9}, Lokhttp3/internal/http/HttpCodec;->readResponseHeaders()Lokhttp3/Response$Builder;

    move-result-object v9

    move-object v10, v4

    .line 55
    invoke-virtual {v9, v10}, Lokhttp3/Response$Builder;->request(Lokhttp3/Request;)Lokhttp3/Response$Builder;

    move-result-object v9

    move-object v10, v3

    .line 56
    invoke-virtual {v10}, Lokhttp3/internal/connection/StreamAllocation;->connection()Lokhttp3/internal/connection/RealConnection;

    move-result-object v10

    invoke-virtual {v10}, Lokhttp3/internal/connection/RealConnection;->handshake()Lokhttp3/Handshake;

    move-result-object v10

    invoke-virtual {v9, v10}, Lokhttp3/Response$Builder;->handshake(Lokhttp3/Handshake;)Lokhttp3/Response$Builder;

    move-result-object v9

    move-wide v10, v5

    .line 57
    invoke-virtual {v9, v10, v11}, Lokhttp3/Response$Builder;->sentRequestAtMillis(J)Lokhttp3/Response$Builder;

    move-result-object v9

    .line 58
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Lokhttp3/Response$Builder;->receivedResponseAtMillis(J)Lokhttp3/Response$Builder;

    move-result-object v9

    .line 59
    invoke-virtual {v9}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v9

    move-object v7, v9

    .line 61
    move-object v9, v7

    invoke-virtual {v9}, Lokhttp3/Response;->code()I

    move-result v9

    move v8, v9

    .line 62
    move-object v9, v0

    iget-boolean v9, v9, Lokhttp3/internal/http/CallServerInterceptor;->forWebSocket:Z

    if-eqz v9, :cond_4

    move v9, v8

    const/16 v10, 0x65

    if-ne v9, v10, :cond_4

    .line 64
    move-object v9, v7

    invoke-virtual {v9}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object v9

    sget-object v10, Lokhttp3/internal/Util;->EMPTY_RESPONSE:Lokhttp3/ResponseBody;

    .line 65
    invoke-virtual {v9, v10}, Lokhttp3/Response$Builder;->body(Lokhttp3/ResponseBody;)Lokhttp3/Response$Builder;

    move-result-object v9

    .line 66
    invoke-virtual {v9}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v9

    move-object v7, v9

    .line 73
    :goto_0
    const-string v9, "close"

    move-object v10, v7

    invoke-virtual {v10}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v10

    const-string v11, "Connection"

    invoke-virtual {v10, v11}, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    const-string v9, "close"

    move-object v10, v7

    const-string v11, "Connection"

    .line 74
    invoke-virtual {v10, v11}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 75
    :cond_1
    move-object v9, v3

    invoke-virtual {v9}, Lokhttp3/internal/connection/StreamAllocation;->noNewStreams()V

    .line 78
    :cond_2
    move v9, v8

    const/16 v10, 0xcc

    if-eq v9, v10, :cond_3

    move v9, v8

    const/16 v10, 0xcd

    if-ne v9, v10, :cond_5

    :cond_3
    move-object v9, v7

    invoke-virtual {v9}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v9

    invoke-virtual {v9}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-lez v9, :cond_5

    .line 79
    new-instance v9, Ljava/net/ProtocolException;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    new-instance v11, Ljava/lang/StringBuilder;

    move-object v14, v11

    move-object v11, v14

    move-object v12, v14

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "HTTP "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move v12, v8

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " had non-zero Content-Length: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v12, v7

    .line 80
    invoke-virtual {v12}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v12

    invoke-virtual {v12}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 68
    :cond_4
    move-object v9, v7

    invoke-virtual {v9}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object v9

    move-object v10, v2

    move-object v11, v7

    .line 69
    invoke-interface {v10, v11}, Lokhttp3/internal/http/HttpCodec;->openResponseBody(Lokhttp3/Response;)Lokhttp3/ResponseBody;

    move-result-object v10

    invoke-virtual {v9, v10}, Lokhttp3/Response$Builder;->body(Lokhttp3/ResponseBody;)Lokhttp3/Response$Builder;

    move-result-object v9

    .line 70
    invoke-virtual {v9}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v9

    move-object v7, v9

    goto/16 :goto_0

    .line 83
    :cond_5
    move-object v9, v7

    move-object v0, v9

    return-object v0
.end method
