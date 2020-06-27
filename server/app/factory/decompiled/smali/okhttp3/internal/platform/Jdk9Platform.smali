.class final Lokhttp3/internal/platform/Jdk9Platform;
.super Lokhttp3/internal/platform/Platform;
.source "Jdk9Platform.java"


# instance fields
.field final getProtocolMethod:Ljava/lang/reflect/Method;

.field final setProtocolMethod:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    .locals 5

    .prologue
    .line 34
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    invoke-direct {v3}, Lokhttp3/internal/platform/Platform;-><init>()V

    .line 35
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lokhttp3/internal/platform/Jdk9Platform;->setProtocolMethod:Ljava/lang/reflect/Method;

    .line 36
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lokhttp3/internal/platform/Jdk9Platform;->getProtocolMethod:Ljava/lang/reflect/Method;

    .line 37
    return-void
.end method

.method public static buildIfSupported()Lokhttp3/internal/platform/Jdk9Platform;
    .locals 9

    .prologue
    .line 85
    :try_start_0
    const-class v2, Ljavax/net/ssl/SSLParameters;

    const-string v3, "setApplicationProtocols"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    const-class v7, [Ljava/lang/String;

    aput-object v7, v5, v6

    .line 86
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    move-object v0, v2

    .line 87
    const-class v2, Ljavax/net/ssl/SSLSocket;

    const-string v3, "getApplicationProtocol"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    move-object v1, v2

    .line 89
    new-instance v2, Lokhttp3/internal/platform/Jdk9Platform;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lokhttp3/internal/platform/Jdk9Platform;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 94
    :goto_0
    return-object v0

    .line 90
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 94
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0
.end method


# virtual methods
.method public configureTlsExtensions(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V
    .locals 14
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
    .line 43
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object v6, v1

    :try_start_0
    invoke-virtual {v6}, Ljavax/net/ssl/SSLSocket;->getSSLParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object v6

    move-object v4, v6

    .line 45
    move-object v6, v3

    invoke-static {v6}, Lokhttp3/internal/platform/Jdk9Platform;->alpnProtocolNames(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    move-object v5, v6

    .line 47
    move-object v6, v0

    iget-object v6, v6, Lokhttp3/internal/platform/Jdk9Platform;->setProtocolMethod:Ljava/lang/reflect/Method;

    move-object v7, v4

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    const/4 v10, 0x0

    move-object v11, v5

    move-object v12, v5

    .line 48
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    new-array v12, v12, [Ljava/lang/String;

    invoke-interface {v11, v12}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    aput-object v11, v9, v10

    .line 47
    invoke-virtual {v6, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 50
    move-object v6, v1

    move-object v7, v4

    invoke-virtual {v6, v7}, Ljavax/net/ssl/SSLSocket;->setSSLParameters(Ljavax/net/ssl/SSLParameters;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    return-void

    .line 51
    :catch_0
    move-exception v6

    move-object v4, v6

    .line 52
    new-instance v6, Ljava/lang/AssertionError;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v6
.end method

.method public getSelectedProtocol(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .locals 7

    .prologue
    .line 59
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Lokhttp3/internal/platform/Jdk9Platform;->getProtocolMethod:Ljava/lang/reflect/Method;

    move-object v4, v1

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object v2, v3

    .line 63
    move-object v3, v2

    if-eqz v3, :cond_0

    move-object v3, v2

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_1

    .line 64
    :cond_0
    const/4 v3, 0x0

    move-object v0, v3

    .line 67
    :goto_0
    return-object v0

    :cond_1
    move-object v3, v2

    move-object v0, v3

    goto :goto_0

    .line 68
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 69
    new-instance v3, Ljava/lang/AssertionError;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v3
.end method

.method public trustManager(Ljavax/net/ssl/SSLSocketFactory;)Ljavax/net/ssl/X509TrustManager;
    .locals 6

    .prologue
    .line 78
    move-object v0, p0

    move-object v1, p1

    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "clientBuilder.sslSocketFactory(SSLSocketFactory) not supported on JDK 9+"

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
