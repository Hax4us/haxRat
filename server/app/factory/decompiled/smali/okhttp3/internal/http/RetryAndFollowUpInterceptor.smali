.class public final Lokhttp3/internal/http/RetryAndFollowUpInterceptor;
.super Ljava/lang/Object;
.source "RetryAndFollowUpInterceptor.java"

# interfaces
.implements Lokhttp3/Interceptor;


# static fields
.field private static final MAX_FOLLOW_UPS:I = 0x14


# instance fields
.field private callStackTrace:Ljava/lang/Object;

.field private volatile canceled:Z

.field private final client:Lokhttp3/OkHttpClient;

.field private final forWebSocket:Z

.field private streamAllocation:Lokhttp3/internal/connection/StreamAllocation;


# direct methods
.method public constructor <init>(Lokhttp3/OkHttpClient;Z)V
    .locals 5

    .prologue
    .line 71
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 72
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    .line 73
    move-object v3, v0

    move v4, v2

    iput-boolean v4, v3, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->forWebSocket:Z

    .line 74
    return-void
.end method

.method private createAddress(Lokhttp3/HttpUrl;)Lokhttp3/Address;
    .locals 21

    .prologue
    .line 188
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const/4 v6, 0x0

    move-object v3, v6

    .line 189
    const/4 v6, 0x0

    move-object v4, v6

    .line 190
    const/4 v6, 0x0

    move-object v5, v6

    .line 191
    move-object v6, v2

    invoke-virtual {v6}, Lokhttp3/HttpUrl;->isHttps()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 192
    move-object v6, v1

    iget-object v6, v6, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v6}, Lokhttp3/OkHttpClient;->sslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v6

    move-object v3, v6

    .line 193
    move-object v6, v1

    iget-object v6, v6, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v6}, Lokhttp3/OkHttpClient;->hostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v6

    move-object v4, v6

    .line 194
    move-object v6, v1

    iget-object v6, v6, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v6}, Lokhttp3/OkHttpClient;->certificatePinner()Lokhttp3/CertificatePinner;

    move-result-object v6

    move-object v5, v6

    .line 197
    :cond_0
    new-instance v6, Lokhttp3/Address;

    move-object/from16 v20, v6

    move-object/from16 v6, v20

    move-object/from16 v7, v20

    move-object v8, v2

    invoke-virtual {v8}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v8

    move-object v9, v2

    invoke-virtual {v9}, Lokhttp3/HttpUrl;->port()I

    move-result v9

    move-object v10, v1

    iget-object v10, v10, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v10}, Lokhttp3/OkHttpClient;->dns()Lokhttp3/Dns;

    move-result-object v10

    move-object v11, v1

    iget-object v11, v11, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v11}, Lokhttp3/OkHttpClient;->socketFactory()Ljavax/net/SocketFactory;

    move-result-object v11

    move-object v12, v3

    move-object v13, v4

    move-object v14, v5

    move-object v15, v1

    iget-object v15, v15, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    .line 198
    invoke-virtual {v15}, Lokhttp3/OkHttpClient;->proxyAuthenticator()Lokhttp3/Authenticator;

    move-result-object v15

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    move-object/from16 v16, v0

    .line 199
    invoke-virtual/range {v16 .. v16}, Lokhttp3/OkHttpClient;->proxy()Ljava/net/Proxy;

    move-result-object v16

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lokhttp3/OkHttpClient;->protocols()Ljava/util/List;

    move-result-object v17

    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget-object v0, v0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lokhttp3/OkHttpClient;->connectionSpecs()Ljava/util/List;

    move-result-object v18

    move-object/from16 v19, v1

    move-object/from16 v0, v19

    iget-object v0, v0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lokhttp3/OkHttpClient;->proxySelector()Ljava/net/ProxySelector;

    move-result-object v19

    invoke-direct/range {v7 .. v19}, Lokhttp3/Address;-><init>(Ljava/lang/String;ILokhttp3/Dns;Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Lokhttp3/CertificatePinner;Lokhttp3/Authenticator;Ljava/net/Proxy;Ljava/util/List;Ljava/util/List;Ljava/net/ProxySelector;)V

    .line 197
    move-object v1, v6

    return-object v1
.end method

