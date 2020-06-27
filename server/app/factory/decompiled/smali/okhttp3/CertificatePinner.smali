.class public final Lokhttp3/CertificatePinner;
.super Ljava/lang/Object;
.source "CertificatePinner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/CertificatePinner$Builder;,
        Lokhttp3/CertificatePinner$Pin;
    }
.end annotation


# static fields
.field public static final DEFAULT:Lokhttp3/CertificatePinner;


# instance fields
.field private final certificateChainCleaner:Lokhttp3/internal/tls/CertificateChainCleaner;

.field private final pins:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lokhttp3/CertificatePinner$Pin;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 128
    new-instance v0, Lokhttp3/CertificatePinner$Builder;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lokhttp3/CertificatePinner$Builder;-><init>()V

    invoke-virtual {v0}, Lokhttp3/CertificatePinner$Builder;->build()Lokhttp3/CertificatePinner;

    move-result-object v0

    sput-object v0, Lokhttp3/CertificatePinner;->DEFAULT:Lokhttp3/CertificatePinner;

    return-void
.end method

.method constructor <init>(Ljava/util/Set;Lokhttp3/internal/tls/CertificateChainCleaner;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lokhttp3/CertificatePinner$Pin;",
            ">;",
            "Lokhttp3/internal/tls/CertificateChainCleaner;",
            ")V"
        }
    .end annotation

    .prologue
    .line 133
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 134
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lokhttp3/CertificatePinner;->pins:Ljava/util/Set;

    .line 135
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lokhttp3/CertificatePinner;->certificateChainCleaner:Lokhttp3/internal/tls/CertificateChainCleaner;

    .line 136
    return-void
.end method

