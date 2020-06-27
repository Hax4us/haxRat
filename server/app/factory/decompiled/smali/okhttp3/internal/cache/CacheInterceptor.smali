.class public final Lokhttp3/internal/cache/CacheInterceptor;
.super Ljava/lang/Object;
.source "CacheInterceptor.java"

# interfaces
.implements Lokhttp3/Interceptor;


# instance fields
.field final cache:Lokhttp3/internal/cache/InternalCache;


# direct methods
.method public constructor <init>(Lokhttp3/internal/cache/InternalCache;)V
    .locals 4

    .prologue
    .line 48
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 49
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lokhttp3/internal/cache/CacheInterceptor;->cache:Lokhttp3/internal/cache/InternalCache;

    .line 50
    return-void
.end method

.method private cacheWritingResponse(Lokhttp3/internal/cache/CacheRequest;Lokhttp3/Response;)Lokhttp3/Response;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 170
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object v7, v1

    if-nez v7, :cond_0

    move-object v7, v2

    move-object v0, v7

    .line 219
    :goto_0
    return-object v0

    .line 171
    :cond_0
    move-object v7, v1

    invoke-interface {v7}, Lokhttp3/internal/cache/CacheRequest;->body()Lokio/Sink;

    move-result-object v7

    move-object v3, v7

    .line 172
    move-object v7, v3

    if-nez v7, :cond_1

    move-object v7, v2

    move-object v0, v7

    goto :goto_0

    .line 174
    :cond_1
    move-object v7, v2

    invoke-virtual {v7}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v7

    invoke-virtual {v7}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    move-result-object v7

    move-object v4, v7

    .line 175
    move-object v7, v3

    invoke-static {v7}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v7

    move-object v5, v7

    .line 177
    new-instance v7, Lokhttp3/internal/cache/CacheInterceptor$1;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    move-object v9, v0

    move-object v10, v4

    move-object v11, v1

    move-object v12, v5

    invoke-direct {v8, v9, v10, v11, v12}, Lokhttp3/internal/cache/CacheInterceptor$1;-><init>(Lokhttp3/internal/cache/CacheInterceptor;Lokio/BufferedSource;Lokhttp3/internal/cache/CacheRequest;Lokio/BufferedSink;)V

    move-object v6, v7

    .line 219
    move-object v7, v2

    invoke-virtual {v7}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object v7

    new-instance v8, Lokhttp3/internal/http/RealResponseBody;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    move-object v10, v2

    .line 220
    invoke-virtual {v10}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v10

    move-object v11, v6

    invoke-static {v11}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lokhttp3/internal/http/RealResponseBody;-><init>(Lokhttp3/Headers;Lokio/BufferedSource;)V

    invoke-virtual {v7, v8}, Lokhttp3/Response$Builder;->body(Lokhttp3/ResponseBody;)Lokhttp3/Response$Builder;

    move-result-object v7

    .line 221
    invoke-virtual {v7}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v7

    .line 219
    move-object v0, v7

    goto :goto_0
.end method

