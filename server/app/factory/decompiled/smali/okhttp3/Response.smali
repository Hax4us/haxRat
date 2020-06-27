.class public final Lokhttp3/Response;
.super Ljava/lang/Object;
.source "Response.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/Response$Builder;
    }
.end annotation


# instance fields
.field final body:Lokhttp3/ResponseBody;

.field private volatile cacheControl:Lokhttp3/CacheControl;

.field final cacheResponse:Lokhttp3/Response;

.field final code:I

.field final handshake:Lokhttp3/Handshake;

.field final headers:Lokhttp3/Headers;

.field final message:Ljava/lang/String;

.field final networkResponse:Lokhttp3/Response;

.field final priorResponse:Lokhttp3/Response;

.field final protocol:Lokhttp3/Protocol;

.field final receivedResponseAtMillis:J

.field final request:Lokhttp3/Request;

.field final sentRequestAtMillis:J


# direct methods
.method constructor <init>(Lokhttp3/Response$Builder;)V
    .locals 5

    .prologue
    .line 58
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 59
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Lokhttp3/Response$Builder;->request:Lokhttp3/Request;

    iput-object v3, v2, Lokhttp3/Response;->request:Lokhttp3/Request;

    .line 60
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Lokhttp3/Response$Builder;->protocol:Lokhttp3/Protocol;

    iput-object v3, v2, Lokhttp3/Response;->protocol:Lokhttp3/Protocol;

    .line 61
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Lokhttp3/Response$Builder;->code:I

    iput v3, v2, Lokhttp3/Response;->code:I

    .line 62
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Lokhttp3/Response$Builder;->message:Ljava/lang/String;

    iput-object v3, v2, Lokhttp3/Response;->message:Ljava/lang/String;

    .line 63
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Lokhttp3/Response$Builder;->handshake:Lokhttp3/Handshake;

    iput-object v3, v2, Lokhttp3/Response;->handshake:Lokhttp3/Handshake;

    .line 64
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Lokhttp3/Response$Builder;->headers:Lokhttp3/Headers$Builder;

    invoke-virtual {v3}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    move-result-object v3

    iput-object v3, v2, Lokhttp3/Response;->headers:Lokhttp3/Headers;

    .line 65
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Lokhttp3/Response$Builder;->body:Lokhttp3/ResponseBody;

    iput-object v3, v2, Lokhttp3/Response;->body:Lokhttp3/ResponseBody;

    .line 66
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Lokhttp3/Response$Builder;->networkResponse:Lokhttp3/Response;

    iput-object v3, v2, Lokhttp3/Response;->networkResponse:Lokhttp3/Response;

    .line 67
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Lokhttp3/Response$Builder;->cacheResponse:Lokhttp3/Response;

    iput-object v3, v2, Lokhttp3/Response;->cacheResponse:Lokhttp3/Response;

    .line 68
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Lokhttp3/Response$Builder;->priorResponse:Lokhttp3/Response;

    iput-object v3, v2, Lokhttp3/Response;->priorResponse:Lokhttp3/Response;

    .line 69
    move-object v2, v0

    move-object v3, v1

    iget-wide v3, v3, Lokhttp3/Response$Builder;->sentRequestAtMillis:J

    iput-wide v3, v2, Lokhttp3/Response;->sentRequestAtMillis:J

    .line 70
    move-object v2, v0

    move-object v3, v1

    iget-wide v3, v3, Lokhttp3/Response$Builder;->receivedResponseAtMillis:J

    iput-wide v3, v2, Lokhttp3/Response;->receivedResponseAtMillis:J

    .line 71
    return-void
.end method


# virtual methods
.method public body()Lokhttp3/ResponseBody;
    .locals 2

    .prologue
    .line 176
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/Response;->body:Lokhttp3/ResponseBody;

    move-object v0, v1

    return-object v0
.end method

