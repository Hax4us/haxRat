.class public final Lokhttp3/internal/http/BridgeInterceptor;
.super Ljava/lang/Object;
.source "BridgeInterceptor.java"

# interfaces
.implements Lokhttp3/Interceptor;


# instance fields
.field private final cookieJar:Lokhttp3/CookieJar;


# direct methods
.method public constructor <init>(Lokhttp3/CookieJar;)V
    .locals 4

    .prologue
    .line 43
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 44
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lokhttp3/internal/http/BridgeInterceptor;->cookieJar:Lokhttp3/CookieJar;

    .line 45
    return-void
.end method

.method private cookieHeader(Ljava/util/List;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lokhttp3/Cookie;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 117
    move-object v0, p0

    move-object v1, p1

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v6

    .line 118
    const/4 v6, 0x0

    move v3, v6

    move-object v6, v1

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    move v4, v6

    :goto_0
    move v6, v3

    move v7, v4

    if-ge v6, v7, :cond_1

    .line 119
    move v6, v3

    if-lez v6, :cond_0

    .line 120
    move-object v6, v2

    const-string v7, "; "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 122
    :cond_0
    move-object v6, v1

    move v7, v3

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lokhttp3/Cookie;

    move-object v5, v6

    .line 123
    move-object v6, v2

    move-object v7, v5

    invoke-virtual {v7}, Lokhttp3/Cookie;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x3d

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v5

    invoke-virtual {v7}, Lokhttp3/Cookie;->value()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 118
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 125
    :cond_1
    move-object v6, v2

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    return-object v0
.end method


# virtual methods
.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 48
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v11, v1

    invoke-interface {v11}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v11

    move-object v2, v11

    .line 49
    move-object v11, v2

    invoke-virtual {v11}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v11

    move-object v3, v11

    .line 51
    move-object v11, v2

    invoke-virtual {v11}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v11

    move-object v4, v11

    .line 52
    move-object v11, v4

    if-eqz v11, :cond_1

    .line 53
    move-object v11, v4

    invoke-virtual {v11}, Lokhttp3/RequestBody;->contentType()Lokhttp3/MediaType;

    move-result-object v11

    move-object v5, v11

    .line 54
    move-object v11, v5

    if-eqz v11, :cond_0

    .line 55
    move-object v11, v3

    const-string v12, "Content-Type"

    move-object v13, v5

    invoke-virtual {v13}, Lokhttp3/MediaType;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v11

    .line 58
    :cond_0
    move-object v11, v4

    invoke-virtual {v11}, Lokhttp3/RequestBody;->contentLength()J

    move-result-wide v11

    move-wide v6, v11

    .line 59
    move-wide v11, v6

    const-wide/16 v13, -0x1

    cmp-long v11, v11, v13

    if-eqz v11, :cond_8

    .line 60
    move-object v11, v3

    const-string v12, "Content-Length"

    move-wide v13, v6

    invoke-static {v13, v14}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v11

    .line 61
    move-object v11, v3

    const-string v12, "Transfer-Encoding"

    invoke-virtual {v11, v12}, Lokhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v11

    .line 68
    :cond_1
    :goto_0
    move-object v11, v2

    const-string v12, "Host"

    invoke-virtual {v11, v12}, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_2

    .line 69
    move-object v11, v3

    const-string v12, "Host"

    move-object v13, v2

    invoke-virtual {v13}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v13

    const/4 v14, 0x0

    invoke-static {v13, v14}, Lokhttp3/internal/Util;->hostHeader(Lokhttp3/HttpUrl;Z)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v11

    .line 72
    :cond_2
    move-object v11, v2

    const-string v12, "Connection"

    invoke-virtual {v11, v12}, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_3

    .line 73
    move-object v11, v3

    const-string v12, "Connection"

    const-string v13, "Keep-Alive"

    invoke-virtual {v11, v12, v13}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v11

    .line 78
    :cond_3
    const/4 v11, 0x0

    move v5, v11

    .line 79
    move-object v11, v2

    const-string v12, "Accept-Encoding"

    invoke-virtual {v11, v12}, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_4

    .line 80
    const/4 v11, 0x1

    move v5, v11

    .line 81
    move-object v11, v3

    const-string v12, "Accept-Encoding"

    const-string v13, "gzip"

    invoke-virtual {v11, v12, v13}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v11

    .line 84
    :cond_4
    move-object v11, v0

    iget-object v11, v11, Lokhttp3/internal/http/BridgeInterceptor;->cookieJar:Lokhttp3/CookieJar;

    move-object v12, v2

    invoke-virtual {v12}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v12

    invoke-interface {v11, v12}, Lokhttp3/CookieJar;->loadForRequest(Lokhttp3/HttpUrl;)Ljava/util/List;

    move-result-object v11

    move-object v6, v11

    .line 85
    move-object v11, v6

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_5

    .line 86
    move-object v11, v3

    const-string v12, "Cookie"

    move-object v13, v0

    move-object v14, v6

    invoke-direct {v13, v14}, Lokhttp3/internal/http/BridgeInterceptor;->cookieHeader(Ljava/util/List;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v11

    .line 89
    :cond_5
    move-object v11, v2

    const-string v12, "User-Agent"

    invoke-virtual {v11, v12}, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_6

    .line 90
    move-object v11, v3

    const-string v12, "User-Agent"

    invoke-static {}, Lokhttp3/internal/Version;->userAgent()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v11

    .line 93
    :cond_6
    move-object v11, v1

    move-object v12, v3

    invoke-virtual {v12}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v12

    invoke-interface {v11, v12}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v11

    move-object v7, v11

    .line 95
    move-object v11, v0

    iget-object v11, v11, Lokhttp3/internal/http/BridgeInterceptor;->cookieJar:Lokhttp3/CookieJar;

    move-object v12, v2

    invoke-virtual {v12}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v12

    move-object v13, v7

    invoke-virtual {v13}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v13

    invoke-static {v11, v12, v13}, Lokhttp3/internal/http/HttpHeaders;->receiveHeaders(Lokhttp3/CookieJar;Lokhttp3/HttpUrl;Lokhttp3/Headers;)V

    .line 97
    move-object v11, v7

    invoke-virtual {v11}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object v11

    move-object v12, v2

    .line 98
    invoke-virtual {v11, v12}, Lokhttp3/Response$Builder;->request(Lokhttp3/Request;)Lokhttp3/Response$Builder;

    move-result-object v11

    move-object v8, v11

    .line 100
    move v11, v5

    if-eqz v11, :cond_7

    const-string v11, "gzip"

    move-object v12, v7

    const-string v13, "Content-Encoding"

    .line 101
    invoke-virtual {v12, v13}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_7

    move-object v11, v7

    .line 102
    invoke-static {v11}, Lokhttp3/internal/http/HttpHeaders;->hasBody(Lokhttp3/Response;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 103
    new-instance v11, Lokio/GzipSource;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    move-object v13, v7

    invoke-virtual {v13}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v13

    invoke-virtual {v13}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    move-result-object v13

    invoke-direct {v12, v13}, Lokio/GzipSource;-><init>(Lokio/Source;)V

    move-object v9, v11

    .line 104
    move-object v11, v7

    invoke-virtual {v11}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v11

    invoke-virtual {v11}, Lokhttp3/Headers;->newBuilder()Lokhttp3/Headers$Builder;

    move-result-object v11

    const-string v12, "Content-Encoding"

    .line 105
    invoke-virtual {v11, v12}, Lokhttp3/Headers$Builder;->removeAll(Ljava/lang/String;)Lokhttp3/Headers$Builder;

    move-result-object v11

    const-string v12, "Content-Length"

    .line 106
    invoke-virtual {v11, v12}, Lokhttp3/Headers$Builder;->removeAll(Ljava/lang/String;)Lokhttp3/Headers$Builder;

    move-result-object v11

    .line 107
    invoke-virtual {v11}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    move-result-object v11

    move-object v10, v11

    .line 108
    move-object v11, v8

    move-object v12, v10

    invoke-virtual {v11, v12}, Lokhttp3/Response$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Response$Builder;

    move-result-object v11

    .line 109
    move-object v11, v8

    new-instance v12, Lokhttp3/internal/http/RealResponseBody;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    move-object v14, v10

    move-object v15, v9

    invoke-static {v15}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v15

    invoke-direct {v13, v14, v15}, Lokhttp3/internal/http/RealResponseBody;-><init>(Lokhttp3/Headers;Lokio/BufferedSource;)V

    invoke-virtual {v11, v12}, Lokhttp3/Response$Builder;->body(Lokhttp3/ResponseBody;)Lokhttp3/Response$Builder;

    move-result-object v11

    .line 112
    :cond_7
    move-object v11, v8

    invoke-virtual {v11}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v11

    move-object v0, v11

    return-object v0

    .line 63
    :cond_8
    move-object v11, v3

    const-string v12, "Transfer-Encoding"

    const-string v13, "chunked"

    invoke-virtual {v11, v12, v13}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v11

    .line 64
    move-object v11, v3

    const-string v12, "Content-Length"

    invoke-virtual {v11, v12}, Lokhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v11

    goto/16 :goto_0
.end method
