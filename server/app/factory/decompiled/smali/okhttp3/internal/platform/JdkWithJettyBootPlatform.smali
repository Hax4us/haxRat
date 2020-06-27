.class Lokhttp3/internal/platform/JdkWithJettyBootPlatform;
.super Lokhttp3/internal/platform/Platform;
.source "JdkWithJettyBootPlatform.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/platform/JdkWithJettyBootPlatform$JettyNegoProvider;
    }
.end annotation


# instance fields
.field private final clientProviderClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final getMethod:Ljava/lang/reflect/Method;

.field private final putMethod:Ljava/lang/reflect/Method;

.field private final removeMethod:Ljava/lang/reflect/Method;

.field private final serverProviderClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 38
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, v0

    invoke-direct {v6}, Lokhttp3/internal/platform/Platform;-><init>()V

    .line 39
    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Lokhttp3/internal/platform/JdkWithJettyBootPlatform;->putMethod:Ljava/lang/reflect/Method;

    .line 40
    move-object v6, v0

    move-object v7, v2

    iput-object v7, v6, Lokhttp3/internal/platform/JdkWithJettyBootPlatform;->getMethod:Ljava/lang/reflect/Method;

    .line 41
    move-object v6, v0

    move-object v7, v3

    iput-object v7, v6, Lokhttp3/internal/platform/JdkWithJettyBootPlatform;->removeMethod:Ljava/lang/reflect/Method;

    .line 42
    move-object v6, v0

    move-object v7, v4

    iput-object v7, v6, Lokhttp3/internal/platform/JdkWithJettyBootPlatform;->clientProviderClass:Ljava/lang/Class;

    .line 43
    move-object v6, v0

    move-object v7, v5

    iput-object v7, v6, Lokhttp3/internal/platform/JdkWithJettyBootPlatform;->serverProviderClass:Ljava/lang/Class;

    .line 44
    return-void
.end method

