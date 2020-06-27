.class public final Lokhttp3/ConnectionSpec;
.super Ljava/lang/Object;
.source "ConnectionSpec.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/ConnectionSpec$Builder;
    }
.end annotation


# static fields
.field private static final APPROVED_CIPHER_SUITES:[Lokhttp3/CipherSuite;

.field public static final CLEARTEXT:Lokhttp3/ConnectionSpec;

.field public static final COMPATIBLE_TLS:Lokhttp3/ConnectionSpec;

.field public static final MODERN_TLS:Lokhttp3/ConnectionSpec;


# instance fields
.field final cipherSuites:[Ljava/lang/String;

.field final supportsTlsExtensions:Z

.field final tls:Z

.field final tlsVersions:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 45
    const/16 v0, 0xf

    new-array v0, v0, [Lokhttp3/CipherSuite;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/4 v2, 0x0

    sget-object v3, Lokhttp3/CipherSuite;->TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256:Lokhttp3/CipherSuite;

    aput-object v3, v1, v2

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/4 v2, 0x1

    sget-object v3, Lokhttp3/CipherSuite;->TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256:Lokhttp3/CipherSuite;

    aput-object v3, v1, v2

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/4 v2, 0x2

    sget-object v3, Lokhttp3/CipherSuite;->TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384:Lokhttp3/CipherSuite;

    aput-object v3, v1, v2

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/4 v2, 0x3

    sget-object v3, Lokhttp3/CipherSuite;->TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384:Lokhttp3/CipherSuite;

    aput-object v3, v1, v2

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/4 v2, 0x4

    sget-object v3, Lokhttp3/CipherSuite;->TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305_SHA256:Lokhttp3/CipherSuite;

    aput-object v3, v1, v2

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/4 v2, 0x5

    sget-object v3, Lokhttp3/CipherSuite;->TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256:Lokhttp3/CipherSuite;

    aput-object v3, v1, v2

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/4 v2, 0x6

    sget-object v3, Lokhttp3/CipherSuite;->TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA:Lokhttp3/CipherSuite;

    aput-object v3, v1, v2

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/4 v2, 0x7

    sget-object v3, Lokhttp3/CipherSuite;->TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA:Lokhttp3/CipherSuite;

    aput-object v3, v1, v2

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/16 v2, 0x8

    sget-object v3, Lokhttp3/CipherSuite;->TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA:Lokhttp3/CipherSuite;

    aput-object v3, v1, v2

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/16 v2, 0x9

    sget-object v3, Lokhttp3/CipherSuite;->TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA:Lokhttp3/CipherSuite;

    aput-object v3, v1, v2

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/16 v2, 0xa

    sget-object v3, Lokhttp3/CipherSuite;->TLS_RSA_WITH_AES_128_GCM_SHA256:Lokhttp3/CipherSuite;

    aput-object v3, v1, v2

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/16 v2, 0xb

    sget-object v3, Lokhttp3/CipherSuite;->TLS_RSA_WITH_AES_256_GCM_SHA384:Lokhttp3/CipherSuite;

    aput-object v3, v1, v2

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/16 v2, 0xc

    sget-object v3, Lokhttp3/CipherSuite;->TLS_RSA_WITH_AES_128_CBC_SHA:Lokhttp3/CipherSuite;

    aput-object v3, v1, v2

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/16 v2, 0xd

    sget-object v3, Lokhttp3/CipherSuite;->TLS_RSA_WITH_AES_256_CBC_SHA:Lokhttp3/CipherSuite;

    aput-object v3, v1, v2

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/16 v2, 0xe

    sget-object v3, Lokhttp3/CipherSuite;->TLS_RSA_WITH_3DES_EDE_CBC_SHA:Lokhttp3/CipherSuite;

    aput-object v3, v1, v2

    sput-object v0, Lokhttp3/ConnectionSpec;->APPROVED_CIPHER_SUITES:[Lokhttp3/CipherSuite;

    .line 68
    new-instance v0, Lokhttp3/ConnectionSpec$Builder;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lokhttp3/ConnectionSpec$Builder;-><init>(Z)V

    sget-object v1, Lokhttp3/ConnectionSpec;->APPROVED_CIPHER_SUITES:[Lokhttp3/CipherSuite;

    .line 69
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionSpec$Builder;->cipherSuites([Lokhttp3/CipherSuite;)Lokhttp3/ConnectionSpec$Builder;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Lokhttp3/TlsVersion;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/4 v3, 0x0

    sget-object v4, Lokhttp3/TlsVersion;->TLS_1_3:Lokhttp3/TlsVersion;

    aput-object v4, v2, v3

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/4 v3, 0x1

    sget-object v4, Lokhttp3/TlsVersion;->TLS_1_2:Lokhttp3/TlsVersion;

    aput-object v4, v2, v3

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/4 v3, 0x2

    sget-object v4, Lokhttp3/TlsVersion;->TLS_1_1:Lokhttp3/TlsVersion;

    aput-object v4, v2, v3

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/4 v3, 0x3

    sget-object v4, Lokhttp3/TlsVersion;->TLS_1_0:Lokhttp3/TlsVersion;

    aput-object v4, v2, v3

    .line 70
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionSpec$Builder;->tlsVersions([Lokhttp3/TlsVersion;)Lokhttp3/ConnectionSpec$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 71
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionSpec$Builder;->supportsTlsExtensions(Z)Lokhttp3/ConnectionSpec$Builder;

    move-result-object v0

    .line 72
    invoke-virtual {v0}, Lokhttp3/ConnectionSpec$Builder;->build()Lokhttp3/ConnectionSpec;

    move-result-object v0

    sput-object v0, Lokhttp3/ConnectionSpec;->MODERN_TLS:Lokhttp3/ConnectionSpec;

    .line 75
    new-instance v0, Lokhttp3/ConnectionSpec$Builder;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    sget-object v2, Lokhttp3/ConnectionSpec;->MODERN_TLS:Lokhttp3/ConnectionSpec;

    invoke-direct {v1, v2}, Lokhttp3/ConnectionSpec$Builder;-><init>(Lokhttp3/ConnectionSpec;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lokhttp3/TlsVersion;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/4 v3, 0x0

    sget-object v4, Lokhttp3/TlsVersion;->TLS_1_0:Lokhttp3/TlsVersion;

    aput-object v4, v2, v3

    .line 76
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionSpec$Builder;->tlsVersions([Lokhttp3/TlsVersion;)Lokhttp3/ConnectionSpec$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 77
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionSpec$Builder;->supportsTlsExtensions(Z)Lokhttp3/ConnectionSpec$Builder;

    move-result-object v0

    .line 78
    invoke-virtual {v0}, Lokhttp3/ConnectionSpec$Builder;->build()Lokhttp3/ConnectionSpec;

    move-result-object v0

    sput-object v0, Lokhttp3/ConnectionSpec;->COMPATIBLE_TLS:Lokhttp3/ConnectionSpec;

    .line 81
    new-instance v0, Lokhttp3/ConnectionSpec$Builder;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lokhttp3/ConnectionSpec$Builder;-><init>(Z)V

    invoke-virtual {v0}, Lokhttp3/ConnectionSpec$Builder;->build()Lokhttp3/ConnectionSpec;

    move-result-object v0

    sput-object v0, Lokhttp3/ConnectionSpec;->CLEARTEXT:Lokhttp3/ConnectionSpec;

    return-void
.end method

.method constructor <init>(Lokhttp3/ConnectionSpec$Builder;)V
    .locals 4

    .prologue
    .line 88
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 89
    move-object v2, v0

    move-object v3, v1

    iget-boolean v3, v3, Lokhttp3/ConnectionSpec$Builder;->tls:Z

    iput-boolean v3, v2, Lokhttp3/ConnectionSpec;->tls:Z

    .line 90
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Lokhttp3/ConnectionSpec$Builder;->cipherSuites:[Ljava/lang/String;

    iput-object v3, v2, Lokhttp3/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    .line 91
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Lokhttp3/ConnectionSpec$Builder;->tlsVersions:[Ljava/lang/String;

    iput-object v3, v2, Lokhttp3/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    .line 92
    move-object v2, v0

    move-object v3, v1

    iget-boolean v3, v3, Lokhttp3/ConnectionSpec$Builder;->supportsTlsExtensions:Z

    iput-boolean v3, v2, Lokhttp3/ConnectionSpec;->supportsTlsExtensions:Z

    .line 93
    return-void
.end method

.method private static nonEmptyIntersection([Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 8

    .prologue
    .line 202
    move-object v0, p0

    move-object v1, p1

    move-object v6, v0

    if-eqz v6, :cond_0

    move-object v6, v1

    if-eqz v6, :cond_0

    move-object v6, v0

    array-length v6, v6

    if-eqz v6, :cond_0

    move-object v6, v1

    array-length v6, v6

    if-nez v6, :cond_1

    .line 203
    :cond_0
    const/4 v6, 0x0

    move v0, v6

    .line 210
    :goto_0
    return v0

    .line 205
    :cond_1
    move-object v6, v0

    move-object v2, v6

    move-object v6, v2

    array-length v6, v6

    move v3, v6

    const/4 v6, 0x0

    move v4, v6

    :goto_1
    move v6, v4

    move v7, v3

    if-ge v6, v7, :cond_3

    move-object v6, v2

    move v7, v4

    aget-object v6, v6, v7

    move-object v5, v6

    .line 206
    move-object v6, v1

    move-object v7, v5

    invoke-static {v6, v7}, Lokhttp3/internal/Util;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_2

    .line 207
    const/4 v6, 0x1

    move v0, v6

    goto :goto_0

    .line 205
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 210
    :cond_3
    const/4 v6, 0x0

    move v0, v6

    goto :goto_0
.end method

.method private supportedSpec(Ljavax/net/ssl/SSLSocket;Z)Lokhttp3/ConnectionSpec;
    .locals 9

    .prologue
    .line 148
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v0

    iget-object v5, v5, Lokhttp3/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    if-eqz v5, :cond_1

    const-class v5, Ljava/lang/String;

    move-object v6, v0

    iget-object v6, v6, Lokhttp3/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    move-object v7, v1

    .line 149
    invoke-virtual {v7}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lokhttp3/internal/Util;->intersect(Ljava/lang/Class;[Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    .line 150
    :goto_0
    move-object v3, v5

    .line 151
    move-object v5, v0

    iget-object v5, v5, Lokhttp3/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    if-eqz v5, :cond_2

    const-class v5, Ljava/lang/String;

    move-object v6, v0

    iget-object v6, v6, Lokhttp3/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    move-object v7, v1

    .line 152
    invoke-virtual {v7}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lokhttp3/internal/Util;->intersect(Ljava/lang/Class;[Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    .line 153
    :goto_1
    move-object v4, v5

    .line 157
    move v5, v2

    if-eqz v5, :cond_0

    move-object v5, v1

    invoke-virtual {v5}, Ljavax/net/ssl/SSLSocket;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v5

    const-string v6, "TLS_FALLBACK_SCSV"

    invoke-static {v5, v6}, Lokhttp3/internal/Util;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    .line 158
    move-object v5, v3

    const-string v6, "TLS_FALLBACK_SCSV"

    invoke-static {v5, v6}, Lokhttp3/internal/Util;->concat([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    .line 161
    :cond_0
    new-instance v5, Lokhttp3/ConnectionSpec$Builder;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v0

    invoke-direct {v6, v7}, Lokhttp3/ConnectionSpec$Builder;-><init>(Lokhttp3/ConnectionSpec;)V

    move-object v6, v3

    .line 162
    invoke-virtual {v5, v6}, Lokhttp3/ConnectionSpec$Builder;->cipherSuites([Ljava/lang/String;)Lokhttp3/ConnectionSpec$Builder;

    move-result-object v5

    move-object v6, v4

    .line 163
    invoke-virtual {v5, v6}, Lokhttp3/ConnectionSpec$Builder;->tlsVersions([Ljava/lang/String;)Lokhttp3/ConnectionSpec$Builder;

    move-result-object v5

    .line 164
    invoke-virtual {v5}, Lokhttp3/ConnectionSpec$Builder;->build()Lokhttp3/ConnectionSpec;

    move-result-object v5

    .line 161
    move-object v0, v5

    return-object v0

    .line 149
    :cond_1
    move-object v5, v1

    .line 150
    invoke-virtual {v5}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 152
    :cond_2
    move-object v5, v1

    .line 153
    invoke-virtual {v5}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v5

    goto :goto_1
.end method


# virtual methods
.method apply(Ljavax/net/ssl/SSLSocket;Z)V
    .locals 7

    .prologue
    .line 133
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, v0

    move-object v5, v1

    move v6, v2

    invoke-direct {v4, v5, v6}, Lokhttp3/ConnectionSpec;->supportedSpec(Ljavax/net/ssl/SSLSocket;Z)Lokhttp3/ConnectionSpec;

    move-result-object v4

    move-object v3, v4

    .line 135
    move-object v4, v3

    iget-object v4, v4, Lokhttp3/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 136
    move-object v4, v1

    move-object v5, v3

    iget-object v5, v5, Lokhttp3/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    .line 138
    :cond_0
    move-object v4, v3

    iget-object v4, v4, Lokhttp3/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 139
    move-object v4, v1

    move-object v5, v3

    iget-object v5, v5, Lokhttp3/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    .line 141
    :cond_1
    return-void
.end method

.method public cipherSuites()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lokhttp3/CipherSuite;",
            ">;"
        }
    .end annotation

    .prologue
    .line 104
    move-object v0, p0

    move-object v6, v0

    iget-object v6, v6, Lokhttp3/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    if-nez v6, :cond_0

    const/4 v6, 0x0

    move-object v0, v6

    .line 110
    :goto_0
    return-object v0

    .line 106
    :cond_0
    new-instance v6, Ljava/util/ArrayList;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v0

    iget-object v8, v8, Lokhttp3/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    array-length v8, v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    move-object v1, v6

    .line 107
    move-object v6, v0

    iget-object v6, v6, Lokhttp3/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    move-object v2, v6

    move-object v6, v2

    array-length v6, v6

    move v3, v6

    const/4 v6, 0x0

    move v4, v6

    :goto_1
    move v6, v4

    move v7, v3

    if-ge v6, v7, :cond_1

    move-object v6, v2

    move v7, v4

    aget-object v6, v6, v7

    move-object v5, v6

    .line 108
    move-object v6, v1

    move-object v7, v5

    invoke-static {v7}, Lokhttp3/CipherSuite;->forJavaName(Ljava/lang/String;)Lokhttp3/CipherSuite;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v6

    .line 107
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 110
    :cond_1
    move-object v6, v1

    invoke-static {v6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    move-object v0, v6

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 214
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    instance-of v3, v3, Lokhttp3/ConnectionSpec;

    if-nez v3, :cond_0

    const/4 v3, 0x0

    move v0, v3

    .line 226
    :goto_0
    return v0

    .line 215
    :cond_0
    move-object v3, v1

    move-object v4, v0

    if-ne v3, v4, :cond_1

    const/4 v3, 0x1

    move v0, v3

    goto :goto_0

    .line 217
    :cond_1
    move-object v3, v1

    check-cast v3, Lokhttp3/ConnectionSpec;

    move-object v2, v3

    .line 218
    move-object v3, v0

    iget-boolean v3, v3, Lokhttp3/ConnectionSpec;->tls:Z

    move-object v4, v2

    iget-boolean v4, v4, Lokhttp3/ConnectionSpec;->tls:Z

    if-eq v3, v4, :cond_2

    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 220
    :cond_2
    move-object v3, v0

    iget-boolean v3, v3, Lokhttp3/ConnectionSpec;->tls:Z

    if-eqz v3, :cond_5

    .line 221
    move-object v3, v0

    iget-object v3, v3, Lokhttp3/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    move-object v4, v2

    iget-object v4, v4, Lokhttp3/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 222
    :cond_3
    move-object v3, v0

    iget-object v3, v3, Lokhttp3/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    move-object v4, v2

    iget-object v4, v4, Lokhttp3/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 223
    :cond_4
    move-object v3, v0

    iget-boolean v3, v3, Lokhttp3/ConnectionSpec;->supportsTlsExtensions:Z

    move-object v4, v2

    iget-boolean v4, v4, Lokhttp3/ConnectionSpec;->supportsTlsExtensions:Z

    if-eq v3, v4, :cond_5

    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 226
    :cond_5
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 230
    move-object v0, p0

    const/16 v2, 0x11

    move v1, v2

    .line 231
    move-object v2, v0

    iget-boolean v2, v2, Lokhttp3/ConnectionSpec;->tls:Z

    if-eqz v2, :cond_0

    .line 232
    const/16 v2, 0x1f

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget-object v3, v3, Lokhttp3/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v2, v3

    move v1, v2

    .line 233
    const/16 v2, 0x1f

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget-object v3, v3, Lokhttp3/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v2, v3

    move v1, v2

    .line 234
    const/16 v2, 0x1f

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget-boolean v3, v3, Lokhttp3/ConnectionSpec;->supportsTlsExtensions:Z

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    :goto_0
    add-int/2addr v2, v3

    move v1, v2

    .line 236
    :cond_0
    move v2, v1

    move v0, v2

    return v0

    .line 234
    :cond_1
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public isCompatible(Ljavax/net/ssl/SSLSocket;)Z
    .locals 4

    .prologue
    .line 179
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-boolean v2, v2, Lokhttp3/ConnectionSpec;->tls:Z

    if-nez v2, :cond_0

    .line 180
    const/4 v2, 0x0

    move v0, v2

    .line 193
    :goto_0
    return v0

    .line 183
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lokhttp3/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    if-eqz v2, :cond_1

    move-object v2, v0

    iget-object v2, v2, Lokhttp3/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    move-object v3, v1

    .line 184
    invoke-virtual {v3}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lokhttp3/ConnectionSpec;->nonEmptyIntersection([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 185
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0

    .line 188
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lokhttp3/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    if-eqz v2, :cond_2

    move-object v2, v0

    iget-object v2, v2, Lokhttp3/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    move-object v3, v1

    .line 189
    invoke-virtual {v3}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lokhttp3/ConnectionSpec;->nonEmptyIntersection([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 190
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0

    .line 193
    :cond_2
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0
.end method

.method public isTls()Z
    .locals 2

    .prologue
    .line 96
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lokhttp3/ConnectionSpec;->tls:Z

    move v0, v1

    return v0
.end method

.method public supportsTlsExtensions()Z
    .locals 2

    .prologue
    .line 128
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lokhttp3/ConnectionSpec;->supportsTlsExtensions:Z

    move v0, v1

    return v0
.end method

.method public tlsVersions()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lokhttp3/TlsVersion;",
            ">;"
        }
    .end annotation

    .prologue
    .line 118
    move-object v0, p0

    move-object v6, v0

    iget-object v6, v6, Lokhttp3/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    if-nez v6, :cond_0

    const/4 v6, 0x0

    move-object v0, v6

    .line 124
    :goto_0
    return-object v0

    .line 120
    :cond_0
    new-instance v6, Ljava/util/ArrayList;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v0

    iget-object v8, v8, Lokhttp3/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    array-length v8, v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    move-object v1, v6

    .line 121
    move-object v6, v0

    iget-object v6, v6, Lokhttp3/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    move-object v2, v6

    move-object v6, v2

    array-length v6, v6

    move v3, v6

    const/4 v6, 0x0

    move v4, v6

    :goto_1
    move v6, v4

    move v7, v3

    if-ge v6, v7, :cond_1

    move-object v6, v2

    move v7, v4

    aget-object v6, v6, v7

    move-object v5, v6

    .line 122
    move-object v6, v1

    move-object v7, v5

    invoke-static {v7}, Lokhttp3/TlsVersion;->forJavaName(Ljava/lang/String;)Lokhttp3/TlsVersion;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v6

    .line 121
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 124
    :cond_1
    move-object v6, v1

    invoke-static {v6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    move-object v0, v6

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 240
    move-object v0, p0

    move-object v3, v0

    iget-boolean v3, v3, Lokhttp3/ConnectionSpec;->tls:Z

    if-nez v3, :cond_0

    .line 241
    const-string v3, "ConnectionSpec()"

    move-object v0, v3

    .line 246
    :goto_0
    return-object v0

    .line 244
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lokhttp3/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    if-eqz v3, :cond_1

    move-object v3, v0

    invoke-virtual {v3}, Lokhttp3/ConnectionSpec;->cipherSuites()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    move-object v1, v3

    .line 245
    move-object v3, v0

    iget-object v3, v3, Lokhttp3/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    if-eqz v3, :cond_2

    move-object v3, v0

    invoke-virtual {v3}, Lokhttp3/ConnectionSpec;->tlsVersions()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_2
    move-object v2, v3

    .line 246
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ConnectionSpec(cipherSuites="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", tlsVersions="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", supportsTlsExtensions="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    iget-boolean v4, v4, Lokhttp3/ConnectionSpec;->supportsTlsExtensions:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 244
    :cond_1
    const-string v3, "[all enabled]"

    goto :goto_1

    .line 245
    :cond_2
    const-string v3, "[all enabled]"

    goto :goto_2
.end method
