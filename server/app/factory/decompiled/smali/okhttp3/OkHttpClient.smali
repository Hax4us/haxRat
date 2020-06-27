.class public Lokhttp3/OkHttpClient;
.super Ljava/lang/Object;
.source "OkHttpClient.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Lokhttp3/Call$Factory;
.implements Lokhttp3/WebSocket$Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/OkHttpClient$Builder;
    }
.end annotation


# static fields
.field static final DEFAULT_CONNECTION_SPECS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokhttp3/ConnectionSpec;",
            ">;"
        }
    .end annotation
.end field

.field static final DEFAULT_PROTOCOLS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokhttp3/Protocol;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final authenticator:Lokhttp3/Authenticator;

.field final cache:Lokhttp3/Cache;

.field final certificateChainCleaner:Lokhttp3/internal/tls/CertificateChainCleaner;

.field final certificatePinner:Lokhttp3/CertificatePinner;

.field final connectTimeout:I

.field final connectionPool:Lokhttp3/ConnectionPool;

.field final connectionSpecs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokhttp3/ConnectionSpec;",
            ">;"
        }
    .end annotation
.end field

.field final cookieJar:Lokhttp3/CookieJar;

.field final dispatcher:Lokhttp3/Dispatcher;

.field final dns:Lokhttp3/Dns;

.field final followRedirects:Z

.field final followSslRedirects:Z

.field final hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

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

.field final internalCache:Lokhttp3/internal/cache/InternalCache;

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

.field final pingInterval:I

.field final protocols:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokhttp3/Protocol;",
            ">;"
        }
    .end annotation
.end field

.field final proxy:Ljava/net/Proxy;

.field final proxyAuthenticator:Lokhttp3/Authenticator;

.field final proxySelector:Ljava/net/ProxySelector;

.field final readTimeout:I

.field final retryOnConnectionFailure:Z

.field final socketFactory:Ljavax/net/SocketFactory;

.field final sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

