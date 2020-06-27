.class public Lokhttp3/Response$Builder;
.super Ljava/lang/Object;
.source "Response.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field body:Lokhttp3/ResponseBody;

.field cacheResponse:Lokhttp3/Response;

.field code:I

.field handshake:Lokhttp3/Handshake;

.field headers:Lokhttp3/Headers$Builder;

.field message:Ljava/lang/String;

.field networkResponse:Lokhttp3/Response;

.field priorResponse:Lokhttp3/Response;

.field protocol:Lokhttp3/Protocol;

.field receivedResponseAtMillis:J

.field request:Lokhttp3/Request;

.field sentRequestAtMillis:J


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 302
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 291
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Lokhttp3/Response$Builder;->code:I

    .line 303
    move-object v1, v0

    new-instance v2, Lokhttp3/Headers$Builder;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lokhttp3/Headers$Builder;-><init>()V

    iput-object v2, v1, Lokhttp3/Response$Builder;->headers:Lokhttp3/Headers$Builder;

    .line 304
    return-void
.end method

.method constructor <init>(Lokhttp3/Response;)V
    .locals 5

    .prologue
    .line 306
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 291
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Lokhttp3/Response$Builder;->code:I

    .line 307
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Lokhttp3/Response;->request:Lokhttp3/Request;

    iput-object v3, v2, Lokhttp3/Response$Builder;->request:Lokhttp3/Request;

    .line 308
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Lokhttp3/Response;->protocol:Lokhttp3/Protocol;

    iput-object v3, v2, Lokhttp3/Response$Builder;->protocol:Lokhttp3/Protocol;

    .line 309
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Lokhttp3/Response;->code:I

    iput v3, v2, Lokhttp3/Response$Builder;->code:I

    .line 310
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Lokhttp3/Response;->message:Ljava/lang/String;

    iput-object v3, v2, Lokhttp3/Response$Builder;->message:Ljava/lang/String;

    .line 311
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Lokhttp3/Response;->handshake:Lokhttp3/Handshake;

    iput-object v3, v2, Lokhttp3/Response$Builder;->handshake:Lokhttp3/Handshake;

    .line 312
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Lokhttp3/Response;->headers:Lokhttp3/Headers;

    invoke-virtual {v3}, Lokhttp3/Headers;->newBuilder()Lokhttp3/Headers$Builder;

    move-result-object v3

    iput-object v3, v2, Lokhttp3/Response$Builder;->headers:Lokhttp3/Headers$Builder;

    .line 313
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Lokhttp3/Response;->body:Lokhttp3/ResponseBody;

    iput-object v3, v2, Lokhttp3/Response$Builder;->body:Lokhttp3/ResponseBody;

    .line 314
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Lokhttp3/Response;->networkResponse:Lokhttp3/Response;

    iput-object v3, v2, Lokhttp3/Response$Builder;->networkResponse:Lokhttp3/Response;

    .line 315
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Lokhttp3/Response;->cacheResponse:Lokhttp3/Response;

    iput-object v3, v2, Lokhttp3/Response$Builder;->cacheResponse:Lokhttp3/Response;

    .line 316
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Lokhttp3/Response;->priorResponse:Lokhttp3/Response;

    iput-object v3, v2, Lokhttp3/Response$Builder;->priorResponse:Lokhttp3/Response;

    .line 317
    move-object v2, v0

    move-object v3, v1

    iget-wide v3, v3, Lokhttp3/Response;->sentRequestAtMillis:J

    iput-wide v3, v2, Lokhttp3/Response$Builder;->sentRequestAtMillis:J

    .line 318
    move-object v2, v0

    move-object v3, v1

    iget-wide v3, v3, Lokhttp3/Response;->receivedResponseAtMillis:J

    iput-wide v3, v2, Lokhttp3/Response$Builder;->receivedResponseAtMillis:J

    .line 319
    return-void
.end method

.method private checkPriorResponse(Lokhttp3/Response;)V
    .locals 6

    .prologue
    .line 411
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    iget-object v2, v2, Lokhttp3/Response;->body:Lokhttp3/ResponseBody;

    if-eqz v2, :cond_0

    .line 412
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "priorResponse.body != null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 414
    :cond_0
    return-void
.end method

.method private checkSupportResponse(Ljava/lang/String;Lokhttp3/Response;)V
    .locals 8

    .prologue
    .line 393
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v2

    iget-object v3, v3, Lokhttp3/Response;->body:Lokhttp3/ResponseBody;

    if-eqz v3, :cond_0

    .line 394
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".body != null"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 395
    :cond_0
    move-object v3, v2

    iget-object v3, v3, Lokhttp3/Response;->networkResponse:Lokhttp3/Response;

    if-eqz v3, :cond_1

    .line 396
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".networkResponse != null"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 397
    :cond_1
    move-object v3, v2

    iget-object v3, v3, Lokhttp3/Response;->cacheResponse:Lokhttp3/Response;

    if-eqz v3, :cond_2

    .line 398
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".cacheResponse != null"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 399
    :cond_2
    move-object v3, v2

    iget-object v3, v3, Lokhttp3/Response;->priorResponse:Lokhttp3/Response;

    if-eqz v3, :cond_3

    .line 400
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".priorResponse != null"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 402
    :cond_3
    return-void
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Response$Builder;
    .locals 6

    .prologue
    .line 360
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Lokhttp3/Response$Builder;->headers:Lokhttp3/Headers$Builder;

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lokhttp3/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    move-result-object v3

    .line 361
    move-object v3, v0

    move-object v0, v3

    return-object v0