.method private followUpRequest(Lokhttp3/Response;)Lokhttp3/Request;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 265
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v13, v1

    if-nez v13, :cond_0

    new-instance v13, Ljava/lang/IllegalStateException;

    move-object/from16 v16, v13

    move-object/from16 v13, v16

    move-object/from16 v14, v16

    invoke-direct {v14}, Ljava/lang/IllegalStateException;-><init>()V

    throw v13

    .line 266
    :cond_0
    move-object v13, v0

    iget-object v13, v13, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lokhttp3/internal/connection/StreamAllocation;

    invoke-virtual {v13}, Lokhttp3/internal/connection/StreamAllocation;->connection()Lokhttp3/internal/connection/RealConnection;

    move-result-object v13

    move-object v2, v13

    .line 267
    move-object v13, v2

    if-eqz v13, :cond_1

    move-object v13, v2

    .line 268
    invoke-interface {v13}, Lokhttp3/Connection;->route()Lokhttp3/Route;

    move-result-object v13

    :goto_0
    move-object v3, v13

    .line 270
    move-object v13, v1

    invoke-virtual {v13}, Lokhttp3/Response;->code()I

    move-result v13

    move v4, v13

    .line 272
    move-object v13, v1

    invoke-virtual {v13}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v13

    invoke-virtual {v13}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v13

    move-object v5, v13

    .line 273
    move v13, v4

    sparse-switch v13, :sswitch_data_0

    .line 349
    const/4 v13, 0x0

    move-object v0, v13

    :goto_1
    return-object v0

    .line 268
    :cond_1
    const/4 v13, 0x0

    goto :goto_0

    .line 275
    :sswitch_0
    move-object v13, v3

    if-eqz v13, :cond_2

    move-object v13, v3

    .line 276
    invoke-virtual {v13}, Lokhttp3/Route;->proxy()Ljava/net/Proxy;

    move-result-object v13

    .line 277
    :goto_2
    move-object v6, v13

    .line 278
    move-object v13, v6

    invoke-virtual {v13}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v13

    sget-object v14, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-eq v13, v14, :cond_3

    .line 279
    new-instance v13, Ljava/net/ProtocolException;

    move-object/from16 v16, v13

    move-object/from16 v13, v16

    move-object/from16 v14, v16

    const-string v15, "Received HTTP_PROXY_AUTH (407) code while not using proxy"

    invoke-direct {v14, v15}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 276
    :cond_2
    move-object v13, v0

    iget-object v13, v13, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    .line 277
    invoke-virtual {v13}, Lokhttp3/OkHttpClient;->proxy()Ljava/net/Proxy;

    move-result-object v13

    goto :goto_2

    .line 281
    :cond_3
    move-object v13, v0

    iget-object v13, v13, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v13}, Lokhttp3/OkHttpClient;->proxyAuthenticator()Lokhttp3/Authenticator;

    move-result-object v13

    move-object v14, v3

    move-object v15, v1

    invoke-interface {v13, v14, v15}, Lokhttp3/Authenticator;->authenticate(Lokhttp3/Route;Lokhttp3/Response;)Lokhttp3/Request;

    move-result-object v13

    move-object v0, v13

    goto :goto_1

    .line 284
    :sswitch_1
    move-object v13, v0

    iget-object v13, v13, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v13}, Lokhttp3/OkHttpClient;->authenticator()Lokhttp3/Authenticator;

    move-result-object v13

    move-object v14, v3

    move-object v15, v1

    invoke-interface {v13, v14, v15}, Lokhttp3/Authenticator;->authenticate(Lokhttp3/Route;Lokhttp3/Response;)Lokhttp3/Request;

    move-result-object v13

    move-object v0, v13

    goto :goto_1

    .line 290
    :sswitch_2
    move-object v13, v5

    const-string v14, "GET"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_4

    move-object v13, v5

    const-string v14, "HEAD"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_4

    .line 291
    const/4 v13, 0x0

    move-object v0, v13

    goto :goto_1

    .line 299
    :cond_4
    :sswitch_3
    move-object v13, v0

    iget-object v13, v13, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v13}, Lokhttp3/OkHttpClient;->followRedirects()Z

    move-result v13

    if-nez v13, :cond_5

    const/4 v13, 0x0

    move-object v0, v13

    goto :goto_1

    .line 301
    :cond_5
    move-object v13, v1

    const-string v14, "Location"

    invoke-virtual {v13, v14}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object v7, v13

    .line 302
    move-object v13, v7

    if-nez v13, :cond_6

    const/4 v13, 0x0

    move-object v0, v13

    goto :goto_1

    .line 303
    :cond_6
    move-object v13, v1

    invoke-virtual {v13}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v13

    invoke-virtual {v13}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v13

    move-object v14, v7

    invoke-virtual {v13, v14}, Lokhttp3/HttpUrl;->resolve(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object v13

    move-object v8, v13

    .line 306
    move-object v13, v8

    if-nez v13, :cond_7

    const/4 v13, 0x0

    move-object v0, v13

    goto/16 :goto_1

    .line 309
    :cond_7
    move-object v13, v8

    invoke-virtual {v13}, Lokhttp3/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object v13

    move-object v14, v1

    invoke-virtual {v14}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v14

    invoke-virtual {v14}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v14

    invoke-virtual {v14}, Lokhttp3/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    move v9, v13

    .line 310
    move v13, v9

    if-nez v13, :cond_8

    move-object v13, v0

    iget-object v13, v13, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v13}, Lokhttp3/OkHttpClient;->followSslRedirects()Z

    move-result v13

    if-nez v13, :cond_8

    const/4 v13, 0x0

    move-object v0, v13

    goto/16 :goto_1

    .line 313
    :cond_8
    move-object v13, v1

    invoke-virtual {v13}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v13

    invoke-virtual {v13}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v13

    move-object v10, v13

    .line 314
    move-object v13, v5

    invoke-static {v13}, Lokhttp3/internal/http/HttpMethod;->permitsRequestBody(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 315
    move-object v13, v5

    invoke-static {v13}, Lokhttp3/internal/http/HttpMethod;->redirectsWithBody(Ljava/lang/String;)Z

    move-result v13

    move v11, v13

    .line 316
    move-object v13, v5

    invoke-static {v13}, Lokhttp3/internal/http/HttpMethod;->redirectsToGet(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_b

    .line 317
    move-object v13, v10

    const-string v14, "GET"

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v13

    .line 322
    :goto_3
    move v13, v11

    if-nez v13, :cond_9

    .line 323
    move-object v13, v10

    const-string v14, "Transfer-Encoding"

    invoke-virtual {v13, v14}, Lokhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v13

    .line 324
    move-object v13, v10

    const-string v14, "Content-Length"

    invoke-virtual {v13, v14}, Lokhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v13

    .line 325
    move-object v13, v10

    const-string v14, "Content-Type"

    invoke-virtual {v13, v14}, Lokhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v13

    .line 332
    :cond_9
    move-object v13, v0

    move-object v14, v1

    move-object v15, v8

    invoke-direct {v13, v14, v15}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->sameConnection(Lokhttp3/Response;Lokhttp3/HttpUrl;)Z

    move-result v13

    if-nez v13, :cond_a

    .line 333
    move-object v13, v10

    const-string v14, "Authorization"

    invoke-virtual {v13, v14}, Lokhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v13

    .line 336
    :cond_a
    move-object v13, v10

    move-object v14, v8

    invoke-virtual {v13, v14}, Lokhttp3/Request$Builder;->url(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    move-result-object v13

    invoke-virtual {v13}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v13

    move-object v0, v13

    goto/16 :goto_1

    .line 319
    :cond_b
    move v13, v11

    if-eqz v13, :cond_c

    move-object v13, v1

    invoke-virtual {v13}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v13

    invoke-virtual {v13}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v13

    :goto_4
    move-object v12, v13

    .line 320
    move-object v13, v10

    move-object v14, v5

    move-object v15, v12

    invoke-virtual {v13, v14, v15}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v13

    goto :goto_3

    .line 319
    :cond_c
    const/4 v13, 0x0

    goto :goto_4

    .line 342
    :sswitch_4
    move-object v13, v1

    invoke-virtual {v13}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v13

    invoke-virtual {v13}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v13

    instance-of v13, v13, Lokhttp3/internal/http/UnrepeatableRequestBody;

    if-eqz v13, :cond_d

    .line 343
    const/4 v13, 0x0

    move-object v0, v13

    goto/16 :goto_1

    .line 346
    :cond_d
    move-object v13, v1

    invoke-virtual {v13}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v13

    move-object v0, v13

    goto/16 :goto_1

    .line 273
    :sswitch_data_0
    .sparse-switch
        0x12c -> :sswitch_3
        0x12d -> :sswitch_3
        0x12e -> :sswitch_3
        0x12f -> :sswitch_3
        0x133 -> :sswitch_2
        0x134 -> :sswitch_2
        0x191 -> :sswitch_1
        0x197 -> :sswitch_0
        0x198 -> :sswitch_4
    .end sparse-switch
.end method

.method private isRecoverable(Ljava/io/IOException;Z)Z
    .locals 4

    .prologue
    .line 229
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v1

    instance-of v3, v3, Ljava/net/ProtocolException;

    if-eqz v3, :cond_0

    .line 230
    const/4 v3, 0x0

    move v0, v3

    .line 256
    :goto_0
    return v0

    .line 235
    :cond_0
    move-object v3, v1

    instance-of v3, v3, Ljava/io/InterruptedIOException;

    if-eqz v3, :cond_2

    .line 236
    move-object v3, v1

    instance-of v3, v3, Ljava/net/SocketTimeoutException;

    if-eqz v3, :cond_1

    move v3, v2

    if-nez v3, :cond_1

    const/4 v3, 0x1

    :goto_1
    move v0, v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 241
    :cond_2
    move-object v3, v1

    instance-of v3, v3, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz v3, :cond_3

    .line 244
    move-object v3, v1

    invoke-virtual {v3}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    instance-of v3, v3, Ljava/security/cert/CertificateException;

    if-eqz v3, :cond_3

    .line 245
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 248
    :cond_3
    move-object v3, v1

    instance-of v3, v3, Ljavax/net/ssl/SSLPeerUnverifiedException;

    if-eqz v3, :cond_4

    .line 250
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 256
    :cond_4
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0
.end method

.method private recover(Ljava/io/IOException;ZLokhttp3/Request;)Z
    .locals 7

    .prologue
    .line 209
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, v0

    iget-object v4, v4, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lokhttp3/internal/connection/StreamAllocation;

    move-object v5, v1

    invoke-virtual {v4, v5}, Lokhttp3/internal/connection/StreamAllocation;->streamFailed(Ljava/io/IOException;)V

    .line 212
    move-object v4, v0

    iget-object v4, v4, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v4}, Lokhttp3/OkHttpClient;->retryOnConnectionFailure()Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x0

    move v0, v4

    .line 224
    :goto_0
    return v0

    .line 215
    :cond_0
    move v4, v2

    if-eqz v4, :cond_1

    move-object v4, v3

    invoke-virtual {v4}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v4

    instance-of v4, v4, Lokhttp3/internal/http/UnrepeatableRequestBody;

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    .line 218
    :cond_1
    move-object v4, v0

    move-object v5, v1

    move v6, v2

    invoke-direct {v4, v5, v6}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->isRecoverable(Ljava/io/IOException;Z)Z

    move-result v4

    if-nez v4, :cond_2

    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    .line 221
    :cond_2
    move-object v4, v0

    iget-object v4, v4, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lokhttp3/internal/connection/StreamAllocation;

    invoke-virtual {v4}, Lokhttp3/internal/connection/StreamAllocation;->hasMoreRoutes()Z

    move-result v4

    if-nez v4, :cond_3

    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    .line 224
    :cond_3
    const/4 v4, 0x1

    move v0, v4

    goto :goto_0
.end method

.method private sameConnection(Lokhttp3/Response;Lokhttp3/HttpUrl;)Z
    .locals 6

    .prologue
    .line 358
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v1

    invoke-virtual {v4}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v4

    move-object v3, v4

    .line 359
    move-object v4, v3

    invoke-virtual {v4}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v4

    move-object v5, v2

    invoke-virtual {v5}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v3

    .line 360
    invoke-virtual {v4}, Lokhttp3/HttpUrl;->port()I

    move-result v4

    move-object v5, v2

    invoke-virtual {v5}, Lokhttp3/HttpUrl;->port()I

    move-result v5

    if-ne v4, v5, :cond_0

    move-object v4, v3

    .line 361
    invoke-virtual {v4}, Lokhttp3/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object v4

    move-object v5, v2

    invoke-virtual {v5}, Lokhttp3/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    .line 359
    :goto_0
    move v0, v4

    return v0

    .line 361
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 4

    .prologue
    .line 86
    move-object v0, p0

    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->canceled:Z

    .line 87
    move-object v2, v0

    iget-object v2, v2, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lokhttp3/internal/connection/StreamAllocation;

    move-object v1, v2

    .line 88
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Lokhttp3/internal/connection/StreamAllocation;->cancel()V

    .line 89
    :cond_0
    return-void
.end method

.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 104
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v10, v1

    invoke-interface {v10}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v10

    move-object v2, v10

    .line 106
    move-object v10, v0

    new-instance v11, Lokhttp3/internal/connection/StreamAllocation;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    move-object v13, v0

    iget-object v13, v13, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    .line 107
    invoke-virtual {v13}, Lokhttp3/OkHttpClient;->connectionPool()Lokhttp3/ConnectionPool;

    move-result-object v13

    move-object v14, v0

    move-object v15, v2

    invoke-virtual {v15}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v15

    invoke-direct {v14, v15}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->createAddress(Lokhttp3/HttpUrl;)Lokhttp3/Address;

    move-result-object v14

    move-object v15, v0

    iget-object v15, v15, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->callStackTrace:Ljava/lang/Object;

    invoke-direct {v12, v13, v14, v15}, Lokhttp3/internal/connection/StreamAllocation;-><init>(Lokhttp3/ConnectionPool;Lokhttp3/Address;Ljava/lang/Object;)V

    iput-object v11, v10, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lokhttp3/internal/connection/StreamAllocation;

    .line 109
    const/4 v10, 0x0

    move v3, v10

    .line 110
    const/4 v10, 0x0

    move-object v4, v10

    .line 112
    :cond_0
    :goto_0
    move-object v10, v0

    iget-boolean v10, v10, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->canceled:Z

    if-eqz v10, :cond_1

    .line 113
    move-object v10, v0

    iget-object v10, v10, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lokhttp3/internal/connection/StreamAllocation;

    invoke-virtual {v10}, Lokhttp3/internal/connection/StreamAllocation;->release()V

    .line 114
    new-instance v10, Ljava/io/IOException;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    const-string v12, "Canceled"

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 117
    :cond_1
    const/4 v10, 0x0

    move-object v5, v10

    .line 118
    const/4 v10, 0x1

    move v6, v10

    .line 120
    move-object v10, v1

    :try_start_0
    check-cast v10, Lokhttp3/internal/http/RealInterceptorChain;

    move-object v11, v2

    move-object v12, v0

    iget-object v12, v12, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lokhttp3/internal/connection/StreamAllocation;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v10, v11, v12, v13, v14}, Lokhttp3/internal/http/RealInterceptorChain;->proceed(Lokhttp3/Request;Lokhttp3/internal/connection/StreamAllocation;Lokhttp3/internal/http/HttpCodec;Lokhttp3/Connection;)Lokhttp3/Response;
    :try_end_0
    .catch Lokhttp3/internal/connection/RouteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v10

    move-object v5, v10

    .line 121
    const/4 v10, 0x0

    move v6, v10

    .line 137
    move v10, v6

    if-eqz v10, :cond_2

    .line 138
    move-object v10, v0

    iget-object v10, v10, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lokhttp3/internal/connection/StreamAllocation;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lokhttp3/internal/connection/StreamAllocation;->streamFailed(Ljava/io/IOException;)V

    .line 139
    move-object v10, v0

    iget-object v10, v10, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lokhttp3/internal/connection/StreamAllocation;

    invoke-virtual {v10}, Lokhttp3/internal/connection/StreamAllocation;->release()V

    .line 144
    :cond_2
    move-object v10, v4

    if-eqz v10, :cond_3

    .line 145
    move-object v10, v5

    invoke-virtual {v10}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object v10

    move-object v11, v4

    .line 146
    invoke-virtual {v11}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object v11

    const/4 v12, 0x0

    .line 147
    invoke-virtual {v11, v12}, Lokhttp3/Response$Builder;->body(Lokhttp3/ResponseBody;)Lokhttp3/Response$Builder;

    move-result-object v11

    .line 148
    invoke-virtual {v11}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v11

    .line 146
    invoke-virtual {v10, v11}, Lokhttp3/Response$Builder;->priorResponse(Lokhttp3/Response;)Lokhttp3/Response$Builder;

    move-result-object v10

    .line 149
    invoke-virtual {v10}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v10

    move-object v5, v10

    .line 152
    :cond_3
    move-object v10, v0

    move-object v11, v5

    invoke-direct {v10, v11}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->followUpRequest(Lokhttp3/Response;)Lokhttp3/Request;

    move-result-object v10

    move-object v7, v10

    .line 154
    move-object v10, v7

    if-nez v10, :cond_9

    .line 155
    move-object v10, v0

    iget-boolean v10, v10, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->forWebSocket:Z

    if-nez v10, :cond_4

    .line 156
    move-object v10, v0

    iget-object v10, v10, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lokhttp3/internal/connection/StreamAllocation;

    invoke-virtual {v10}, Lokhttp3/internal/connection/StreamAllocation;->release()V

    .line 158
    :cond_4
    move-object v10, v5

    move-object v0, v10

    return-object v0

    .line 122
    :catch_0
    move-exception v10

    move-object v7, v10

    .line 124
    move-object v10, v0

    move-object v11, v7

    :try_start_1
    invoke-virtual {v11}, Lokhttp3/internal/connection/RouteException;->getLastConnectException()Ljava/io/IOException;

    move-result-object v11

    const/4 v12, 0x0

    move-object v13, v2

    invoke-direct {v10, v11, v12, v13}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->recover(Ljava/io/IOException;ZLokhttp3/Request;)Z

    move-result v10

    if-nez v10, :cond_6

    .line 125
    move-object v10, v7

    invoke-virtual {v10}, Lokhttp3/internal/connection/RouteException;->getLastConnectException()Ljava/io/IOException;

    move-result-object v10

    throw v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 137
    :catchall_0
    move-exception v10

    move-object v9, v10

    move v10, v6

    if-eqz v10, :cond_5

    .line 138
    move-object v10, v0

    iget-object v10, v10, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lokhttp3/internal/connection/StreamAllocation;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lokhttp3/internal/connection/StreamAllocation;->streamFailed(Ljava/io/IOException;)V

    .line 139
    move-object v10, v0

    iget-object v10, v10, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lokhttp3/internal/connection/StreamAllocation;

    invoke-virtual {v10}, Lokhttp3/internal/connection/StreamAllocation;->release()V

    :cond_5
    move-object v10, v9

    throw v10

    .line 127
    :cond_6
    const/4 v10, 0x0

    move v6, v10

    .line 137
    move v10, v6

    if-eqz v10, :cond_0

    .line 138
    move-object v10, v0

    iget-object v10, v10, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lokhttp3/internal/connection/StreamAllocation;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lokhttp3/internal/connection/StreamAllocation;->streamFailed(Ljava/io/IOException;)V

    .line 139
    move-object v10, v0

    iget-object v10, v10, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lokhttp3/internal/connection/StreamAllocation;

    invoke-virtual {v10}, Lokhttp3/internal/connection/StreamAllocation;->release()V

    goto/16 :goto_0

    .line 129
    :catch_1
    move-exception v10

    move-object v7, v10

    .line 131
    move-object v10, v7

    :try_start_2
    instance-of v10, v10, Lokhttp3/internal/http2/ConnectionShutdownException;

    if-nez v10, :cond_7

    const/4 v10, 0x1

    :goto_1
    move v8, v10

    .line 132
    move-object v10, v0

    move-object v11, v7

    move v12, v8

    move-object v13, v2

    invoke-direct {v10, v11, v12, v13}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->recover(Ljava/io/IOException;ZLokhttp3/Request;)Z

    move-result v10

    if-nez v10, :cond_8

    move-object v10, v7

    throw v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 131
    :cond_7
    const/4 v10, 0x0

    goto :goto_1

    .line 133
    :cond_8
    const/4 v10, 0x0

    move v6, v10

    .line 137
    move v10, v6

    if-eqz v10, :cond_0

    .line 138
    move-object v10, v0

    iget-object v10, v10, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lokhttp3/internal/connection/StreamAllocation;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lokhttp3/internal/connection/StreamAllocation;->streamFailed(Ljava/io/IOException;)V

    .line 139
    move-object v10, v0

    iget-object v10, v10, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lokhttp3/internal/connection/StreamAllocation;

    invoke-virtual {v10}, Lokhttp3/internal/connection/StreamAllocation;->release()V

    goto/16 :goto_0

    .line 161
    :cond_9
    move-object v10, v5

    invoke-virtual {v10}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v10

    invoke-static {v10}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 163
    add-int/lit8 v3, v3, 0x1

    move v10, v3

    const/16 v11, 0x14

    if-le v10, v11, :cond_a

    .line 164
    move-object v10, v0

    iget-object v10, v10, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lokhttp3/internal/connection/StreamAllocation;

    invoke-virtual {v10}, Lokhttp3/internal/connection/StreamAllocation;->release()V

    .line 165
    new-instance v10, Ljava/net/ProtocolException;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    new-instance v12, Ljava/lang/StringBuilder;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Too many follow-up requests: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move v13, v3

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 168
    :cond_a
    move-object v10, v7

    invoke-virtual {v10}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v10

    instance-of v10, v10, Lokhttp3/internal/http/UnrepeatableRequestBody;

    if-eqz v10, :cond_b

    .line 169
    move-object v10, v0

    iget-object v10, v10, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lokhttp3/internal/connection/StreamAllocation;

    invoke-virtual {v10}, Lokhttp3/internal/connection/StreamAllocation;->release()V

    .line 170
    new-instance v10, Ljava/net/HttpRetryException;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    const-string v12, "Cannot retry streamed HTTP body"

    move-object v13, v5

    invoke-virtual {v13}, Lokhttp3/Response;->code()I

    move-result v13

    invoke-direct {v11, v12, v13}, Ljava/net/HttpRetryException;-><init>(Ljava/lang/String;I)V

    throw v10

    .line 173
    :cond_b
    move-object v10, v0

    move-object v11, v5

    move-object v12, v7

    invoke-virtual {v12}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->sameConnection(Lokhttp3/Response;Lokhttp3/HttpUrl;)Z

    move-result v10

    if-nez v10, :cond_d

    .line 174
    move-object v10, v0

    iget-object v10, v10, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lokhttp3/internal/connection/StreamAllocation;

    invoke-virtual {v10}, Lokhttp3/internal/connection/StreamAllocation;->release()V

    .line 175
    move-object v10, v0

    new-instance v11, Lokhttp3/internal/connection/StreamAllocation;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    move-object v13, v0

    iget-object v13, v13, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    .line 176
    invoke-virtual {v13}, Lokhttp3/OkHttpClient;->connectionPool()Lokhttp3/ConnectionPool;

    move-result-object v13

    move-object v14, v0

    move-object v15, v7

    invoke-virtual {v15}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v15

    invoke-direct {v14, v15}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->createAddress(Lokhttp3/HttpUrl;)Lokhttp3/Address;

    move-result-object v14

    move-object v15, v0

    iget-object v15, v15, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->callStackTrace:Ljava/lang/Object;

    invoke-direct {v12, v13, v14, v15}, Lokhttp3/internal/connection/StreamAllocation;-><init>(Lokhttp3/ConnectionPool;Lokhttp3/Address;Ljava/lang/Object;)V

    iput-object v11, v10, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lokhttp3/internal/connection/StreamAllocation;

    .line 182
    :cond_c
    move-object v10, v7

    move-object v2, v10

    .line 183
    move-object v10, v5

    move-object v4, v10

    .line 184
    goto/16 :goto_0

    .line 177
    :cond_d
    move-object v10, v0

    iget-object v10, v10, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lokhttp3/internal/connection/StreamAllocation;

    invoke-virtual {v10}, Lokhttp3/internal/connection/StreamAllocation;->codec()Lokhttp3/internal/http/HttpCodec;

    move-result-object v10

    if-eqz v10, :cond_c

    .line 178
    new-instance v10, Ljava/lang/IllegalStateException;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    new-instance v12, Ljava/lang/StringBuilder;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Closing the body of "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v13, v5

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " didn\'t close its backing stream. Bad interceptor?"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10
.end method

.method public isCanceled()Z
    .locals 2

    .prologue
    .line 92
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->canceled:Z

    move v0, v1

    return v0
.end method

.method public setCallStackTrace(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 96
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->callStackTrace:Ljava/lang/Object;

    .line 97
    return-void
.end method

.method public streamAllocation()Lokhttp3/internal/connection/StreamAllocation;
    .locals 2

    .prologue
    .line 100
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lokhttp3/internal/connection/StreamAllocation;

    move-object v0, v1

    return-object v0
.end method
