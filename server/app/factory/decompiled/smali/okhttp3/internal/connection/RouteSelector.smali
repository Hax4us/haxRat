.class public final Lokhttp3/internal/connection/RouteSelector;
.super Ljava/lang/Object;
.source "RouteSelector.java"


# instance fields
.field private final address:Lokhttp3/Address;

.field private inetSocketAddresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/net/InetSocketAddress;",
            ">;"
        }
    .end annotation
.end field

.field private lastInetSocketAddress:Ljava/net/InetSocketAddress;

.field private lastProxy:Ljava/net/Proxy;

.field private nextInetSocketAddressIndex:I

.field private nextProxyIndex:I

.field private final postponedRoutes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokhttp3/Route;",
            ">;"
        }
    .end annotation
.end field

.field private proxies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/net/Proxy;",
            ">;"
        }
    .end annotation
.end field

.field private final routeDatabase:Lokhttp3/internal/connection/RouteDatabase;


# direct methods
.method public constructor <init>(Lokhttp3/Address;Lokhttp3/internal/connection/RouteDatabase;)V
    .locals 7

    .prologue
    .line 56
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 46
    move-object v3, v0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    iput-object v4, v3, Lokhttp3/internal/connection/RouteSelector;->proxies:Ljava/util/List;

    .line 50
    move-object v3, v0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    iput-object v4, v3, Lokhttp3/internal/connection/RouteSelector;->inetSocketAddresses:Ljava/util/List;

    .line 54
    move-object v3, v0

    new-instance v4, Ljava/util/ArrayList;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Lokhttp3/internal/connection/RouteSelector;->postponedRoutes:Ljava/util/List;

    .line 57
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lokhttp3/internal/connection/RouteSelector;->address:Lokhttp3/Address;

    .line 58
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lokhttp3/internal/connection/RouteSelector;->routeDatabase:Lokhttp3/internal/connection/RouteDatabase;

    .line 60
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Lokhttp3/Address;->url()Lokhttp3/HttpUrl;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v5}, Lokhttp3/Address;->proxy()Ljava/net/Proxy;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lokhttp3/internal/connection/RouteSelector;->resetNextProxy(Lokhttp3/HttpUrl;Ljava/net/Proxy;)V

    .line 61
    return-void
.end method

