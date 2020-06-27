.class public final Lokhttp3/OkHttpClient$Builder;
.super Ljava/lang/Object;
.source "OkHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/OkHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field authenticator:Lokhttp3/Authenticator;

.field cache:Lokhttp3/Cache;

.field certificateChainCleaner:Lokhttp3/internal/tls/CertificateChainCleaner;

.field certificatePinner:Lokhttp3/CertificatePinner;

.field connectTimeout:I

.field connectionPool:Lokhttp3/ConnectionPool;

.field connectionSpecs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokhttp3/ConnectionSpec;",
            ">;"
        }
    .end annotation
.end field

.field cookieJar:Lokhttp3/CookieJar;

.field dispatcher:Lokhttp3/Dispatcher;

.field dns:Lokhttp3/Dns;

.field followRedirects:Z

.field followSslRedirects:Z

.field hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

.field final interceptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokhttp3/Interceptor;",
            ">;"
        }
    .end annotation
.end field

.field internalCache:Lokhttp3/internal/cache/InternalCache;

.field final networkInterceptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokhttp3/Interceptor;",
            ">;"
        }
    .end annotation
.end field

.field pingInterval:I

.field protocols:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokhttp3/Protocol;",
            ">;"
        }
    .end annotation
.end field

.field proxy:Ljava/net/Proxy;

.field proxyAuthenticator:Lokhttp3/Authenticator;

.field proxySelector:Ljava/net/ProxySelector;

.field readTimeout:I

.field retryOnConnectionFailure:Z

.field socketFactory:Ljavax/net/SocketFactory;

.field sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

.field writeTimeout:I


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 441
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 418
    move-object v1, v0

    new-instance v2, Ljava/util/ArrayList;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lokhttp3/OkHttpClient$Builder;->interceptors:Ljava/util/List;

    .line 419
    move-object v1, v0

    new-instance v2, Ljava/util/ArrayList;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lokhttp3/OkHttpClient$Builder;->networkInterceptors:Ljava/util/List;

    .line 442
    move-object v1, v0

    new-instance v2, Lokhttp3/Dispatcher;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lokhttp3/Dispatcher;-><init>()V

    iput-object v2, v1, Lokhttp3/OkHttpClient$Builder;->dispatcher:Lokhttp3/Dispatcher;

    .line 443
    move-object v1, v0

    sget-object v2, Lokhttp3/OkHttpClient;->DEFAULT_PROTOCOLS:Ljava/util/List;

    iput-object v2, v1, Lokhttp3/OkHttpClient$Builder;->protocols:Ljava/util/List;

    .line 444
    move-object v1, v0

    sget-object v2, Lokhttp3/OkHttpClient;->DEFAULT_CONNECTION_SPECS:Ljava/util/List;

    iput-object v2, v1, Lokhttp3/OkHttpClient$Builder;->connectionSpecs:Ljava/util/List;

    .line 445
    move-object v1, v0

    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v2

    iput-object v2, v1, Lokhttp3/OkHttpClient$Builder;->proxySelector:Ljava/net/ProxySelector;

    .line 446
    move-object v1, v0

    sget-object v2, Lokhttp3/CookieJar;->NO_COOKIES:Lokhttp3/CookieJar;

    iput-object v2, v1, Lokhttp3/OkHttpClient$Builder;->cookieJar:Lokhttp3/CookieJar;

    .line 447
    move-object v1, v0

    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v2

    iput-object v2, v1, Lokhttp3/OkHttpClient$Builder;->socketFactory:Ljavax/net/SocketFactory;

    .line 448
    move-object v1, v0

    sget-object v2, Lokhttp3/internal/tls/OkHostnameVerifier;->INSTANCE:Lokhttp3/internal/tls/OkHostnameVerifier;

    iput-object v2, v1, Lokhttp3/OkHttpClient$Builder;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 449
    move-object v1, v0

    sget-object v2, Lokhttp3/CertificatePinner;->DEFAULT:Lokhttp3/CertificatePinner;

    iput-object v2, v1, Lokhttp3/OkHttpClient$Builder;->certificatePinner:Lokhttp3/CertificatePinner;

    .line 450
    move-object v1, v0

    sget-object v2, Lokhttp3/Authenticator;->NONE:Lokhttp3/Authenticator;

    iput-object v2, v1, Lokhttp3/OkHttpClient$Builder;->proxyAuthenticator:Lokhttp3/Authenticator;

    .line 451
    move-object v1, v0

    sget-object v2, Lokhttp3/Authenticator;->NONE:Lokhttp3/Authenticator;

    iput-object v2, v1, Lokhttp3/OkHttpClient$Builder;->authenticator:Lokhttp3/Authenticator;

    .line 452
    move-object v1, v0

    new-instance v2, Lokhttp3/ConnectionPool;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lokhttp3/ConnectionPool;-><init>()V

    iput-object v2, v1, Lokhttp3/OkHttpClient$Builder;->connectionPool:Lokhttp3/ConnectionPool;

    .line 453
    move-object v1, v0

    sget-object v2, Lokhttp3/Dns;->SYSTEM:Lokhttp3/Dns;

    iput-object v2, v1, Lokhttp3/OkHttpClient$Builder;->dns:Lokhttp3/Dns;

    .line 454
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lokhttp3/OkHttpClient$Builder;->followSslRedirects:Z

    .line 455
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lokhttp3/OkHttpClient$Builder;->followRedirects:Z

    .line 456
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lokhttp3/OkHttpClient$Builder;->retryOnConnectionFailure:Z

    .line 457
    move-object v1, v0

    const/16 v2, 0x2710

    iput v2, v1, Lokhttp3/OkHttpClient$Builder;->connectTimeout:I

    .line 458
    move-object v1, v0

    const/16 v2, 0x2710

    iput v2, v1, Lokhttp3/OkHttpClient$Builder;->readTimeout:I

    .line 459
    move-object v1, v0

    const/16 v2, 0x2710

    iput v2, v1, Lokhttp3/OkHttpClient$Builder;->writeTimeout:I

    .line 460
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lokhttp3/OkHttpClient$Builder;->pingInterval:I

    .line 461
    return-void
