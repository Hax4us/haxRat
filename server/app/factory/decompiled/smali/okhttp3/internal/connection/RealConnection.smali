.class public final Lokhttp3/internal/connection/RealConnection;
.super Lokhttp3/internal/http2/Http2Connection$Listener;
.source "RealConnection.java"

# interfaces
.implements Lokhttp3/Connection;


# instance fields
.field public allocationLimit:I

.field public final allocations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/Reference",
            "<",
            "Lokhttp3/internal/connection/StreamAllocation;",
            ">;>;"
        }
    .end annotation
.end field

.field private handshake:Lokhttp3/Handshake;

.field public volatile http2Connection:Lokhttp3/internal/http2/Http2Connection;

.field public idleAtNanos:J

.field public noNewStreams:Z

.field private protocol:Lokhttp3/Protocol;

.field private rawSocket:Ljava/net/Socket;

.field private final route:Lokhttp3/Route;

.field public sink:Lokio/BufferedSink;

.field public socket:Ljava/net/Socket;

.field public source:Lokio/BufferedSource;

.field public successCount:I


# direct methods
.method public constructor <init>(Lokhttp3/Route;)V
    .locals 6

    .prologue
    .line 85
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Lokhttp3/internal/http2/Http2Connection$Listener;-><init>()V

    .line 81
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lokhttp3/internal/connection/RealConnection;->allocations:Ljava/util/List;

    .line 83
    move-object v2, v0

    const-wide v3, 0x7fffffffffffffffL

    iput-wide v3, v2, Lokhttp3/internal/connection/RealConnection;->idleAtNanos:J

    .line 86
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;

    .line 87
    return-void
.end method

.method private buildConnection(IIILokhttp3/internal/connection/ConnectionSpecSelector;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 173
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, v0

    move v6, v1

    move v7, v2

    invoke-direct {v5, v6, v7}, Lokhttp3/internal/connection/RealConnection;->connectSocket(II)V

    .line 174
    move-object v5, v0

    move v6, v2

    move v7, v3

    move-object v8, v4

    invoke-direct {v5, v6, v7, v8}, Lokhttp3/internal/connection/RealConnection;->establishProtocol(IILokhttp3/internal/connection/ConnectionSpecSelector;)V

    .line 175
    return-void
.end method

.method private buildTunneledConnection(IIILokhttp3/internal/connection/ConnectionSpecSelector;)V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 145
    move-object v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object v9, v0

    invoke-direct {v9}, Lokhttp3/internal/connection/RealConnection;->createTunnelRequest()Lokhttp3/Request;

    move-result-object v9

    move-object v5, v9

    .line 146
    move-object v9, v5

    invoke-virtual {v9}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v9

    move-object v6, v9

    .line 147
    const/4 v9, 0x0

    move v7, v9

    .line 148
    const/16 v9, 0x15

    move v8, v9

    .line 150
    :goto_0
    add-int/lit8 v7, v7, 0x1

    move v9, v7

    move v10, v8

    if-le v9, v10, :cond_0

    .line 151
    new-instance v9, Ljava/net/ProtocolException;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    new-instance v11, Ljava/lang/StringBuilder;

    move-object v14, v11

    move-object v11, v14

    move-object v12, v14

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Too many tunnel connections attempted: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move v12, v8

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 154
    :cond_0
    move-object v9, v0

    move v10, v1

    move v11, v2

    invoke-direct {v9, v10, v11}, Lokhttp3/internal/connection/RealConnection;->connectSocket(II)V

    .line 155
    move-object v9, v0

    move v10, v2

    move v11, v3

    move-object v12, v5

    move-object v13, v6

    invoke-direct {v9, v10, v11, v12, v13}, Lokhttp3/internal/connection/RealConnection;->createTunnel(IILokhttp3/Request;Lokhttp3/HttpUrl;)Lokhttp3/Request;

    move-result-object v9

    move-object v5, v9

    .line 157
    move-object v9, v5

    if-nez v9, :cond_1

    .line 167
    move-object v9, v0

    move v10, v2

    move v11, v3

    move-object v12, v4

    invoke-direct {v9, v10, v11, v12}, Lokhttp3/internal/connection/RealConnection;->establishProtocol(IILokhttp3/internal/connection/ConnectionSpecSelector;)V

    .line 168
    return-void

    .line 161
    :cond_1
    move-object v9, v0

    iget-object v9, v9, Lokhttp3/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    invoke-static {v9}, Lokhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    .line 162
    move-object v9, v0

    const/4 v10, 0x0

    iput-object v10, v9, Lokhttp3/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    .line 163
    move-object v9, v0

    const/4 v10, 0x0

    iput-object v10, v9, Lokhttp3/internal/connection/RealConnection;->sink:Lokio/BufferedSink;

    .line 164
    move-object v9, v0

    const/4 v10, 0x0

    iput-object v10, v9, Lokhttp3/internal/connection/RealConnection;->source:Lokio/BufferedSource;

    goto :goto_0
.end method

.method private connectSocket(II)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 178
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v7, v0

    iget-object v7, v7, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;

    invoke-virtual {v7}, Lokhttp3/Route;->proxy()Ljava/net/Proxy;

    move-result-object v7

    move-object v3, v7

    .line 179
    move-object v7, v0

    iget-object v7, v7, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;

    invoke-virtual {v7}, Lokhttp3/Route;->address()Lokhttp3/Address;

    move-result-object v7

    move-object v4, v7

    .line 181
    move-object v7, v0

    move-object v8, v3

    invoke-virtual {v8}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v8

    sget-object v9, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v8, v9, :cond_0

    move-object v8, v3

    invoke-virtual {v8}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v8

    sget-object v9, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v8, v9, :cond_1

    :cond_0
    move-object v8, v4

    .line 182
    invoke-virtual {v8}, Lokhttp3/Address;->socketFactory()Ljavax/net/SocketFactory;

    move-result-object v8

    invoke-virtual {v8}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v8

    :goto_0
    iput-object v8, v7, Lokhttp3/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    .line 185
    move-object v7, v0

    iget-object v7, v7, Lokhttp3/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    move v8, v2

    invoke-virtual {v7, v8}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 187
    :try_start_0
    invoke-static {}, Lokhttp3/internal/platform/Platform;->get()Lokhttp3/internal/platform/Platform;

    move-result-object v7

    move-object v8, v0

    iget-object v8, v8, Lokhttp3/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    move-object v9, v0

    iget-object v9, v9, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;

    invoke-virtual {v9}, Lokhttp3/Route;->socketAddress()Ljava/net/InetSocketAddress;

    move-result-object v9

    move v10, v1

    invoke-virtual {v7, v8, v9, v10}, Lokhttp3/internal/platform/Platform;->connectSocket(Ljava/net/Socket;Ljava/net/InetSocketAddress;I)V
    :try_end_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Lokhttp3/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    invoke-static {v8}, Lokio/Okio;->source(Ljava/net/Socket;)Lokio/Source;

    move-result-object v8

    invoke-static {v8}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v8

    iput-object v8, v7, Lokhttp3/internal/connection/RealConnection;->source:Lokio/BufferedSource;

    .line 194
    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Lokhttp3/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    invoke-static {v8}, Lokio/Okio;->sink(Ljava/net/Socket;)Lokio/Sink;

    move-result-object v8

    invoke-static {v8}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v8

    iput-object v8, v7, Lokhttp3/internal/connection/RealConnection;->sink:Lokio/BufferedSink;

    .line 195
    return-void

    .line 182
    :cond_1
    new-instance v8, Ljava/net/Socket;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    move-object v10, v3

    invoke-direct {v9, v10}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V

    goto :goto_0

    .line 188
    :catch_0
    move-exception v7

    move-object v5, v7

    .line 189
    new-instance v7, Ljava/net/ConnectException;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v11, v9

    move-object v9, v11

    move-object v10, v11

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to connect to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v0

    iget-object v10, v10, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;

    invoke-virtual {v10}, Lokhttp3/Route;->socketAddress()Ljava/net/InetSocketAddress;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;)V

    move-object v6, v7

    .line 190
    move-object v7, v6

    move-object v8, v5

    invoke-virtual {v7, v8}, Ljava/net/ConnectException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v7

    .line 191
    move-object v7, v6

    throw v7
