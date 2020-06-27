.class public Lokhttp3/internal/platform/Platform;
.super Ljava/lang/Object;
.source "Platform.java"


# static fields
.field public static final INFO:I = 0x4

.field private static final PLATFORM:Lokhttp3/internal/platform/Platform;

.field public static final WARN:I = 0x5

.field private static final logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    invoke-static {}, Lokhttp3/internal/platform/Platform;->findPlatform()Lokhttp3/internal/platform/Platform;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/platform/Platform;->PLATFORM:Lokhttp3/internal/platform/Platform;

    .line 76
    const-class v0, Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/platform/Platform;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 72
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static alpnProtocolNames(Ljava/util/List;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lokhttp3/Protocol;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 157
    move-object v0, p0

    new-instance v5, Ljava/util/ArrayList;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v0

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    move-object v1, v5

    .line 158
    const/4 v5, 0x0

    move v2, v5

    move-object v5, v0

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    move v3, v5

    :goto_0
    move v5, v2

    move v6, v3

    if-ge v5, v6, :cond_1

    .line 159
    move-object v5, v0

    move v6, v2

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lokhttp3/Protocol;

    move-object v4, v5

    .line 160
    move-object v5, v4

    sget-object v6, Lokhttp3/Protocol;->HTTP_1_0:Lokhttp3/Protocol;

    if-ne v5, v6, :cond_0

    .line 158
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 161
    :cond_0
    move-object v5, v1

    move-object v6, v4

    invoke-virtual {v6}, Lokhttp3/Protocol;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v5

    goto :goto_1

    .line 163
    :cond_1
    move-object v5, v1

    move-object v0, v5

    return-object v0
.end method

.method static concatLengthPrefixed(Ljava/util/List;)[B
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lokhttp3/Protocol;",
            ">;)[B"
        }
    .end annotation

    .prologue
    .line 199
    move-object v0, p0

    new-instance v5, Lokio/Buffer;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Lokio/Buffer;-><init>()V

    move-object v1, v5

    .line 200
    const/4 v5, 0x0

    move v2, v5

    move-object v5, v0

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    move v3, v5

    :goto_0
    move v5, v2

    move v6, v3

    if-ge v5, v6, :cond_1

    .line 201
    move-object v5, v0

    move v6, v2

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lokhttp3/Protocol;

    move-object v4, v5

    .line 202
    move-object v5, v4

    sget-object v6, Lokhttp3/Protocol;->HTTP_1_0:Lokhttp3/Protocol;

    if-ne v5, v6, :cond_0

    .line 200
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 203
    :cond_0
    move-object v5, v1

    move-object v6, v4

    invoke-virtual {v6}, Lokhttp3/Protocol;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    move-result-object v5

    .line 204
    move-object v5, v1

    move-object v6, v4

    invoke-virtual {v6}, Lokhttp3/Protocol;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;)Lokio/Buffer;

    move-result-object v5

    goto :goto_1

    .line 206
    :cond_1
    move-object v5, v1

    invoke-virtual {v5}, Lokio/Buffer;->readByteArray()[B

    move-result-object v5

    move-object v0, v5

    return-object v0
.end method

.method private static findPlatform()Lokhttp3/internal/platform/Platform;
    .locals 6

    .prologue
    .line 172
    invoke-static {}, Lokhttp3/internal/platform/AndroidPlatform;->buildIfSupported()Lokhttp3/internal/platform/Platform;

    move-result-object v3

    move-object v0, v3

    .line 174
    move-object v3, v0

    if-eqz v3, :cond_0

    .line 175
    move-object v3, v0

    move-object v0, v3

    .line 191
    :goto_0
    return-object v0

    .line 178
    :cond_0
    invoke-static {}, Lokhttp3/internal/platform/Jdk9Platform;->buildIfSupported()Lokhttp3/internal/platform/Jdk9Platform;

    move-result-object v3

    move-object v1, v3

    .line 180
    move-object v3, v1

    if-eqz v3, :cond_1

    .line 181
    move-object v3, v1

    move-object v0, v3

    goto :goto_0

    .line 184
    :cond_1
    invoke-static {}, Lokhttp3/internal/platform/JdkWithJettyBootPlatform;->buildIfSupported()Lokhttp3/internal/platform/Platform;

    move-result-object v3

    move-object v2, v3

    .line 186
    move-object v3, v2

    if-eqz v3, :cond_2

    .line 187
    move-object v3, v2

    move-object v0, v3

    goto :goto_0

    .line 191
    :cond_2
    new-instance v3, Lokhttp3/internal/platform/Platform;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Lokhttp3/internal/platform/Platform;-><init>()V

    move-object v0, v3

    goto :goto_0
.end method

.method public static get()Lokhttp3/internal/platform/Platform;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lokhttp3/internal/platform/Platform;->PLATFORM:Lokhttp3/internal/platform/Platform;

    return-object v0
.end method

.method static readFieldOrNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 210
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, v0

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    move-object v3, v6

    :goto_0
    move-object v6, v3

    const-class v7, Ljava/lang/Object;

    if-eq v6, v7, :cond_2

    .line 212
    move-object v6, v3

    move-object v7, v2

    :try_start_0
    invoke-virtual {v6, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    move-object v4, v6

    .line 213
    move-object v6, v4

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 214
    move-object v6, v4

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v5, v6

    .line 215
    move-object v6, v5

    if-eqz v6, :cond_0

    move-object v6, v1

    move-object v7, v5

    invoke-virtual {v6, v7}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    const/4 v6, 0x0

    move-object v0, v6

    .line 229
    :goto_1
    return-object v0

    .line 216
    :cond_1
    move-object v6, v1

    move-object v7, v5

    invoke-virtual {v6, v7}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v6

    move-object v0, v6

    goto :goto_1

    .line 217
    :catch_0
    move-exception v6

    move-object v4, v6

    .line 210
    move-object v6, v3

    invoke-virtual {v6}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v6

    move-object v3, v6

    goto :goto_0

    .line 218
    :catch_1
    move-exception v6

    move-object v4, v6

    .line 219
    new-instance v6, Ljava/lang/AssertionError;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 224
    :cond_2
    move-object v6, v2

    const-string v7, "delegate"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 225
    move-object v6, v0

    const-class v7, Ljava/lang/Object;

    const-string v8, "delegate"

    invoke-static {v6, v7, v8}, Lokhttp3/internal/platform/Platform;->readFieldOrNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    move-object v3, v6

    .line 226
    move-object v6, v3

    if-eqz v6, :cond_3

    move-object v6, v3

    move-object v7, v1

    move-object v8, v2

    invoke-static {v6, v7, v8}, Lokhttp3/internal/platform/Platform;->readFieldOrNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    goto :goto_1

    .line 229
    :cond_3
    const/4 v6, 0x0

    move-object v0, v6

    goto :goto_1
.end method


# virtual methods
.method public afterHandshake(Ljavax/net/ssl/SSLSocket;)V
    .locals 0

    .prologue
    .line 115
    return-void
.end method

.method public buildCertificateChainCleaner(Ljavax/net/ssl/X509TrustManager;)Lokhttp3/internal/tls/CertificateChainCleaner;
    .locals 6

    .prologue
    .line 167
    move-object v0, p0

    move-object v1, p1

    new-instance v2, Lokhttp3/internal/tls/BasicCertificateChainCleaner;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-static {v4}, Lokhttp3/internal/tls/TrustRootIndex;->get(Ljavax/net/ssl/X509TrustManager;)Lokhttp3/internal/tls/TrustRootIndex;

    move-result-object v4

    invoke-direct {v3, v4}, Lokhttp3/internal/tls/BasicCertificateChainCleaner;-><init>(Lokhttp3/internal/tls/TrustRootIndex;)V

    move-object v0, v2

    return-object v0
.end method

.method public configureTlsExtensions(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
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
    .line 108
    return-void
.end method

.method public connectSocket(Ljava/net/Socket;Ljava/net/InetSocketAddress;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 124
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v1

    move-object v5, v2

    move v6, v3

    invoke-virtual {v4, v5, v6}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 125
    return-void
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 2

    .prologue
    .line 84
    move-object v0, p0

    const-string v1, "OkHttp"

    move-object v0, v1

    return-object v0
.end method

.method public getSelectedProtocol(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 119
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move-object v0, v2

    return-object v0
.end method

.method public getStackTraceForCloseable(Ljava/lang/String;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 142
    move-object v0, p0

    move-object v1, p1

    sget-object v2, Lokhttp3/internal/platform/Platform;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 143
    new-instance v2, Ljava/lang/Throwable;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-direct {v3, v4}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    .line 145
    :goto_0
    return-object v0

    :cond_0
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0
.end method

.method public isCleartextTrafficPermitted(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 133
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x1

    move v0, v2

    return v0
.end method

.method public log(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 9

    .prologue
    .line 128
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, v1

    const/4 v6, 0x5

    if-ne v5, v6, :cond_0

    sget-object v5, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    :goto_0
    move-object v4, v5

    .line 129
    sget-object v5, Lokhttp3/internal/platform/Platform;->logger:Ljava/util/logging/Logger;

    move-object v6, v4

    move-object v7, v2

    move-object v8, v3

    invoke-virtual {v5, v6, v7, v8}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 130
    return-void

    .line 128
    :cond_0
    sget-object v5, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    goto :goto_0
.end method

.method public logCloseableLeak(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 8

    .prologue
    .line 149
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v2

    if-nez v3, :cond_0

    .line 150
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " To see where this was allocated, set the OkHttpClient logger level to FINE: Logger.getLogger(OkHttpClient.class.getName()).setLevel(Level.FINE);"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 153
    :cond_0
    move-object v3, v0

    const/4 v4, 0x5

    move-object v5, v1

    move-object v6, v2

    check-cast v6, Ljava/lang/Throwable;

    invoke-virtual {v3, v4, v5, v6}, Lokhttp3/internal/platform/Platform;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 154
    return-void
.end method

.method public trustManager(Ljavax/net/ssl/SSLSocketFactory;)Ljavax/net/ssl/X509TrustManager;
    .locals 7

    .prologue
    .line 92
    move-object v0, p0

    move-object v1, p1

    :try_start_0
    const-string v4, "sun.security.ssl.SSLContextImpl"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    move-object v2, v4

    .line 93
    move-object v4, v1

    move-object v5, v2

    const-string v6, "context"

    invoke-static {v4, v5, v6}, Lokhttp3/internal/platform/Platform;->readFieldOrNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    .line 94
    move-object v4, v3

    if-nez v4, :cond_0

    const/4 v4, 0x0

    move-object v0, v4

    .line 97
    :goto_0
    return-object v0

    .line 95
    :cond_0
    move-object v4, v3

    const-class v5, Ljavax/net/ssl/X509TrustManager;

    const-string v6, "trustManager"

    invoke-static {v4, v5, v6}, Lokhttp3/internal/platform/Platform;->readFieldOrNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/net/ssl/X509TrustManager;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v4

    goto :goto_0

    .line 96
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 97
    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_0
.end method