.method private static combine(Lokhttp3/Headers;Lokhttp3/Headers;)Lokhttp3/Headers;
    .locals 13

    .prologue
    .line 226
    move-object v0, p0

    move-object v1, p1

    new-instance v7, Lokhttp3/Headers$Builder;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    invoke-direct {v8}, Lokhttp3/Headers$Builder;-><init>()V

    move-object v2, v7

    .line 228
    const/4 v7, 0x0

    move v3, v7

    move-object v7, v0

    invoke-virtual {v7}, Lokhttp3/Headers;->size()I

    move-result v7

    move v4, v7

    :goto_0
    move v7, v3

    move v8, v4

    if-ge v7, v8, :cond_3

    .line 229
    move-object v7, v0

    move v8, v3

    invoke-virtual {v7, v8}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    .line 230
    move-object v7, v0

    move v8, v3

    invoke-virtual {v7, v8}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    .line 231
    const-string v7, "Warning"

    move-object v8, v5

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    move-object v7, v6

    const-string v8, "1"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 228
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 234
    :cond_1
    move-object v7, v5

    invoke-static {v7}, Lokhttp3/internal/cache/CacheInterceptor;->isEndToEnd(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    move-object v7, v1

    move-object v8, v5

    invoke-virtual {v7, v8}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_0

    .line 235
    :cond_2
    sget-object v7, Lokhttp3/internal/Internal;->instance:Lokhttp3/internal/Internal;

    move-object v8, v2

    move-object v9, v5

    move-object v10, v6

    invoke-virtual {v7, v8, v9, v10}, Lokhttp3/internal/Internal;->addLenient(Lokhttp3/Headers$Builder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 239
    :cond_3
    const/4 v7, 0x0

    move v3, v7

    move-object v7, v1

    invoke-virtual {v7}, Lokhttp3/Headers;->size()I

    move-result v7

    move v4, v7

    :goto_2
    move v7, v3

    move v8, v4

    if-ge v7, v8, :cond_6

    .line 240
    move-object v7, v1

    move v8, v3

    invoke-virtual {v7, v8}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    .line 241
    const-string v7, "Content-Length"

    move-object v8, v5

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 239
    :cond_4
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 244
    :cond_5
    move-object v7, v5

    invoke-static {v7}, Lokhttp3/internal/cache/CacheInterceptor;->isEndToEnd(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 245
    sget-object v7, Lokhttp3/internal/Internal;->instance:Lokhttp3/internal/Internal;

    move-object v8, v2

    move-object v9, v5

    move-object v10, v1

    move v11, v3

    invoke-virtual {v10, v11}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v8, v9, v10}, Lokhttp3/internal/Internal;->addLenient(Lokhttp3/Headers$Builder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 249
    :cond_6
    move-object v7, v2

    invoke-virtual {v7}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    move-result-object v7

    move-object v0, v7

    return-object v0
.end method

.method static isEndToEnd(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 257
    move-object v0, p0

    const-string v1, "Connection"

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "Keep-Alive"

    move-object v2, v0

    .line 258
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "Proxy-Authenticate"

    move-object v2, v0

    .line 259
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "Proxy-Authorization"

    move-object v2, v0

    .line 260
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "TE"

    move-object v2, v0

    .line 261
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "Trailers"

    move-object v2, v0

    .line 262
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "Transfer-Encoding"

    move-object v2, v0

    .line 263
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "Upgrade"

    move-object v2, v0

    .line 264
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 257
    :goto_0
    move v0, v1

    return v0

    .line 264
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private maybeCache(Lokhttp3/Response;Lokhttp3/Request;Lokhttp3/internal/cache/InternalCache;)Lokhttp3/internal/cache/CacheRequest;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 144
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v3

    if-nez v5, :cond_0

    const/4 v5, 0x0

    move-object v0, v5

    .line 159
    :goto_0
    return-object v0

    .line 147
    :cond_0
    move-object v5, v1

    move-object v6, v2

    invoke-static {v5, v6}, Lokhttp3/internal/cache/CacheStrategy;->isCacheable(Lokhttp3/Response;Lokhttp3/Request;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 148
    move-object v5, v2

    invoke-virtual {v5}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lokhttp3/internal/http/HttpMethod;->invalidatesCache(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 150
    move-object v5, v3

    move-object v6, v2

    :try_start_0
    invoke-interface {v5, v6}, Lokhttp3/internal/cache/InternalCache;->remove(Lokhttp3/Request;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    :cond_1
    :goto_1
    const/4 v5, 0x0

    move-object v0, v5

    goto :goto_0

    .line 151
    :catch_0
    move-exception v5

    move-object v4, v5

    goto :goto_1

    .line 159
    :cond_2
    move-object v5, v3

    move-object v6, v1

    invoke-interface {v5, v6}, Lokhttp3/internal/cache/InternalCache;->put(Lokhttp3/Response;)Lokhttp3/internal/cache/CacheRequest;

    move-result-object v5

    move-object v0, v5

    goto :goto_0
.end method

.method private static stripBody(Lokhttp3/Response;)Lokhttp3/Response;
    .locals 3

    .prologue
    .line 137
    move-object v0, p0

    move-object v1, v0

    if-eqz v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 138
    invoke-virtual {v1}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lokhttp3/Response$Builder;->body(Lokhttp3/ResponseBody;)Lokhttp3/Response$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v1

    .line 137
    :goto_0
    move-object v0, v1

    return-object v0

    .line 138
    :cond_0
    move-object v1, v0

    goto :goto_0
.end method


# virtual methods
.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 53
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v11, v0

    iget-object v11, v11, Lokhttp3/internal/cache/CacheInterceptor;->cache:Lokhttp3/internal/cache/InternalCache;

    if-eqz v11, :cond_2

    move-object v11, v0

    iget-object v11, v11, Lokhttp3/internal/cache/CacheInterceptor;->cache:Lokhttp3/internal/cache/InternalCache;

    move-object v12, v1

    .line 54
    invoke-interface {v12}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v12

    invoke-interface {v11, v12}, Lokhttp3/internal/cache/InternalCache;->get(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v11

    :goto_0
    move-object v2, v11

    .line 57
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    move-wide v3, v11

    .line 59
    new-instance v11, Lokhttp3/internal/cache/CacheStrategy$Factory;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    move-wide v13, v3

    move-object v15, v1

    invoke-interface {v15}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v15

    move-object/from16 v16, v2

    invoke-direct/range {v12 .. v16}, Lokhttp3/internal/cache/CacheStrategy$Factory;-><init>(JLokhttp3/Request;Lokhttp3/Response;)V

    invoke-virtual {v11}, Lokhttp3/internal/cache/CacheStrategy$Factory;->get()Lokhttp3/internal/cache/CacheStrategy;

    move-result-object v11

    move-object v5, v11

    .line 60
    move-object v11, v5

    iget-object v11, v11, Lokhttp3/internal/cache/CacheStrategy;->networkRequest:Lokhttp3/Request;

    move-object v6, v11

    .line 61
    move-object v11, v5

    iget-object v11, v11, Lokhttp3/internal/cache/CacheStrategy;->cacheResponse:Lokhttp3/Response;

    move-object v7, v11

    .line 63
    move-object v11, v0

    iget-object v11, v11, Lokhttp3/internal/cache/CacheInterceptor;->cache:Lokhttp3/internal/cache/InternalCache;

    if-eqz v11, :cond_0

    .line 64
    move-object v11, v0

    iget-object v11, v11, Lokhttp3/internal/cache/CacheInterceptor;->cache:Lokhttp3/internal/cache/InternalCache;

    move-object v12, v5

    invoke-interface {v11, v12}, Lokhttp3/internal/cache/InternalCache;->trackResponse(Lokhttp3/internal/cache/CacheStrategy;)V

    .line 67
    :cond_0
    move-object v11, v2

    if-eqz v11, :cond_1

    move-object v11, v7

    if-nez v11, :cond_1

    .line 68
    move-object v11, v2

    invoke-virtual {v11}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v11

    invoke-static {v11}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 72
    :cond_1
    move-object v11, v6

    if-nez v11, :cond_3

    move-object v11, v7

    if-nez v11, :cond_3

    .line 73
    new-instance v11, Lokhttp3/Response$Builder;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    invoke-direct {v12}, Lokhttp3/Response$Builder;-><init>()V

    move-object v12, v1

    .line 74
    invoke-interface {v12}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v12

    invoke-virtual {v11, v12}, Lokhttp3/Response$Builder;->request(Lokhttp3/Request;)Lokhttp3/Response$Builder;

    move-result-object v11

    sget-object v12, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    .line 75
    invoke-virtual {v11, v12}, Lokhttp3/Response$Builder;->protocol(Lokhttp3/Protocol;)Lokhttp3/Response$Builder;

    move-result-object v11

    const/16 v12, 0x1f8

    .line 76
    invoke-virtual {v11, v12}, Lokhttp3/Response$Builder;->code(I)Lokhttp3/Response$Builder;

    move-result-object v11

    const-string v12, "Unsatisfiable Request (only-if-cached)"

    .line 77
    invoke-virtual {v11, v12}, Lokhttp3/Response$Builder;->message(Ljava/lang/String;)Lokhttp3/Response$Builder;

    move-result-object v11

    sget-object v12, Lokhttp3/internal/Util;->EMPTY_RESPONSE:Lokhttp3/ResponseBody;

    .line 78
    invoke-virtual {v11, v12}, Lokhttp3/Response$Builder;->body(Lokhttp3/ResponseBody;)Lokhttp3/Response$Builder;

    move-result-object v11

    const-wide/16 v12, -0x1

    .line 79
    invoke-virtual {v11, v12, v13}, Lokhttp3/Response$Builder;->sentRequestAtMillis(J)Lokhttp3/Response$Builder;

    move-result-object v11

    .line 80
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Lokhttp3/Response$Builder;->receivedResponseAtMillis(J)Lokhttp3/Response$Builder;

    move-result-object v11

    .line 81
    invoke-virtual {v11}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v11

    .line 73
    move-object v0, v11

    .line 133
    :goto_1
    return-object v0

    .line 54
    :cond_2
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 85
    :cond_3
    move-object v11, v6

    if-nez v11, :cond_4

    .line 86
    move-object v11, v7

    invoke-virtual {v11}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object v11

    move-object v12, v7

    .line 87
    invoke-static {v12}, Lokhttp3/internal/cache/CacheInterceptor;->stripBody(Lokhttp3/Response;)Lokhttp3/Response;

    move-result-object v12

    invoke-virtual {v11, v12}, Lokhttp3/Response$Builder;->cacheResponse(Lokhttp3/Response;)Lokhttp3/Response$Builder;

    move-result-object v11

    .line 88
    invoke-virtual {v11}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v11

    .line 86
    move-object v0, v11

    goto :goto_1

    .line 91
    :cond_4
    const/4 v11, 0x0

    move-object v8, v11

    .line 93
    move-object v11, v1

    move-object v12, v6

    :try_start_0
    invoke-interface {v11, v12}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v11

    move-object v8, v11

    .line 96
    move-object v11, v8

    if-nez v11, :cond_5

    move-object v11, v2

    if-eqz v11, :cond_5

    .line 97
    move-object v11, v2

    invoke-virtual {v11}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v11

    invoke-static {v11}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 102
    :cond_5
    move-object v11, v7

    if-eqz v11, :cond_8

    .line 103
    move-object v11, v8

    invoke-virtual {v11}, Lokhttp3/Response;->code()I

    move-result v11

    const/16 v12, 0x130

    if-ne v11, v12, :cond_7

    .line 104
    move-object v11, v7

    invoke-virtual {v11}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object v11

    move-object v12, v7

    .line 105
    invoke-virtual {v12}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v12

    move-object v13, v8

    invoke-virtual {v13}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v13

    invoke-static {v12, v13}, Lokhttp3/internal/cache/CacheInterceptor;->combine(Lokhttp3/Headers;Lokhttp3/Headers;)Lokhttp3/Headers;

    move-result-object v12

    invoke-virtual {v11, v12}, Lokhttp3/Response$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Response$Builder;

    move-result-object v11

    move-object v12, v8

    .line 106
    invoke-virtual {v12}, Lokhttp3/Response;->sentRequestAtMillis()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Lokhttp3/Response$Builder;->sentRequestAtMillis(J)Lokhttp3/Response$Builder;

    move-result-object v11

    move-object v12, v8

    .line 107
    invoke-virtual {v12}, Lokhttp3/Response;->receivedResponseAtMillis()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Lokhttp3/Response$Builder;->receivedResponseAtMillis(J)Lokhttp3/Response$Builder;

    move-result-object v11

    move-object v12, v7

    .line 108
    invoke-static {v12}, Lokhttp3/internal/cache/CacheInterceptor;->stripBody(Lokhttp3/Response;)Lokhttp3/Response;

    move-result-object v12

    invoke-virtual {v11, v12}, Lokhttp3/Response$Builder;->cacheResponse(Lokhttp3/Response;)Lokhttp3/Response$Builder;

    move-result-object v11

    move-object v12, v8

    .line 109
    invoke-static {v12}, Lokhttp3/internal/cache/CacheInterceptor;->stripBody(Lokhttp3/Response;)Lokhttp3/Response;

    move-result-object v12

    invoke-virtual {v11, v12}, Lokhttp3/Response$Builder;->networkResponse(Lokhttp3/Response;)Lokhttp3/Response$Builder;

    move-result-object v11

    .line 110
    invoke-virtual {v11}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v11

    move-object v9, v11

    .line 111
    move-object v11, v8

    invoke-virtual {v11}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v11

    invoke-virtual {v11}, Lokhttp3/ResponseBody;->close()V

    .line 115
    move-object v11, v0

    iget-object v11, v11, Lokhttp3/internal/cache/CacheInterceptor;->cache:Lokhttp3/internal/cache/InternalCache;

    invoke-interface {v11}, Lokhttp3/internal/cache/InternalCache;->trackConditionalCacheHit()V

    .line 116
    move-object v11, v0

    iget-object v11, v11, Lokhttp3/internal/cache/CacheInterceptor;->cache:Lokhttp3/internal/cache/InternalCache;

    move-object v12, v7

    move-object v13, v9

    invoke-interface {v11, v12, v13}, Lokhttp3/internal/cache/InternalCache;->update(Lokhttp3/Response;Lokhttp3/Response;)V

    .line 117
    move-object v11, v9

    move-object v0, v11

    goto/16 :goto_1

    .line 96
    :catchall_0
    move-exception v11

    move-object v9, v11

    move-object v11, v8

    if-nez v11, :cond_6

    move-object v11, v2

    if-eqz v11, :cond_6

    .line 97
    move-object v11, v2

    invoke-virtual {v11}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v11

    invoke-static {v11}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    :cond_6
    move-object v11, v9

    throw v11

    .line 119
    :cond_7
    move-object v11, v7

    invoke-virtual {v11}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v11

    invoke-static {v11}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 123
    :cond_8
    move-object v11, v8

    invoke-virtual {v11}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object v11

    move-object v12, v7

    .line 124
    invoke-static {v12}, Lokhttp3/internal/cache/CacheInterceptor;->stripBody(Lokhttp3/Response;)Lokhttp3/Response;

    move-result-object v12

    invoke-virtual {v11, v12}, Lokhttp3/Response$Builder;->cacheResponse(Lokhttp3/Response;)Lokhttp3/Response$Builder;

    move-result-object v11

    move-object v12, v8

    .line 125
    invoke-static {v12}, Lokhttp3/internal/cache/CacheInterceptor;->stripBody(Lokhttp3/Response;)Lokhttp3/Response;

    move-result-object v12

    invoke-virtual {v11, v12}, Lokhttp3/Response$Builder;->networkResponse(Lokhttp3/Response;)Lokhttp3/Response$Builder;

    move-result-object v11

    .line 126
    invoke-virtual {v11}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v11

    move-object v9, v11

    .line 128
    move-object v11, v9

    invoke-static {v11}, Lokhttp3/internal/http/HttpHeaders;->hasBody(Lokhttp3/Response;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 129
    move-object v11, v0

    move-object v12, v9

    move-object v13, v8

    invoke-virtual {v13}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v13

    move-object v14, v0

    iget-object v14, v14, Lokhttp3/internal/cache/CacheInterceptor;->cache:Lokhttp3/internal/cache/InternalCache;

    invoke-direct {v11, v12, v13, v14}, Lokhttp3/internal/cache/CacheInterceptor;->maybeCache(Lokhttp3/Response;Lokhttp3/Request;Lokhttp3/internal/cache/InternalCache;)Lokhttp3/internal/cache/CacheRequest;

    move-result-object v11

    move-object v10, v11

    .line 130
    move-object v11, v0

    move-object v12, v10

    move-object v13, v9

    invoke-direct {v11, v12, v13}, Lokhttp3/internal/cache/CacheInterceptor;->cacheWritingResponse(Lokhttp3/internal/cache/CacheRequest;Lokhttp3/Response;)Lokhttp3/Response;

    move-result-object v11

    move-object v9, v11

    .line 133
    :cond_9
    move-object v11, v9

    move-object v0, v11

    goto/16 :goto_1
.end method
