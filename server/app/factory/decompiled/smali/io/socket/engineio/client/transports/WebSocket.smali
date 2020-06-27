.class public Lio/socket/engineio/client/transports/WebSocket;
.super Lio/socket/engineio/client/Transport;
.source "WebSocket.java"


# static fields
.field public static final NAME:Ljava/lang/String; = "websocket"

.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private ws:Lokhttp3/WebSocket;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lio/socket/engineio/client/transports/PollingXHR;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lio/socket/engineio/client/transports/WebSocket;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lio/socket/engineio/client/Transport$Options;)V
    .locals 4

    .prologue
    .line 33
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lio/socket/engineio/client/Transport;-><init>(Lio/socket/engineio/client/Transport$Options;)V

    .line 34
    move-object v2, v0

    const-string v3, "websocket"

    iput-object v3, v2, Lio/socket/engineio/client/transports/WebSocket;->name:Ljava/lang/String;

    .line 35
    return-void
.end method

.method static synthetic access$000(Lio/socket/engineio/client/transports/WebSocket;)V
    .locals 2

    .prologue
    .line 24
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lio/socket/engineio/client/transports/WebSocket;->onOpen()V

    return-void
.end method

.method static synthetic access$100(Lio/socket/engineio/client/transports/WebSocket;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 24
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lio/socket/engineio/client/transports/WebSocket;->onData(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lio/socket/engineio/client/transports/WebSocket;[B)V
    .locals 4

    .prologue
    .line 24
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lio/socket/engineio/client/transports/WebSocket;->onData([B)V

    return-void
.end method

.method static synthetic access$300(Lio/socket/engineio/client/transports/WebSocket;)V
    .locals 2

    .prologue
    .line 24
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lio/socket/engineio/client/transports/WebSocket;->onClose()V

    return-void
.end method

.method static synthetic access$400(Lio/socket/engineio/client/transports/WebSocket;Ljava/lang/String;Ljava/lang/Exception;)Lio/socket/engineio/client/Transport;
    .locals 6

    .prologue
    .line 24
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lio/socket/engineio/client/transports/WebSocket;->onError(Ljava/lang/String;Ljava/lang/Exception;)Lio/socket/engineio/client/Transport;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method static synthetic access$500(Lio/socket/engineio/client/transports/WebSocket;)Lokhttp3/WebSocket;
    .locals 2

    .prologue
    .line 24
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lio/socket/engineio/client/transports/WebSocket;->ws:Lokhttp3/WebSocket;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$600()Ljava/util/logging/Logger;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lio/socket/engineio/client/transports/WebSocket;->logger:Ljava/util/logging/Logger;

    return-object v0
.end method


# virtual methods
.method protected doClose()V
    .locals 5

    .prologue
    .line 189
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lio/socket/engineio/client/transports/WebSocket;->ws:Lokhttp3/WebSocket;

    if-eqz v2, :cond_0

    .line 191
    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lio/socket/engineio/client/transports/WebSocket;->ws:Lokhttp3/WebSocket;

    const/16 v3, 0x3e8

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Lokhttp3/WebSocket;->close(ILjava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 196
    :cond_0
    :goto_0
    move-object v2, v0

    iget-object v2, v2, Lio/socket/engineio/client/transports/WebSocket;->ws:Lokhttp3/WebSocket;

    if-eqz v2, :cond_1

    .line 197
    move-object v2, v0

    iget-object v2, v2, Lio/socket/engineio/client/transports/WebSocket;->ws:Lokhttp3/WebSocket;

    invoke-interface {v2}, Lokhttp3/WebSocket;->cancel()V

    .line 199
    :cond_1
    return-void

    .line 192
    :catch_0
    move-exception v2

    move-object v1, v2

    goto :goto_0
.end method

.method protected doOpen()V
    .locals 17

    .prologue
    .line 38
    move-object/from16 v0, p0

    new-instance v9, Ljava/util/TreeMap;

    move-object/from16 v16, v9

    move-object/from16 v9, v16

    move-object/from16 v10, v16

    sget-object v11, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v10, v11}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    move-object v1, v9

    .line 39
    move-object v9, v0

    const-string v10, "requestHeaders"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    const/4 v13, 0x0

    move-object v14, v1

    aput-object v14, v12, v13

    invoke-virtual {v9, v10, v11}, Lio/socket/engineio/client/transports/WebSocket;->emit(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/emitter/Emitter;

    move-result-object v9

    .line 41
    move-object v9, v0

    move-object v2, v9

    .line 42
    new-instance v9, Lokhttp3/OkHttpClient$Builder;

    move-object/from16 v16, v9

    move-object/from16 v9, v16

    move-object/from16 v10, v16

    invoke-direct {v10}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    const-wide/16 v10, 0x0

    sget-object v12, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 44
    invoke-virtual {v9, v10, v11, v12}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v9

    const-wide/16 v10, 0x0

    sget-object v12, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 45
    invoke-virtual {v9, v10, v11, v12}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v9

    const-wide/16 v10, 0x0

    sget-object v12, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 46
    invoke-virtual {v9, v10, v11, v12}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v9

    move-object v3, v9

    .line 48
    move-object v9, v0

    iget-object v9, v9, Lio/socket/engineio/client/transports/WebSocket;->sslContext:Ljavax/net/ssl/SSLContext;

    if-eqz v9, :cond_0

    .line 49
    move-object v9, v0

    iget-object v9, v9, Lio/socket/engineio/client/transports/WebSocket;->sslContext:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v9}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v9

    move-object v4, v9

    .line 50
    move-object v9, v3

    move-object v10, v4

    invoke-virtual {v9, v10}, Lokhttp3/OkHttpClient$Builder;->sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v9

    .line 52
    :cond_0
    move-object v9, v0

    iget-object v9, v9, Lio/socket/engineio/client/transports/WebSocket;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    if-eqz v9, :cond_1

    .line 53
    move-object v9, v3

    move-object v10, v0

    iget-object v10, v10, Lio/socket/engineio/client/transports/WebSocket;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    invoke-virtual {v9, v10}, Lokhttp3/OkHttpClient$Builder;->hostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v9

    .line 55
    :cond_1
    move-object v9, v0

    iget-object v9, v9, Lio/socket/engineio/client/transports/WebSocket;->proxy:Ljava/net/Proxy;

    if-eqz v9, :cond_2

    .line 56
    move-object v9, v3

    move-object v10, v0

    iget-object v10, v10, Lio/socket/engineio/client/transports/WebSocket;->proxy:Ljava/net/Proxy;

    invoke-virtual {v9, v10}, Lokhttp3/OkHttpClient$Builder;->proxy(Ljava/net/Proxy;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v9

    .line 58
    :cond_2
    move-object v9, v0

    iget-object v9, v9, Lio/socket/engineio/client/transports/WebSocket;->proxyLogin:Ljava/lang/String;

    if-eqz v9, :cond_3

    move-object v9, v0

    iget-object v9, v9, Lio/socket/engineio/client/transports/WebSocket;->proxyLogin:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_3

    .line 59
    move-object v9, v0

    iget-object v9, v9, Lio/socket/engineio/client/transports/WebSocket;->proxyLogin:Ljava/lang/String;

    move-object v10, v0

    iget-object v10, v10, Lio/socket/engineio/client/transports/WebSocket;->proxyPassword:Ljava/lang/String;

    invoke-static {v9, v10}, Lokhttp3/Credentials;->basic(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v4, v9

    .line 61
    move-object v9, v3

    new-instance v10, Lio/socket/engineio/client/transports/WebSocket$1;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    move-object v12, v0

    move-object v13, v4

    invoke-direct {v11, v12, v13}, Lio/socket/engineio/client/transports/WebSocket$1;-><init>(Lio/socket/engineio/client/transports/WebSocket;Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Lokhttp3/OkHttpClient$Builder;->proxyAuthenticator(Lokhttp3/Authenticator;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v9

    .line 70
    :cond_3
    new-instance v9, Lokhttp3/Request$Builder;

    move-object/from16 v16, v9

    move-object/from16 v9, v16

    move-object/from16 v10, v16

    invoke-direct {v10}, Lokhttp3/Request$Builder;-><init>()V

    move-object v10, v0

    invoke-virtual {v10}, Lio/socket/engineio/client/transports/WebSocket;->uri()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v9

    move-object v4, v9

    .line 71
    move-object v9, v1

    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-object v5, v9

    :goto_0
    move-object v9, v5

    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    move-object v9, v5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    move-object v6, v9

    .line 72
    move-object v9, v6

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-object v7, v9

    :goto_1
    move-object v9, v7

    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    move-object v9, v7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    move-object v8, v9

    .line 73
    move-object v9, v4

    move-object v10, v6

    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    move-object v11, v8

    invoke-virtual {v9, v10, v11}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v9

    .line 74
    goto :goto_1

    .line 75
    :cond_4
    goto :goto_0

    .line 76
    :cond_5
    move-object v9, v4

    invoke-virtual {v9}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v9

    move-object v5, v9

    .line 77
    move-object v9, v3

    invoke-virtual {v9}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v9

    move-object v6, v9

    .line 78
    move-object v9, v0

    move-object v10, v6

    move-object v11, v5

    new-instance v12, Lio/socket/engineio/client/transports/WebSocket$2;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    move-object v14, v0

    move-object v15, v2

    invoke-direct {v13, v14, v15}, Lio/socket/engineio/client/transports/WebSocket$2;-><init>(Lio/socket/engineio/client/transports/WebSocket;Lio/socket/engineio/client/transports/WebSocket;)V

    invoke-virtual {v10, v11, v12}, Lokhttp3/OkHttpClient;->newWebSocket(Lokhttp3/Request;Lokhttp3/WebSocketListener;)Lokhttp3/WebSocket;

    move-result-object v10

    iput-object v10, v9, Lio/socket/engineio/client/transports/WebSocket;->ws:Lokhttp3/WebSocket;

    .line 140
    move-object v9, v6

    invoke-virtual {v9}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v9

    invoke-virtual {v9}, Lokhttp3/Dispatcher;->executorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 141
    return-void
.end method

.method protected uri()Ljava/lang/String;
    .locals 10

    .prologue
    .line 202
    move-object v0, p0

    move-object v6, v0

    iget-object v6, v6, Lio/socket/engineio/client/transports/WebSocket;->query:Ljava/util/Map;

    move-object v1, v6

    .line 203
    move-object v6, v1

    if-nez v6, :cond_0

    .line 204
    new-instance v6, Ljava/util/HashMap;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    move-object v1, v6

    .line 206
    :cond_0
    move-object v6, v0

    iget-boolean v6, v6, Lio/socket/engineio/client/transports/WebSocket;->secure:Z

    if-eqz v6, :cond_6

    const-string v6, "wss"

    :goto_0
    move-object v2, v6

    .line 207
    const-string v6, ""

    move-object v3, v6

    .line 209
    move-object v6, v0

    iget v6, v6, Lio/socket/engineio/client/transports/WebSocket;->port:I

    if-lez v6, :cond_3

    const-string v6, "wss"

    move-object v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v6, v0

    iget v6, v6, Lio/socket/engineio/client/transports/WebSocket;->port:I

    const/16 v7, 0x1bb

    if-ne v6, v7, :cond_2

    :cond_1
    const-string v6, "ws"

    move-object v7, v2

    .line 210
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    move-object v6, v0

    iget v6, v6, Lio/socket/engineio/client/transports/WebSocket;->port:I

    const/16 v7, 0x50

    if-eq v6, v7, :cond_3

    .line 211
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v0

    iget v7, v7, Lio/socket/engineio/client/transports/WebSocket;->port:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v3, v6

    .line 214
    :cond_3
    move-object v6, v0

    iget-boolean v6, v6, Lio/socket/engineio/client/transports/WebSocket;->timestampRequests:Z

    if-eqz v6, :cond_4

    .line 215
    move-object v6, v1

    move-object v7, v0

    iget-object v7, v7, Lio/socket/engineio/client/transports/WebSocket;->timestampParam:Ljava/lang/String;

    invoke-static {}, Lio/socket/yeast/Yeast;->yeast()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 218
    :cond_4
    move-object v6, v1

    invoke-static {v6}, Lio/socket/parseqs/ParseQS;->encode(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    .line 219
    move-object v6, v4

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_5

    .line 220
    new-instance v6, Ljava/lang/StringBuilder;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "?"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    .line 223
    :cond_5
    move-object v6, v0

    iget-object v6, v6, Lio/socket/engineio/client/transports/WebSocket;->hostname:Ljava/lang/String;

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    move v5, v6

    .line 224
    new-instance v6, Ljava/lang/StringBuilder;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "://"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move v7, v5

    if-eqz v7, :cond_7

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v0

    iget-object v8, v8, Lio/socket/engineio/client/transports/WebSocket;->hostname:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_1
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v0

    iget-object v7, v7, Lio/socket/engineio/client/transports/WebSocket;->path:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    return-object v0

    .line 206
    :cond_6
    const-string v6, "ws"

    goto/16 :goto_0

    .line 224
    :cond_7
    move-object v7, v0

    iget-object v7, v7, Lio/socket/engineio/client/transports/WebSocket;->hostname:Ljava/lang/String;

    goto :goto_1
.end method

.method protected write([Lio/socket/engineio/parser/Packet;)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/socket/utf8/UTF8Exception;
        }
    .end annotation

    .prologue
    .line 144
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v9, v0

    move-object v2, v9

    .line 145
    move-object v9, v0

    const/4 v10, 0x0

    iput-boolean v10, v9, Lio/socket/engineio/client/transports/WebSocket;->writable:Z

    .line 147
    new-instance v9, Lio/socket/engineio/client/transports/WebSocket$3;

    move-object/from16 v16, v9

    move-object/from16 v9, v16

    move-object/from16 v10, v16

    move-object v11, v0

    move-object v12, v2

    invoke-direct {v10, v11, v12}, Lio/socket/engineio/client/transports/WebSocket$3;-><init>(Lio/socket/engineio/client/transports/WebSocket;Lio/socket/engineio/client/transports/WebSocket;)V

    move-object v3, v9

    .line 162
    const/4 v9, 0x1

    new-array v9, v9, [I

    move-object/from16 v16, v9

    move-object/from16 v9, v16

    move-object/from16 v10, v16

    const/4 v11, 0x0

    move-object v12, v1

    array-length v12, v12

    aput v12, v10, v11

    move-object v4, v9

    .line 163
    move-object v9, v1

    move-object v5, v9

    move-object v9, v5

    array-length v9, v9

    move v6, v9

    const/4 v9, 0x0

    move v7, v9

    :goto_0
    move v9, v7

    move v10, v6

    if-ge v9, v10, :cond_0

    move-object v9, v5

    move v10, v7

    aget-object v9, v9, v10

    move-object v8, v9

    .line 164
    move-object v9, v0

    iget-object v9, v9, Lio/socket/engineio/client/transports/WebSocket;->readyState:Lio/socket/engineio/client/Transport$ReadyState;

    sget-object v10, Lio/socket/engineio/client/Transport$ReadyState;->OPENING:Lio/socket/engineio/client/Transport$ReadyState;

    if-eq v9, v10, :cond_1

    move-object v9, v0

    iget-object v9, v9, Lio/socket/engineio/client/transports/WebSocket;->readyState:Lio/socket/engineio/client/Transport$ReadyState;

    sget-object v10, Lio/socket/engineio/client/Transport$ReadyState;->OPEN:Lio/socket/engineio/client/Transport$ReadyState;

    if-eq v9, v10, :cond_1

    .line 186
    :cond_0
    return-void

    .line 169
    :cond_1
    move-object v9, v8

    new-instance v10, Lio/socket/engineio/client/transports/WebSocket$4;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    move-object v12, v0

    move-object v13, v2

    move-object v14, v4

    move-object v15, v3

    invoke-direct {v11, v12, v13, v14, v15}, Lio/socket/engineio/client/transports/WebSocket$4;-><init>(Lio/socket/engineio/client/transports/WebSocket;Lio/socket/engineio/client/transports/WebSocket;[ILjava/lang/Runnable;)V

    invoke-static {v9, v10}, Lio/socket/engineio/parser/Parser;->encodePacket(Lio/socket/engineio/parser/Packet;Lio/socket/engineio/parser/Parser$EncodeCallback;)V

    .line 163
    add-int/lit8 v7, v7, 0x1

    goto :goto_0
.end method