.method public cacheControl()Lokhttp3/CacheControl;
    .locals 7

    .prologue
    .line 249
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lokhttp3/Response;->cacheControl:Lokhttp3/CacheControl;

    move-object v1, v2

    .line 250
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    :goto_0
    move-object v0, v2

    return-object v0

    :cond_0
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lokhttp3/Response;->headers:Lokhttp3/Headers;

    invoke-static {v3}, Lokhttp3/CacheControl;->parse(Lokhttp3/Headers;)Lokhttp3/CacheControl;

    move-result-object v3

    move-object v5, v2

    move-object v6, v3

    move-object v2, v6

    move-object v3, v5

    move-object v4, v6

    iput-object v4, v3, Lokhttp3/Response;->cacheControl:Lokhttp3/CacheControl;

    goto :goto_0
.end method

.method public cacheResponse()Lokhttp3/Response;
    .locals 2

    .prologue
    .line 213
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/Response;->cacheResponse:Lokhttp3/Response;

    move-object v0, v1

    return-object v0
.end method

.method public challenges()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lokhttp3/Challenge;",
            ">;"
        }
    .end annotation

    .prologue
    .line 234
    move-object v0, p0

    move-object v2, v0

    iget v2, v2, Lokhttp3/Response;->code:I

    const/16 v3, 0x191

    if-ne v2, v3, :cond_0

    .line 235
    const-string v2, "WWW-Authenticate"

    move-object v1, v2

    .line 241
    :goto_0
    move-object v2, v0

    invoke-virtual {v2}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v2

    move-object v3, v1

    invoke-static {v2, v3}, Lokhttp3/internal/http/HttpHeaders;->parseChallenges(Lokhttp3/Headers;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    move-object v0, v2

    :goto_1
    return-object v0

    .line 236
    :cond_0
    move-object v2, v0

    iget v2, v2, Lokhttp3/Response;->code:I

    const/16 v3, 0x197

    if-ne v2, v3, :cond_1

    .line 237
    const-string v2, "Proxy-Authenticate"

    move-object v1, v2

    goto :goto_0

    .line 239
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    move-object v0, v2

    goto :goto_1
.end method

.method public close()V
    .locals 2

    .prologue
    .line 273
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/Response;->body:Lokhttp3/ResponseBody;

    invoke-virtual {v1}, Lokhttp3/ResponseBody;->close()V

    .line 274
    return-void
.end method

.method public code()I
    .locals 2

    .prologue
    .line 97
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lokhttp3/Response;->code:I

    move v0, v1

    return v0
.end method

.method public handshake()Lokhttp3/Handshake;
    .locals 2

    .prologue
    .line 118
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/Response;->handshake:Lokhttp3/Handshake;

    move-object v0, v1

    return-object v0
.end method

.method public header(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 126
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lokhttp3/Response;->header(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public header(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 130
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    iget-object v4, v4, Lokhttp3/Response;->headers:Lokhttp3/Headers;

    move-object v5, v1

    invoke-virtual {v4, v5}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 131
    move-object v4, v3

    if-eqz v4, :cond_0

    move-object v4, v3

    :goto_0
    move-object v0, v4

    return-object v0

    :cond_0
    move-object v4, v2

    goto :goto_0
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
    .line 122
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lokhttp3/Response;->headers:Lokhttp3/Headers;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lokhttp3/Headers;->values(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public headers()Lokhttp3/Headers;
    .locals 2

    .prologue
    .line 135
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/Response;->headers:Lokhttp3/Headers;

    move-object v0, v1

    return-object v0
.end method

.method public isRedirect()Z
    .locals 2

    .prologue
    .line 185
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lokhttp3/Response;->code:I

    packed-switch v1, :pswitch_data_0

    .line 194
    :pswitch_0
    const/4 v1, 0x0

    move v0, v1

    :goto_0
    return v0

    .line 192
    :pswitch_1
    const/4 v1, 0x1

    move v0, v1

    goto :goto_0

    .line 185
    nop

    :pswitch_data_0
    .packed-switch 0x12c
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public isSuccessful()Z
    .locals 3

    .prologue
    .line 105
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lokhttp3/Response;->code:I

    const/16 v2, 0xc8

    if-lt v1, v2, :cond_0

    move-object v1, v0

    iget v1, v1, Lokhttp3/Response;->code:I

    const/16 v2, 0x12c

    if-ge v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public message()Ljava/lang/String;
    .locals 2

    .prologue
    .line 110
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/Response;->message:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public networkResponse()Lokhttp3/Response;
    .locals 2

    .prologue
    .line 204
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/Response;->networkResponse:Lokhttp3/Response;

    move-object v0, v1

    return-object v0
.end method

.method public newBuilder()Lokhttp3/Response$Builder;
    .locals 5

    .prologue
    .line 180
    move-object v0, p0

    new-instance v1, Lokhttp3/Response$Builder;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lokhttp3/Response$Builder;-><init>(Lokhttp3/Response;)V

    move-object v0, v1

    return-object v0
.end method

.method public peekBody(J)Lokhttp3/ResponseBody;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 150
    move-object v0, p0

    move-wide v1, p1

    move-object v6, v0

    iget-object v6, v6, Lokhttp3/Response;->body:Lokhttp3/ResponseBody;

    invoke-virtual {v6}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    move-result-object v6

    move-object v3, v6

    .line 151
    move-object v6, v3

    move-wide v7, v1

    invoke-interface {v6, v7, v8}, Lokio/BufferedSource;->request(J)Z

    move-result v6

    .line 152
    move-object v6, v3

    invoke-interface {v6}, Lokio/BufferedSource;->buffer()Lokio/Buffer;

    move-result-object v6

    invoke-virtual {v6}, Lokio/Buffer;->clone()Lokio/Buffer;

    move-result-object v6

    move-object v4, v6

    .line 156
    move-object v6, v4

    invoke-virtual {v6}, Lokio/Buffer;->size()J

    move-result-wide v6

    move-wide v8, v1

    cmp-long v6, v6, v8

    if-lez v6, :cond_0

    .line 157
    new-instance v6, Lokio/Buffer;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Lokio/Buffer;-><init>()V

    move-object v5, v6

    .line 158
    move-object v6, v5

    move-object v7, v4

    move-wide v8, v1

    invoke-virtual {v6, v7, v8, v9}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    .line 159
    move-object v6, v4

    invoke-virtual {v6}, Lokio/Buffer;->clear()V

    .line 164
    :goto_0
    move-object v6, v0

    iget-object v6, v6, Lokhttp3/Response;->body:Lokhttp3/ResponseBody;

    invoke-virtual {v6}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object v6

    move-object v7, v5

    invoke-virtual {v7}, Lokio/Buffer;->size()J

    move-result-wide v7

    move-object v9, v5

    invoke-static {v6, v7, v8, v9}, Lokhttp3/ResponseBody;->create(Lokhttp3/MediaType;JLokio/BufferedSource;)Lokhttp3/ResponseBody;

    move-result-object v6

    move-object v0, v6

    return-object v0

    .line 161
    :cond_0
    move-object v6, v4

    move-object v5, v6

    goto :goto_0
.end method

.method public priorResponse()Lokhttp3/Response;
    .locals 2

    .prologue
    .line 223
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/Response;->priorResponse:Lokhttp3/Response;

    move-object v0, v1

    return-object v0
.end method

.method public protocol()Lokhttp3/Protocol;
    .locals 2

    .prologue
    .line 92
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/Response;->protocol:Lokhttp3/Protocol;

    move-object v0, v1

    return-object v0
.end method

.method public receivedResponseAtMillis()J
    .locals 3

    .prologue
    .line 268
    move-object v0, p0

    move-object v1, v0

    iget-wide v1, v1, Lokhttp3/Response;->receivedResponseAtMillis:J

    move-wide v0, v1

    return-wide v0
.end method

.method public request()Lokhttp3/Request;
    .locals 2

    .prologue
    .line 85
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/Response;->request:Lokhttp3/Request;

    move-object v0, v1

    return-object v0
.end method

.method public sentRequestAtMillis()J
    .locals 3

    .prologue
    .line 259
    move-object v0, p0

    move-object v1, v0

    iget-wide v1, v1, Lokhttp3/Response;->sentRequestAtMillis:J

    move-wide v0, v1

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 277
    move-object v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Response{protocol="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lokhttp3/Response;->protocol:Lokhttp3/Protocol;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lokhttp3/Response;->code:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", message="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lokhttp3/Response;->message:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lokhttp3/Response;->request:Lokhttp3/Request;

    .line 284
    invoke-virtual {v2}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x7d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 277
    move-object v0, v1

    return-object v0
.end method
