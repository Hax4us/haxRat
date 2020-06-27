.class public final Lokhttp3/Request;
.super Ljava/lang/Object;
.source "Request.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/Request$Builder;
    }
.end annotation


# instance fields
.field final body:Lokhttp3/RequestBody;

.field private volatile cacheControl:Lokhttp3/CacheControl;

.field final headers:Lokhttp3/Headers;

.field final method:Ljava/lang/String;

.field final tag:Ljava/lang/Object;

.field final url:Lokhttp3/HttpUrl;


# direct methods
.method constructor <init>(Lokhttp3/Request$Builder;)V
    .locals 4

    .prologue
    .line 36
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 37
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Lokhttp3/Request$Builder;->url:Lokhttp3/HttpUrl;

    iput-object v3, v2, Lokhttp3/Request;->url:Lokhttp3/HttpUrl;

    .line 38
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Lokhttp3/Request$Builder;->method:Ljava/lang/String;

    iput-object v3, v2, Lokhttp3/Request;->method:Ljava/lang/String;

    .line 39
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Lokhttp3/Request$Builder;->headers:Lokhttp3/Headers$Builder;

    invoke-virtual {v3}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    move-result-object v3

    iput-object v3, v2, Lokhttp3/Request;->headers:Lokhttp3/Headers;

    .line 40
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Lokhttp3/Request$Builder;->body:Lokhttp3/RequestBody;

    iput-object v3, v2, Lokhttp3/Request;->body:Lokhttp3/RequestBody;

    .line 41
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Lokhttp3/Request$Builder;->tag:Ljava/lang/Object;

    if-eqz v3, :cond_0

    move-object v3, v1

    iget-object v3, v3, Lokhttp3/Request$Builder;->tag:Ljava/lang/Object;

    :goto_0
    iput-object v3, v2, Lokhttp3/Request;->tag:Ljava/lang/Object;

    .line 42
    return-void

    .line 41
    :cond_0
    move-object v3, v0

    goto :goto_0
.end method


# virtual methods
.method public body()Lokhttp3/RequestBody;
    .locals 2

    .prologue
    .line 65
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/Request;->body:Lokhttp3/RequestBody;

    move-object v0, v1

    return-object v0
.end method

.method public cacheControl()Lokhttp3/CacheControl;
    .locals 7

    .prologue
    .line 81
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lokhttp3/Request;->cacheControl:Lokhttp3/CacheControl;

    move-object v1, v2

    .line 82
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    :goto_0
    move-object v0, v2

    return-object v0

    :cond_0
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lokhttp3/Request;->headers:Lokhttp3/Headers;

    invoke-static {v3}, Lokhttp3/CacheControl;->parse(Lokhttp3/Headers;)Lokhttp3/CacheControl;

    move-result-object v3

    move-object v5, v2

    move-object v6, v3

    move-object v2, v6

    move-object v3, v5

    move-object v4, v6

    iput-object v4, v3, Lokhttp3/Request;->cacheControl:Lokhttp3/CacheControl;

    goto :goto_0
.end method

.method public header(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 57
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lokhttp3/Request;->headers:Lokhttp3/Headers;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public headers(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 61
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lokhttp3/Request;->headers:Lokhttp3/Headers;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lokhttp3/Headers;->values(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public headers()Lokhttp3/Headers;
    .locals 2

    .prologue
    .line 53
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/Request;->headers:Lokhttp3/Headers;

    move-object v0, v1

    return-object v0
.end method

.method public isHttps()Z
    .locals 2

    .prologue
    .line 86
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/Request;->url:Lokhttp3/HttpUrl;

    invoke-virtual {v1}, Lokhttp3/HttpUrl;->isHttps()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public method()Ljava/lang/String;
    .locals 2

    .prologue
    .line 49
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/Request;->method:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public newBuilder()Lokhttp3/Request$Builder;
    .locals 5

    .prologue
    .line 73
    move-object v0, p0

    new-instance v1, Lokhttp3/Request$Builder;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lokhttp3/Request$Builder;-><init>(Lokhttp3/Request;)V

    move-object v0, v1

    return-object v0
.end method

.method public tag()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 69
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/Request;->tag:Ljava/lang/Object;

    move-object v0, v1

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 90
    move-object v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Request{method="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lokhttp3/Request;->method:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lokhttp3/Request;->url:Lokhttp3/HttpUrl;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", tag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lokhttp3/Request;->tag:Ljava/lang/Object;

    move-object v3, v0

    if-eq v2, v3, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lokhttp3/Request;->tag:Ljava/lang/Object;

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x7d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public url()Lokhttp3/HttpUrl;
    .locals 2

    .prologue
    .line 45
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/Request;->url:Lokhttp3/HttpUrl;

    move-object v0, v1

    return-object v0
.end method
