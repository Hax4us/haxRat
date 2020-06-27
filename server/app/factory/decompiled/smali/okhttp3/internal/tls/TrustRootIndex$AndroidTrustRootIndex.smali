.class final Lokhttp3/internal/tls/TrustRootIndex$AndroidTrustRootIndex;
.super Lokhttp3/internal/tls/TrustRootIndex;
.source "TrustRootIndex.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/tls/TrustRootIndex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AndroidTrustRootIndex"
.end annotation


# instance fields
.field private final findByIssuerAndSignatureMethod:Ljava/lang/reflect/Method;

.field private final trustManager:Ljavax/net/ssl/X509TrustManager;


# direct methods
.method constructor <init>(Ljavax/net/ssl/X509TrustManager;Ljava/lang/reflect/Method;)V
    .locals 5

    .prologue
    .line 64
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    invoke-direct {v3}, Lokhttp3/internal/tls/TrustRootIndex;-><init>()V

    .line 65
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lokhttp3/internal/tls/TrustRootIndex$AndroidTrustRootIndex;->findByIssuerAndSignatureMethod:Ljava/lang/reflect/Method;

    .line 66
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lokhttp3/internal/tls/TrustRootIndex$AndroidTrustRootIndex;->trustManager:Ljavax/net/ssl/X509TrustManager;

    .line 67
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 85
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    move-object v4, v0

    if-ne v3, v4, :cond_0

    .line 86
    const/4 v3, 0x1

    move v0, v3

    .line 92
    :goto_0
    return v0

    .line 88
    :cond_0
    move-object v3, v1

    instance-of v3, v3, Lokhttp3/internal/tls/TrustRootIndex$AndroidTrustRootIndex;

    if-nez v3, :cond_1

    .line 89
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 91
    :cond_1
    move-object v3, v1

    check-cast v3, Lokhttp3/internal/tls/TrustRootIndex$AndroidTrustRootIndex;

    move-object v2, v3

    .line 92
    move-object v3, v0

    iget-object v3, v3, Lokhttp3/internal/tls/TrustRootIndex$AndroidTrustRootIndex;->trustManager:Ljavax/net/ssl/X509TrustManager;

    move-object v4, v2

    iget-object v4, v4, Lokhttp3/internal/tls/TrustRootIndex$AndroidTrustRootIndex;->trustManager:Ljavax/net/ssl/X509TrustManager;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v3, v0

    iget-object v3, v3, Lokhttp3/internal/tls/TrustRootIndex$AndroidTrustRootIndex;->findByIssuerAndSignatureMethod:Ljava/lang/reflect/Method;

    move-object v4, v2

    iget-object v4, v4, Lokhttp3/internal/tls/TrustRootIndex$AndroidTrustRootIndex;->findByIssuerAndSignatureMethod:Ljava/lang/reflect/Method;

    .line 93
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Method;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    .line 92
    :goto_1
    move v0, v3

    goto :goto_0

    .line 93
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public findByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;
    .locals 10

    .prologue
    .line 71
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Lokhttp3/internal/tls/TrustRootIndex$AndroidTrustRootIndex;->findByIssuerAndSignatureMethod:Ljava/lang/reflect/Method;

    move-object v4, v0

    iget-object v4, v4, Lokhttp3/internal/tls/TrustRootIndex$AndroidTrustRootIndex;->trustManager:Ljavax/net/ssl/X509TrustManager;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v1

    aput-object v8, v6, v7

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/TrustAnchor;

    move-object v2, v3

    .line 73
    move-object v3, v2

    if-eqz v3, :cond_0

    move-object v3, v2

    .line 74
    invoke-virtual {v3}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 73
    :goto_0
    move-object v0, v3

    .line 79
    :goto_1
    return-object v0

    .line 74
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 76
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 77
    new-instance v3, Ljava/lang/AssertionError;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 78
    :catch_1
    move-exception v3

    move-object v2, v3

    .line 79
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_1
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 98
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/internal/tls/TrustRootIndex$AndroidTrustRootIndex;->trustManager:Ljavax/net/ssl/X509TrustManager;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    const/16 v2, 0x1f

    move-object v3, v0

    iget-object v3, v3, Lokhttp3/internal/tls/TrustRootIndex$AndroidTrustRootIndex;->findByIssuerAndSignatureMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->hashCode()I

    move-result v3

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    move v0, v1

    return v0
.end method
