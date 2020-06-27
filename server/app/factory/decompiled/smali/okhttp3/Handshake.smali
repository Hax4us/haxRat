.class public final Lokhttp3/Handshake;
.super Ljava/lang/Object;
.source "Handshake.java"


# instance fields
.field private final cipherSuite:Lokhttp3/CipherSuite;

.field private final localCertificates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private final peerCertificates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private final tlsVersion:Lokhttp3/TlsVersion;


# direct methods
.method private constructor <init>(Lokhttp3/TlsVersion;Lokhttp3/CipherSuite;Ljava/util/List;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/TlsVersion;",
            "Lokhttp3/CipherSuite;",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 41
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 42
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lokhttp3/Handshake;->tlsVersion:Lokhttp3/TlsVersion;

    .line 43
    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Lokhttp3/Handshake;->cipherSuite:Lokhttp3/CipherSuite;

    .line 44
    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Lokhttp3/Handshake;->peerCertificates:Ljava/util/List;

    .line 45
    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Lokhttp3/Handshake;->localCertificates:Ljava/util/List;

    .line 46
    return-void
.end method

.method public static get(Ljavax/net/ssl/SSLSession;)Lokhttp3/Handshake;
    .locals 16

    .prologue
    .line 49
    move-object/from16 v0, p0

    move-object v9, v0

    invoke-interface {v9}, Ljavax/net/ssl/SSLSession;->getCipherSuite()Ljava/lang/String;

    move-result-object v9

    move-object v1, v9

    .line 50
    move-object v9, v1

    if-nez v9, :cond_0

    new-instance v9, Ljava/lang/IllegalStateException;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    const-string v11, "cipherSuite == null"

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 51
    :cond_0
    move-object v9, v1

    invoke-static {v9}, Lokhttp3/CipherSuite;->forJavaName(Ljava/lang/String;)Lokhttp3/CipherSuite;

    move-result-object v9

    move-object v2, v9

    .line 53
    move-object v9, v0

    invoke-interface {v9}, Ljavax/net/ssl/SSLSession;->getProtocol()Ljava/lang/String;

    move-result-object v9

    move-object v3, v9

    .line 54
    move-object v9, v3

    if-nez v9, :cond_1

    new-instance v9, Ljava/lang/IllegalStateException;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    const-string v11, "tlsVersion == null"

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 55
    :cond_1
    move-object v9, v3

    invoke-static {v9}, Lokhttp3/TlsVersion;->forJavaName(Ljava/lang/String;)Lokhttp3/TlsVersion;

    move-result-object v9

    move-object v4, v9

    .line 59
    move-object v9, v0

    :try_start_0
    invoke-interface {v9}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;
    :try_end_0
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    move-object v5, v9

    .line 63
    :goto_0
    move-object v9, v5

    if-eqz v9, :cond_2

    move-object v9, v5

    .line 64
    invoke-static {v9}, Lokhttp3/internal/Util;->immutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    .line 65
    :goto_1
    move-object v6, v9

    .line 67
    move-object v9, v0

    invoke-interface {v9}, Ljavax/net/ssl/SSLSession;->getLocalCertificates()[Ljava/security/cert/Certificate;

    move-result-object v9

    move-object v7, v9

    .line 68
    move-object v9, v7

    if-eqz v9, :cond_3

    move-object v9, v7

    .line 69
    invoke-static {v9}, Lokhttp3/internal/Util;->immutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    .line 70
    :goto_2
    move-object v8, v9

    .line 72
    new-instance v9, Lokhttp3/Handshake;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    move-object v11, v4

    move-object v12, v2

    move-object v13, v6

    move-object v14, v8

    invoke-direct {v10, v11, v12, v13, v14}, Lokhttp3/Handshake;-><init>(Lokhttp3/TlsVersion;Lokhttp3/CipherSuite;Ljava/util/List;Ljava/util/List;)V

    move-object v0, v9

    return-object v0

    .line 60
    :catch_0
    move-exception v9

    move-object v6, v9

    .line 61
    const/4 v9, 0x0

    move-object v5, v9

    goto :goto_0

    .line 65
    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v9

    goto :goto_1

    .line 70
    :cond_3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v9

    goto :goto_2
.end method

.method public static get(Lokhttp3/TlsVersion;Lokhttp3/CipherSuite;Ljava/util/List;Ljava/util/List;)Lokhttp3/Handshake;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/TlsVersion;",
            "Lokhttp3/CipherSuite;",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;)",
            "Lokhttp3/Handshake;"
        }
    .end annotation

    .prologue
    .line 77
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v1

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/NullPointerException;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    const-string v6, "cipherSuite == null"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 78
    :cond_0
    new-instance v4, Lokhttp3/Handshake;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    invoke-static {v8}, Lokhttp3/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    move-object v9, v3

    .line 79
    invoke-static {v9}, Lokhttp3/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v9

    invoke-direct {v5, v6, v7, v8, v9}, Lokhttp3/Handshake;-><init>(Lokhttp3/TlsVersion;Lokhttp3/CipherSuite;Ljava/util/List;Ljava/util/List;)V

    .line 78
    move-object v0, v4

    return-object v0
