.class public final Lokhttp3/internal/tls/OkHostnameVerifier;
.super Ljava/lang/Object;
.source "OkHostnameVerifier.java"

# interfaces
.implements Ljavax/net/ssl/HostnameVerifier;


# static fields
.field private static final ALT_DNS_NAME:I = 0x2

.field private static final ALT_IPA_NAME:I = 0x7

.field public static final INSTANCE:Lokhttp3/internal/tls/OkHostnameVerifier;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 38
    new-instance v0, Lokhttp3/internal/tls/OkHostnameVerifier;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lokhttp3/internal/tls/OkHostnameVerifier;-><init>()V

    sput-object v0, Lokhttp3/internal/tls/OkHostnameVerifier;->INSTANCE:Lokhttp3/internal/tls/OkHostnameVerifier;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 43
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method

.method public static allSubjectAltNames(Ljava/security/cert/X509Certificate;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 98
    move-object v0, p0

    move-object v4, v0

    const/4 v5, 0x7

    invoke-static {v4, v5}, Lokhttp3/internal/tls/OkHostnameVerifier;->getSubjectAltNames(Ljava/security/cert/X509Certificate;I)Ljava/util/List;

    move-result-object v4

    move-object v1, v4

    .line 99
    move-object v4, v0

    const/4 v5, 0x2

    invoke-static {v4, v5}, Lokhttp3/internal/tls/OkHostnameVerifier;->getSubjectAltNames(Ljava/security/cert/X509Certificate;I)Ljava/util/List;

    move-result-object v4

    move-object v2, v4

    .line 100
    new-instance v4, Ljava/util/ArrayList;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v1

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    move-object v7, v2

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    add-int/2addr v6, v7

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    move-object v3, v4

    .line 101
    move-object v4, v3

    move-object v5, v1

    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v4

    .line 102
    move-object v4, v3

    move-object v5, v2

    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v4

    .line 103
    move-object v4, v3

    move-object v0, v4

    return-object v0
.end method

.method private static getSubjectAltNames(Ljava/security/cert/X509Certificate;I)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 107
    move-object v0, p0

    move v1, p1

    new-instance v9, Ljava/util/ArrayList;

    move-object v11, v9

    move-object v9, v11

    move-object v10, v11

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v9

    .line 109
    move-object v9, v0

    :try_start_0
    invoke-virtual {v9}, Ljava/security/cert/X509Certificate;->getSubjectAlternativeNames()Ljava/util/Collection;

    move-result-object v9

    move-object v3, v9

    .line 110
    move-object v9, v3

    if-nez v9, :cond_0

    .line 111
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v9

    move-object v0, v9

    .line 131
    :goto_0
    return-object v0

    .line 113
    :cond_0
    move-object v9, v3

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-object v4, v9

    :cond_1
    :goto_1
    move-object v9, v4

    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    move-object v9, v4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    move-object v5, v9

    .line 114
    move-object v9, v5

    check-cast v9, Ljava/util/List;

    move-object v6, v9

    .line 115
    move-object v9, v6

    if-eqz v9, :cond_1

    move-object v9, v6

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x2

    if-ge v9, v10, :cond_2

    .line 116
    goto :goto_1

    .line 118
    :cond_2
    move-object v9, v6

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    move-object v7, v9

    .line 119
    move-object v9, v7

    if-nez v9, :cond_3

    .line 120
    goto :goto_1

    .line 122
    :cond_3
    move-object v9, v7

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    move v10, v1

    if-ne v9, v10, :cond_4

    .line 123
    move-object v9, v6

    const/4 v10, 0x1

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    move-object v8, v9

    .line 124
    move-object v9, v8

    if-eqz v9, :cond_4

    .line 125
    move-object v9, v2

    move-object v10, v8

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    .line 128
    :cond_4
    goto :goto_1

    .line 129
    :cond_5
    move-object v9, v2

    move-object v0, v9

    goto :goto_0

    .line 130
    :catch_0
    move-exception v9

    move-object v3, v9

    .line 131
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v9

    move-object v0, v9

    goto :goto_0
.end method

.method private verifyHostname(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10

    .prologue
    .line 145
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v1

    if-eqz v5, :cond_0

    move-object v5, v1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_0

    move-object v5, v1

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    move-object v5, v1

    const-string v6, ".."

    .line 146
    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 148
    :cond_0
    const/4 v5, 0x0

    move v0, v5

    .line 227
    :goto_0
    return v0

    .line 150
    :cond_1
    move-object v5, v2

    if-eqz v5, :cond_2

    move-object v5, v2

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_2

    move-object v5, v2

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    move-object v5, v2

    const-string v6, ".."

    .line 151
    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 153
    :cond_2
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0

    .line 165
    :cond_3
    move-object v5, v1

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 166
    new-instance v5, Ljava/lang/StringBuilder;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x2e

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v1, v5

    .line 168
    :cond_4
    move-object v5, v2

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 169
    new-instance v5, Ljava/lang/StringBuilder;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x2e

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v2, v5

    .line 173
    :cond_5
    move-object v5, v2

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    move-object v2, v5

    .line 176
    move-object v5, v2

    const-string v6, "*"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 178
    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    move v0, v5

    goto :goto_0

    .line 192
    :cond_6
    move-object v5, v2

    const-string v6, "*."

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    move-object v5, v2

    const/16 v6, 0x2a

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_8

    .line 195
    :cond_7
    const/4 v5, 0x0

    move v0, v5

    goto/16 :goto_0

    .line 201
    :cond_8
    move-object v5, v1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    move-object v6, v2

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_9

    .line 203
    const/4 v5, 0x0

    move v0, v5

    goto/16 :goto_0

    .line 206
    :cond_9
    const-string v5, "*."

    move-object v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 208
    const/4 v5, 0x0

    move v0, v5

    goto/16 :goto_0

    .line 212
    :cond_a
    move-object v5, v2

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    .line 213
    move-object v5, v1

    move-object v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_b

    .line 215
    const/4 v5, 0x0

    move v0, v5

    goto/16 :goto_0

    .line 219
    :cond_b
    move-object v5, v1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    move-object v6, v3

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v5, v6

    move v4, v5

    .line 220
    move v5, v4

    if-lez v5, :cond_c

    move-object v5, v1

    const/16 v6, 0x2e

    move v7, v4

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    .line 221
    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_c

    .line 223
    const/4 v5, 0x0

    move v0, v5

    goto/16 :goto_0

    .line 227
    :cond_c
    const/4 v5, 0x1

    move v0, v5

    goto/16 :goto_0
.end method

.method private verifyHostname(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Z
    .locals 12

    .prologue
    .line 75
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v7, v1

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v7, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    move-object v1, v7

    .line 76
    const/4 v7, 0x0

    move v3, v7

    .line 77
    move-object v7, v2

    const/4 v8, 0x2

    invoke-static {v7, v8}, Lokhttp3/internal/tls/OkHostnameVerifier;->getSubjectAltNames(Ljava/security/cert/X509Certificate;I)Ljava/util/List;

    move-result-object v7

    move-object v4, v7

    .line 78
    const/4 v7, 0x0

    move v5, v7

    move-object v7, v4

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    move v6, v7

    :goto_0
    move v7, v5

    move v8, v6

    if-ge v7, v8, :cond_1

    .line 79
    const/4 v7, 0x1

    move v3, v7

    .line 80
    move-object v7, v0

    move-object v8, v1

    move-object v9, v4

    move v10, v5

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-direct {v7, v8, v9}, Lokhttp3/internal/tls/OkHostnameVerifier;->verifyHostname(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 81
    const/4 v7, 0x1

    move v0, v7

    .line 94
    :goto_1
    return v0

    .line 78
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 85
    :cond_1
    move v7, v3

    if-nez v7, :cond_2

    .line 86
    move-object v7, v2

    invoke-virtual {v7}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v7

    move-object v5, v7

    .line 88
    new-instance v7, Lokhttp3/internal/tls/DistinguishedNameParser;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v5

    invoke-direct {v8, v9}, Lokhttp3/internal/tls/DistinguishedNameParser;-><init>(Ljavax/security/auth/x500/X500Principal;)V

    const-string v8, "cn"

    invoke-virtual {v7, v8}, Lokhttp3/internal/tls/DistinguishedNameParser;->findMostSpecific(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    .line 89
    move-object v7, v6

    if-eqz v7, :cond_2

    .line 90
    move-object v7, v0

    move-object v8, v1

    move-object v9, v6

    invoke-direct {v7, v8, v9}, Lokhttp3/internal/tls/OkHostnameVerifier;->verifyHostname(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    move v0, v7

    goto :goto_1

    .line 94
    :cond_2
    const/4 v7, 0x0

    move v0, v7

    goto :goto_1
.end method

.method private verifyIpAddress(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Z
    .locals 9

    .prologue
    .line 64
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, v2

    const/4 v7, 0x7

    invoke-static {v6, v7}, Lokhttp3/internal/tls/OkHostnameVerifier;->getSubjectAltNames(Ljava/security/cert/X509Certificate;I)Ljava/util/List;

    move-result-object v6

    move-object v3, v6

    .line 65
    const/4 v6, 0x0

    move v4, v6

    move-object v6, v3

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    move v5, v6

    :goto_0
    move v6, v4

    move v7, v5

    if-ge v6, v7, :cond_1

    .line 66
    move-object v6, v1

    move-object v7, v3

    move v8, v4

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 67
    const/4 v6, 0x1

    move v0, v6

    .line 70
    :goto_1
    return v0

    .line 65
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 70
    :cond_1
    const/4 v6, 0x0

    move v0, v6

    goto :goto_1
.end method


# virtual methods
.method public verify(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Z
    .locals 6

    .prologue
    .line 57
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v1

    invoke-static {v3}, Lokhttp3/internal/Util;->verifyAsIpAddress(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    .line 58
    invoke-direct {v3, v4, v5}, Lokhttp3/internal/tls/OkHostnameVerifier;->verifyIpAddress(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Z

    move-result v3

    .line 57
    :goto_0
    move v0, v3

    return v0

    .line 58
    :cond_0
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    .line 59
    invoke-direct {v3, v4, v5}, Lokhttp3/internal/tls/OkHostnameVerifier;->verifyHostname(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Z

    move-result v3

    goto :goto_0
.end method

.method public verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 8

    .prologue
    .line 49
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v2

    :try_start_0
    invoke-interface {v4}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v4

    move-object v3, v4

    .line 50
    move-object v4, v0

    move-object v5, v1

    move-object v6, v3

    const/4 v7, 0x0

    aget-object v6, v6, v7

    check-cast v6, Ljava/security/cert/X509Certificate;

    invoke-virtual {v4, v5, v6}, Lokhttp3/internal/tls/OkHostnameVerifier;->verify(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Z
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    move v0, v4

    .line 52
    :goto_0
    return v0

    .line 51
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 52
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0
.end method