.method public static buildIfSupported()Lokhttp3/internal/platform/Platform;
    .locals 16

    .prologue
    .line 85
    :try_start_0
    const-string v8, "org.eclipse.jetty.alpn.ALPN"

    move-object v0, v8

    .line 86
    move-object v8, v0

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    move-object v1, v8

    .line 87
    new-instance v8, Ljava/lang/StringBuilder;

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object v9, v0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "$Provider"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    move-object v2, v8

    .line 88
    new-instance v8, Ljava/lang/StringBuilder;

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object v9, v0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "$ClientProvider"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    move-object v3, v8

    .line 89
    new-instance v8, Ljava/lang/StringBuilder;

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object v9, v0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "$ServerProvider"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    move-object v4, v8

    .line 90
    move-object v8, v1

    const-string v9, "put"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Class;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    const/4 v12, 0x0

    const-class v13, Ljavax/net/ssl/SSLSocket;

    aput-object v13, v11, v12

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    const/4 v12, 0x1

    move-object v13, v2

    aput-object v13, v11, v12

    invoke-virtual {v8, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    move-object v5, v8

    .line 91
    move-object v8, v1

    const-string v9, "get"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    const/4 v12, 0x0

    const-class v13, Ljavax/net/ssl/SSLSocket;

    aput-object v13, v11, v12

    invoke-virtual {v8, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    move-object v6, v8

    .line 92
    move-object v8, v1

    const-string v9, "remove"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    const/4 v12, 0x0

    const-class v13, Ljavax/net/ssl/SSLSocket;

    aput-object v13, v11, v12

    invoke-virtual {v8, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    move-object v7, v8

    .line 93
    new-instance v8, Lokhttp3/internal/platform/JdkWithJettyBootPlatform;

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    move-object v10, v5

    move-object v11, v6

    move-object v12, v7

    move-object v13, v3

    move-object v14, v4

    invoke-direct/range {v9 .. v14}, Lokhttp3/internal/platform/JdkWithJettyBootPlatform;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/Class;Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v8

    .line 98
    :goto_0
    return-object v0

    .line 95
    :catch_0
    move-exception v8

    move-object v0, v8

    .line 98
    const/4 v8, 0x0

    move-object v0, v8

    goto :goto_0
.end method


# virtual methods
.method public afterHandshake(Ljavax/net/ssl/SSLSocket;)V
    .locals 10

    .prologue
    .line 61
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Lokhttp3/internal/platform/JdkWithJettyBootPlatform;->removeMethod:Ljava/lang/reflect/Method;

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v1

    aput-object v8, v6, v7

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 65
    return-void

    .line 62
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 63
    new-instance v3, Ljava/lang/AssertionError;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v3
.end method

.method public configureTlsExtensions(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V
    .locals 13
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
    .line 48
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object v6, v3

    invoke-static {v6}, Lokhttp3/internal/platform/JdkWithJettyBootPlatform;->alpnProtocolNames(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    move-object v4, v6

    .line 51
    :try_start_0
    const-class v6, Lokhttp3/internal/platform/Platform;

    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Class;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const/4 v9, 0x0

    move-object v10, v0

    iget-object v10, v10, Lokhttp3/internal/platform/JdkWithJettyBootPlatform;->clientProviderClass:Ljava/lang/Class;

    aput-object v10, v8, v9

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const/4 v9, 0x1

    move-object v10, v0

    iget-object v10, v10, Lokhttp3/internal/platform/JdkWithJettyBootPlatform;->serverProviderClass:Ljava/lang/Class;

    aput-object v10, v8, v9

    new-instance v8, Lokhttp3/internal/platform/JdkWithJettyBootPlatform$JettyNegoProvider;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v10, v4

    invoke-direct {v9, v10}, Lokhttp3/internal/platform/JdkWithJettyBootPlatform$JettyNegoProvider;-><init>(Ljava/util/List;)V

    invoke-static {v6, v7, v8}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v6

    move-object v5, v6

    .line 53
    move-object v6, v0

    iget-object v6, v6, Lokhttp3/internal/platform/JdkWithJettyBootPlatform;->putMethod:Ljava/lang/reflect/Method;

    const/4 v7, 0x0

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x0

    move-object v11, v1

    aput-object v11, v9, v10

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x1

    move-object v11, v5

    aput-object v11, v9, v10

    invoke-virtual {v6, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 57
    return-void

    .line 54
    :catch_0
    move-exception v6

    move-object v5, v6

    .line 55
    new-instance v6, Ljava/lang/AssertionError;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v8, v5

    invoke-direct {v7, v8}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v6
.end method

.method public getSelectedProtocol(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .locals 10

    .prologue
    .line 69
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Lokhttp3/internal/platform/JdkWithJettyBootPlatform;->getMethod:Ljava/lang/reflect/Method;

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v1

    aput-object v8, v6, v7

    .line 70
    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/reflect/Proxy;->getInvocationHandler(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;

    move-result-object v3

    check-cast v3, Lokhttp3/internal/platform/JdkWithJettyBootPlatform$JettyNegoProvider;

    move-object v2, v3

    .line 71
    move-object v3, v2

    iget-boolean v3, v3, Lokhttp3/internal/platform/JdkWithJettyBootPlatform$JettyNegoProvider;->unsupported:Z

    if-nez v3, :cond_0

    move-object v3, v2

    iget-object v3, v3, Lokhttp3/internal/platform/JdkWithJettyBootPlatform$JettyNegoProvider;->selected:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 72
    invoke-static {}, Lokhttp3/internal/platform/Platform;->get()Lokhttp3/internal/platform/Platform;

    move-result-object v3

    const/4 v4, 0x4

    const-string v5, "ALPN callback dropped: HTTP/2 is disabled. Is alpn-boot on the boot class path?"

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lokhttp3/internal/platform/Platform;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 74
    const/4 v3, 0x0

    move-object v0, v3

    .line 76
    :goto_0
    return-object v0

    :cond_0
    move-object v3, v2

    iget-boolean v3, v3, Lokhttp3/internal/platform/JdkWithJettyBootPlatform$JettyNegoProvider;->unsupported:Z

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    :goto_1
    move-object v0, v3

    goto :goto_0

    :cond_1
    move-object v3, v2

    iget-object v3, v3, Lokhttp3/internal/platform/JdkWithJettyBootPlatform$JettyNegoProvider;->selected:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 77
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 78
    new-instance v3, Ljava/lang/AssertionError;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v3
.end method
