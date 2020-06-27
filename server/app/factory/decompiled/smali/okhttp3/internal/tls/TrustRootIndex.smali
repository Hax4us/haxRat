.class public abstract Lokhttp3/internal/tls/TrustRootIndex;
.super Ljava/lang/Object;
.source "TrustRootIndex.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/tls/TrustRootIndex$BasicTrustRootIndex;,
        Lokhttp3/internal/tls/TrustRootIndex$AndroidTrustRootIndex;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 30
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Ljavax/net/ssl/X509TrustManager;)Lokhttp3/internal/tls/TrustRootIndex;
    .locals 9

    .prologue
    .line 38
    move-object v0, p0

    move-object v2, v0

    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "findTrustAnchorByIssuerAndSignature"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    const-class v7, Ljava/security/cert/X509Certificate;

    aput-object v7, v5, v6

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    move-object v1, v2

    .line 40
    move-object v2, v1

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 41
    new-instance v2, Lokhttp3/internal/tls/TrustRootIndex$AndroidTrustRootIndex;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lokhttp3/internal/tls/TrustRootIndex$AndroidTrustRootIndex;-><init>(Ljavax/net/ssl/X509TrustManager;Ljava/lang/reflect/Method;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 43
    :goto_0
    return-object v0

    .line 42
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 43
    move-object v2, v0

    invoke-interface {v2}, Ljavax/net/ssl/X509TrustManager;->getAcceptedIssuers()[Ljava/security/cert/X509Certificate;

    move-result-object v2

    invoke-static {v2}, Lokhttp3/internal/tls/TrustRootIndex;->get([Ljava/security/cert/X509Certificate;)Lokhttp3/internal/tls/TrustRootIndex;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method public static varargs get([Ljava/security/cert/X509Certificate;)Lokhttp3/internal/tls/TrustRootIndex;
    .locals 5

    .prologue
    .line 48
    move-object v0, p0

    new-instance v1, Lokhttp3/internal/tls/TrustRootIndex$BasicTrustRootIndex;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lokhttp3/internal/tls/TrustRootIndex$BasicTrustRootIndex;-><init>([Ljava/security/cert/X509Certificate;)V

    move-object v0, v1

    return-object v0
.end method


# virtual methods
.method public abstract findByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;
.end method