.end method

.method private connectTls(IILokhttp3/internal/connection/ConnectionSpecSelector;)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 225
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object v12, v0

    iget-object v12, v12, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;

    invoke-virtual {v12}, Lokhttp3/Route;->address()Lokhttp3/Address;

    move-result-object v12

    move-object v4, v12

    .line 226
    move-object v12, v4

    invoke-virtual {v12}, Lokhttp3/Address;->sslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v12

    move-object v5, v12

    .line 227
    const/4 v12, 0x0

    move v6, v12

    .line 228
    const/4 v12, 0x0

    move-object v7, v12

    .line 231
    move-object v12, v5

    move-object v13, v0

    :try_start_0
    iget-object v13, v13, Lokhttp3/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    move-object v14, v4

    .line 232
    invoke-virtual {v14}, Lokhttp3/Address;->url()Lokhttp3/HttpUrl;

    move-result-object v14

    invoke-virtual {v14}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v14

    move-object v15, v4

    invoke-virtual {v15}, Lokhttp3/Address;->url()Lokhttp3/HttpUrl;

    move-result-object v15

    invoke-virtual {v15}, Lokhttp3/HttpUrl;->port()I

    move-result v15

    const/16 v16, 0x1

    .line 231
    invoke-virtual/range {v12 .. v16}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v12

    check-cast v12, Ljavax/net/ssl/SSLSocket;

    move-object v7, v12

    .line 235
    move-object v12, v3

    move-object v13, v7

    invoke-virtual {v12, v13}, Lokhttp3/internal/connection/ConnectionSpecSelector;->configureSecureSocket(Ljavax/net/ssl/SSLSocket;)Lokhttp3/ConnectionSpec;

    move-result-object v12

    move-object v8, v12

    .line 236
    move-object v12, v8

    invoke-virtual {v12}, Lokhttp3/ConnectionSpec;->supportsTlsExtensions()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 237
    invoke-static {}, Lokhttp3/internal/platform/Platform;->get()Lokhttp3/internal/platform/Platform;

    move-result-object v12

    move-object v13, v7

    move-object v14, v4

    .line 238
    invoke-virtual {v14}, Lokhttp3/Address;->url()Lokhttp3/HttpUrl;

    move-result-object v14

    invoke-virtual {v14}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v14

    move-object v15, v4

    invoke-virtual {v15}, Lokhttp3/Address;->protocols()Ljava/util/List;

    move-result-object v15

    .line 237
    invoke-virtual {v12, v13, v14, v15}, Lokhttp3/internal/platform/Platform;->configureTlsExtensions(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V

    .line 242
    :cond_0
    move-object v12, v7

    invoke-virtual {v12}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 243
    move-object v12, v7

    invoke-virtual {v12}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v12

    invoke-static {v12}, Lokhttp3/Handshake;->get(Ljavax/net/ssl/SSLSession;)Lokhttp3/Handshake;

    move-result-object v12

    move-object v9, v12

    .line 246
    move-object v12, v4

    invoke-virtual {v12}, Lokhttp3/Address;->hostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v12

    move-object v13, v4

    invoke-virtual {v13}, Lokhttp3/Address;->url()Lokhttp3/HttpUrl;

    move-result-object v13

    invoke-virtual {v13}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v13

    move-object v14, v7

    invoke-virtual {v14}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v14

    invoke-interface {v12, v13, v14}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 247
    move-object v12, v9

    invoke-virtual {v12}, Lokhttp3/Handshake;->peerCertificates()Ljava/util/List;

    move-result-object v12

    const/4 v13, 0x0

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/security/cert/X509Certificate;

    move-object v10, v12

    .line 248
    new-instance v12, Ljavax/net/ssl/SSLPeerUnverifiedException;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v17, v14

    move-object/from16 v14, v17

    move-object/from16 v15, v17

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Hostname "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v15, v4

    invoke-virtual {v15}, Lokhttp3/Address;->url()Lokhttp3/HttpUrl;

    move-result-object v15

    invoke-virtual {v15}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " not verified:\n    certificate: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v15, v10

    .line 249
    invoke-static {v15}, Lokhttp3/CertificatePinner;->pin(Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\n    DN: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v15, v10

    .line 250
    invoke-virtual {v15}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v15

    invoke-interface {v15}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\n    subjectAltNames: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v15, v10

    .line 251
    invoke-static {v15}, Lokhttp3/internal/tls/OkHostnameVerifier;->allSubjectAltNames(Ljava/security/cert/X509Certificate;)Ljava/util/List;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v12
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 270
    :catch_0
    move-exception v12

    move-object v8, v12

    .line 271
    move-object v12, v8

    :try_start_1
    invoke-static {v12}, Lokhttp3/internal/Util;->isAndroidGetsocknameError(Ljava/lang/AssertionError;)Z

    move-result v12

    if-eqz v12, :cond_8

    new-instance v12, Ljava/io/IOException;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    move-object v14, v8

    invoke-direct {v13, v14}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 274
    :catchall_0
    move-exception v12

    move-object v11, v12

    move-object v12, v7

    if-eqz v12, :cond_1

    .line 275
    invoke-static {}, Lokhttp3/internal/platform/Platform;->get()Lokhttp3/internal/platform/Platform;

    move-result-object v12

    move-object v13, v7

    invoke-virtual {v12, v13}, Lokhttp3/internal/platform/Platform;->afterHandshake(Ljavax/net/ssl/SSLSocket;)V

    .line 277
    :cond_1
    move v12, v6

    if-nez v12, :cond_2

    .line 278
    move-object v12, v7

    invoke-static {v12}, Lokhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    :cond_2
    move-object v12, v11

    throw v12

    .line 255
    :cond_3
    move-object v12, v4

    :try_start_2
    invoke-virtual {v12}, Lokhttp3/Address;->certificatePinner()Lokhttp3/CertificatePinner;

    move-result-object v12

    move-object v13, v4

    invoke-virtual {v13}, Lokhttp3/Address;->url()Lokhttp3/HttpUrl;

    move-result-object v13

    invoke-virtual {v13}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v13

    move-object v14, v9

    .line 256
    invoke-virtual {v14}, Lokhttp3/Handshake;->peerCertificates()Ljava/util/List;

    move-result-object v14

    .line 255
    invoke-virtual {v12, v13, v14}, Lokhttp3/CertificatePinner;->check(Ljava/lang/String;Ljava/util/List;)V

    .line 259
    move-object v12, v8

    invoke-virtual {v12}, Lokhttp3/ConnectionSpec;->supportsTlsExtensions()Z

    move-result v12

    if-eqz v12, :cond_6

    .line 260
    invoke-static {}, Lokhttp3/internal/platform/Platform;->get()Lokhttp3/internal/platform/Platform;

    move-result-object v12

    move-object v13, v7

    invoke-virtual {v12, v13}, Lokhttp3/internal/platform/Platform;->getSelectedProtocol(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;

    move-result-object v12

    :goto_0
    move-object v10, v12

    .line 262
    move-object v12, v0

    move-object v13, v7

    iput-object v13, v12, Lokhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    .line 263
    move-object v12, v0

    move-object v13, v0

    iget-object v13, v13, Lokhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    invoke-static {v13}, Lokio/Okio;->source(Ljava/net/Socket;)Lokio/Source;

    move-result-object v13

    invoke-static {v13}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v13

    iput-object v13, v12, Lokhttp3/internal/connection/RealConnection;->source:Lokio/BufferedSource;

    .line 264
    move-object v12, v0

    move-object v13, v0

    iget-object v13, v13, Lokhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    invoke-static {v13}, Lokio/Okio;->sink(Ljava/net/Socket;)Lokio/Sink;

    move-result-object v13

    invoke-static {v13}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v13

    iput-object v13, v12, Lokhttp3/internal/connection/RealConnection;->sink:Lokio/BufferedSink;

    .line 265
    move-object v12, v0

    move-object v13, v9

    iput-object v13, v12, Lokhttp3/internal/connection/RealConnection;->handshake:Lokhttp3/Handshake;

    .line 266
    move-object v12, v0

    move-object v13, v10

    if-eqz v13, :cond_7

    move-object v13, v10

    .line 267
    invoke-static {v13}, Lokhttp3/Protocol;->get(Ljava/lang/String;)Lokhttp3/Protocol;

    move-result-object v13

    :goto_1
    iput-object v13, v12, Lokhttp3/internal/connection/RealConnection;->protocol:Lokhttp3/Protocol;
    :try_end_2
    .catch Ljava/lang/AssertionError; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 269
    const/4 v12, 0x1

    move v6, v12

    .line 274
    move-object v12, v7

    if-eqz v12, :cond_4

    .line 275
    invoke-static {}, Lokhttp3/internal/platform/Platform;->get()Lokhttp3/internal/platform/Platform;

    move-result-object v12

    move-object v13, v7

    invoke-virtual {v12, v13}, Lokhttp3/internal/platform/Platform;->afterHandshake(Ljavax/net/ssl/SSLSocket;)V

    .line 277
    :cond_4
    move v12, v6

    if-nez v12, :cond_5

    .line 278
    move-object v12, v7

    invoke-static {v12}, Lokhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    .line 281
    :cond_5
    return-void

    .line 260
    :cond_6
    const/4 v12, 0x0

    goto :goto_0

    .line 267
    :cond_7
    :try_start_3
    sget-object v13, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;
    :try_end_3
    .catch Ljava/lang/AssertionError; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 272
    :cond_8
    move-object v12, v8

    :try_start_4
    throw v12
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method private createTunnel(IILokhttp3/Request;Lokhttp3/HttpUrl;)Lokhttp3/Request;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 290
    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    new-instance v12, Ljava/lang/StringBuilder;

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "CONNECT "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v13, v5

    const/4 v14, 0x1

    invoke-static {v13, v14}, Lokhttp3/internal/Util;->hostHeader(Lokhttp3/HttpUrl;Z)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " HTTP/1.1"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object v6, v12

    .line 292
    :goto_0
    new-instance v12, Lokhttp3/internal/http1/Http1Codec;

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lokhttp3/internal/connection/RealConnection;->source:Lokio/BufferedSource;

    move-object/from16 v16, v0

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lokhttp3/internal/connection/RealConnection;->sink:Lokio/BufferedSink;

    move-object/from16 v17, v0

    invoke-direct/range {v13 .. v17}, Lokhttp3/internal/http1/Http1Codec;-><init>(Lokhttp3/OkHttpClient;Lokhttp3/internal/connection/StreamAllocation;Lokio/BufferedSource;Lokio/BufferedSink;)V

    move-object v7, v12

    .line 293
    move-object v12, v1

    iget-object v12, v12, Lokhttp3/internal/connection/RealConnection;->source:Lokio/BufferedSource;

    invoke-interface {v12}, Lokio/BufferedSource;->timeout()Lokio/Timeout;

    move-result-object v12

    move v13, v2

    int-to-long v13, v13

    sget-object v15, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v12, v13, v14, v15}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    move-result-object v12

    .line 294
    move-object v12, v1

    iget-object v12, v12, Lokhttp3/internal/connection/RealConnection;->sink:Lokio/BufferedSink;

    invoke-interface {v12}, Lokio/BufferedSink;->timeout()Lokio/Timeout;

    move-result-object v12

    move v13, v3

    int-to-long v13, v13

    sget-object v15, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v12, v13, v14, v15}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    move-result-object v12

    .line 295
    move-object v12, v7

    move-object v13, v4

    invoke-virtual {v13}, Lokhttp3/Request;->headers()Lokhttp3/Headers;

    move-result-object v13

    move-object v14, v6

    invoke-virtual {v12, v13, v14}, Lokhttp3/internal/http1/Http1Codec;->writeRequest(Lokhttp3/Headers;Ljava/lang/String;)V

    .line 296
    move-object v12, v7

    invoke-virtual {v12}, Lokhttp3/internal/http1/Http1Codec;->finishRequest()V

    .line 297
    move-object v12, v7

    invoke-virtual {v12}, Lokhttp3/internal/http1/Http1Codec;->readResponse()Lokhttp3/Response$Builder;

    move-result-object v12

    move-object v13, v4

    invoke-virtual {v12, v13}, Lokhttp3/Response$Builder;->request(Lokhttp3/Request;)Lokhttp3/Response$Builder;

    move-result-object v12

    invoke-virtual {v12}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v12

    move-object v8, v12

    .line 300
    move-object v12, v8

    invoke-static {v12}, Lokhttp3/internal/http/HttpHeaders;->contentLength(Lokhttp3/Response;)J

    move-result-wide v12

    move-wide v9, v12

    .line 301
    move-wide v12, v9

    const-wide/16 v14, -0x1

    cmp-long v12, v12, v14

    if-nez v12, :cond_0

    .line 302
    const-wide/16 v12, 0x0

    move-wide v9, v12

    .line 304
    :cond_0
    move-object v12, v7

    move-wide v13, v9

    invoke-virtual {v12, v13, v14}, Lokhttp3/internal/http1/Http1Codec;->newFixedLengthSource(J)Lokio/Source;

    move-result-object v12

    move-object v11, v12

    .line 305
    move-object v12, v11

    const v13, 0x7fffffff

    sget-object v14, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v12, v13, v14}, Lokhttp3/internal/Util;->skipAll(Lokio/Source;ILjava/util/concurrent/TimeUnit;)Z

    move-result v12

    .line 306
    move-object v12, v11

    invoke-interface {v12}, Lokio/Source;->close()V

    .line 308
    move-object v12, v8

    invoke-virtual {v12}, Lokhttp3/Response;->code()I

    move-result v12

    sparse-switch v12, :sswitch_data_0

    .line 329
    new-instance v12, Ljava/io/IOException;

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v18, v14

    move-object/from16 v14, v18

    move-object/from16 v15, v18

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Unexpected response code for CONNECT: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v15, v8

    .line 330
    invoke-virtual {v15}, Lokhttp3/Response;->code()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 314
    :sswitch_0
    move-object v12, v1

    iget-object v12, v12, Lokhttp3/internal/connection/RealConnection;->source:Lokio/BufferedSource;

    invoke-interface {v12}, Lokio/BufferedSource;->buffer()Lokio/Buffer;

    move-result-object v12

    invoke-virtual {v12}, Lokio/Buffer;->exhausted()Z

    move-result v12

    if-eqz v12, :cond_1

    move-object v12, v1

    iget-object v12, v12, Lokhttp3/internal/connection/RealConnection;->sink:Lokio/BufferedSink;

    invoke-interface {v12}, Lokio/BufferedSink;->buffer()Lokio/Buffer;

    move-result-object v12

    invoke-virtual {v12}, Lokio/Buffer;->exhausted()Z

    move-result v12

    if-nez v12, :cond_2

    .line 315
    :cond_1
    new-instance v12, Ljava/io/IOException;

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    const-string v14, "TLS tunnel buffered too many bytes!"

    invoke-direct {v13, v14}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 317
    :cond_2
    const/4 v12, 0x0

    move-object v1, v12

    .line 324
    :goto_1
    return-object v1

    .line 320
    :sswitch_1
    move-object v12, v1

    iget-object v12, v12, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;

    invoke-virtual {v12}, Lokhttp3/Route;->address()Lokhttp3/Address;

    move-result-object v12

    invoke-virtual {v12}, Lokhttp3/Address;->proxyAuthenticator()Lokhttp3/Authenticator;

    move-result-object v12

    move-object v13, v1

    iget-object v13, v13, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;

    move-object v14, v8

    invoke-interface {v12, v13, v14}, Lokhttp3/Authenticator;->authenticate(Lokhttp3/Route;Lokhttp3/Response;)Lokhttp3/Request;

    move-result-object v12

    move-object v4, v12

    .line 321
    move-object v12, v4

    if-nez v12, :cond_3

    new-instance v12, Ljava/io/IOException;

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    const-string v14, "Failed to authenticate with proxy"

    invoke-direct {v13, v14}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 323
    :cond_3
    const-string v12, "close"

    move-object v13, v8

    const-string v14, "Connection"

    invoke-virtual {v13, v14}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 324
    move-object v12, v4

    move-object v1, v12

    goto :goto_1

    .line 332
    :cond_4
    goto/16 :goto_0

    .line 308
    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0x197 -> :sswitch_1
    .end sparse-switch
