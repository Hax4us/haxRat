.class public Lokhttp3/Request$Builder;
.super Ljava/lang/Object;
.source "Request.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field body:Lokhttp3/RequestBody;

.field headers:Lokhttp3/Headers$Builder;

.field method:Ljava/lang/String;

.field tag:Ljava/lang/Object;

.field url:Lokhttp3/HttpUrl;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 106
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 107
    move-object v1, v0

    const-string v2, "GET"

    iput-object v2, v1, Lokhttp3/Request$Builder;->method:Ljava/lang/String;

    .line 108
    move-object v1, v0

    new-instance v2, Lokhttp3/Headers$Builder;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lokhttp3/Headers$Builder;-><init>()V

    iput-object v2, v1, Lokhttp3/Request$Builder;->headers:Lokhttp3/Headers$Builder;

    .line 109
    return-void
.end method

.method constructor <init>(Lokhttp3/Request;)V
    .locals 4

    .prologue
    .line 111
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 112
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Lokhttp3/Request;->url:Lokhttp3/HttpUrl;

    iput-object v3, v2, Lokhttp3/Request$Builder;->url:Lokhttp3/HttpUrl;

    .line 113
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Lokhttp3/Request;->method:Ljava/lang/String;

    iput-object v3, v2, Lokhttp3/Request$Builder;->method:Ljava/lang/String;

    .line 114
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Lokhttp3/Request;->body:Lokhttp3/RequestBody;

    iput-object v3, v2, Lokhttp3/Request$Builder;->body:Lokhttp3/RequestBody;

    .line 115
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Lokhttp3/Request;->tag:Ljava/lang/Object;

    iput-object v3, v2, Lokhttp3/Request$Builder;->tag:Ljava/lang/Object;

    .line 116
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Lokhttp3/Request;->headers:Lokhttp3/Headers;

    invoke-virtual {v3}, Lokhttp3/Headers;->newBuilder()Lokhttp3/Headers$Builder;

    move-result-object v3

    iput-object v3, v2, Lokhttp3/Request$Builder;->headers:Lokhttp3/Headers$Builder;

    .line 117
    return-void
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;
    .locals 6

    .prologue
    .line 176
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Lokhttp3/Request$Builder;->headers:Lokhttp3/Headers$Builder;

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lokhttp3/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    move-result-object v3

    .line 177
    move-object v3, v0

    move-object v0, v3

    return-object v0
.end method

.method public build()Lokhttp3/Request;
    .locals 5

    .prologue
    .line 254
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/Request$Builder;->url:Lokhttp3/HttpUrl;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "url == null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 255
    :cond_0
    new-instance v1, Lokhttp3/Request;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lokhttp3/Request;-><init>(Lokhttp3/Request$Builder;)V

    move-object v0, v1

    return-object v0
.end method

.method public cacheControl(Lokhttp3/CacheControl;)Lokhttp3/Request$Builder;
    .locals 6

    .prologue
    .line 197
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    invoke-virtual {v3}, Lokhttp3/CacheControl;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 198
    move-object v3, v2

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v0

    const-string v4, "Cache-Control"

    invoke-virtual {v3, v4}, Lokhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v3

    move-object v0, v3

    .line 199
    :goto_0
    return-object v0

    :cond_0
    move-object v3, v0

    const-string v4, "Cache-Control"

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v3

    move-object v0, v3

    goto :goto_0
.end method

