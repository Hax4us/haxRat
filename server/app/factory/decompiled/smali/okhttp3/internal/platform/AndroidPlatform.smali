.class Lokhttp3/internal/platform/AndroidPlatform;
.super Lokhttp3/internal/platform/Platform;
.source "AndroidPlatform.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/platform/AndroidPlatform$CloseGuard;,
        Lokhttp3/internal/platform/AndroidPlatform$AndroidCertificateChainCleaner;
    }
.end annotation


# static fields
.field private static final MAX_LOG_LENGTH:I = 0xfa0


# instance fields
.field private final closeGuard:Lokhttp3/internal/platform/AndroidPlatform$CloseGuard;

.field private final getAlpnSelectedProtocol:Lokhttp3/internal/platform/OptionalMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lokhttp3/internal/platform/OptionalMethod",
            "<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field private final setAlpnProtocols:Lokhttp3/internal/platform/OptionalMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lokhttp3/internal/platform/OptionalMethod",
            "<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field private final setHostname:Lokhttp3/internal/platform/OptionalMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lokhttp3/internal/platform/OptionalMethod",
            "<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field private final setUseSessionTickets:Lokhttp3/internal/platform/OptionalMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lokhttp3/internal/platform/OptionalMethod",
            "<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field private final sslParametersClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lokhttp3/internal/platform/OptionalMethod;Lokhttp3/internal/platform/OptionalMethod;Lokhttp3/internal/platform/OptionalMethod;Lokhttp3/internal/platform/OptionalMethod;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lokhttp3/internal/platform/OptionalMethod",
            "<",
            "Ljava/net/Socket;",
            ">;",
            "Lokhttp3/internal/platform/OptionalMethod",
            "<",
            "Ljava/net/Socket;",
            ">;",
            "Lokhttp3/internal/platform/OptionalMethod",
            "<",
            "Ljava/net/Socket;",
            ">;",
            "Lokhttp3/internal/platform/OptionalMethod",
            "<",
            "Ljava/net/Socket;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 52
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, v0

    invoke-direct {v6}, Lokhttp3/internal/platform/Platform;-><init>()V

    .line 48
    move-object v6, v0

    invoke-static {}, Lokhttp3/internal/platform/AndroidPlatform$CloseGuard;->get()Lokhttp3/internal/platform/AndroidPlatform$CloseGuard;

    move-result-object v7

    iput-object v7, v6, Lokhttp3/internal/platform/AndroidPlatform;->closeGuard:Lokhttp3/internal/platform/AndroidPlatform$CloseGuard;

    .line 53
    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Lokhttp3/internal/platform/AndroidPlatform;->sslParametersClass:Ljava/lang/Class;

    .line 54
    move-object v6, v0

    move-object v7, v2

    iput-object v7, v6, Lokhttp3/internal/platform/AndroidPlatform;->setUseSessionTickets:Lokhttp3/internal/platform/OptionalMethod;

    .line 55
    move-object v6, v0

    move-object v7, v3

    iput-object v7, v6, Lokhttp3/internal/platform/AndroidPlatform;->setHostname:Lokhttp3/internal/platform/OptionalMethod;

    .line 56
    move-object v6, v0

    move-object v7, v4

    iput-object v7, v6, Lokhttp3/internal/platform/AndroidPlatform;->getAlpnSelectedProtocol:Lokhttp3/internal/platform/OptionalMethod;

    .line 57
    move-object v6, v0

    move-object v7, v5

    iput-object v7, v6, Lokhttp3/internal/platform/AndroidPlatform;->setAlpnProtocols:Lokhttp3/internal/platform/OptionalMethod;

    .line 58
    return-void
.end method