.method public static pin(Ljava/security/cert/Certificate;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 241
    move-object v0, p0

    move-object v1, v0

    instance-of v1, v1, Ljava/security/cert/X509Certificate;

    if-nez v1, :cond_0

    .line 242
    new-instance v1, Ljava/lang/IllegalArgumentException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "Certificate pinning requires X509 certificates"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 244
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sha256/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    check-cast v2, Ljava/security/cert/X509Certificate;

    invoke-static {v2}, Lokhttp3/CertificatePinner;->sha256(Ljava/security/cert/X509Certificate;)Lokio/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lokio/ByteString;->base64()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method static sha1(Ljava/security/cert/X509Certificate;)Lokio/ByteString;
    .locals 2

    .prologue
    .line 248
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    invoke-interface {v1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v1

    invoke-static {v1}, Lokio/ByteString;->of([B)Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lokio/ByteString;->sha1()Lokio/ByteString;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method static sha256(Ljava/security/cert/X509Certificate;)Lokio/ByteString;
    .locals 2

    .prologue
    .line 252
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    invoke-interface {v1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v1

    invoke-static {v1}, Lokio/ByteString;->of([B)Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lokio/ByteString;->sha256()Lokio/ByteString;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method


# virtual methods
.method public check(Ljava/lang/String;Ljava/util/List;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .prologue
    .line 161
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v12, v0

    move-object v13, v1

    invoke-virtual {v12, v13}, Lokhttp3/CertificatePinner;->findMatchingPins(Ljava/lang/String;)Ljava/util/List;

    move-result-object v12

    move-object v3, v12

    .line 162
    move-object v12, v3

    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 182
    :goto_0
    return-void

    .line 164
    :cond_0
    move-object v12, v0

    iget-object v12, v12, Lokhttp3/CertificatePinner;->certificateChainCleaner:Lokhttp3/internal/tls/CertificateChainCleaner;

    if-eqz v12, :cond_1

    .line 165
    move-object v12, v0

    iget-object v12, v12, Lokhttp3/CertificatePinner;->certificateChainCleaner:Lokhttp3/internal/tls/CertificateChainCleaner;

    move-object v13, v2

    move-object v14, v1

    invoke-virtual {v12, v13, v14}, Lokhttp3/internal/tls/CertificateChainCleaner;->clean(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v12

    move-object v2, v12

    .line 168
    :cond_1
    const/4 v12, 0x0

    move v4, v12

    move-object v12, v2

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    move v5, v12

    :goto_1
    move v12, v4

    move v13, v5

    if-ge v12, v13, :cond_8

    .line 169
    move-object v12, v2

    move v13, v4

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/security/cert/X509Certificate;

    move-object v6, v12

    .line 172
    const/4 v12, 0x0

    move-object v7, v12

    .line 173
    const/4 v12, 0x0

    move-object v8, v12

    .line 175
    const/4 v12, 0x0

    move v9, v12

    move-object v12, v3

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    move v10, v12

    :goto_2
    move v12, v9

    move v13, v10

    if-ge v12, v13, :cond_7

    .line 176
    move-object v12, v3

    move v13, v9

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lokhttp3/CertificatePinner$Pin;

    move-object v11, v12

    .line 177
    move-object v12, v11

    iget-object v12, v12, Lokhttp3/CertificatePinner$Pin;->hashAlgorithm:Ljava/lang/String;

    const-string v13, "sha256/"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 178
    move-object v12, v8

    if-nez v12, :cond_2

    move-object v12, v6

    invoke-static {v12}, Lokhttp3/CertificatePinner;->sha256(Ljava/security/cert/X509Certificate;)Lokio/ByteString;

    move-result-object v12

    move-object v8, v12

    .line 179
    :cond_2
    move-object v12, v11

    iget-object v12, v12, Lokhttp3/CertificatePinner$Pin;->hash:Lokio/ByteString;

    move-object v13, v8

    invoke-virtual {v12, v13}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    goto :goto_0

    .line 180
    :cond_3
    move-object v12, v11

    iget-object v12, v12, Lokhttp3/CertificatePinner$Pin;->hashAlgorithm:Ljava/lang/String;

    const-string v13, "sha1/"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 181
    move-object v12, v7

    if-nez v12, :cond_4

    move-object v12, v6

    invoke-static {v12}, Lokhttp3/CertificatePinner;->sha1(Ljava/security/cert/X509Certificate;)Lokio/ByteString;

    move-result-object v12

    move-object v7, v12

    .line 182
    :cond_4
    move-object v12, v11

    iget-object v12, v12, Lokhttp3/CertificatePinner$Pin;->hash:Lokio/ByteString;

    move-object v13, v7

    invoke-virtual {v12, v13}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    goto :goto_0

    .line 184
    :cond_5
    new-instance v12, Ljava/lang/AssertionError;

    move-object v15, v12

    move-object v12, v15

    move-object v13, v15

    invoke-direct {v13}, Ljava/lang/AssertionError;-><init>()V

    throw v12

    .line 175
    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 168
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 190
    :cond_8
    new-instance v12, Ljava/lang/StringBuilder;

    move-object v15, v12

    move-object v12, v15

    move-object v13, v15

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Certificate pinning failure!"

    .line 191
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\n  Peer certificate chain:"

    .line 192
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v4, v12

    .line 193
    const/4 v12, 0x0

    move v5, v12

    move-object v12, v2

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    move v6, v12

    :goto_3
    move v12, v5

    move v13, v6

    if-ge v12, v13, :cond_9

    .line 194
    move-object v12, v2

    move v13, v5

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/security/cert/X509Certificate;

    move-object v7, v12

    .line 195
    move-object v12, v4

    const-string v13, "\n    "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v13, v7

    invoke-static {v13}, Lokhttp3/CertificatePinner;->pin(Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ": "

    .line 196
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v13, v7

    invoke-virtual {v13}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v13

    invoke-interface {v13}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 193
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 198
    :cond_9
    move-object v12, v4

    const-string v13, "\n  Pinned certificates for "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v13, v1

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 199
    const/4 v12, 0x0

    move v5, v12

    move-object v12, v3

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    move v6, v12

    :goto_4
    move v12, v5

    move v13, v6

    if-ge v12, v13, :cond_a

    .line 200
    move-object v12, v3

    move v13, v5

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lokhttp3/CertificatePinner$Pin;

    move-object v7, v12

    .line 201
    move-object v12, v4

    const-string v13, "\n    "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v13, v7

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 199
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 203
    :cond_a
    new-instance v12, Ljavax/net/ssl/SSLPeerUnverifiedException;

    move-object v15, v12

    move-object v12, v15

    move-object v13, v15

    move-object v14, v4

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v12
.end method

.method public varargs check(Ljava/lang/String;[Ljava/security/cert/Certificate;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .prologue
    .line 209
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lokhttp3/CertificatePinner;->check(Ljava/lang/String;Ljava/util/List;)V

    .line 210
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 139
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    move-object v3, v0

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    move v0, v2

    .line 140
    :goto_0
    return v0

    :cond_0
    move-object v2, v1

    instance-of v2, v2, Lokhttp3/CertificatePinner;

    if-eqz v2, :cond_1

    move-object v2, v0

    iget-object v2, v2, Lokhttp3/CertificatePinner;->certificateChainCleaner:Lokhttp3/internal/tls/CertificateChainCleaner;

    move-object v3, v1

    check-cast v3, Lokhttp3/CertificatePinner;

    iget-object v3, v3, Lokhttp3/CertificatePinner;->certificateChainCleaner:Lokhttp3/internal/tls/CertificateChainCleaner;

    .line 141
    invoke-static {v2, v3}, Lokhttp3/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v2, v0

    iget-object v2, v2, Lokhttp3/CertificatePinner;->pins:Ljava/util/Set;

    move-object v3, v1

    check-cast v3, Lokhttp3/CertificatePinner;

    iget-object v3, v3, Lokhttp3/CertificatePinner;->pins:Ljava/util/Set;

    .line 142
    invoke-interface {v2, v3}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    .line 140
    :goto_1
    move v0, v2

    goto :goto_0

    .line 142
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method findMatchingPins(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lokhttp3/CertificatePinner$Pin;",
            ">;"
        }
    .end annotation

    .prologue
    .line 217
    move-object v0, p0

    move-object v1, p1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    move-object v2, v5

    .line 218
    move-object v5, v0

    iget-object v5, v5, Lokhttp3/CertificatePinner;->pins:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

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

    check-cast v5, Lokhttp3/CertificatePinner$Pin;

    move-object v4, v5

    .line 219
    move-object v5, v4

    move-object v6, v1

    invoke-virtual {v5, v6}, Lokhttp3/CertificatePinner$Pin;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 220
    move-object v5, v2

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v5, Ljava/util/ArrayList;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v5

    .line 221
    :cond_0
    move-object v5, v2

    move-object v6, v4

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 223
    :cond_1
    goto :goto_0

    .line 224
    :cond_2
    move-object v5, v2

    move-object v0, v5

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 146
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lokhttp3/CertificatePinner;->certificateChainCleaner:Lokhttp3/internal/tls/CertificateChainCleaner;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lokhttp3/CertificatePinner;->certificateChainCleaner:Lokhttp3/internal/tls/CertificateChainCleaner;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_0
    move v1, v2

    .line 147
    const/16 v2, 0x1f

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget-object v3, v3, Lokhttp3/CertificatePinner;->pins:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    move v1, v2

    .line 148
    move v2, v1

    move v0, v2

    return v0

    .line 146
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method withCertificateChainCleaner(Lokhttp3/internal/tls/CertificateChainCleaner;)Lokhttp3/CertificatePinner;
    .locals 7

    .prologue
    .line 229
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lokhttp3/CertificatePinner;->certificateChainCleaner:Lokhttp3/internal/tls/CertificateChainCleaner;

    move-object v3, v1

    invoke-static {v2, v3}, Lokhttp3/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    :goto_0
    move-object v0, v2

    return-object v0

    :cond_0
    new-instance v2, Lokhttp3/CertificatePinner;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    iget-object v4, v4, Lokhttp3/CertificatePinner;->pins:Ljava/util/Set;

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lokhttp3/CertificatePinner;-><init>(Ljava/util/Set;Lokhttp3/internal/tls/CertificateChainCleaner;)V

    goto :goto_0
.end method
