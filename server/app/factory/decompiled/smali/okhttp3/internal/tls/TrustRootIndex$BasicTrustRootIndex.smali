.class final Lokhttp3/internal/tls/TrustRootIndex$BasicTrustRootIndex;
.super Lokhttp3/internal/tls/TrustRootIndex;
.source "TrustRootIndex.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/tls/TrustRootIndex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "BasicTrustRootIndex"
.end annotation


# instance fields
.field private final subjectToCaCerts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljavax/security/auth/x500/X500Principal;",
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public varargs constructor <init>([Ljava/security/cert/X509Certificate;)V
    .locals 12

    .prologue
    .line 106
    move-object v0, p0

    move-object v1, p1

    move-object v8, v0

    invoke-direct {v8}, Lokhttp3/internal/tls/TrustRootIndex;-><init>()V

    .line 107
    move-object v8, v0

    new-instance v9, Ljava/util/LinkedHashMap;

    move-object v11, v9

    move-object v9, v11

    move-object v10, v11

    invoke-direct {v10}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v9, v8, Lokhttp3/internal/tls/TrustRootIndex$BasicTrustRootIndex;->subjectToCaCerts:Ljava/util/Map;

    .line 108
    move-object v8, v1

    move-object v2, v8

    move-object v8, v2

    array-length v8, v8

    move v3, v8

    const/4 v8, 0x0

    move v4, v8

    :goto_0
    move v8, v4

    move v9, v3

    if-ge v8, v9, :cond_1

    move-object v8, v2

    move v9, v4

    aget-object v8, v8, v9

    move-object v5, v8

    .line 109
    move-object v8, v5

    invoke-virtual {v8}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v8

    move-object v6, v8

    .line 110
    move-object v8, v0

    iget-object v8, v8, Lokhttp3/internal/tls/TrustRootIndex$BasicTrustRootIndex;->subjectToCaCerts:Ljava/util/Map;

    move-object v9, v6

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Set;

    move-object v7, v8

    .line 111
    move-object v8, v7

    if-nez v8, :cond_0

    .line 112
    new-instance v8, Ljava/util/LinkedHashSet;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    const/4 v10, 0x1

    invoke-direct {v9, v10}, Ljava/util/LinkedHashSet;-><init>(I)V

    move-object v7, v8

    .line 113
    move-object v8, v0

    iget-object v8, v8, Lokhttp3/internal/tls/TrustRootIndex$BasicTrustRootIndex;->subjectToCaCerts:Ljava/util/Map;

    move-object v9, v6

    move-object v10, v7

    invoke-interface {v8, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 115
    :cond_0
    move-object v8, v7

    move-object v9, v5

    invoke-interface {v8, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v8

    .line 108
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 117
    :cond_1
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 137
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    move-object v3, v0

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    move v0, v2

    .line 138
    :goto_0
    return v0

    :cond_0
    move-object v2, v1

    instance-of v2, v2, Lokhttp3/internal/tls/TrustRootIndex$BasicTrustRootIndex;

    if-eqz v2, :cond_1

    move-object v2, v1

    check-cast v2, Lokhttp3/internal/tls/TrustRootIndex$BasicTrustRootIndex;

    iget-object v2, v2, Lokhttp3/internal/tls/TrustRootIndex$BasicTrustRootIndex;->subjectToCaCerts:Ljava/util/Map;

    move-object v3, v0

    iget-object v3, v3, Lokhttp3/internal/tls/TrustRootIndex$BasicTrustRootIndex;->subjectToCaCerts:Ljava/util/Map;

    .line 139
    invoke-interface {v2, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    .line 138
    :goto_1
    move v0, v2

    goto :goto_0

    .line 139
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public findByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;
    .locals 10

    .prologue
    .line 120
    move-object v0, p0

    move-object v1, p1

    move-object v8, v1

    invoke-virtual {v8}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v8

    move-object v2, v8

    .line 121
    move-object v8, v0

    iget-object v8, v8, Lokhttp3/internal/tls/TrustRootIndex$BasicTrustRootIndex;->subjectToCaCerts:Ljava/util/Map;

    move-object v9, v2

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Set;

    move-object v3, v8

    .line 122
    move-object v8, v3

    if-nez v8, :cond_0

    const/4 v8, 0x0

    move-object v0, v8

    .line 133
    :goto_0
    return-object v0

    .line 124
    :cond_0
    move-object v8, v3

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v4, v8

    :goto_1
    move-object v8, v4

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    move-object v8, v4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/security/cert/X509Certificate;

    move-object v5, v8

    .line 125
    move-object v8, v5

    invoke-virtual {v8}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v8

    move-object v6, v8

    .line 127
    move-object v8, v1

    move-object v9, v6

    :try_start_0
    invoke-virtual {v8, v9}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    move-object v8, v5

    move-object v0, v8

    goto :goto_0

    .line 129
    :catch_0
    move-exception v8

    move-object v7, v8

    .line 131
    goto :goto_1

    .line 133
    :cond_1
    const/4 v8, 0x0

    move-object v0, v8

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 143
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/internal/tls/TrustRootIndex$BasicTrustRootIndex;->subjectToCaCerts:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->hashCode()I

    move-result v1

    move v0, v1

    return v0
.end method
