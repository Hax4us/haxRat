.class public final Lokhttp3/Address;
.super Ljava/lang/Object;
.source "Address.java"


# instance fields
.field final certificatePinner:Lokhttp3/CertificatePinner;

.field final connectionSpecs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokhttp3/ConnectionSpec;",
            ">;"
        }
    .end annotation
.end field

.field final dns:Lokhttp3/Dns;

.field final hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

.field final protocols:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokhttp3/Protocol;",
            ">;"
        }
    .end annotation
.end field

.field final proxy:Ljava/net/Proxy;

.field final proxyAuthenticator:Lokhttp3/Authenticator;

.field final proxySelector:Ljava/net/ProxySelector;

.field final socketFactory:Ljavax/net/SocketFactory;

.field final sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

.field final url:Lokhttp3/HttpUrl;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILokhttp3/Dns;Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Lokhttp3/CertificatePinner;Lokhttp3/Authenticator;Ljava/net/Proxy;Ljava/util/List;Ljava/util/List;Ljava/net/ProxySelector;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lokhttp3/Dns;",
            "Ljavax/net/SocketFactory;",
            "Ljavax/net/ssl/SSLSocketFactory;",
            "Ljavax/net/ssl/HostnameVerifier;",
            "Lokhttp3/CertificatePinner;",
            "Lokhttp3/Authenticator;",
            "Ljava/net/Proxy;",
            "Ljava/util/List",
            "<",
            "Lokhttp3/Protocol;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lokhttp3/ConnectionSpec;",
            ">;",
            "Ljava/net/ProxySelector;",
            ")V"
        }
    .end annotation

    .prologue
    .line 53
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object v13, v0

    invoke-direct {v13}, Ljava/lang/Object;-><init>()V

    .line 54
    move-object v13, v0

    new-instance v14, Lokhttp3/HttpUrl$Builder;

    move-object/from16 v16, v14

    move-object/from16 v14, v16

    move-object/from16 v15, v16

    invoke-direct {v15}, Lokhttp3/HttpUrl$Builder;-><init>()V

    move-object v15, v5

    if-eqz v15, :cond_0

    const-string v15, "https"

    .line 55
    :goto_0
    invoke-virtual {v14, v15}, Lokhttp3/HttpUrl$Builder;->scheme(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v14

    move-object v15, v1

    .line 56
    invoke-virtual {v14, v15}, Lokhttp3/HttpUrl$Builder;->host(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v14

    move v15, v2

    .line 57
    invoke-virtual {v14, v15}, Lokhttp3/HttpUrl$Builder;->port(I)Lokhttp3/HttpUrl$Builder;

    move-result-object v14

    .line 58
    invoke-virtual {v14}, Lokhttp3/HttpUrl$Builder;->build()Lokhttp3/HttpUrl;

    move-result-object v14

    iput-object v14, v13, Lokhttp3/Address;->url:Lokhttp3/HttpUrl;

    .line 60
    move-object v13, v3

    if-nez v13, :cond_1

    new-instance v13, Ljava/lang/NullPointerException;

    move-object/from16 v16, v13

    move-object/from16 v13, v16

    move-object/from16 v14, v16

    const-string v15, "dns == null"

    invoke-direct {v14, v15}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 54
    :cond_0
    const-string v15, "http"

    goto :goto_0

    .line 61
    :cond_1
    move-object v13, v0

    move-object v14, v3

    iput-object v14, v13, Lokhttp3/Address;->dns:Lokhttp3/Dns;

    .line 63
    move-object v13, v4

    if-nez v13, :cond_2

    new-instance v13, Ljava/lang/NullPointerException;

    move-object/from16 v16, v13

    move-object/from16 v13, v16

    move-object/from16 v14, v16

    const-string v15, "socketFactory == null"

    invoke-direct {v14, v15}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 64
    :cond_2
    move-object v13, v0

    move-object v14, v4

    iput-object v14, v13, Lokhttp3/Address;->socketFactory:Ljavax/net/SocketFactory;

    .line 66
    move-object v13, v8

    if-nez v13, :cond_3

    .line 67
    new-instance v13, Ljava/lang/NullPointerException;

    move-object/from16 v16, v13

    move-object/from16 v13, v16

    move-object/from16 v14, v16

    const-string v15, "proxyAuthenticator == null"

    invoke-direct {v14, v15}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 69
    :cond_3
    move-object v13, v0

    move-object v14, v8

    iput-object v14, v13, Lokhttp3/Address;->proxyAuthenticator:Lokhttp3/Authenticator;

    .line 71
    move-object v13, v10

    if-nez v13, :cond_4

    new-instance v13, Ljava/lang/NullPointerException;

    move-object/from16 v16, v13

    move-object/from16 v13, v16

    move-object/from16 v14, v16

    const-string v15, "protocols == null"

    invoke-direct {v14, v15}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 72
    :cond_4
    move-object v13, v0

    move-object v14, v10

    invoke-static {v14}, Lokhttp3/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v14

    iput-object v14, v13, Lokhttp3/Address;->protocols:Ljava/util/List;

    .line 74
    move-object v13, v11

    if-nez v13, :cond_5

    new-instance v13, Ljava/lang/NullPointerException;

    move-object/from16 v16, v13

    move-object/from16 v13, v16

    move-object/from16 v14, v16

    const-string v15, "connectionSpecs == null"

    invoke-direct {v14, v15}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 75
    :cond_5
    move-object v13, v0

    move-object v14, v11

    invoke-static {v14}, Lokhttp3/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v14

    iput-object v14, v13, Lokhttp3/Address;->connectionSpecs:Ljava/util/List;

    .line 77
    move-object v13, v12

    if-nez v13, :cond_6

    new-instance v13, Ljava/lang/NullPointerException;

    move-object/from16 v16, v13

    move-object/from16 v13, v16

    move-object/from16 v14, v16

    const-string v15, "proxySelector == null"

    invoke-direct {v14, v15}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 78
    :cond_6
    move-object v13, v0

    move-object v14, v12

    iput-object v14, v13, Lokhttp3/Address;->proxySelector:Ljava/net/ProxySelector;

    .line 80
    move-object v13, v0

    move-object v14, v9

    iput-object v14, v13, Lokhttp3/Address;->proxy:Ljava/net/Proxy;

    .line 81
    move-object v13, v0

    move-object v14, v5

    iput-object v14, v13, Lokhttp3/Address;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 82
    move-object v13, v0

    move-object v14, v6

    iput-object v14, v13, Lokhttp3/Address;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 83
    move-object v13, v0

    move-object v14, v7

    iput-object v14, v13, Lokhttp3/Address;->certificatePinner:Lokhttp3/CertificatePinner;

    .line 84
    return-void
.end method


# virtual methods
.method public certificatePinner()Lokhttp3/CertificatePinner;
    .locals 2

    .prologue
    .line 149
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/Address;->certificatePinner:Lokhttp3/CertificatePinner;

    move-object v0, v1

    return-object v0
.end method

.method public connectionSpecs()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lokhttp3/ConnectionSpec;",
            ">;"
        }
    .end annotation

    .prologue
    .line 118
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/Address;->connectionSpecs:Ljava/util/List;

    move-object v0, v1

    return-object v0
.end method

.method public dns()Lokhttp3/Dns;
    .locals 2

    .prologue
    .line 96
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/Address;->dns:Lokhttp3/Dns;

    move-object v0, v1

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 153
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    instance-of v3, v3, Lokhttp3/Address;

    if-eqz v3, :cond_1

    .line 154
    move-object v3, v1

    check-cast v3, Lokhttp3/Address;

    move-object v2, v3

    .line 155
    move-object v3, v0

    iget-object v3, v3, Lokhttp3/Address;->url:Lokhttp3/HttpUrl;

    move-object v4, v2

    iget-object v4, v4, Lokhttp3/Address;->url:Lokhttp3/HttpUrl;

    invoke-virtual {v3, v4}, Lokhttp3/HttpUrl;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lokhttp3/Address;->dns:Lokhttp3/Dns;

    move-object v4, v2

    iget-object v4, v4, Lokhttp3/Address;->dns:Lokhttp3/Dns;

    .line 156
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lokhttp3/Address;->proxyAuthenticator:Lokhttp3/Authenticator;

    move-object v4, v2

    iget-object v4, v4, Lokhttp3/Address;->proxyAuthenticator:Lokhttp3/Authenticator;

    .line 157
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lokhttp3/Address;->protocols:Ljava/util/List;

    move-object v4, v2

    iget-object v4, v4, Lokhttp3/Address;->protocols:Ljava/util/List;

    .line 158
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lokhttp3/Address;->connectionSpecs:Ljava/util/List;

    move-object v4, v2

    iget-object v4, v4, Lokhttp3/Address;->connectionSpecs:Ljava/util/List;

    .line 159
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lokhttp3/Address;->proxySelector:Ljava/net/ProxySelector;

    move-object v4, v2

    iget-object v4, v4, Lokhttp3/Address;->proxySelector:Ljava/net/ProxySelector;

    .line 160
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lokhttp3/Address;->proxy:Ljava/net/Proxy;

    move-object v4, v2

    iget-object v4, v4, Lokhttp3/Address;->proxy:Ljava/net/Proxy;

    .line 161
    invoke-static {v3, v4}, Lokhttp3/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lokhttp3/Address;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    move-object v4, v2

    iget-object v4, v4, Lokhttp3/Address;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 162
    invoke-static {v3, v4}, Lokhttp3/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lokhttp3/Address;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    move-object v4, v2

    iget-object v4, v4, Lokhttp3/Address;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 163
    invoke-static {v3, v4}, Lokhttp3/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lokhttp3/Address;->certificatePinner:Lokhttp3/CertificatePinner;

    move-object v4, v2

    iget-object v4, v4, Lokhttp3/Address;->certificatePinner:Lokhttp3/CertificatePinner;

    .line 164
    invoke-static {v3, v4}, Lokhttp3/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    .line 155
    :goto_0
    move v0, v3

    .line 166
    :goto_1
    return v0

    .line 164
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 166
    :cond_1
    const/4 v3, 0x0

    move v0, v3

    goto :goto_1
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 170
    move-object v0, p0

    const/16 v2, 0x11

    move v1, v2

    .line 171
    const/16 v2, 0x1f

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget-object v3, v3, Lokhttp3/Address;->url:Lokhttp3/HttpUrl;

    invoke-virtual {v3}, Lokhttp3/HttpUrl;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    move v1, v2

    .line 172
    const/16 v2, 0x1f

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget-object v3, v3, Lokhttp3/Address;->dns:Lokhttp3/Dns;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    move v1, v2

    .line 173
    const/16 v2, 0x1f

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget-object v3, v3, Lokhttp3/Address;->proxyAuthenticator:Lokhttp3/Authenticator;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    move v1, v2

    .line 174
    const/16 v2, 0x1f

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget-object v3, v3, Lokhttp3/Address;->protocols:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    move v1, v2

    .line 175
    const/16 v2, 0x1f

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget-object v3, v3, Lokhttp3/Address;->connectionSpecs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    move v1, v2

    .line 176
    const/16 v2, 0x1f

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget-object v3, v3, Lokhttp3/Address;->proxySelector:Ljava/net/ProxySelector;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    move v1, v2

    .line 177
    const/16 v2, 0x1f

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget-object v3, v3, Lokhttp3/Address;->proxy:Ljava/net/Proxy;

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lokhttp3/Address;->proxy:Ljava/net/Proxy;

    invoke-virtual {v3}, Ljava/net/Proxy;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v2, v3

    move v1, v2

    .line 178
    const/16 v2, 0x1f

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget-object v3, v3, Lokhttp3/Address;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Lokhttp3/Address;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v2, v3

    move v1, v2

    .line 179
    const/16 v2, 0x1f

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget-object v3, v3, Lokhttp3/Address;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    if-eqz v3, :cond_2

    move-object v3, v0

    iget-object v3, v3, Lokhttp3/Address;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v2, v3

    move v1, v2

    .line 180
    const/16 v2, 0x1f

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget-object v3, v3, Lokhttp3/Address;->certificatePinner:Lokhttp3/CertificatePinner;

    if-eqz v3, :cond_3

    move-object v3, v0

    iget-object v3, v3, Lokhttp3/Address;->certificatePinner:Lokhttp3/CertificatePinner;

    invoke-virtual {v3}, Lokhttp3/CertificatePinner;->hashCode()I

    move-result v3

    :goto_3
    add-int/2addr v2, v3

    move v1, v2

    .line 181
    move v2, v1

    move v0, v2

    return v0

    .line 177
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 178
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 179
    :cond_2
    const/4 v3, 0x0

    goto :goto_2

    .line 180
    :cond_3
    const/4 v3, 0x0

    goto :goto_3
.end method

.method public hostnameVerifier()Ljavax/net/ssl/HostnameVerifier;
    .locals 2

    .prologue
    .line 144
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/Address;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    move-object v0, v1

    return-object v0
.end method

.method public protocols()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lokhttp3/Protocol;",
            ">;"
        }
    .end annotation

    .prologue
    .line 114
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/Address;->protocols:Ljava/util/List;

    move-object v0, v1

    return-object v0
.end method

.method public proxy()Ljava/net/Proxy;
    .locals 2

    .prologue
    .line 134
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/Address;->proxy:Ljava/net/Proxy;

    move-object v0, v1

    return-object v0
.end method

.method public proxyAuthenticator()Lokhttp3/Authenticator;
    .locals 2

    .prologue
    .line 106
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/Address;->proxyAuthenticator:Lokhttp3/Authenticator;

    move-object v0, v1

    return-object v0
.end method

.method public proxySelector()Ljava/net/ProxySelector;
    .locals 2

    .prologue
    .line 126
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/Address;->proxySelector:Ljava/net/ProxySelector;

    move-object v0, v1

    return-object v0
.end method

.method public socketFactory()Ljavax/net/SocketFactory;
    .locals 2

    .prologue
    .line 101
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/Address;->socketFactory:Ljavax/net/SocketFactory;

    move-object v0, v1

    return-object v0
.end method

.method public sslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 2

    .prologue
    .line 139
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/Address;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    move-object v0, v1

    return-object v0
.end method

.method public url()Lokhttp3/HttpUrl;
    .locals 2

    .prologue
    .line 91
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/Address;->url:Lokhttp3/HttpUrl;

    move-object v0, v1

    return-object v0
.end method