.end method

.method constructor <init>(Lokhttp3/OkHttpClient;)V
    .locals 6

    .prologue
    .line 463
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 418
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lokhttp3/OkHttpClient$Builder;->interceptors:Ljava/util/List;

    .line 419
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lokhttp3/OkHttpClient$Builder;->networkInterceptors:Ljava/util/List;

    .line 464
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Lokhttp3/OkHttpClient;->dispatcher:Lokhttp3/Dispatcher;

    iput-object v3, v2, Lokhttp3/OkHttpClient$Builder;->dispatcher:Lokhttp3/Dispatcher;

    .line 465
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Lokhttp3/OkHttpClient;->proxy:Ljava/net/Proxy;

    iput-object v3, v2, Lokhttp3/OkHttpClient$Builder;->proxy:Ljava/net/Proxy;

    .line 466
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Lokhttp3/OkHttpClient;->protocols:Ljava/util/List;

    iput-object v3, v2, Lokhttp3/OkHttpClient$Builder;->protocols:Ljava/util/List;

    .line 467
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Lokhttp3/OkHttpClient;->connectionSpecs:Ljava/util/List;

    iput-object v3, v2, Lokhttp3/OkHttpClient$Builder;->connectionSpecs:Ljava/util/List;

    .line 468
    move-object v2, v0

    iget-object v2, v2, Lokhttp3/OkHttpClient$Builder;->interceptors:Ljava/util/List;

    move-object v3, v1

    iget-object v3, v3, Lokhttp3/OkHttpClient;->interceptors:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v2

    .line 469
    move-object v2, v0

    iget-object v2, v2, Lokhttp3/OkHttpClient$Builder;->networkInterceptors:Ljava/util/List;

    move-object v3, v1

    iget-object v3, v3, Lokhttp3/OkHttpClient;->networkInterceptors:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v2

    .line 470
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Lokhttp3/OkHttpClient;->proxySelector:Ljava/net/ProxySelector;

    iput-object v3, v2, Lokhttp3/OkHttpClient$Builder;->proxySelector:Ljava/net/ProxySelector;

    .line 471
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Lokhttp3/OkHttpClient;->cookieJar:Lokhttp3/CookieJar;

    iput-object v3, v2, Lokhttp3/OkHttpClient$Builder;->cookieJar:Lokhttp3/CookieJar;

    .line 472
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Lokhttp3/OkHttpClient;->internalCache:Lokhttp3/internal/cache/InternalCache;

    iput-object v3, v2, Lokhttp3/OkHttpClient$Builder;->internalCache:Lokhttp3/internal/cache/InternalCache;

    .line 473
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Lokhttp3/OkHttpClient;->cache:Lokhttp3/Cache;

    iput-object v3, v2, Lokhttp3/OkHttpClient$Builder;->cache:Lokhttp3/Cache;

    .line 474
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Lokhttp3/OkHttpClient;->socketFactory:Ljavax/net/SocketFactory;

    iput-object v3, v2, Lokhttp3/OkHttpClient$Builder;->socketFactory:Ljavax/net/SocketFactory;

    .line 475
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Lokhttp3/OkHttpClient;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    iput-object v3, v2, Lokhttp3/OkHttpClient$Builder;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 476
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Lokhttp3/OkHttpClient;->certificateChainCleaner:Lokhttp3/internal/tls/CertificateChainCleaner;

    iput-object v3, v2, Lokhttp3/OkHttpClient$Builder;->certificateChainCleaner:Lokhttp3/internal/tls/CertificateChainCleaner;

    .line 477
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Lokhttp3/OkHttpClient;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    iput-object v3, v2, Lokhttp3/OkHttpClient$Builder;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 478
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Lokhttp3/OkHttpClient;->certificatePinner:Lokhttp3/CertificatePinner;

    iput-object v3, v2, Lokhttp3/OkHttpClient$Builder;->certificatePinner:Lokhttp3/CertificatePinner;

    .line 479
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Lokhttp3/OkHttpClient;->proxyAuthenticator:Lokhttp3/Authenticator;

    iput-object v3, v2, Lokhttp3/OkHttpClient$Builder;->proxyAuthenticator:Lokhttp3/Authenticator;

    .line 480
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Lokhttp3/OkHttpClient;->authenticator:Lokhttp3/Authenticator;

    iput-object v3, v2, Lokhttp3/OkHttpClient$Builder;->authenticator:Lokhttp3/Authenticator;

    .line 481
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Lokhttp3/OkHttpClient;->connectionPool:Lokhttp3/ConnectionPool;

    iput-object v3, v2, Lokhttp3/OkHttpClient$Builder;->connectionPool:Lokhttp3/ConnectionPool;

    .line 482
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Lokhttp3/OkHttpClient;->dns:Lokhttp3/Dns;

    iput-object v3, v2, Lokhttp3/OkHttpClient$Builder;->dns:Lokhttp3/Dns;

    .line 483
    move-object v2, v0

    move-object v3, v1

    iget-boolean v3, v3, Lokhttp3/OkHttpClient;->followSslRedirects:Z

    iput-boolean v3, v2, Lokhttp3/OkHttpClient$Builder;->followSslRedirects:Z

    .line 484
    move-object v2, v0

    move-object v3, v1

    iget-boolean v3, v3, Lokhttp3/OkHttpClient;->followRedirects:Z

    iput-boolean v3, v2, Lokhttp3/OkHttpClient$Builder;->followRedirects:Z

    .line 485
    move-object v2, v0

    move-object v3, v1

    iget-boolean v3, v3, Lokhttp3/OkHttpClient;->retryOnConnectionFailure:Z

    iput-boolean v3, v2, Lokhttp3/OkHttpClient$Builder;->retryOnConnectionFailure:Z

    .line 486
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Lokhttp3/OkHttpClient;->connectTimeout:I

    iput v3, v2, Lokhttp3/OkHttpClient$Builder;->connectTimeout:I

    .line 487
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Lokhttp3/OkHttpClient;->readTimeout:I

    iput v3, v2, Lokhttp3/OkHttpClient$Builder;->readTimeout:I

    .line 488
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Lokhttp3/OkHttpClient;->writeTimeout:I

    iput v3, v2, Lokhttp3/OkHttpClient$Builder;->writeTimeout:I

    .line 489
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Lokhttp3/OkHttpClient;->pingInterval:I

    iput v3, v2, Lokhttp3/OkHttpClient$Builder;->pingInterval:I

    .line 490
    return-void