.end method


# virtual methods
.method public cipherSuite()Lokhttp3/CipherSuite;
    .locals 2

    .prologue
    .line 92
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/Handshake;->cipherSuite:Lokhttp3/CipherSuite;

    move-object v0, v1

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 120
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    instance-of v3, v3, Lokhttp3/Handshake;

    if-nez v3, :cond_0

    const/4 v3, 0x0

    move v0, v3

    .line 122
    :goto_0
    return v0

    .line 121
    :cond_0
    move-object v3, v1

    check-cast v3, Lokhttp3/Handshake;

    move-object v2, v3

    .line 122
    move-object v3, v0

    iget-object v3, v3, Lokhttp3/Handshake;->cipherSuite:Lokhttp3/CipherSuite;

    move-object v4, v2

    iget-object v4, v4, Lokhttp3/Handshake;->cipherSuite:Lokhttp3/CipherSuite;

    invoke-static {v3, v4}, Lokhttp3/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Lokhttp3/Handshake;->cipherSuite:Lokhttp3/CipherSuite;

    move-object v4, v2

    iget-object v4, v4, Lokhttp3/Handshake;->cipherSuite:Lokhttp3/CipherSuite;

    .line 123
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Lokhttp3/Handshake;->peerCertificates:Ljava/util/List;

    move-object v4, v2

    iget-object v4, v4, Lokhttp3/Handshake;->peerCertificates:Ljava/util/List;

    .line 124
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Lokhttp3/Handshake;->localCertificates:Ljava/util/List;

    move-object v4, v2

    iget-object v4, v4, Lokhttp3/Handshake;->localCertificates:Ljava/util/List;

    .line 125
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    .line 122
    :goto_1
    move v0, v3

    goto :goto_0

    .line 125
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 129
    move-object v0, p0

    const/16 v2, 0x11

    move v1, v2

    .line 130
    const/16 v2, 0x1f

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget-object v3, v3, Lokhttp3/Handshake;->tlsVersion:Lokhttp3/TlsVersion;

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lokhttp3/Handshake;->tlsVersion:Lokhttp3/TlsVersion;

    invoke-virtual {v3}, Lokhttp3/TlsVersion;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v2, v3

    move v1, v2

    .line 131
    const/16 v2, 0x1f

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget-object v3, v3, Lokhttp3/Handshake;->cipherSuite:Lokhttp3/CipherSuite;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    move v1, v2

    .line 132
    const/16 v2, 0x1f

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget-object v3, v3, Lokhttp3/Handshake;->peerCertificates:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    move v1, v2

    .line 133
    const/16 v2, 0x1f

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget-object v3, v3, Lokhttp3/Handshake;->localCertificates:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    move v1, v2

    .line 134
    move v2, v1

    move v0, v2

    return v0

    .line 130
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public localCertificates()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 109
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/Handshake;->localCertificates:Ljava/util/List;

    move-object v0, v1

    return-object v0
.end method

.method public localPrincipal()Ljava/security/Principal;
    .locals 3

    .prologue
    .line 114
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/Handshake;->localCertificates:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/Handshake;->localCertificates:Ljava/util/List;

    const/4 v2, 0x0

    .line 115
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    .line 114
    :goto_0
    move-object v0, v1

    return-object v0

    .line 115
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public peerCertificates()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 97
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/Handshake;->peerCertificates:Ljava/util/List;

    move-object v0, v1

    return-object v0
.end method

.method public peerPrincipal()Ljava/security/Principal;
    .locals 3

    .prologue
    .line 102
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/Handshake;->peerCertificates:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/Handshake;->peerCertificates:Ljava/util/List;

    const/4 v2, 0x0

    .line 103
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    .line 102
    :goto_0
    move-object v0, v1

    return-object v0

    .line 103
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public tlsVersion()Lokhttp3/TlsVersion;
    .locals 2

    .prologue
    .line 87
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/Handshake;->tlsVersion:Lokhttp3/TlsVersion;

    move-object v0, v1

    return-object v0
.end method