.field final writeTimeout:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 121
    const/4 v0, 0x2

    new-array v0, v0, [Lokhttp3/Protocol;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    sget-object v3, Lokhttp3/Protocol;->HTTP_2:Lokhttp3/Protocol;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    sget-object v3, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    aput-object v3, v1, v2

    invoke-static {v0}, Lokhttp3/internal/Util;->immutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lokhttp3/OkHttpClient;->DEFAULT_PROTOCOLS:Ljava/util/List;

    .line 124
    const/4 v0, 0x3

    new-array v0, v0, [Lokhttp3/ConnectionSpec;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    sget-object v3, Lokhttp3/ConnectionSpec;->MODERN_TLS:Lokhttp3/ConnectionSpec;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    sget-object v3, Lokhttp3/ConnectionSpec;->COMPATIBLE_TLS:Lokhttp3/ConnectionSpec;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    sget-object v3, Lokhttp3/ConnectionSpec;->CLEARTEXT:Lokhttp3/ConnectionSpec;

    aput-object v3, v1, v2

    invoke-static {v0}, Lokhttp3/internal/Util;->immutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lokhttp3/OkHttpClient;->DEFAULT_CONNECTION_SPECS:Ljava/util/List;

    .line 128
    new-instance v0, Lokhttp3/OkHttpClient$1;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    invoke-direct {v1}, Lokhttp3/OkHttpClient$1;-><init>()V

    sput-object v0, Lokhttp3/internal/Internal;->instance:Lokhttp3/internal/Internal;

    .line 177
    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    .line 207
    move-object v0, p0

    move-object v1, v0

    new-instance v2, Lokhttp3/OkHttpClient$Builder;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    invoke-direct {v1, v2}, Lokhttp3/OkHttpClient;-><init>(Lokhttp3/OkHttpClient$Builder;)V

    .line 208
    return-void
.end method

.method constructor <init>(Lokhttp3/OkHttpClient$Builder;)V
    .locals 8

    .prologue
    .line 210
    move-object v0, p0

    move-object v1, p1

    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 211
    move-object v5, v0

    move-object v6, v1

    iget-object v6, v6, Lokhttp3/OkHttpClient$Builder;->dispatcher:Lokhttp3/Dispatcher;

    iput-object v6, v5, Lokhttp3/OkHttpClient;->dispatcher:Lokhttp3/Dispatcher;

    .line 212
    move-object v5, v0

    move-object v6, v1

    iget-object v6, v6, Lokhttp3/OkHttpClient$Builder;->proxy:Ljava/net/Proxy;

    iput-object v6, v5, Lokhttp3/OkHttpClient;->proxy:Ljava/net/Proxy;

    .line 213
    move-object v5, v0

    move-object v6, v1

    iget-object v6, v6, Lokhttp3/OkHttpClient$Builder;->protocols:Ljava/util/List;

    iput-object v6, v5, Lokhttp3/OkHttpClient;->protocols:Ljava/util/List;

    .line 214
    move-object v5, v0

    move-object v6, v1

    iget-object v6, v6, Lokhttp3/OkHttpClient$Builder;->connectionSpecs:Ljava/util/List;

    iput-object v6, v5, Lokhttp3/OkHttpClient;->connectionSpecs:Ljava/util/List;

    .line 215
    move-object v5, v0

    move-object v6, v1

    iget-object v6, v6, Lokhttp3/OkHttpClient$Builder;->interceptors:Ljava/util/List;

    invoke-static {v6}, Lokhttp3/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    iput-object v6, v5, Lokhttp3/OkHttpClient;->interceptors:Ljava/util/List;

    .line 216
    move-object v5, v0

    move-object v6, v1

    iget-object v6, v6, Lokhttp3/OkHttpClient$Builder;->networkInterceptors:Ljava/util/List;

    invoke-static {v6}, Lokhttp3/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    iput-object v6, v5, Lokhttp3/OkHttpClient;->networkInterceptors:Ljava/util/List;

    .line 217
    move-object v5, v0

    move-object v6, v1

    iget-object v6, v6, Lokhttp3/OkHttpClient$Builder;->proxySelector:Ljava/net/ProxySelector;

    iput-object v6, v5, Lokhttp3/OkHttpClient;->proxySelector:Ljava/net/ProxySelector;

    .line 218
    move-object v5, v0

    move-object v6, v1

    iget-object v6, v6, Lokhttp3/OkHttpClient$Builder;->cookieJar:Lokhttp3/CookieJar;

    iput-object v6, v5, Lokhttp3/OkHttpClient;->cookieJar:Lokhttp3/CookieJar;

    .line 219
    move-object v5, v0

    move-object v6, v1

    iget-object v6, v6, Lokhttp3/OkHttpClient$Builder;->cache:Lokhttp3/Cache;

    iput-object v6, v5, Lokhttp3/OkHttpClient;->cache:Lokhttp3/Cache;

    .line 220
    move-object v5, v0

    move-object v6, v1

    iget-object v6, v6, Lokhttp3/OkHttpClient$Builder;->internalCache:Lokhttp3/internal/cache/InternalCache;

    iput-object v6, v5, Lokhttp3/OkHttpClient;->internalCache:Lokhttp3/internal/cache/InternalCache;

    .line 221
    move-object v5, v0

    move-object v6, v1

    iget-object v6, v6, Lokhttp3/OkHttpClient$Builder;->socketFactory:Ljavax/net/SocketFactory;

    iput-object v6, v5, Lokhttp3/OkHttpClient;->socketFactory:Ljavax/net/SocketFactory;

    .line 223
    const/4 v5, 0x0

    move v2, v5

    .line 224
    move-object v5, v0

    iget-object v5, v5, Lokhttp3/OkHttpClient;->connectionSpecs:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v3, v5

    :goto_0
    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lokhttp3/ConnectionSpec;

    move-object v4, v5

    .line 225
    move v5, v2

    if-nez v5, :cond_0

    move-object v5, v4

    invoke-virtual {v5}, Lokhttp3/ConnectionSpec;->isTls()Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    const/4 v5, 0x1

    :goto_1
    move v2, v5

    .line 226
    goto :goto_0

    .line 225
    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    .line 228
    :cond_2
    move-object v5, v1

    iget-object v5, v5, Lokhttp3/OkHttpClient$Builder;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v5, :cond_3

    move v5, v2

    if-nez v5, :cond_4

    .line 229
    :cond_3
    move-object v5, v0

    move-object v6, v1

    iget-object v6, v6, Lokhttp3/OkHttpClient$Builder;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    iput-object v6, v5, Lokhttp3/OkHttpClient;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 230
    move-object v5, v0

    move-object v6, v1

    iget-object v6, v6, Lokhttp3/OkHttpClient$Builder;->certificateChainCleaner:Lokhttp3/internal/tls/CertificateChainCleaner;

    iput-object v6, v5, Lokhttp3/OkHttpClient;->certificateChainCleaner:Lokhttp3/internal/tls/CertificateChainCleaner;

    .line 237
    :goto_2
    move-object v5, v0

    move-object v6, v1

    iget-object v6, v6, Lokhttp3/OkHttpClient$Builder;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    iput-object v6, v5, Lokhttp3/OkHttpClient;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 238
    move-object v5, v0

    move-object v6, v1

    iget-object v6, v6, Lokhttp3/OkHttpClient$Builder;->certificatePinner:Lokhttp3/CertificatePinner;

    move-object v7, v0

    iget-object v7, v7, Lokhttp3/OkHttpClient;->certificateChainCleaner:Lokhttp3/internal/tls/CertificateChainCleaner;

    invoke-virtual {v6, v7}, Lokhttp3/CertificatePinner;->withCertificateChainCleaner(Lokhttp3/internal/tls/CertificateChainCleaner;)Lokhttp3/CertificatePinner;

    move-result-object v6

    iput-object v6, v5, Lokhttp3/OkHttpClient;->certificatePinner:Lokhttp3/CertificatePinner;

    .line 240
    move-object v5, v0

    move-object v6, v1

    iget-object v6, v6, Lokhttp3/OkHttpClient$Builder;->proxyAuthenticator:Lokhttp3/Authenticator;

    iput-object v6, v5, Lokhttp3/OkHttpClient;->proxyAuthenticator:Lokhttp3/Authenticator;

    .line 241
    move-object v5, v0

    move-object v6, v1

    iget-object v6, v6, Lokhttp3/OkHttpClient$Builder;->authenticator:Lokhttp3/Authenticator;

    iput-object v6, v5, Lokhttp3/OkHttpClient;->authenticator:Lokhttp3/Authenticator;

    .line 242
    move-object v5, v0

    move-object v6, v1

    iget-object v6, v6, Lokhttp3/OkHttpClient$Builder;->connectionPool:Lokhttp3/ConnectionPool;

    iput-object v6, v5, Lokhttp3/OkHttpClient;->connectionPool:Lokhttp3/ConnectionPool;

    .line 243
    move-object v5, v0

    move-object v6, v1

    iget-object v6, v6, Lokhttp3/OkHttpClient$Builder;->dns:Lokhttp3/Dns;

    iput-object v6, v5, Lokhttp3/OkHttpClient;->dns:Lokhttp3/Dns;

    .line 244
    move-object v5, v0

    move-object v6, v1

    iget-boolean v6, v6, Lokhttp3/OkHttpClient$Builder;->followSslRedirects:Z

    iput-boolean v6, v5, Lokhttp3/OkHttpClient;->followSslRedirects:Z

    .line 245
    move-object v5, v0

    move-object v6, v1

    iget-boolean v6, v6, Lokhttp3/OkHttpClient$Builder;->followRedirects:Z

    iput-boolean v6, v5, Lokhttp3/OkHttpClient;->followRedirects:Z

    .line 246
    move-object v5, v0

    move-object v6, v1

    iget-boolean v6, v6, Lokhttp3/OkHttpClient$Builder;->retryOnConnectionFailure:Z

    iput-boolean v6, v5, Lokhttp3/OkHttpClient;->retryOnConnectionFailure:Z

    .line 247
    move-object v5, v0

    move-object v6, v1

    iget v6, v6, Lokhttp3/OkHttpClient$Builder;->connectTimeout:I

    iput v6, v5, Lokhttp3/OkHttpClient;->connectTimeout:I

    .line 248
    move-object v5, v0

    move-object v6, v1

    iget v6, v6, Lokhttp3/OkHttpClient$Builder;->readTimeout:I

    iput v6, v5, Lokhttp3/OkHttpClient;->readTimeout:I

    .line 249
    move-object v5, v0

    move-object v6, v1

    iget v6, v6, Lokhttp3/OkHttpClient$Builder;->writeTimeout:I

    iput v6, v5, Lokhttp3/OkHttpClient;->writeTimeout:I

    .line 250
    move-object v5, v0

    move-object v6, v1

    iget v6, v6, Lokhttp3/OkHttpClient$Builder;->pingInterval:I

    iput v6, v5, Lokhttp3/OkHttpClient;->pingInterval:I

    .line 251
    return-void

    .line 232
    :cond_4
    move-object v5, v0

    invoke-direct {v5}, Lokhttp3/OkHttpClient;->systemDefaultTrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v5

    move-object v3, v5

    .line 233
    move-object v5, v0

    move-object v6, v0

    move-object v7, v3

    invoke-direct {v6, v7}, Lokhttp3/OkHttpClient;->systemDefaultSslSocketFactory(Ljavax/net/ssl/X509TrustManager;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v6

    iput-object v6, v5, Lokhttp3/OkHttpClient;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 234
    move-object v5, v0

    move-object v6, v3

    invoke-static {v6}, Lokhttp3/internal/tls/CertificateChainCleaner;->get(Ljavax/net/ssl/X509TrustManager;)Lokhttp3/internal/tls/CertificateChainCleaner;

    move-result-object v6

    iput-object v6, v5, Lokhttp3/OkHttpClient;->certificateChainCleaner:Lokhttp3/internal/tls/CertificateChainCleaner;

    goto :goto_2
.end method

.method private systemDefaultSslSocketFactory(Ljavax/net/ssl/X509TrustManager;)Ljavax/net/ssl/SSLSocketFactory;
    .locals 10

    .prologue
    .line 271
    move-object v0, p0

    move-object v1, p1

    :try_start_0
    const-string v3, "TLS"

    invoke-static {v3}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v3

    move-object v2, v3

    .line 272
    move-object v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljavax/net/ssl/TrustManager;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v1

    aput-object v8, v6, v7

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 273
    move-object v3, v2

    invoke-virtual {v3}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    move-object v0, v3

    return-object v0

    .line 274
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 275
    new-instance v3, Ljava/lang/AssertionError;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v3
.end method

.method private systemDefaultTrustManager()Ljavax/net/ssl/X509TrustManager;
    .locals 8

    .prologue
    .line 256
    move-object v0, p0

    :try_start_0
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v3

    .line 255
    invoke-static {v3}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v3

    move-object v1, v3

    .line 257
    move-object v3, v1

    const/4 v4, 0x0

    check-cast v4, Ljava/security/KeyStore;

    invoke-virtual {v3, v4}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 258
    move-object v3, v1

    invoke-virtual {v3}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v3

    move-object v2, v3

    .line 259
    move-object v3, v2

    array-length v3, v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    move-object v3, v2

    const/4 v4, 0x0

    aget-object v3, v3, v4

    instance-of v3, v3, Ljavax/net/ssl/X509TrustManager;

    if-nez v3, :cond_1

    .line 260
    :cond_0
    new-instance v3, Ljava/lang/IllegalStateException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected default trust managers:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v2

    .line 261
    invoke-static {v6}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 265
    new-instance v3, Ljava/lang/AssertionError;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 263
    :cond_1
    move-object v3, v2

    const/4 v4, 0x0

    :try_start_1
    aget-object v3, v3, v4

    check-cast v3, Ljavax/net/ssl/X509TrustManager;
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public authenticator()Lokhttp3/Authenticator;
    .locals 2

    .prologue
    .line 340
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/OkHttpClient;->authenticator:Lokhttp3/Authenticator;

    move-object v0, v1

    return-object v0
.end method

.method public cache()Lokhttp3/Cache;
    .locals 2

    .prologue
    .line 312
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/OkHttpClient;->cache:Lokhttp3/Cache;

    move-object v0, v1

    return-object v0
.end method

.method public certificatePinner()Lokhttp3/CertificatePinner;
    .locals 2

    .prologue
    .line 336
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/OkHttpClient;->certificatePinner:Lokhttp3/CertificatePinner;

    move-object v0, v1

    return-object v0
.end method

.method public connectTimeoutMillis()I
    .locals 2

    .prologue
    .line 281
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lokhttp3/OkHttpClient;->connectTimeout:I

    move v0, v1

    return v0
.end method

.method public connectionPool()Lokhttp3/ConnectionPool;
    .locals 2

    .prologue
    .line 348
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/OkHttpClient;->connectionPool:Lokhttp3/ConnectionPool;

    move-object v0, v1

    return-object v0
.end method

.method public connectionSpecs()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lokhttp3/ConnectionSpec;",
            ">;"
        }
    .end annotation

    .prologue
    .line 372
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/OkHttpClient;->connectionSpecs:Ljava/util/List;

    move-object v0, v1

    return-object v0
.end method

.method public cookieJar()Lokhttp3/CookieJar;
    .locals 2

    .prologue
    .line 308
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/OkHttpClient;->cookieJar:Lokhttp3/CookieJar;

    move-object v0, v1

    return-object v0
.end method

.method public dispatcher()Lokhttp3/Dispatcher;
    .locals 2

    .prologue
    .line 364
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/OkHttpClient;->dispatcher:Lokhttp3/Dispatcher;

    move-object v0, v1

    return-object v0
.end method

.method public dns()Lokhttp3/Dns;
    .locals 2

    .prologue
    .line 320
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/OkHttpClient;->dns:Lokhttp3/Dns;

    move-object v0, v1

    return-object v0
.end method

.method public followRedirects()Z
    .locals 2

    .prologue
    .line 356
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lokhttp3/OkHttpClient;->followRedirects:Z

    move v0, v1

    return v0
.end method

.method public followSslRedirects()Z
    .locals 2

    .prologue
    .line 352
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lokhttp3/OkHttpClient;->followSslRedirects:Z

    move v0, v1

    return v0
.end method

.method public hostnameVerifier()Ljavax/net/ssl/HostnameVerifier;
    .locals 2

    .prologue
    .line 332
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/OkHttpClient;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    move-object v0, v1

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
    .line 381
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/OkHttpClient;->interceptors:Ljava/util/List;

    move-object v0, v1

    return-object v0
.end method

.method internalCache()Lokhttp3/internal/cache/InternalCache;
    .locals 2

    .prologue
    .line 316
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/OkHttpClient;->cache:Lokhttp3/Cache;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/OkHttpClient;->cache:Lokhttp3/Cache;

    iget-object v1, v1, Lokhttp3/Cache;->internalCache:Lokhttp3/internal/cache/InternalCache;

    :goto_0
    move-object v0, v1

    return-object v0

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lokhttp3/OkHttpClient;->internalCache:Lokhttp3/internal/cache/InternalCache;

    goto :goto_0
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
    .line 390
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/OkHttpClient;->networkInterceptors:Ljava/util/List;

    move-object v0, v1

    return-object v0
.end method

.method public newBuilder()Lokhttp3/OkHttpClient$Builder;
    .locals 5

    .prologue
    .line 410
    move-object v0, p0

    new-instance v1, Lokhttp3/OkHttpClient$Builder;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lokhttp3/OkHttpClient$Builder;-><init>(Lokhttp3/OkHttpClient;)V

    move-object v0, v1

    return-object v0
.end method

.method public newCall(Lokhttp3/Request;)Lokhttp3/Call;
    .locals 8

    .prologue
    .line 397
    move-object v0, p0

    move-object v1, p1

    new-instance v2, Lokhttp3/RealCall;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    move-object v5, v1

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lokhttp3/RealCall;-><init>(Lokhttp3/OkHttpClient;Lokhttp3/Request;Z)V

    move-object v0, v2

    return-object v0
.end method

.method public newWebSocket(Lokhttp3/Request;Lokhttp3/WebSocketListener;)Lokhttp3/WebSocket;
    .locals 11

    .prologue
    .line 404
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    new-instance v4, Lokhttp3/internal/ws/RealWebSocket;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v1

    move-object v7, v2

    new-instance v8, Ljava/security/SecureRandom;

    move-object v10, v8

    move-object v8, v10

    move-object v9, v10

    invoke-direct {v9}, Ljava/security/SecureRandom;-><init>()V

    invoke-direct {v5, v6, v7, v8}, Lokhttp3/internal/ws/RealWebSocket;-><init>(Lokhttp3/Request;Lokhttp3/WebSocketListener;Ljava/util/Random;)V

    move-object v3, v4

    .line 405
    move-object v4, v3

    move-object v5, v0

    invoke-virtual {v4, v5}, Lokhttp3/internal/ws/RealWebSocket;->connect(Lokhttp3/OkHttpClient;)V

    .line 406
    move-object v4, v3

    move-object v0, v4

    return-object v0
.end method

.method public pingIntervalMillis()I
    .locals 2

    .prologue
    .line 296
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lokhttp3/OkHttpClient;->pingInterval:I

    move v0, v1

    return v0
.end method

.method public protocols()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lokhttp3/Protocol;",
            ">;"
        }
    .end annotation

    .prologue
    .line 368
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/OkHttpClient;->protocols:Ljava/util/List;

    move-object v0, v1

    return-object v0
.end method

.method public proxy()Ljava/net/Proxy;
    .locals 2

    .prologue
    .line 300
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/OkHttpClient;->proxy:Ljava/net/Proxy;

    move-object v0, v1

    return-object v0
.end method

.method public proxyAuthenticator()Lokhttp3/Authenticator;
    .locals 2

    .prologue
    .line 344
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/OkHttpClient;->proxyAuthenticator:Lokhttp3/Authenticator;

    move-object v0, v1

    return-object v0
.end method

.method public proxySelector()Ljava/net/ProxySelector;
    .locals 2

    .prologue
    .line 304
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/OkHttpClient;->proxySelector:Ljava/net/ProxySelector;

    move-object v0, v1

    return-object v0
.end method

.method public readTimeoutMillis()I
    .locals 2

    .prologue
    .line 286
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lokhttp3/OkHttpClient;->readTimeout:I

    move v0, v1

    return v0
.end method

.method public retryOnConnectionFailure()Z
    .locals 2

    .prologue
    .line 360
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lokhttp3/OkHttpClient;->retryOnConnectionFailure:Z

    move v0, v1

    return v0
.end method

.method public socketFactory()Ljavax/net/SocketFactory;
    .locals 2

    .prologue
    .line 324
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/OkHttpClient;->socketFactory:Ljavax/net/SocketFactory;

    move-object v0, v1

    return-object v0
.end method

.method public sslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 2

    .prologue
    .line 328
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/OkHttpClient;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    move-object v0, v1

    return-object v0
.end method

.method public writeTimeoutMillis()I
    .locals 2

    .prologue
    .line 291
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lokhttp3/OkHttpClient;->writeTimeout:I

    move v0, v1

    return v0
.end method