.end method

.method public body(Lokhttp3/ResponseBody;)Lokhttp3/Response$Builder;
    .locals 4

    .prologue
    .line 376
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lokhttp3/Response$Builder;->body:Lokhttp3/ResponseBody;

    .line 377
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public build()Lokhttp3/Response;
    .locals 6

    .prologue
    .line 427
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/Response$Builder;->request:Lokhttp3/Request;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const-string v3, "request == null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 428
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lokhttp3/Response$Builder;->protocol:Lokhttp3/Protocol;

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const-string v3, "protocol == null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 429
    :cond_1
    move-object v1, v0

    iget v1, v1, Lokhttp3/Response$Builder;->code:I

    if-gez v1, :cond_2

    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "code < 0: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    iget v4, v4, Lokhttp3/Response$Builder;->code:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 430
    :cond_2
    new-instance v1, Lokhttp3/Response;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    move-object v3, v0

    invoke-direct {v2, v3}, Lokhttp3/Response;-><init>(Lokhttp3/Response$Builder;)V

    move-object v0, v1

    return-object v0
.end method

.method public cacheResponse(Lokhttp3/Response;)Lokhttp3/Response$Builder;
    .locals 5

    .prologue
    .line 387
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v0

    const-string v3, "cacheResponse"

    move-object v4, v1

    invoke-direct {v2, v3, v4}, Lokhttp3/Response$Builder;->checkSupportResponse(Ljava/lang/String;Lokhttp3/Response;)V

    .line 388
    :cond_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lokhttp3/Response$Builder;->cacheResponse:Lokhttp3/Response;

    .line 389
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public code(I)Lokhttp3/Response$Builder;
    .locals 4

    .prologue
    .line 332
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lokhttp3/Response$Builder;->code:I

    .line 333
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public handshake(Lokhttp3/Handshake;)Lokhttp3/Response$Builder;
    .locals 4

    .prologue
    .line 342
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lokhttp3/Response$Builder;->handshake:Lokhttp3/Handshake;

    .line 343
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Response$Builder;
    .locals 6

    .prologue
    .line 351
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Lokhttp3/Response$Builder;->headers:Lokhttp3/Headers$Builder;

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lokhttp3/Headers$Builder;->set(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    move-result-object v3

    .line 352
    move-object v3, v0

    move-object v0, v3

    return-object v0
.end method

.method public headers(Lokhttp3/Headers;)Lokhttp3/Response$Builder;
    .locals 4

    .prologue
    .line 371
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Lokhttp3/Headers;->newBuilder()Lokhttp3/Headers$Builder;

    move-result-object v3

    iput-object v3, v2, Lokhttp3/Response$Builder;->headers:Lokhttp3/Headers$Builder;

    .line 372
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public message(Ljava/lang/String;)Lokhttp3/Response$Builder;
    .locals 4

    .prologue
    .line 337
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lokhttp3/Response$Builder;->message:Ljava/lang/String;

    .line 338
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public networkResponse(Lokhttp3/Response;)Lokhttp3/Response$Builder;
    .locals 5

    .prologue
    .line 381
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v0

    const-string v3, "networkResponse"

    move-object v4, v1

    invoke-direct {v2, v3, v4}, Lokhttp3/Response$Builder;->checkSupportResponse(Ljava/lang/String;Lokhttp3/Response;)V

    .line 382
    :cond_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lokhttp3/Response$Builder;->networkResponse:Lokhttp3/Response;

    .line 383
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public priorResponse(Lokhttp3/Response;)Lokhttp3/Response$Builder;
    .locals 4

    .prologue
    .line 405
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lokhttp3/Response$Builder;->checkPriorResponse(Lokhttp3/Response;)V

    .line 406
    :cond_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lokhttp3/Response$Builder;->priorResponse:Lokhttp3/Response;

    .line 407
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public protocol(Lokhttp3/Protocol;)Lokhttp3/Response$Builder;
    .locals 4

    .prologue
    .line 327
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lokhttp3/Response$Builder;->protocol:Lokhttp3/Protocol;

    .line 328
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public receivedResponseAtMillis(J)Lokhttp3/Response$Builder;
    .locals 6

    .prologue
    .line 422
    move-object v0, p0

    move-wide v1, p1

    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Lokhttp3/Response$Builder;->receivedResponseAtMillis:J

    .line 423
    move-object v3, v0

    move-object v0, v3

    return-object v0
.end method

.method public removeHeader(Ljava/lang/String;)Lokhttp3/Response$Builder;
    .locals 4

    .prologue
    .line 365
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lokhttp3/Response$Builder;->headers:Lokhttp3/Headers$Builder;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lokhttp3/Headers$Builder;->removeAll(Ljava/lang/String;)Lokhttp3/Headers$Builder;

    move-result-object v2

    .line 366
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public request(Lokhttp3/Request;)Lokhttp3/Response$Builder;
    .locals 4

    .prologue
    .line 322
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lokhttp3/Response$Builder;->request:Lokhttp3/Request;

    .line 323
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public sentRequestAtMillis(J)Lokhttp3/Response$Builder;
    .locals 6

    .prologue
    .line 417
    move-object v0, p0

    move-wide v1, p1

    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Lokhttp3/Response$Builder;->sentRequestAtMillis:J

    .line 418
    move-object v3, v0

    move-object v0, v3

    return-object v0
.end method