.end method

.method private static checkDuration(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I
    .locals 11

    .prologue
    .line 534
    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-wide v6, v1

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-gez v6, :cond_0

    new-instance v6, Ljava/lang/IllegalArgumentException;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v10, v8

    move-object v8, v10

    move-object v9, v10

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object v9, v0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " < 0"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 535
    :cond_0
    move-object v6, v3

    if-nez v6, :cond_1

    new-instance v6, Ljava/lang/NullPointerException;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const-string v8, "unit == null"

    invoke-direct {v7, v8}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 536
    :cond_1
    move-object v6, v3

    move-wide v7, v1

    invoke-virtual {v6, v7, v8}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    move-wide v4, v6

    .line 537
    move-wide v6, v4

    const-wide/32 v8, 0x7fffffff

    cmp-long v6, v6, v8

    if-lez v6, :cond_2

    new-instance v6, Ljava/lang/IllegalArgumentException;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v10, v8

    move-object v8, v10

    move-object v9, v10

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object v9, v0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " too large."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 538
    :cond_2
    move-wide v6, v4

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_3

    move-wide v6, v1

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_3

    new-instance v6, Ljava/lang/IllegalArgumentException;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v10, v8

    move-object v8, v10

    move-object v9, v10

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object v9, v0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " too small."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 539
    :cond_3
    move-wide v6, v4

    long-to-int v6, v6

    move v0, v6

    return v0
.end method


# virtual methods
.method public addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;
    .locals 4

    .prologue
    .line 849
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lokhttp3/OkHttpClient$Builder;->interceptors:Ljava/util/List;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 850
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public addNetworkInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;
    .locals 4

    .prologue
    .line 863
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lokhttp3/OkHttpClient$Builder;->networkInterceptors:Ljava/util/List;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 864
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public authenticator(Lokhttp3/Authenticator;)Lokhttp3/OkHttpClient$Builder;
    .locals 6

    .prologue
    .line 705
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/NullPointerException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "authenticator == null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 706
    :cond_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lokhttp3/OkHttpClient$Builder;->authenticator:Lokhttp3/Authenticator;

    .line 707
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public build()Lokhttp3/OkHttpClient;
    .locals 5

    .prologue
    .line 868
    move-object v0, p0

    new-instance v1, Lokhttp3/OkHttpClient;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lokhttp3/OkHttpClient;-><init>(Lokhttp3/OkHttpClient$Builder;)V

    move-object v0, v1

    return-object v0
.end method

.method public cache(Lokhttp3/Cache;)Lokhttp3/OkHttpClient$Builder;
    .locals 4

    .prologue
    .line 585
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lokhttp3/OkHttpClient$Builder;->cache:Lokhttp3/Cache;

    .line 586
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lokhttp3/OkHttpClient$Builder;->internalCache:Lokhttp3/internal/cache/InternalCache;

    .line 587
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public certificatePinner(Lokhttp3/CertificatePinner;)Lokhttp3/OkHttpClient$Builder;
    .locals 6

    .prologue
    .line 693
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/NullPointerException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "certificatePinner == null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 694
    :cond_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lokhttp3/OkHttpClient$Builder;->certificatePinner:Lokhttp3/CertificatePinner;

    .line 695
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;
    .locals 9

    .prologue
    .line 498
    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, v0

    const-string v5, "timeout"

    move-wide v6, v1

    move-object v8, v3

    invoke-static {v5, v6, v7, v8}, Lokhttp3/OkHttpClient$Builder;->checkDuration(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result v5

    iput v5, v4, Lokhttp3/OkHttpClient$Builder;->connectTimeout:I

    .line 499
    move-object v4, v0

    move-object v0, v4

    return-object v0
.end method

.method public connectionPool(Lokhttp3/ConnectionPool;)Lokhttp3/OkHttpClient$Builder;
    .locals 6

    .prologue
    .line 728
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/NullPointerException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "connectionPool == null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 729
    :cond_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lokhttp3/OkHttpClient$Builder;->connectionPool:Lokhttp3/ConnectionPool;

    .line 730
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public connectionSpecs(Ljava/util/List;)Lokhttp3/OkHttpClient$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lokhttp3/ConnectionSpec;",
            ">;)",
            "Lokhttp3/OkHttpClient$Builder;"
        }
    .end annotation

    .prologue
    .line 835
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Lokhttp3/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v2, Lokhttp3/OkHttpClient$Builder;->connectionSpecs:Ljava/util/List;

    .line 836
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public cookieJar(Lokhttp3/CookieJar;)Lokhttp3/OkHttpClient$Builder;
    .locals 6

    .prologue
    .line 572
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/NullPointerException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "cookieJar == null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 573
    :cond_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lokhttp3/OkHttpClient$Builder;->cookieJar:Lokhttp3/CookieJar;

    .line 574
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public dispatcher(Lokhttp3/Dispatcher;)Lokhttp3/OkHttpClient$Builder;
    .locals 6

    .prologue
    .line 777
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "dispatcher == null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 778
    :cond_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lokhttp3/OkHttpClient$Builder;->dispatcher:Lokhttp3/Dispatcher;

    .line 779
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public dns(Lokhttp3/Dns;)Lokhttp3/OkHttpClient$Builder;
    .locals 6

    .prologue
    .line 596
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/NullPointerException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "dns == null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 597
    :cond_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lokhttp3/OkHttpClient$Builder;->dns:Lokhttp3/Dns;

    .line 598
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public followRedirects(Z)Lokhttp3/OkHttpClient$Builder;
    .locals 4

    .prologue
    .line 746
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lokhttp3/OkHttpClient$Builder;->followRedirects:Z

    .line 747
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public followSslRedirects(Z)Lokhttp3/OkHttpClient$Builder;
    .locals 4

    .prologue
    .line 740
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lokhttp3/OkHttpClient$Builder;->followSslRedirects:Z

    .line 741
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public hostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lokhttp3/OkHttpClient$Builder;
    .locals 6

    .prologue
    .line 682
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/NullPointerException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "hostnameVerifier == null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 683
    :cond_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lokhttp3/OkHttpClient$Builder;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 684
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public interceptors()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lokhttp3/Interceptor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 845
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/OkHttpClient$Builder;->interceptors:Ljava/util/List;

    move-object v0, v1

    return-object v0
.end method

.method public networkInterceptors()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lokhttp3/Interceptor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 859
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/OkHttpClient$Builder;->networkInterceptors:Ljava/util/List;

    move-object v0, v1

    return-object v0
.end method

.method public pingInterval(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;
    .locals 9

    .prologue
    .line 529
    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, v0

    const-string v5, "interval"

    move-wide v6, v1

    move-object v8, v3

    invoke-static {v5, v6, v7, v8}, Lokhttp3/OkHttpClient$Builder;->checkDuration(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result v5

    iput v5, v4, Lokhttp3/OkHttpClient$Builder;->pingInterval:I

    .line 530
    move-object v4, v0

    move-object v0, v4

    return-object v0
.end method

.method public protocols(Ljava/util/List;)Lokhttp3/OkHttpClient$Builder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lokhttp3/Protocol;",
            ">;)",
            "Lokhttp3/OkHttpClient$Builder;"
        }
    .end annotation

    .prologue
    .line 811
    move-object v0, p0

    move-object v1, p1

    new-instance v2, Ljava/util/ArrayList;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v1

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v1, v2

    .line 814
    move-object v2, v1

    sget-object v3, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 815
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "protocols doesn\'t contain http/1.1: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 817
    :cond_0
    move-object v2, v1

    sget-object v3, Lokhttp3/Protocol;->HTTP_1_0:Lokhttp3/Protocol;

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 818
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "protocols must not contain http/1.0: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 820
    :cond_1
    move-object v2, v1

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 821
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const-string v4, "protocols must not contain null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 825
    :cond_2
    move-object v2, v1

    sget-object v3, Lokhttp3/Protocol;->SPDY_3:Lokhttp3/Protocol;

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 826
    move-object v2, v1

    sget-object v3, Lokhttp3/Protocol;->SPDY_3:Lokhttp3/Protocol;

    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v2

    .line 830
    :cond_3
    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v2, Lokhttp3/OkHttpClient$Builder;->protocols:Ljava/util/List;

    .line 831
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public proxy(Ljava/net/Proxy;)Lokhttp3/OkHttpClient$Builder;
    .locals 4

    .prologue
    .line 548
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lokhttp3/OkHttpClient$Builder;->proxy:Ljava/net/Proxy;

    .line 549
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public proxyAuthenticator(Lokhttp3/Authenticator;)Lokhttp3/OkHttpClient$Builder;
    .locals 6

    .prologue
    .line 717
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/NullPointerException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "proxyAuthenticator == null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 718
    :cond_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lokhttp3/OkHttpClient$Builder;->proxyAuthenticator:Lokhttp3/Authenticator;

    .line 719
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public proxySelector(Ljava/net/ProxySelector;)Lokhttp3/OkHttpClient$Builder;
    .locals 4

    .prologue
    .line 561
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lokhttp3/OkHttpClient$Builder;->proxySelector:Ljava/net/ProxySelector;

    .line 562
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;
    .locals 9

    .prologue
    .line 507
    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, v0

    const-string v5, "timeout"

    move-wide v6, v1

    move-object v8, v3

    invoke-static {v5, v6, v7, v8}, Lokhttp3/OkHttpClient$Builder;->checkDuration(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result v5

    iput v5, v4, Lokhttp3/OkHttpClient$Builder;->readTimeout:I

    .line 508
    move-object v4, v0

    move-object v0, v4

    return-object v0
.end method

.method public retryOnConnectionFailure(Z)Lokhttp3/OkHttpClient$Builder;
    .locals 4

    .prologue
    .line 769
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lokhttp3/OkHttpClient$Builder;->retryOnConnectionFailure:Z

    .line 770
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method setInternalCache(Lokhttp3/internal/cache/InternalCache;)V
    .locals 4

    .prologue
    .line 579
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lokhttp3/OkHttpClient$Builder;->internalCache:Lokhttp3/internal/cache/InternalCache;

    .line 580
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lokhttp3/OkHttpClient$Builder;->cache:Lokhttp3/Cache;

    .line 581
    return-void
.end method

.method public socketFactory(Ljavax/net/SocketFactory;)Lokhttp3/OkHttpClient$Builder;
    .locals 6

    .prologue
    .line 610
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/NullPointerException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "socketFactory == null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 611
    :cond_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lokhttp3/OkHttpClient$Builder;->socketFactory:Ljavax/net/SocketFactory;

    .line 612
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)Lokhttp3/OkHttpClient$Builder;
    .locals 8

    .prologue
    .line 625
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/NullPointerException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const-string v5, "sslSocketFactory == null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 626
    :cond_0
    invoke-static {}, Lokhttp3/internal/platform/Platform;->get()Lokhttp3/internal/platform/Platform;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v3, v4}, Lokhttp3/internal/platform/Platform;->trustManager(Ljavax/net/ssl/SSLSocketFactory;)Ljavax/net/ssl/X509TrustManager;

    move-result-object v3

    move-object v2, v3

    .line 627
    move-object v3, v2

    if-nez v3, :cond_1

    .line 628
    new-instance v3, Ljava/lang/IllegalStateException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to extract the trust manager on "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lokhttp3/internal/platform/Platform;->get()Lokhttp3/internal/platform/Platform;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", sslSocketFactory is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    .line 629
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 631
    :cond_1
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lokhttp3/OkHttpClient$Builder;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 632
    move-object v3, v0

    move-object v4, v2

    invoke-static {v4}, Lokhttp3/internal/tls/CertificateChainCleaner;->get(Ljavax/net/ssl/X509TrustManager;)Lokhttp3/internal/tls/CertificateChainCleaner;

    move-result-object v4

    iput-object v4, v3, Lokhttp3/OkHttpClient$Builder;->certificateChainCleaner:Lokhttp3/internal/tls/CertificateChainCleaner;

    .line 633
    move-object v3, v0

    move-object v0, v3

    return-object v0
.end method

.method public sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/X509TrustManager;)Lokhttp3/OkHttpClient$Builder;
    .locals 7

    .prologue
    .line 668
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v1

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/NullPointerException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "sslSocketFactory == null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 669
    :cond_0
    move-object v3, v2

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/NullPointerException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "trustManager == null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 670
    :cond_1
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lokhttp3/OkHttpClient$Builder;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 671
    move-object v3, v0

    move-object v4, v2

    invoke-static {v4}, Lokhttp3/internal/tls/CertificateChainCleaner;->get(Ljavax/net/ssl/X509TrustManager;)Lokhttp3/internal/tls/CertificateChainCleaner;

    move-result-object v4

    iput-object v4, v3, Lokhttp3/OkHttpClient$Builder;->certificateChainCleaner:Lokhttp3/internal/tls/CertificateChainCleaner;

    .line 672
    move-object v3, v0

    move-object v0, v3

    return-object v0
.end method

.method public writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;
    .locals 9

    .prologue
    .line 516
    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, v0

    const-string v5, "timeout"

    move-wide v6, v1

    move-object v8, v3

    invoke-static {v5, v6, v7, v8}, Lokhttp3/OkHttpClient$Builder;->checkDuration(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result v5

    iput v5, v4, Lokhttp3/OkHttpClient$Builder;->writeTimeout:I

    .line 517
    move-object v4, v0

    move-object v0, v4

    return-object v0
.end method