.method public static buildIfSupported()Lokhttp3/internal/platform/Platform;
    .locals 15

    .prologue
    .line 182
    :try_start_0
    const-string v6, "com.android.org.conscrypt.SSLParametersImpl"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    move-object v0, v6

    .line 189
    :goto_0
    :try_start_1
    new-instance v6, Lokhttp3/internal/platform/OptionalMethod;

    move-object v14, v6

    move-object v6, v14

    move-object v7, v14

    const/4 v8, 0x0

    const-string v9, "setUseSessionTickets"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x0

    sget-object v13, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v13, v11, v12

    invoke-direct {v7, v8, v9, v10}, Lokhttp3/internal/platform/OptionalMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    move-object v1, v6

    .line 191
    new-instance v6, Lokhttp3/internal/platform/OptionalMethod;

    move-object v14, v6

    move-object v6, v14

    move-object v7, v14

    const/4 v8, 0x0

    const-string v9, "setHostname"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x0

    const-class v13, Ljava/lang/String;

    aput-object v13, v11, v12

    invoke-direct {v7, v8, v9, v10}, Lokhttp3/internal/platform/OptionalMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v2, v6

    .line 193
    const/4 v6, 0x0

    move-object v3, v6

    .line 194
    const/4 v6, 0x0

    move-object v4, v6

    .line 198
    :try_start_2
    const-string v6, "android.net.Network"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 199
    new-instance v6, Lokhttp3/internal/platform/OptionalMethod;

    move-object v14, v6

    move-object v6, v14

    move-object v7, v14

    const-class v8, [B

    const-string v9, "getAlpnSelectedProtocol"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Class;

    invoke-direct {v7, v8, v9, v10}, Lokhttp3/internal/platform/OptionalMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    move-object v3, v6

    .line 200
    new-instance v6, Lokhttp3/internal/platform/OptionalMethod;

    move-object v14, v6

    move-object v6, v14

    move-object v7, v14

    const/4 v8, 0x0

    const-string v9, "setAlpnProtocols"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x0

    const-class v13, [B

    aput-object v13, v11, v12

    invoke-direct {v7, v8, v9, v10}, Lokhttp3/internal/platform/OptionalMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    move-object v4, v6

    .line 204
    :goto_1
    :try_start_3
    new-instance v6, Lokhttp3/internal/platform/AndroidPlatform;

    move-object v14, v6

    move-object v6, v14

    move-object v7, v14

    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    move-object v11, v3

    move-object v12, v4

    invoke-direct/range {v7 .. v12}, Lokhttp3/internal/platform/AndroidPlatform;-><init>(Ljava/lang/Class;Lokhttp3/internal/platform/OptionalMethod;Lokhttp3/internal/platform/OptionalMethod;Lokhttp3/internal/platform/OptionalMethod;Lokhttp3/internal/platform/OptionalMethod;)V

    move-object v0, v6

    .line 210
    :goto_2
    return-object v0

    .line 183
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 185
    const-string v6, "org.apache.harmony.xnet.provider.jsse.SSLParametersImpl"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v6

    move-object v0, v6

    goto :goto_0

    .line 201
    :catch_1
    move-exception v6

    move-object v5, v6

    goto :goto_1

    .line 206
    :catch_2
    move-exception v6

    move-object v0, v6

    .line 210
    const/4 v6, 0x0

    move-object v0, v6

    goto :goto_2
.end method


# virtual methods
.method public buildCertificateChainCleaner(Ljavax/net/ssl/X509TrustManager;)Lokhttp3/internal/tls/CertificateChainCleaner;
    .locals 13

    .prologue
    .line 166
    move-object v0, p0

    move-object v1, p1

    :try_start_0
    const-string v6, "android.net.http.X509TrustManagerExtensions"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    move-object v2, v6

    .line 167
    move-object v6, v2

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const/4 v9, 0x0

    const-class v10, Ljavax/net/ssl/X509TrustManager;

    aput-object v10, v8, v9

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v6

    move-object v3, v6

    .line 168
    move-object v6, v3

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const/4 v9, 0x0

    move-object v10, v1

    aput-object v10, v8, v9

    invoke-virtual {v6, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v4, v6

    .line 169
    move-object v6, v2

    const-string v7, "checkServerTrusted"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Class;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x0

    const-class v11, [Ljava/security/cert/X509Certificate;

    aput-object v11, v9, v10

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x1

    const-class v11, Ljava/lang/String;

    aput-object v11, v9, v10

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x2

    const-class v11, Ljava/lang/String;

    aput-object v11, v9, v10

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    move-object v5, v6

    .line 171
    new-instance v6, Lokhttp3/internal/platform/AndroidPlatform$AndroidCertificateChainCleaner;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v8, v4

    move-object v9, v5

    invoke-direct {v7, v8, v9}, Lokhttp3/internal/platform/AndroidPlatform$AndroidCertificateChainCleaner;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Method;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v6

    .line 173
    :goto_0
    return-object v0

    .line 172
    :catch_0
    move-exception v6

    move-object v2, v6

    .line 173
    move-object v6, v0

    move-object v7, v1

    invoke-super {v6, v7}, Lokhttp3/internal/platform/Platform;->buildCertificateChainCleaner(Ljavax/net/ssl/X509TrustManager;)Lokhttp3/internal/tls/CertificateChainCleaner;

    move-result-object v6

    move-object v0, v6

    goto :goto_0
.end method

.method public configureTlsExtensions(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/ssl/SSLSocket;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lokhttp3/Protocol;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 101
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v2

    if-eqz v5, :cond_0

    .line 102
    move-object v5, v0

    iget-object v5, v5, Lokhttp3/internal/platform/AndroidPlatform;->setUseSessionTickets:Lokhttp3/internal/platform/OptionalMethod;

    move-object v6, v1

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v5, v6, v7}, Lokhttp3/internal/platform/OptionalMethod;->invokeOptionalWithoutCheckedException(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 103
    move-object v5, v0

    iget-object v5, v5, Lokhttp3/internal/platform/AndroidPlatform;->setHostname:Lokhttp3/internal/platform/OptionalMethod;

    move-object v6, v1

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x0

    move-object v10, v2

    aput-object v10, v8, v9

    invoke-virtual {v5, v6, v7}, Lokhttp3/internal/platform/OptionalMethod;->invokeOptionalWithoutCheckedException(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 107
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Lokhttp3/internal/platform/AndroidPlatform;->setAlpnProtocols:Lokhttp3/internal/platform/OptionalMethod;

    if-eqz v5, :cond_1

    move-object v5, v0

    iget-object v5, v5, Lokhttp3/internal/platform/AndroidPlatform;->setAlpnProtocols:Lokhttp3/internal/platform/OptionalMethod;

    move-object v6, v1

    invoke-virtual {v5, v6}, Lokhttp3/internal/platform/OptionalMethod;->isSupported(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 108
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    const/4 v7, 0x0

    move-object v8, v3

    invoke-static {v8}, Lokhttp3/internal/platform/AndroidPlatform;->concatLengthPrefixed(Ljava/util/List;)[B

    move-result-object v8

    aput-object v8, v6, v7

    move-object v4, v5

    .line 109
    move-object v5, v0

    iget-object v5, v5, Lokhttp3/internal/platform/AndroidPlatform;->setAlpnProtocols:Lokhttp3/internal/platform/OptionalMethod;

    move-object v6, v1

    move-object v7, v4

    invoke-virtual {v5, v6, v7}, Lokhttp3/internal/platform/OptionalMethod;->invokeWithoutCheckedException(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 111
    :cond_1
    return-void
.end method

.method public connectSocket(Ljava/net/Socket;Ljava/net/InetSocketAddress;I)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v6, v1

    move-object v7, v2

    move v8, v3

    :try_start_0
    invoke-virtual {v6, v7, v8}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 74
    return-void

    .line 64
    :catch_0
    move-exception v6

    move-object v4, v6

    .line 65
    move-object v6, v4

    invoke-static {v6}, Lokhttp3/internal/Util;->isAndroidGetsocknameError(Ljava/lang/AssertionError;)Z

    move-result v6

    if-eqz v6, :cond_0

    new-instance v6, Ljava/io/IOException;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v4

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 66
    :cond_0
    move-object v6, v4

    throw v6

    .line 67
    :catch_1
    move-exception v6

    move-object v4, v6

    .line 70
    new-instance v6, Ljava/io/IOException;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    const-string v8, "Exception in connect"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    move-object v5, v6

    .line 71
    move-object v6, v5

    move-object v7, v4

    invoke-virtual {v6, v7}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v6

    .line 72
    move-object v6, v5

    throw v6
.end method

.method public getSelectedProtocol(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .locals 8

    .prologue
    .line 114
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Lokhttp3/internal/platform/AndroidPlatform;->getAlpnSelectedProtocol:Lokhttp3/internal/platform/OptionalMethod;

    if-nez v3, :cond_0

    const/4 v3, 0x0

    move-object v0, v3

    .line 118
    :goto_0
    return-object v0

    .line 115
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lokhttp3/internal/platform/AndroidPlatform;->getAlpnSelectedProtocol:Lokhttp3/internal/platform/OptionalMethod;

    move-object v4, v1

    invoke-virtual {v3, v4}, Lokhttp3/internal/platform/OptionalMethod;->isSupported(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0

    .line 117
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lokhttp3/internal/platform/AndroidPlatform;->getAlpnSelectedProtocol:Lokhttp3/internal/platform/OptionalMethod;

    move-object v4, v1

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lokhttp3/internal/platform/OptionalMethod;->invokeWithoutCheckedException(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    check-cast v3, [B

    move-object v2, v3

    .line 118
    move-object v3, v2

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/String;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v2

    sget-object v6, Lokhttp3/internal/Util;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v4, v5, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    :goto_1
    move-object v0, v3

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public getStackTraceForCloseable(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 138
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lokhttp3/internal/platform/AndroidPlatform;->closeGuard:Lokhttp3/internal/platform/AndroidPlatform$CloseGuard;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lokhttp3/internal/platform/AndroidPlatform$CloseGuard;->createAndOpen(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public isCleartextTrafficPermitted(Ljava/lang/String;)Z
    .locals 13

    .prologue
    .line 151
    move-object v0, p0

    move-object v1, p1

    :try_start_0
    const-string v6, "android.security.NetworkSecurityPolicy"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    move-object v2, v6

    .line 152
    move-object v6, v2

    const-string v7, "getInstance"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    move-object v3, v6

    .line 153
    move-object v6, v3

    const/4 v7, 0x0

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v6, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v4, v6

    .line 154
    move-object v6, v2

    const-string v7, "isCleartextTrafficPermitted"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x0

    const-class v11, Ljava/lang/String;

    aput-object v11, v9, v10

    .line 155
    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    move-object v5, v6

    .line 156
    move-object v6, v5

    move-object v7, v4

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x0

    move-object v11, v1

    aput-object v11, v9, v10

    invoke-virtual {v6, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v6

    move v0, v6

    .line 158
    :goto_0
    return v0

    .line 157
    :catch_0
    move-exception v6

    move-object v2, v6

    .line 158
    move-object v6, v0

    move-object v7, v1

    invoke-super {v6, v7}, Lokhttp3/internal/platform/Platform;->isCleartextTrafficPermitted(Ljava/lang/String;)Z

    move-result v6

    move v0, v6

    goto :goto_0

    .line 159
    :catch_1
    move-exception v6

    move-object v2, v6

    .line 160
    new-instance v6, Ljava/lang/AssertionError;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v6
.end method

.method public log(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 15

    .prologue
    .line 122
    move-object v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move v9, v1

    const/4 v10, 0x5

    if-ne v9, v10, :cond_2

    const/4 v9, 0x5

    :goto_0
    move v4, v9

    .line 123
    move-object v9, v3

    if-eqz v9, :cond_0

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object v10, v2

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0xa

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v3

    invoke-static {v10}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v2, v9

    .line 126
    :cond_0
    const/4 v9, 0x0

    move v5, v9

    move-object v9, v2

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    move v6, v9

    :goto_1
    move v9, v5

    move v10, v6

    if-ge v9, v10, :cond_4

    .line 127
    move-object v9, v2

    const/16 v10, 0xa

    move v11, v5

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->indexOf(II)I

    move-result v9

    move v7, v9

    .line 128
    move v9, v7

    const/4 v10, -0x1

    if-eq v9, v10, :cond_3

    move v9, v7

    :goto_2
    move v7, v9

    .line 130
    :cond_1
    move v9, v7

    move v10, v5

    const/16 v11, 0xfa0

    add-int/lit16 v10, v10, 0xfa0

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    move v8, v9

    .line 131
    move v9, v4

    const-string v10, "OkHttp"

    move-object v11, v2

    move v12, v5

    move v13, v8

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v10, v11}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 132
    move v9, v8

    move v5, v9

    .line 133
    move v9, v5

    move v10, v7

    if-lt v9, v10, :cond_1

    .line 126
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 122
    :cond_2
    const/4 v9, 0x3

    goto :goto_0

    .line 128
    :cond_3
    move v9, v6

    goto :goto_2

    .line 135
    :cond_4
    return-void
.end method

.method public logCloseableLeak(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 8

    .prologue
    .line 142
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    iget-object v4, v4, Lokhttp3/internal/platform/AndroidPlatform;->closeGuard:Lokhttp3/internal/platform/AndroidPlatform$CloseGuard;

    move-object v5, v2

    invoke-virtual {v4, v5}, Lokhttp3/internal/platform/AndroidPlatform$CloseGuard;->warnIfOpen(Ljava/lang/Object;)Z

    move-result v4

    move v3, v4

    .line 143
    move v4, v3

    if-nez v4, :cond_0

    .line 145
    move-object v4, v0

    const/4 v5, 0x5

    move-object v6, v1

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lokhttp3/internal/platform/AndroidPlatform;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 147
    :cond_0
    return-void
.end method

.method public trustManager(Ljavax/net/ssl/SSLSocketFactory;)Ljavax/net/ssl/X509TrustManager;
    .locals 7

    .prologue
    .line 77
    move-object v0, p0

    move-object v1, p1

    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Lokhttp3/internal/platform/AndroidPlatform;->sslParametersClass:Ljava/lang/Class;

    const-string v6, "sslParameters"

    invoke-static {v4, v5, v6}, Lokhttp3/internal/platform/AndroidPlatform;->readFieldOrNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    move-object v2, v4

    .line 78
    move-object v4, v2

    if-nez v4, :cond_0

    .line 82
    :try_start_0
    const-string v4, "com.google.android.gms.org.conscrypt.SSLParametersImpl"

    const/4 v5, 0x0

    move-object v6, v1

    .line 84
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    .line 82
    invoke-static {v4, v5, v6}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v4

    move-object v3, v4

    .line 85
    move-object v4, v1

    move-object v5, v3

    const-string v6, "sslParameters"

    invoke-static {v4, v5, v6}, Lokhttp3/internal/platform/AndroidPlatform;->readFieldOrNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    move-object v2, v4

    .line 91
    :cond_0
    move-object v4, v2

    const-class v5, Ljavax/net/ssl/X509TrustManager;

    const-string v6, "x509TrustManager"

    invoke-static {v4, v5, v6}, Lokhttp3/internal/platform/AndroidPlatform;->readFieldOrNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/net/ssl/X509TrustManager;

    move-object v3, v4

    .line 93
    move-object v4, v3

    if-eqz v4, :cond_1

    move-object v4, v3

    move-object v0, v4

    .line 95
    :goto_0
    return-object v0

    .line 86
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 87
    move-object v4, v0

    move-object v5, v1

    invoke-super {v4, v5}, Lokhttp3/internal/platform/Platform;->trustManager(Ljavax/net/ssl/SSLSocketFactory;)Ljavax/net/ssl/X509TrustManager;

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    .line 95
    :cond_1
    move-object v4, v2

    const-class v5, Ljavax/net/ssl/X509TrustManager;

    const-string v6, "trustManager"

    invoke-static {v4, v5, v6}, Lokhttp3/internal/platform/AndroidPlatform;->readFieldOrNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/net/ssl/X509TrustManager;

    move-object v0, v4

    goto :goto_0
.end method
