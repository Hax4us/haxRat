.class public final Lokhttp3/internal/tls/BasicCertificateChainCleaner;
.super Lokhttp3/internal/tls/CertificateChainCleaner;
.source "BasicCertificateChainCleaner.java"


# static fields
.field private static final MAX_SIGNERS:I = 0x9


# instance fields
.field private final trustRootIndex:Lokhttp3/internal/tls/TrustRootIndex;


# direct methods
.method public constructor <init>(Lokhttp3/internal/tls/TrustRootIndex;)V
    .locals 4

    .prologue
    .line 43
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Lokhttp3/internal/tls/CertificateChainCleaner;-><init>()V

    .line 44
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lokhttp3/internal/tls/BasicCertificateChainCleaner;->trustRootIndex:Lokhttp3/internal/tls/TrustRootIndex;

    .line 45
    return-void
.end method

.method private verifySignature(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;)Z
    .locals 6

    .prologue
    .line 106
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v1

    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v4

    move-object v5, v2

    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/security/Principal;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x0

    move v0, v4

    .line 111
    :goto_0
    return v0

    .line 108
    :cond_0
    move-object v4, v1

    move-object v5, v2

    :try_start_0
    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    const/4 v4, 0x1

    move v0, v4

    goto :goto_0

    .line 110
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 111
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0
.end method


# virtual methods
.method public clean(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 16
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
    .line 56
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    new-instance v11, Ljava/util/ArrayDeque;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    move-object v13, v1

    invoke-direct {v12, v13}, Ljava/util/ArrayDeque;-><init>(Ljava/util/Collection;)V

    move-object v3, v11

    .line 57
    new-instance v11, Ljava/util/ArrayList;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v11

    .line 58
    move-object v11, v4

    move-object v12, v3

    invoke-interface {v12}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v11

    .line 59
    const/4 v11, 0x0

    move v5, v11

    .line 62
    const/4 v11, 0x0

    move v6, v11

    :goto_0
    move v11, v6

    const/16 v12, 0x9

    if-ge v11, v12, :cond_7

    .line 63
    move-object v11, v4

    move-object v12, v4

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    const/4 v13, 0x1

    add-int/lit8 v12, v12, -0x1

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/security/cert/X509Certificate;

    move-object v7, v11

    .line 68
    move-object v11, v0

    iget-object v11, v11, Lokhttp3/internal/tls/BasicCertificateChainCleaner;->trustRootIndex:Lokhttp3/internal/tls/TrustRootIndex;

    move-object v12, v7

    invoke-virtual {v11, v12}, Lokhttp3/internal/tls/TrustRootIndex;->findByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;

    move-result-object v11

    move-object v8, v11

    .line 69
    move-object v11, v8

    if-eqz v11, :cond_3

    .line 70
    move-object v11, v4

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    const/4 v12, 0x1

    if-gt v11, v12, :cond_0

    move-object v11, v7

    move-object v12, v8

    invoke-virtual {v11, v12}, Ljava/security/cert/X509Certificate;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 71
    :cond_0
    move-object v11, v4

    move-object v12, v8

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v11

    .line 73
    :cond_1
    move-object v11, v0

    move-object v12, v8

    move-object v13, v8

    invoke-direct {v11, v12, v13}, Lokhttp3/internal/tls/BasicCertificateChainCleaner;->verifySignature(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 74
    move-object v11, v4

    move-object v0, v11

    .line 93
    :goto_1
    return-object v0

    .line 76
    :cond_2
    const/4 v11, 0x1

    move v5, v11

    .line 62
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 82
    :cond_3
    move-object v11, v3

    invoke-interface {v11}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move-object v9, v11

    :goto_3
    move-object v11, v9

    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 83
    move-object v11, v9

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/security/cert/X509Certificate;

    move-object v10, v11

    .line 84
    move-object v11, v0

    move-object v12, v7

    move-object v13, v10

    invoke-direct {v11, v12, v13}, Lokhttp3/internal/tls/BasicCertificateChainCleaner;->verifySignature(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 85
    move-object v11, v9

    invoke-interface {v11}, Ljava/util/Iterator;->remove()V

    .line 86
    move-object v11, v4

    move-object v12, v10

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v11

    .line 87
    goto :goto_2

    .line 89
    :cond_4
    goto :goto_3

    .line 92
    :cond_5
    move v11, v5

    if-eqz v11, :cond_6

    .line 93
    move-object v11, v4

    move-object v0, v11

    goto :goto_1

    .line 97
    :cond_6
    new-instance v11, Ljavax/net/ssl/SSLPeerUnverifiedException;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    new-instance v13, Ljava/lang/StringBuilder;

    move-object v15, v13

    move-object v13, v15

    move-object v14, v15

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Failed to find a trusted cert that signed "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v14, v7

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 101
    :cond_7
    new-instance v11, Ljavax/net/ssl/SSLPeerUnverifiedException;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    new-instance v13, Ljava/lang/StringBuilder;

    move-object v15, v13

    move-object v13, v15

    move-object v14, v15

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Certificate chain too long: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v14, v4

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v11
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 120
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    move-object v3, v0

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    move v0, v2

    .line 121
    :goto_0
    return v0

    :cond_0
    move-object v2, v1

    instance-of v2, v2, Lokhttp3/internal/tls/BasicCertificateChainCleaner;

    if-eqz v2, :cond_1

    move-object v2, v1

    check-cast v2, Lokhttp3/internal/tls/BasicCertificateChainCleaner;

    iget-object v2, v2, Lokhttp3/internal/tls/BasicCertificateChainCleaner;->trustRootIndex:Lokhttp3/internal/tls/TrustRootIndex;

    move-object v3, v0

    iget-object v3, v3, Lokhttp3/internal/tls/BasicCertificateChainCleaner;->trustRootIndex:Lokhttp3/internal/tls/TrustRootIndex;

    .line 122
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    .line 121
    :goto_1
    move v0, v2

    goto :goto_0

    .line 122
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 116
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/internal/tls/BasicCertificateChainCleaner;->trustRootIndex:Lokhttp3/internal/tls/TrustRootIndex;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    move v0, v1

    return v0
.end method
