.class public final Lokhttp3/internal/connection/ConnectionSpecSelector;
.super Ljava/lang/Object;
.source "ConnectionSpecSelector.java"


# instance fields
.field private final connectionSpecs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokhttp3/ConnectionSpec;",
            ">;"
        }
    .end annotation
.end field

.field private isFallback:Z

.field private isFallbackPossible:Z

.field private nextModeIndex:I


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lokhttp3/ConnectionSpec;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 44
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 45
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lokhttp3/internal/connection/ConnectionSpecSelector;->nextModeIndex:I

    .line 46
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lokhttp3/internal/connection/ConnectionSpecSelector;->connectionSpecs:Ljava/util/List;

    .line 47
    return-void
.end method

.method private isFallbackPossible(Ljavax/net/ssl/SSLSocket;)Z
    .locals 5

    .prologue
    .line 135
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget v3, v3, Lokhttp3/internal/connection/ConnectionSpecSelector;->nextModeIndex:I

    move v2, v3

    :goto_0
    move v3, v2

    move-object v4, v0

    iget-object v4, v4, Lokhttp3/internal/connection/ConnectionSpecSelector;->connectionSpecs:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 136
    move-object v3, v0

    iget-object v3, v3, Lokhttp3/internal/connection/ConnectionSpecSelector;->connectionSpecs:Ljava/util/List;

    move v4, v2

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lokhttp3/ConnectionSpec;

    move-object v4, v1

    invoke-virtual {v3, v4}, Lokhttp3/ConnectionSpec;->isCompatible(Ljavax/net/ssl/SSLSocket;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 137
    const/4 v3, 0x1

    move v0, v3

    .line 140
    :goto_1
    return v0

    .line 135
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 140
    :cond_1
    const/4 v3, 0x0

    move v0, v3

    goto :goto_1
.end method


# virtual methods
.method public configureSecureSocket(Ljavax/net/ssl/SSLSocket;)Lokhttp3/ConnectionSpec;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    move-object v0, p0

    move-object v1, p1

    const/4 v6, 0x0

    move-object v2, v6

    .line 57
    move-object v6, v0

    iget v6, v6, Lokhttp3/internal/connection/ConnectionSpecSelector;->nextModeIndex:I

    move v3, v6

    move-object v6, v0

    iget-object v6, v6, Lokhttp3/internal/connection/ConnectionSpecSelector;->connectionSpecs:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    move v4, v6

    :goto_0
    move v6, v3

    move v7, v4

    if-ge v6, v7, :cond_0

    .line 58
    move-object v6, v0

    iget-object v6, v6, Lokhttp3/internal/connection/ConnectionSpecSelector;->connectionSpecs:Ljava/util/List;

    move v7, v3

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lokhttp3/ConnectionSpec;

    move-object v5, v6

    .line 59
    move-object v6, v5

    move-object v7, v1

    invoke-virtual {v6, v7}, Lokhttp3/ConnectionSpec;->isCompatible(Ljavax/net/ssl/SSLSocket;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 60
    move-object v6, v5

    move-object v2, v6

    .line 61
    move-object v6, v0

    move v7, v3

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lokhttp3/internal/connection/ConnectionSpecSelector;->nextModeIndex:I

    .line 66
    :cond_0
    move-object v6, v2

    if-nez v6, :cond_2

    .line 70
    new-instance v6, Ljava/net/UnknownServiceException;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v10, v8

    move-object v8, v10

    move-object v9, v10

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to find acceptable protocols. isFallback="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v0

    iget-boolean v9, v9, Lokhttp3/internal/connection/ConnectionSpecSelector;->isFallback:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", modes="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v0

    iget-object v9, v9, Lokhttp3/internal/connection/ConnectionSpecSelector;->connectionSpecs:Ljava/util/List;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", supported protocols="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v1

    .line 73
    invoke-virtual {v9}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 57
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 76
    :cond_2
    move-object v6, v0

    move-object v7, v0

    move-object v8, v1

    invoke-direct {v7, v8}, Lokhttp3/internal/connection/ConnectionSpecSelector;->isFallbackPossible(Ljavax/net/ssl/SSLSocket;)Z

    move-result v7

    iput-boolean v7, v6, Lokhttp3/internal/connection/ConnectionSpecSelector;->isFallbackPossible:Z

    .line 78
    sget-object v6, Lokhttp3/internal/Internal;->instance:Lokhttp3/internal/Internal;

    move-object v7, v2

    move-object v8, v1

    move-object v9, v0

    iget-boolean v9, v9, Lokhttp3/internal/connection/ConnectionSpecSelector;->isFallback:Z

    invoke-virtual {v6, v7, v8, v9}, Lokhttp3/internal/Internal;->apply(Lokhttp3/ConnectionSpec;Ljavax/net/ssl/SSLSocket;Z)V

    .line 80
    move-object v6, v2

    move-object v0, v6

    return-object v0
.end method

.method public connectionFailed(Ljava/io/IOException;)Z
    .locals 4

    .prologue
    .line 92
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lokhttp3/internal/connection/ConnectionSpecSelector;->isFallback:Z

    .line 94
    move-object v2, v0

    iget-boolean v2, v2, Lokhttp3/internal/connection/ConnectionSpecSelector;->isFallbackPossible:Z

    if-nez v2, :cond_0

    .line 95
    const/4 v2, 0x0

    move v0, v2

    .line 126
    :goto_0
    return v0

    .line 99
    :cond_0
    move-object v2, v1

    instance-of v2, v2, Ljava/net/ProtocolException;

    if-eqz v2, :cond_1

    .line 100
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0

    .line 106
    :cond_1
    move-object v2, v1

    instance-of v2, v2, Ljava/io/InterruptedIOException;

    if-eqz v2, :cond_2

    .line 107
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0

    .line 112
    :cond_2
    move-object v2, v1

    instance-of v2, v2, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz v2, :cond_3

    .line 115
    move-object v2, v1

    invoke-virtual {v2}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Ljava/security/cert/CertificateException;

    if-eqz v2, :cond_3

    .line 116
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0

    .line 119
    :cond_3
    move-object v2, v1

    instance-of v2, v2, Ljavax/net/ssl/SSLPeerUnverifiedException;

    if-eqz v2, :cond_4

    .line 121
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0

    .line 126
    :cond_4
    move-object v2, v1

    instance-of v2, v2, Ljavax/net/ssl/SSLHandshakeException;

    if-nez v2, :cond_5

    move-object v2, v1

    instance-of v2, v2, Ljavax/net/ssl/SSLProtocolException;

    if-eqz v2, :cond_6

    :cond_5
    const/4 v2, 0x1

    :goto_1
    move v0, v2

    goto :goto_0

    :cond_6
    const/4 v2, 0x0

    goto :goto_1
.end method
