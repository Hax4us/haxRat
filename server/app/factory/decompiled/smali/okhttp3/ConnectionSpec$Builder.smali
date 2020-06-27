.class public final Lokhttp3/ConnectionSpec$Builder;
.super Ljava/lang/Object;
.source "ConnectionSpec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/ConnectionSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field cipherSuites:[Ljava/lang/String;

.field supportsTlsExtensions:Z

.field tls:Z

.field tlsVersions:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lokhttp3/ConnectionSpec;)V
    .locals 4

    .prologue
    .line 263
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 264
    move-object v2, v0

    move-object v3, v1

    iget-boolean v3, v3, Lokhttp3/ConnectionSpec;->tls:Z

    iput-boolean v3, v2, Lokhttp3/ConnectionSpec$Builder;->tls:Z

    .line 265
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Lokhttp3/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    iput-object v3, v2, Lokhttp3/ConnectionSpec$Builder;->cipherSuites:[Ljava/lang/String;

    .line 266
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Lokhttp3/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    iput-object v3, v2, Lokhttp3/ConnectionSpec$Builder;->tlsVersions:[Ljava/lang/String;

    .line 267
    move-object v2, v0

    move-object v3, v1

    iget-boolean v3, v3, Lokhttp3/ConnectionSpec;->supportsTlsExtensions:Z

    iput-boolean v3, v2, Lokhttp3/ConnectionSpec$Builder;->supportsTlsExtensions:Z

    .line 268
    return-void
.end method

.method constructor <init>(Z)V
    .locals 4

    .prologue
    .line 259
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 260
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lokhttp3/ConnectionSpec$Builder;->tls:Z

    .line 261
    return-void
.end method


# virtual methods
.method public allEnabledCipherSuites()Lokhttp3/ConnectionSpec$Builder;
    .locals 5

    .prologue
    .line 271
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lokhttp3/ConnectionSpec$Builder;->tls:Z

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "no cipher suites for cleartext connections"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 272
    :cond_0
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lokhttp3/ConnectionSpec$Builder;->cipherSuites:[Ljava/lang/String;

    .line 273
    move-object v1, v0

    move-object v0, v1

    return-object v0
.end method

.method public allEnabledTlsVersions()Lokhttp3/ConnectionSpec$Builder;
    .locals 5

    .prologue
    .line 298
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lokhttp3/ConnectionSpec$Builder;->tls:Z

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "no TLS versions for cleartext connections"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 299
    :cond_0
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lokhttp3/ConnectionSpec$Builder;->tlsVersions:[Ljava/lang/String;

    .line 300
    move-object v1, v0

    move-object v0, v1

    return-object v0
.end method

.method public build()Lokhttp3/ConnectionSpec;
    .locals 5

    .prologue
    .line 332
    move-object v0, p0

    new-instance v1, Lokhttp3/ConnectionSpec;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lokhttp3/ConnectionSpec;-><init>(Lokhttp3/ConnectionSpec$Builder;)V

    move-object v0, v1

    return-object v0
.end method

.method public varargs cipherSuites([Ljava/lang/String;)Lokhttp3/ConnectionSpec$Builder;
    .locals 6

    .prologue
    .line 287
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-boolean v2, v2, Lokhttp3/ConnectionSpec$Builder;->tls:Z

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/IllegalStateException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "no cipher suites for cleartext connections"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 289
    :cond_0
    move-object v2, v1

    array-length v2, v2

    if-nez v2, :cond_1

    .line 290
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "At least one cipher suite is required"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 293
    :cond_1
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    iput-object v3, v2, Lokhttp3/ConnectionSpec$Builder;->cipherSuites:[Ljava/lang/String;

    .line 294
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public varargs cipherSuites([Lokhttp3/CipherSuite;)Lokhttp3/ConnectionSpec$Builder;
    .locals 9

    .prologue
    .line 277
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    iget-boolean v4, v4, Lokhttp3/ConnectionSpec$Builder;->tls:Z

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/IllegalStateException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const-string v6, "no cipher suites for cleartext connections"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 279
    :cond_0
    move-object v4, v1

    array-length v4, v4

    new-array v4, v4, [Ljava/lang/String;

    move-object v2, v4

    .line 280
    const/4 v4, 0x0

    move v3, v4

    :goto_0
    move v4, v3

    move-object v5, v1

    array-length v5, v5

    if-ge v4, v5, :cond_1

    .line 281
    move-object v4, v2

    move v5, v3

    move-object v6, v1

    move v7, v3

    aget-object v6, v6, v7

    iget-object v6, v6, Lokhttp3/CipherSuite;->javaName:Ljava/lang/String;

    aput-object v6, v4, v5

    .line 280
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 283
    :cond_1
    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v4, v5}, Lokhttp3/ConnectionSpec$Builder;->cipherSuites([Ljava/lang/String;)Lokhttp3/ConnectionSpec$Builder;

    move-result-object v4

    move-object v0, v4

    return-object v0
.end method

.method public supportsTlsExtensions(Z)Lokhttp3/ConnectionSpec$Builder;
    .locals 6

    .prologue
    .line 326
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-boolean v2, v2, Lokhttp3/ConnectionSpec$Builder;->tls:Z

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/IllegalStateException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "no TLS extensions for cleartext connections"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 327
    :cond_0
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lokhttp3/ConnectionSpec$Builder;->supportsTlsExtensions:Z

    .line 328
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public varargs tlsVersions([Ljava/lang/String;)Lokhttp3/ConnectionSpec$Builder;
    .locals 6

    .prologue
    .line 315
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-boolean v2, v2, Lokhttp3/ConnectionSpec$Builder;->tls:Z

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/IllegalStateException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "no TLS versions for cleartext connections"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 317
    :cond_0
    move-object v2, v1

    array-length v2, v2

    if-nez v2, :cond_1

    .line 318
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "At least one TLS version is required"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 321
    :cond_1
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    iput-object v3, v2, Lokhttp3/ConnectionSpec$Builder;->tlsVersions:[Ljava/lang/String;

    .line 322
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public varargs tlsVersions([Lokhttp3/TlsVersion;)Lokhttp3/ConnectionSpec$Builder;
    .locals 9

    .prologue
    .line 304
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    iget-boolean v4, v4, Lokhttp3/ConnectionSpec$Builder;->tls:Z

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/IllegalStateException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const-string v6, "no TLS versions for cleartext connections"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 306
    :cond_0
    move-object v4, v1

    array-length v4, v4

    new-array v4, v4, [Ljava/lang/String;

    move-object v2, v4

    .line 307
    const/4 v4, 0x0

    move v3, v4

    :goto_0
    move v4, v3

    move-object v5, v1

    array-length v5, v5

    if-ge v4, v5, :cond_1

    .line 308
    move-object v4, v2

    move v5, v3

    move-object v6, v1

    move v7, v3

    aget-object v6, v6, v7

    iget-object v6, v6, Lokhttp3/TlsVersion;->javaName:Ljava/lang/String;

    aput-object v6, v4, v5

    .line 307
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 311
    :cond_1
    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v4, v5}, Lokhttp3/ConnectionSpec$Builder;->tlsVersions([Ljava/lang/String;)Lokhttp3/ConnectionSpec$Builder;

    move-result-object v4

    move-object v0, v4

    return-object v0
.end method