.end method

.method private createTunnelRequest()Lokhttp3/Request;
    .locals 6

    .prologue
    .line 341
    move-object v0, p0

    new-instance v1, Lokhttp3/Request$Builder;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    invoke-direct {v2}, Lokhttp3/Request$Builder;-><init>()V

    move-object v2, v0

    iget-object v2, v2, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;

    .line 342
    invoke-virtual {v2}, Lokhttp3/Route;->address()Lokhttp3/Address;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/Address;->url()Lokhttp3/HttpUrl;

    move-result-object v2

    invoke-virtual {v1, v2}, Lokhttp3/Request$Builder;->url(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    move-result-object v1

    const-string v2, "Host"

    move-object v3, v0

    iget-object v3, v3, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;

    .line 343
    invoke-virtual {v3}, Lokhttp3/Route;->address()Lokhttp3/Address;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/Address;->url()Lokhttp3/HttpUrl;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lokhttp3/internal/Util;->hostHeader(Lokhttp3/HttpUrl;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    const-string v2, "Proxy-Connection"

    const-string v3, "Keep-Alive"

    .line 344
    invoke-virtual {v1, v2, v3}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    const-string v2, "User-Agent"

    .line 345
    invoke-static {}, Lokhttp3/internal/Version;->userAgent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    .line 346
    invoke-virtual {v1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v1

    .line 341
    move-object v0, v1

    return-object v0
.end method

.method private establishProtocol(IILokhttp3/internal/connection/ConnectionSpecSelector;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 199
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, v0

    iget-object v5, v5, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;

    invoke-virtual {v5}, Lokhttp3/Route;->address()Lokhttp3/Address;

    move-result-object v5

    invoke-virtual {v5}, Lokhttp3/Address;->sslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 200
    move-object v5, v0

    move v6, v1

    move v7, v2

    move-object v8, v3

    invoke-direct {v5, v6, v7, v8}, Lokhttp3/internal/connection/RealConnection;->connectTls(IILokhttp3/internal/connection/ConnectionSpecSelector;)V

    .line 206
    :goto_0
    move-object v5, v0

    iget-object v5, v5, Lokhttp3/internal/connection/RealConnection;->protocol:Lokhttp3/Protocol;

    sget-object v6, Lokhttp3/Protocol;->HTTP_2:Lokhttp3/Protocol;

    if-ne v5, v6, :cond_1

    .line 207
    move-object v5, v0

    iget-object v5, v5, Lokhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 209
    new-instance v5, Lokhttp3/internal/http2/Http2Connection$Builder;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Lokhttp3/internal/http2/Http2Connection$Builder;-><init>(Z)V

    move-object v6, v0

    iget-object v6, v6, Lokhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    move-object v7, v0

    iget-object v7, v7, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;

    .line 210
    invoke-virtual {v7}, Lokhttp3/Route;->address()Lokhttp3/Address;

    move-result-object v7

    invoke-virtual {v7}, Lokhttp3/Address;->url()Lokhttp3/HttpUrl;

    move-result-object v7

    invoke-virtual {v7}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v7

    move-object v8, v0

    iget-object v8, v8, Lokhttp3/internal/connection/RealConnection;->source:Lokio/BufferedSource;

    move-object v9, v0

    iget-object v9, v9, Lokhttp3/internal/connection/RealConnection;->sink:Lokio/BufferedSink;

    invoke-virtual {v5, v6, v7, v8, v9}, Lokhttp3/internal/http2/Http2Connection$Builder;->socket(Ljava/net/Socket;Ljava/lang/String;Lokio/BufferedSource;Lokio/BufferedSink;)Lokhttp3/internal/http2/Http2Connection$Builder;

    move-result-object v5

    move-object v6, v0

    .line 211
    invoke-virtual {v5, v6}, Lokhttp3/internal/http2/Http2Connection$Builder;->listener(Lokhttp3/internal/http2/Http2Connection$Listener;)Lokhttp3/internal/http2/Http2Connection$Builder;

    move-result-object v5

    .line 212
    invoke-virtual {v5}, Lokhttp3/internal/http2/Http2Connection$Builder;->build()Lokhttp3/internal/http2/Http2Connection;

    move-result-object v5

    move-object v4, v5

    .line 213
    move-object v5, v4

    invoke-virtual {v5}, Lokhttp3/internal/http2/Http2Connection;->start()V

    .line 216
    move-object v5, v0

    move-object v6, v4

    invoke-virtual {v6}, Lokhttp3/internal/http2/Http2Connection;->maxConcurrentStreams()I

    move-result v6

    iput v6, v5, Lokhttp3/internal/connection/RealConnection;->allocationLimit:I

    .line 217
    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Lokhttp3/internal/connection/RealConnection;->http2Connection:Lokhttp3/internal/http2/Http2Connection;

    .line 221
    :goto_1
    return-void

    .line 202
    :cond_0
    move-object v5, v0

    sget-object v6, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    iput-object v6, v5, Lokhttp3/internal/connection/RealConnection;->protocol:Lokhttp3/Protocol;

    .line 203
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lokhttp3/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    iput-object v6, v5, Lokhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    goto :goto_0

    .line 219
    :cond_1
    move-object v5, v0

    const/4 v6, 0x1

    iput v6, v5, Lokhttp3/internal/connection/RealConnection;->allocationLimit:I

    goto :goto_1
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 355
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    invoke-static {v1}, Lokhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    .line 356
    return-void
.end method

.method public connect(IIILjava/util/List;Z)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/List",
            "<",
            "Lokhttp3/ConnectionSpec;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 91
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object v9, v0

    iget-object v9, v9, Lokhttp3/internal/connection/RealConnection;->protocol:Lokhttp3/Protocol;

    if-eqz v9, :cond_0

    new-instance v9, Ljava/lang/IllegalStateException;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    const-string v11, "already connected"

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 93
    :cond_0
    const/4 v9, 0x0

    move-object v6, v9

    .line 94
    new-instance v9, Lokhttp3/internal/connection/ConnectionSpecSelector;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    move-object v11, v4

    invoke-direct {v10, v11}, Lokhttp3/internal/connection/ConnectionSpecSelector;-><init>(Ljava/util/List;)V

    move-object v7, v9

    .line 96
    move-object v9, v0

    iget-object v9, v9, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;

    invoke-virtual {v9}, Lokhttp3/Route;->address()Lokhttp3/Address;

    move-result-object v9

    invoke-virtual {v9}, Lokhttp3/Address;->sslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v9

    if-nez v9, :cond_2

    .line 97
    move-object v9, v4

    sget-object v10, Lokhttp3/ConnectionSpec;->CLEARTEXT:Lokhttp3/ConnectionSpec;

    invoke-interface {v9, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 98
    new-instance v9, Lokhttp3/internal/connection/RouteException;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    new-instance v11, Ljava/net/UnknownServiceException;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const-string v13, "CLEARTEXT communication not enabled for client"

    invoke-direct {v12, v13}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    invoke-direct {v10, v11}, Lokhttp3/internal/connection/RouteException;-><init>(Ljava/io/IOException;)V

    throw v9

    .line 101
    :cond_1
    move-object v9, v0

    iget-object v9, v9, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;

    invoke-virtual {v9}, Lokhttp3/Route;->address()Lokhttp3/Address;

    move-result-object v9

    invoke-virtual {v9}, Lokhttp3/Address;->url()Lokhttp3/HttpUrl;

    move-result-object v9

    invoke-virtual {v9}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v9

    move-object v8, v9

    .line 102
    invoke-static {}, Lokhttp3/internal/platform/Platform;->get()Lokhttp3/internal/platform/Platform;

    move-result-object v9

    move-object v10, v8

    invoke-virtual {v9, v10}, Lokhttp3/internal/platform/Platform;->isCleartextTrafficPermitted(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 103
    new-instance v9, Lokhttp3/internal/connection/RouteException;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    new-instance v11, Ljava/net/UnknownServiceException;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    new-instance v13, Ljava/lang/StringBuilder;

    move-object v15, v13

    move-object v13, v15

    move-object v14, v15

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "CLEARTEXT communication to "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v14, v8

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " not permitted by network security policy"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    invoke-direct {v10, v11}, Lokhttp3/internal/connection/RouteException;-><init>(Ljava/io/IOException;)V

    throw v9

    .line 108
    :cond_2
    :goto_0
    move-object v9, v0

    iget-object v9, v9, Lokhttp3/internal/connection/RealConnection;->protocol:Lokhttp3/Protocol;

    if-nez v9, :cond_7

    .line 110
    move-object v9, v0

    :try_start_0
    iget-object v9, v9, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;

    invoke-virtual {v9}, Lokhttp3/Route;->requiresTunnel()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 111
    move-object v9, v0

    move v10, v1

    move v11, v2

    move v12, v3

    move-object v13, v7

    invoke-direct {v9, v10, v11, v12, v13}, Lokhttp3/internal/connection/RealConnection;->buildTunneledConnection(IIILokhttp3/internal/connection/ConnectionSpecSelector;)V

    .line 135
    :goto_1
    goto :goto_0

    .line 114
    :cond_3
    move-object v9, v0

    move v10, v1

    move v11, v2

    move v12, v3

    move-object v13, v7

    invoke-direct {v9, v10, v11, v12, v13}, Lokhttp3/internal/connection/RealConnection;->buildConnection(IIILokhttp3/internal/connection/ConnectionSpecSelector;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 116
    :catch_0
    move-exception v9

    move-object v8, v9

    .line 117
    move-object v9, v0

    iget-object v9, v9, Lokhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    invoke-static {v9}, Lokhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    .line 118
    move-object v9, v0

    iget-object v9, v9, Lokhttp3/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    invoke-static {v9}, Lokhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    .line 119
    move-object v9, v0

    const/4 v10, 0x0

    iput-object v10, v9, Lokhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    .line 120
    move-object v9, v0

    const/4 v10, 0x0

    iput-object v10, v9, Lokhttp3/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    .line 121
    move-object v9, v0

    const/4 v10, 0x0

    iput-object v10, v9, Lokhttp3/internal/connection/RealConnection;->source:Lokio/BufferedSource;

    .line 122
    move-object v9, v0

    const/4 v10, 0x0

    iput-object v10, v9, Lokhttp3/internal/connection/RealConnection;->sink:Lokio/BufferedSink;

    .line 123
    move-object v9, v0

    const/4 v10, 0x0

    iput-object v10, v9, Lokhttp3/internal/connection/RealConnection;->handshake:Lokhttp3/Handshake;

    .line 124
    move-object v9, v0

    const/4 v10, 0x0

    iput-object v10, v9, Lokhttp3/internal/connection/RealConnection;->protocol:Lokhttp3/Protocol;

    .line 126
    move-object v9, v6

    if-nez v9, :cond_5

    .line 127
    new-instance v9, Lokhttp3/internal/connection/RouteException;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    move-object v11, v8

    invoke-direct {v10, v11}, Lokhttp3/internal/connection/RouteException;-><init>(Ljava/io/IOException;)V

    move-object v6, v9

    .line 132
    :goto_2
    move v9, v5

    if-eqz v9, :cond_4

    move-object v9, v7

    move-object v10, v8

    invoke-virtual {v9, v10}, Lokhttp3/internal/connection/ConnectionSpecSelector;->connectionFailed(Ljava/io/IOException;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 133
    :cond_4
    move-object v9, v6

    throw v9

    .line 129
    :cond_5
    move-object v9, v6

    move-object v10, v8

    invoke-virtual {v9, v10}, Lokhttp3/internal/connection/RouteException;->addConnectException(Ljava/io/IOException;)V

    goto :goto_2

    .line 135
    :cond_6
    goto :goto_0

    .line 137
    :cond_7
    return-void
.end method

.method public handshake()Lokhttp3/Handshake;
    .locals 2

    .prologue
    .line 405
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/internal/connection/RealConnection;->handshake:Lokhttp3/Handshake;

    move-object v0, v1

    return-object v0
.end method

.method public isHealthy(Z)Z
    .locals 7

    .prologue
    .line 364
    move-object v0, p0

    move v1, p1

    move-object v5, v0

    iget-object v5, v5, Lokhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v5}, Ljava/net/Socket;->isClosed()Z

    move-result v5

    if-nez v5, :cond_0

    move-object v5, v0

    iget-object v5, v5, Lokhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v5}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v5

    if-nez v5, :cond_0

    move-object v5, v0

    iget-object v5, v5, Lokhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v5}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 365
    :cond_0
    const/4 v5, 0x0

    move v0, v5

    .line 391
    :goto_0
    return v0

    .line 368
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Lokhttp3/internal/connection/RealConnection;->http2Connection:Lokhttp3/internal/http2/Http2Connection;

    if-eqz v5, :cond_3

    .line 369
    move-object v5, v0

    iget-object v5, v5, Lokhttp3/internal/connection/RealConnection;->http2Connection:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v5}, Lokhttp3/internal/http2/Http2Connection;->isShutdown()Z

    move-result v5

    if-nez v5, :cond_2

    const/4 v5, 0x1

    :goto_1
    move v0, v5

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    .line 372
    :cond_3
    move v5, v1

    if-eqz v5, :cond_5

    .line 374
    move-object v5, v0

    :try_start_0
    iget-object v5, v5, Lokhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v5}, Ljava/net/Socket;->getSoTimeout()I
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v5

    move v2, v5

    .line 376
    move-object v5, v0

    :try_start_1
    iget-object v5, v5, Lokhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 377
    move-object v5, v0

    iget-object v5, v5, Lokhttp3/internal/connection/RealConnection;->source:Lokio/BufferedSource;

    invoke-interface {v5}, Lokio/BufferedSource;->exhausted()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    if-eqz v5, :cond_4

    .line 378
    const/4 v5, 0x0

    move v3, v5

    .line 382
    move-object v5, v0

    :try_start_2
    iget-object v5, v5, Lokhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    move v6, v2

    invoke-virtual {v5, v6}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 378
    move v5, v3

    move v0, v5

    goto :goto_0

    .line 380
    :cond_4
    const/4 v5, 0x1

    move v3, v5

    .line 382
    move-object v5, v0

    iget-object v5, v5, Lokhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    move v6, v2

    invoke-virtual {v5, v6}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 380
    move v5, v3

    move v0, v5

    goto :goto_0

    .line 382
    :catchall_0
    move-exception v5

    move-object v4, v5

    move-object v5, v0

    iget-object v5, v5, Lokhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    move v6, v2

    invoke-virtual {v5, v6}, Ljava/net/Socket;->setSoTimeout(I)V

    move-object v5, v4

    throw v5
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 384
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 391
    :cond_5
    const/4 v5, 0x1

    move v0, v5

    goto :goto_0

    .line 386
    :catch_1
    move-exception v5

    move-object v2, v5

    .line 387
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0
.end method

.method public isMultiplexed()Z
    .locals 2

    .prologue
    .line 413
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/internal/connection/RealConnection;->http2Connection:Lokhttp3/internal/http2/Http2Connection;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onSettings(Lokhttp3/internal/http2/Http2Connection;)V
    .locals 4

    .prologue
    .line 401
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Lokhttp3/internal/http2/Http2Connection;->maxConcurrentStreams()I

    move-result v3

    iput v3, v2, Lokhttp3/internal/connection/RealConnection;->allocationLimit:I

    .line 402
    return-void
.end method

.method public onStream(Lokhttp3/internal/http2/Http2Stream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 396
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    sget-object v3, Lokhttp3/internal/http2/ErrorCode;->REFUSED_STREAM:Lokhttp3/internal/http2/ErrorCode;

    invoke-virtual {v2, v3}, Lokhttp3/internal/http2/Http2Stream;->close(Lokhttp3/internal/http2/ErrorCode;)V

    .line 397
    return-void
.end method

.method public protocol()Lokhttp3/Protocol;
    .locals 2

    .prologue
    .line 417
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/internal/connection/RealConnection;->http2Connection:Lokhttp3/internal/http2/Http2Connection;

    if-nez v1, :cond_1

    .line 418
    move-object v1, v0

    iget-object v1, v1, Lokhttp3/internal/connection/RealConnection;->protocol:Lokhttp3/Protocol;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/internal/connection/RealConnection;->protocol:Lokhttp3/Protocol;

    :goto_0
    move-object v0, v1

    .line 420
    :goto_1
    return-object v0

    .line 418
    :cond_0
    sget-object v1, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    goto :goto_0

    .line 420
    :cond_1
    sget-object v1, Lokhttp3/Protocol;->HTTP_2:Lokhttp3/Protocol;

    move-object v0, v1

    goto :goto_1
.end method

.method public route()Lokhttp3/Route;
    .locals 2

    .prologue
    .line 350
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;

    move-object v0, v1

    return-object v0
.end method

.method public socket()Ljava/net/Socket;
    .locals 2

    .prologue
    .line 359
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    move-object v0, v1

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 425
    move-object v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connection{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;

    .line 426
    invoke-virtual {v2}, Lokhttp3/Route;->address()Lokhttp3/Address;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/Address;->url()Lokhttp3/HttpUrl;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;

    invoke-virtual {v2}, Lokhttp3/Route;->address()Lokhttp3/Address;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/Address;->url()Lokhttp3/HttpUrl;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/HttpUrl;->port()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", proxy="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;

    .line 428
    invoke-virtual {v2}, Lokhttp3/Route;->proxy()Ljava/net/Proxy;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " hostAddress="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;

    .line 430
    invoke-virtual {v2}, Lokhttp3/Route;->socketAddress()Ljava/net/InetSocketAddress;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cipherSuite="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lokhttp3/internal/connection/RealConnection;->handshake:Lokhttp3/Handshake;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lokhttp3/internal/connection/RealConnection;->handshake:Lokhttp3/Handshake;

    .line 432
    invoke-virtual {v2}, Lokhttp3/Handshake;->cipherSuite()Lokhttp3/CipherSuite;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " protocol="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lokhttp3/internal/connection/RealConnection;->protocol:Lokhttp3/Protocol;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x7d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 425
    move-object v0, v1

    return-object v0

    .line 432
    :cond_0
    const-string v2, "none"

    goto :goto_0
.end method