.method static getHostString(Ljava/net/InetSocketAddress;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 186
    move-object v0, p0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    move-object v1, v2

    .line 187
    move-object v2, v1

    if-nez v2, :cond_0

    .line 191
    move-object v2, v0

    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 195
    :goto_0
    return-object v0

    :cond_0
    move-object v2, v1

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method private hasNextInetSocketAddress()Z
    .locals 3

    .prologue
    .line 200
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lokhttp3/internal/connection/RouteSelector;->nextInetSocketAddressIndex:I

    move-object v2, v0

    iget-object v2, v2, Lokhttp3/internal/connection/RouteSelector;->inetSocketAddresses:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private hasNextPostponed()Z
    .locals 2

    .prologue
    .line 214
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/internal/connection/RouteSelector;->postponedRoutes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private hasNextProxy()Z
    .locals 3

    .prologue
    .line 126
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lokhttp3/internal/connection/RouteSelector;->nextProxyIndex:I

    move-object v2, v0

    iget-object v2, v2, Lokhttp3/internal/connection/RouteSelector;->proxies:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private nextInetSocketAddress()Ljava/net/InetSocketAddress;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 205
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lokhttp3/internal/connection/RouteSelector;->hasNextInetSocketAddress()Z

    move-result v1

    if-nez v1, :cond_0

    .line 206
    new-instance v1, Ljava/net/SocketException;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No route to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lokhttp3/internal/connection/RouteSelector;->address:Lokhttp3/Address;

    invoke-virtual {v4}, Lokhttp3/Address;->url()Lokhttp3/HttpUrl;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; exhausted inet socket addresses: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lokhttp3/internal/connection/RouteSelector;->inetSocketAddresses:Ljava/util/List;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 209
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lokhttp3/internal/connection/RouteSelector;->inetSocketAddresses:Ljava/util/List;

    move-object v2, v0

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    iget v3, v3, Lokhttp3/internal/connection/RouteSelector;->nextInetSocketAddressIndex:I

    move-object v6, v2

    move v7, v3

    move v2, v7

    move-object v3, v6

    move v4, v7

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lokhttp3/internal/connection/RouteSelector;->nextInetSocketAddressIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetSocketAddress;

    move-object v0, v1

    return-object v0
.end method

.method private nextPostponed()Lokhttp3/Route;
    .locals 3

    .prologue
    .line 219
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/internal/connection/RouteSelector;->postponedRoutes:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokhttp3/Route;

    move-object v0, v1

    return-object v0
.end method

.method private nextProxy()Ljava/net/Proxy;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 131
    move-object v0, p0

    move-object v2, v0

    invoke-direct {v2}, Lokhttp3/internal/connection/RouteSelector;->hasNextProxy()Z

    move-result v2

    if-nez v2, :cond_0

    .line 132
    new-instance v2, Ljava/net/SocketException;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No route to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Lokhttp3/internal/connection/RouteSelector;->address:Lokhttp3/Address;

    invoke-virtual {v5}, Lokhttp3/Address;->url()Lokhttp3/HttpUrl;

    move-result-object v5

    invoke-virtual {v5}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; exhausted proxy configurations: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Lokhttp3/internal/connection/RouteSelector;->proxies:Ljava/util/List;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 135
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lokhttp3/internal/connection/RouteSelector;->proxies:Ljava/util/List;

    move-object v3, v0

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    iget v4, v4, Lokhttp3/internal/connection/RouteSelector;->nextProxyIndex:I

    move-object v7, v3

    move v8, v4

    move v3, v8

    move-object v4, v7

    move v5, v8

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lokhttp3/internal/connection/RouteSelector;->nextProxyIndex:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/Proxy;

    move-object v1, v2

    .line 136
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lokhttp3/internal/connection/RouteSelector;->resetNextInetSocketAddress(Ljava/net/Proxy;)V

    .line 137
    move-object v2, v1

    move-object v0, v2

    return-object v0
.end method

.method private resetNextInetSocketAddress(Ljava/net/Proxy;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 143
    move-object v0, p0

    move-object v1, p1

    move-object v8, v0

    new-instance v9, Ljava/util/ArrayList;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, v8, Lokhttp3/internal/connection/RouteSelector;->inetSocketAddresses:Ljava/util/List;

    .line 147
    move-object v8, v1

    invoke-virtual {v8}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v8

    sget-object v9, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v8, v9, :cond_0

    move-object v8, v1

    invoke-virtual {v8}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v8

    sget-object v9, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    if-ne v8, v9, :cond_2

    .line 148
    :cond_0
    move-object v8, v0

    iget-object v8, v8, Lokhttp3/internal/connection/RouteSelector;->address:Lokhttp3/Address;

    invoke-virtual {v8}, Lokhttp3/Address;->url()Lokhttp3/HttpUrl;

    move-result-object v8

    invoke-virtual {v8}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v8

    move-object v2, v8

    .line 149
    move-object v8, v0

    iget-object v8, v8, Lokhttp3/internal/connection/RouteSelector;->address:Lokhttp3/Address;

    invoke-virtual {v8}, Lokhttp3/Address;->url()Lokhttp3/HttpUrl;

    move-result-object v8

    invoke-virtual {v8}, Lokhttp3/HttpUrl;->port()I

    move-result v8

    move v3, v8

    .line 161
    :goto_0
    move v8, v3

    const/4 v9, 0x1

    if-lt v8, v9, :cond_1

    move v8, v3

    const v9, 0xffff

    if-le v8, v9, :cond_4

    .line 162
    :cond_1
    new-instance v8, Ljava/net/SocketException;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "No route to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v2

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move v11, v3

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "; port is out of range"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 151
    :cond_2
    move-object v8, v1

    invoke-virtual {v8}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v8

    move-object v4, v8

    .line 152
    move-object v8, v4

    instance-of v8, v8, Ljava/net/InetSocketAddress;

    if-nez v8, :cond_3

    .line 153
    new-instance v8, Ljava/lang/IllegalArgumentException;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Proxy.address() is not an InetSocketAddress: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v4

    .line 154
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 156
    :cond_3
    move-object v8, v4

    check-cast v8, Ljava/net/InetSocketAddress;

    move-object v5, v8

    .line 157
    move-object v8, v5

    invoke-static {v8}, Lokhttp3/internal/connection/RouteSelector;->getHostString(Ljava/net/InetSocketAddress;)Ljava/lang/String;

    move-result-object v8

    move-object v2, v8

    .line 158
    move-object v8, v5

    invoke-virtual {v8}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v8

    move v3, v8

    goto :goto_0

    .line 166
    :cond_4
    move-object v8, v1

    invoke-virtual {v8}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v8

    sget-object v9, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    if-ne v8, v9, :cond_6

    .line 167
    move-object v8, v0

    iget-object v8, v8, Lokhttp3/internal/connection/RouteSelector;->inetSocketAddresses:Ljava/util/List;

    move-object v9, v2

    move v10, v3

    invoke-static {v9, v10}, Ljava/net/InetSocketAddress;->createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v8

    .line 177
    :cond_5
    move-object v8, v0

    const/4 v9, 0x0

    iput v9, v8, Lokhttp3/internal/connection/RouteSelector;->nextInetSocketAddressIndex:I

    .line 178
    return-void

    .line 170
    :cond_6
    move-object v8, v0

    iget-object v8, v8, Lokhttp3/internal/connection/RouteSelector;->address:Lokhttp3/Address;

    invoke-virtual {v8}, Lokhttp3/Address;->dns()Lokhttp3/Dns;

    move-result-object v8

    move-object v9, v2

    invoke-interface {v8, v9}, Lokhttp3/Dns;->lookup(Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    move-object v4, v8

    .line 171
    const/4 v8, 0x0

    move v5, v8

    move-object v8, v4

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    move v6, v8

    :goto_1
    move v8, v5

    move v9, v6

    if-ge v8, v9, :cond_5

    .line 172
    move-object v8, v4

    move v9, v5

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/net/InetAddress;

    move-object v7, v8

    .line 173
    move-object v8, v0

    iget-object v8, v8, Lokhttp3/internal/connection/RouteSelector;->inetSocketAddresses:Ljava/util/List;

    new-instance v9, Ljava/net/InetSocketAddress;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    move-object v11, v7

    move v12, v3

    invoke-direct {v10, v11, v12}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v8

    .line 171
    add-int/lit8 v5, v5, 0x1

    goto :goto_1
.end method

.method private resetNextProxy(Lokhttp3/HttpUrl;Ljava/net/Proxy;)V
    .locals 10

    .prologue
    .line 111
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v2

    if-eqz v4, :cond_0

    .line 113
    move-object v4, v0

    move-object v5, v2

    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    iput-object v5, v4, Lokhttp3/internal/connection/RouteSelector;->proxies:Ljava/util/List;

    .line 121
    :goto_0
    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Lokhttp3/internal/connection/RouteSelector;->nextProxyIndex:I

    .line 122
    return-void

    .line 116
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lokhttp3/internal/connection/RouteSelector;->address:Lokhttp3/Address;

    invoke-virtual {v4}, Lokhttp3/Address;->proxySelector()Ljava/net/ProxySelector;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v5}, Lokhttp3/HttpUrl;->uri()Ljava/net/URI;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/net/ProxySelector;->select(Ljava/net/URI;)Ljava/util/List;

    move-result-object v4

    move-object v3, v4

    .line 117
    move-object v4, v0

    move-object v5, v3

    if-eqz v5, :cond_1

    move-object v5, v3

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    move-object v5, v3

    .line 118
    invoke-static {v5}, Lokhttp3/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    .line 119
    :goto_1
    iput-object v5, v4, Lokhttp3/internal/connection/RouteSelector;->proxies:Ljava/util/List;

    goto :goto_0

    .line 118
    :cond_1
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/net/Proxy;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    sget-object v8, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    aput-object v8, v6, v7

    .line 119
    invoke-static {v5}, Lokhttp3/internal/Util;->immutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    goto :goto_1
.end method


# virtual methods
.method public connectFailed(Lokhttp3/Route;Ljava/io/IOException;)V
    .locals 7

    .prologue
    .line 100
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v1

    invoke-virtual {v3}, Lokhttp3/Route;->proxy()Ljava/net/Proxy;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v3

    sget-object v4, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v3, v4, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lokhttp3/internal/connection/RouteSelector;->address:Lokhttp3/Address;

    invoke-virtual {v3}, Lokhttp3/Address;->proxySelector()Ljava/net/ProxySelector;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 102
    move-object v3, v0

    iget-object v3, v3, Lokhttp3/internal/connection/RouteSelector;->address:Lokhttp3/Address;

    invoke-virtual {v3}, Lokhttp3/Address;->proxySelector()Ljava/net/ProxySelector;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lokhttp3/internal/connection/RouteSelector;->address:Lokhttp3/Address;

    .line 103
    invoke-virtual {v4}, Lokhttp3/Address;->url()Lokhttp3/HttpUrl;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/HttpUrl;->uri()Ljava/net/URI;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v5}, Lokhttp3/Route;->proxy()Ljava/net/Proxy;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v5

    move-object v6, v2

    .line 102
    invoke-virtual {v3, v4, v5, v6}, Ljava/net/ProxySelector;->connectFailed(Ljava/net/URI;Ljava/net/SocketAddress;Ljava/io/IOException;)V

    .line 106
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lokhttp3/internal/connection/RouteSelector;->routeDatabase:Lokhttp3/internal/connection/RouteDatabase;

    move-object v4, v1

    invoke-virtual {v3, v4}, Lokhttp3/internal/connection/RouteDatabase;->failed(Lokhttp3/Route;)V

    .line 107
    return-void
.end method

.method public hasNext()Z
    .locals 2

    .prologue
    .line 67
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lokhttp3/internal/connection/RouteSelector;->hasNextInetSocketAddress()Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v0

    .line 68
    invoke-direct {v1}, Lokhttp3/internal/connection/RouteSelector;->hasNextProxy()Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v0

    .line 69
    invoke-direct {v1}, Lokhttp3/internal/connection/RouteSelector;->hasNextPostponed()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 67
    :goto_0
    move v0, v1

    return v0

    .line 69
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public next()Lokhttp3/Route;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 74
    move-object v0, p0

    move-object v2, v0

    invoke-direct {v2}, Lokhttp3/internal/connection/RouteSelector;->hasNextInetSocketAddress()Z

    move-result v2

    if-nez v2, :cond_2

    .line 75
    move-object v2, v0

    invoke-direct {v2}, Lokhttp3/internal/connection/RouteSelector;->hasNextProxy()Z

    move-result v2

    if-nez v2, :cond_1

    .line 76
    move-object v2, v0

    invoke-direct {v2}, Lokhttp3/internal/connection/RouteSelector;->hasNextPostponed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 77
    new-instance v2, Ljava/util/NoSuchElementException;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    invoke-direct {v3}, Ljava/util/NoSuchElementException;-><init>()V

    throw v2

    .line 79
    :cond_0
    move-object v2, v0

    invoke-direct {v2}, Lokhttp3/internal/connection/RouteSelector;->nextPostponed()Lokhttp3/Route;

    move-result-object v2

    move-object v0, v2

    .line 92
    :goto_0
    return-object v0

    .line 81
    :cond_1
    move-object v2, v0

    move-object v3, v0

    invoke-direct {v3}, Lokhttp3/internal/connection/RouteSelector;->nextProxy()Ljava/net/Proxy;

    move-result-object v3

    iput-object v3, v2, Lokhttp3/internal/connection/RouteSelector;->lastProxy:Ljava/net/Proxy;

    .line 83
    :cond_2
    move-object v2, v0

    move-object v3, v0

    invoke-direct {v3}, Lokhttp3/internal/connection/RouteSelector;->nextInetSocketAddress()Ljava/net/InetSocketAddress;

    move-result-object v3

    iput-object v3, v2, Lokhttp3/internal/connection/RouteSelector;->lastInetSocketAddress:Ljava/net/InetSocketAddress;

    .line 85
    new-instance v2, Lokhttp3/Route;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    iget-object v4, v4, Lokhttp3/internal/connection/RouteSelector;->address:Lokhttp3/Address;

    move-object v5, v0

    iget-object v5, v5, Lokhttp3/internal/connection/RouteSelector;->lastProxy:Ljava/net/Proxy;

    move-object v6, v0

    iget-object v6, v6, Lokhttp3/internal/connection/RouteSelector;->lastInetSocketAddress:Ljava/net/InetSocketAddress;

    invoke-direct {v3, v4, v5, v6}, Lokhttp3/Route;-><init>(Lokhttp3/Address;Ljava/net/Proxy;Ljava/net/InetSocketAddress;)V

    move-object v1, v2

    .line 86
    move-object v2, v0

    iget-object v2, v2, Lokhttp3/internal/connection/RouteSelector;->routeDatabase:Lokhttp3/internal/connection/RouteDatabase;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lokhttp3/internal/connection/RouteDatabase;->shouldPostpone(Lokhttp3/Route;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 87
    move-object v2, v0

    iget-object v2, v2, Lokhttp3/internal/connection/RouteSelector;->postponedRoutes:Ljava/util/List;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 89
    move-object v2, v0

    invoke-virtual {v2}, Lokhttp3/internal/connection/RouteSelector;->next()Lokhttp3/Route;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 92
    :cond_3
    move-object v2, v1

    move-object v0, v2

    goto :goto_0
.end method