.method public delete()Lokhttp3/Request$Builder;
    .locals 3

    .prologue
    .line 219
    move-object v0, p0

    move-object v1, v0

    sget-object v2, Lokhttp3/internal/Util;->EMPTY_REQUEST:Lokhttp3/RequestBody;

    invoke-virtual {v1, v2}, Lokhttp3/Request$Builder;->delete(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public delete(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;
    .locals 5

    .prologue
    .line 215
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string v3, "DELETE"

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public get()Lokhttp3/Request$Builder;
    .locals 4

    .prologue
    .line 203
    move-object v0, p0

    move-object v1, v0

    const-string v2, "GET"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public head()Lokhttp3/Request$Builder;
    .locals 4

    .prologue
    .line 207
    move-object v0, p0

    move-object v1, v0

    const-string v2, "HEAD"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;
    .locals 6

    .prologue
    .line 164
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Lokhttp3/Request$Builder;->headers:Lokhttp3/Headers$Builder;

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lokhttp3/Headers$Builder;->set(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    move-result-object v3

    .line 165
    move-object v3, v0

    move-object v0, v3

    return-object v0
.end method

.method public headers(Lokhttp3/Headers;)Lokhttp3/Request$Builder;
    .locals 4

    .prologue
    .line 187
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Lokhttp3/Headers;->newBuilder()Lokhttp3/Headers$Builder;

    move-result-object v3

    iput-object v3, v2, Lokhttp3/Request$Builder;->headers:Lokhttp3/Headers$Builder;

    .line 188
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;
    .locals 8

    .prologue
    .line 231
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v1

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/NullPointerException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const-string v5, "method == null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 232
    :cond_0
    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const-string v5, "method.length() == 0"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 233
    :cond_1
    move-object v3, v2

    if-eqz v3, :cond_2

    move-object v3, v1

    invoke-static {v3}, Lokhttp3/internal/http/HttpMethod;->permitsRequestBody(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 234
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "method "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " must not have a request body."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 236
    :cond_2
    move-object v3, v2

    if-nez v3, :cond_3

    move-object v3, v1

    invoke-static {v3}, Lokhttp3/internal/http/HttpMethod;->requiresRequestBody(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 237
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "method "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " must have a request body."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 239
    :cond_3
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lokhttp3/Request$Builder;->method:Ljava/lang/String;

    .line 240
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lokhttp3/Request$Builder;->body:Lokhttp3/RequestBody;

    .line 241
    move-object v3, v0

    move-object v0, v3

    return-object v0
.end method

.method public patch(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;
    .locals 5

    .prologue
    .line 227
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string v3, "PATCH"

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;
    .locals 5

    .prologue
    .line 211
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string v3, "POST"

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public put(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;
    .locals 5

    .prologue
    .line 223
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string v3, "PUT"

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public removeHeader(Ljava/lang/String;)Lokhttp3/Request$Builder;
    .locals 4

    .prologue
    .line 181
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lokhttp3/Request$Builder;->headers:Lokhttp3/Headers$Builder;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lokhttp3/Headers$Builder;->removeAll(Ljava/lang/String;)Lokhttp3/Headers$Builder;

    move-result-object v2

    .line 182
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public tag(Ljava/lang/Object;)Lokhttp3/Request$Builder;
    .locals 4

    .prologue
    .line 249
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lokhttp3/Request$Builder;->tag:Ljava/lang/Object;

    .line 250
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public url(Ljava/lang/String;)Lokhttp3/Request$Builder;
    .locals 10

    .prologue
    .line 132
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/NullPointerException;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    const-string v5, "url == null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 135
    :cond_0
    move-object v3, v1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v6, "ws:"

    const/4 v7, 0x0

    const/4 v8, 0x3

    invoke-virtual/range {v3 .. v8}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 136
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 141
    :cond_1
    :goto_0
    move-object v3, v1

    invoke-static {v3}, Lokhttp3/HttpUrl;->parse(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object v3

    move-object v2, v3

    .line 142
    move-object v3, v2

    if-nez v3, :cond_3

    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unexpected url: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 137
    :cond_2
    move-object v3, v1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v6, "wss:"

    const/4 v7, 0x0

    const/4 v8, 0x4

    invoke-virtual/range {v3 .. v8}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 138
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "https:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    goto :goto_0

    .line 143
    :cond_3
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Lokhttp3/Request$Builder;->url(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method public url(Ljava/net/URL;)Lokhttp3/Request$Builder;
    .locals 8

    .prologue
    .line 153
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/NullPointerException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const-string v5, "url == null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 154
    :cond_0
    move-object v3, v1

    invoke-static {v3}, Lokhttp3/HttpUrl;->get(Ljava/net/URL;)Lokhttp3/HttpUrl;

    move-result-object v3

    move-object v2, v3

    .line 155
    move-object v3, v2

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unexpected url: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 156
    :cond_1
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Lokhttp3/Request$Builder;->url(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method public url(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;
    .locals 6

    .prologue
    .line 120
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/NullPointerException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "url == null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 121
    :cond_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lokhttp3/Request$Builder;->url:Lokhttp3/HttpUrl;

    .line 122
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method
