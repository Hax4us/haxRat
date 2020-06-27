.class final Lokhttp3/internal/platform/AndroidPlatform$AndroidCertificateChainCleaner;
.super Lokhttp3/internal/tls/CertificateChainCleaner;
.source "AndroidPlatform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/platform/AndroidPlatform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AndroidCertificateChainCleaner"
.end annotation


# instance fields
.field private final checkServerTrusted:Ljava/lang/reflect/Method;

.field private final x509TrustManagerExtensions:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/reflect/Method;)V
    .locals 5

    .prologue
    .line 222
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    invoke-direct {v3}, Lokhttp3/internal/tls/CertificateChainCleaner;-><init>()V

    .line 223
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lokhttp3/internal/platform/AndroidPlatform$AndroidCertificateChainCleaner;->x509TrustManagerExtensions:Ljava/lang/Object;

    .line 224
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lokhttp3/internal/platform/AndroidPlatform$AndroidCertificateChainCleaner;->checkServerTrusted:Ljava/lang/reflect/Method;

    .line 225
    return-void
.end method


# virtual methods
.method public clean(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .prologue
    .line 231
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v1

    move-object v6, v1

    :try_start_0
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Ljava/security/cert/X509Certificate;

    invoke-interface {v5, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/security/cert/X509Certificate;

    move-object v3, v5

    .line 232
    move-object v5, v0

    iget-object v5, v5, Lokhttp3/internal/platform/AndroidPlatform$AndroidCertificateChainCleaner;->checkServerTrusted:Ljava/lang/reflect/Method;

    move-object v6, v0

    iget-object v6, v6, Lokhttp3/internal/platform/AndroidPlatform$AndroidCertificateChainCleaner;->x509TrustManagerExtensions:Ljava/lang/Object;

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x0

    move-object v10, v3

    aput-object v10, v8, v9

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x1

    const-string v10, "RSA"

    aput-object v10, v8, v9

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x2

    move-object v10, v2

    aput-object v10, v8, v9

    invoke-virtual {v5, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v0, v5

    return-object v0

    .line 234
    :catch_0
    move-exception v5

    move-object v3, v5

    .line 235
    new-instance v5, Ljavax/net/ssl/SSLPeerUnverifiedException;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    move-object v7, v3

    invoke-virtual {v7}, Ljava/lang/reflect/InvocationTargetException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    move-object v4, v5

    .line 236
    move-object v5, v4

    move-object v6, v3

    invoke-virtual {v5, v6}, Ljavax/net/ssl/SSLPeerUnverifiedException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v5

    .line 237
    move-object v5, v4

    throw v5

    .line 238
    :catch_1
    move-exception v5

    move-object v3, v5

    .line 239
    new-instance v5, Ljava/lang/AssertionError;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    move-object v7, v3

    invoke-direct {v6, v7}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v5
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 244
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    instance-of v2, v2, Lokhttp3/internal/platform/AndroidPlatform$AndroidCertificateChainCleaner;

    move v0, v2

    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 248
    move-object v0, p0

    const/4 v1, 0x0

    move v0, v1

    return v0
.end method
