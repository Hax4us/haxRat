.class public final Lokhttp3/Route;
.super Ljava/lang/Object;
.source "Route.java"


# instance fields
.field final address:Lokhttp3/Address;

.field final inetSocketAddress:Ljava/net/InetSocketAddress;

.field final proxy:Ljava/net/Proxy;


# direct methods
.method public constructor <init>(Lokhttp3/Address;Ljava/net/Proxy;Ljava/net/InetSocketAddress;)V
    .locals 8

    .prologue
    .line 41
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 42
    move-object v4, v1

    if-nez v4, :cond_0

    .line 43
    new-instance v4, Ljava/lang/NullPointerException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string v6, "address == null"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 45
    :cond_0
    move-object v4, v2

    if-nez v4, :cond_1

    .line 46
    new-instance v4, Ljava/lang/NullPointerException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string v6, "proxy == null"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 48
    :cond_1
    move-object v4, v3

    if-nez v4, :cond_2

    .line 49
    new-instance v4, Ljava/lang/NullPointerException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string v6, "inetSocketAddress == null"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 51
    :cond_2
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lokhttp3/Route;->address:Lokhttp3/Address;

    .line 52
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lokhttp3/Route;->proxy:Ljava/net/Proxy;

    .line 53
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lokhttp3/Route;->inetSocketAddress:Ljava/net/InetSocketAddress;

    .line 54
    return-void
.end method


# virtual methods
.method public address()Lokhttp3/Address;
    .locals 2

    .prologue
    .line 57
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/Route;->address:Lokhttp3/Address;

    move-object v0, v1

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 83
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    instance-of v3, v3, Lokhttp3/Route;

    if-eqz v3, :cond_1

    .line 84
    move-object v3, v1

    check-cast v3, Lokhttp3/Route;

    move-object v2, v3

    .line 85
    move-object v3, v0

    iget-object v3, v3, Lokhttp3/Route;->address:Lokhttp3/Address;

    move-object v4, v2

    iget-object v4, v4, Lokhttp3/Route;->address:Lokhttp3/Address;

    invoke-virtual {v3, v4}, Lokhttp3/Address;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lokhttp3/Route;->proxy:Ljava/net/Proxy;

    move-object v4, v2

    iget-object v4, v4, Lokhttp3/Route;->proxy:Ljava/net/Proxy;

    .line 86
    invoke-virtual {v3, v4}, Ljava/net/Proxy;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lokhttp3/Route;->inetSocketAddress:Ljava/net/InetSocketAddress;

    move-object v4, v2

    iget-object v4, v4, Lokhttp3/Route;->inetSocketAddress:Ljava/net/InetSocketAddress;

    .line 87
    invoke-virtual {v3, v4}, Ljava/net/InetSocketAddress;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    .line 85
    :goto_0
    move v0, v3

    .line 89
    :goto_1
    return v0

    .line 87
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 89
    :cond_1
    const/4 v3, 0x0

    move v0, v3

    goto :goto_1
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 93
    move-object v0, p0

    const/16 v2, 0x11

    move v1, v2

    .line 94
    const/16 v2, 0x1f

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget-object v3, v3, Lokhttp3/Route;->address:Lokhttp3/Address;

    invoke-virtual {v3}, Lokhttp3/Address;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    move v1, v2

    .line 95
    const/16 v2, 0x1f

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget-object v3, v3, Lokhttp3/Route;->proxy:Ljava/net/Proxy;

    invoke-virtual {v3}, Ljava/net/Proxy;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    move v1, v2

    .line 96
    const/16 v2, 0x1f

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget-object v3, v3, Lokhttp3/Route;->inetSocketAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v3}, Ljava/net/InetSocketAddress;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    move v1, v2

    .line 97
    move v2, v1

    move v0, v2

    return v0
.end method

.method public proxy()Ljava/net/Proxy;
    .locals 2

    .prologue
    .line 67
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/Route;->proxy:Ljava/net/Proxy;

    move-object v0, v1

    return-object v0
.end method

.method public requiresTunnel()Z
    .locals 3

    .prologue
    .line 79
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/Route;->address:Lokhttp3/Address;

    iget-object v1, v1, Lokhttp3/Address;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/Route;->proxy:Ljava/net/Proxy;

    invoke-virtual {v1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v1

    sget-object v2, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public socketAddress()Ljava/net/InetSocketAddress;
    .locals 2

    .prologue
    .line 71
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/Route;->inetSocketAddress:Ljava/net/InetSocketAddress;

    move-object v0, v1

    return-object v0
.end method
