.class public final Lokhttp3/MultipartBody$Builder;
.super Ljava/lang/Object;
.source "MultipartBody.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/MultipartBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final boundary:Lokio/ByteString;

.field private final parts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokhttp3/MultipartBody$Part;",
            ">;"
        }
    .end annotation
.end field

.field private type:Lokhttp3/MediaType;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 283
    move-object v0, p0

    move-object v1, v0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lokhttp3/MultipartBody$Builder;-><init>(Ljava/lang/String;)V

    .line 284
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 286
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 279
    move-object v2, v0

    sget-object v3, Lokhttp3/MultipartBody;->MIXED:Lokhttp3/MediaType;

    iput-object v3, v2, Lokhttp3/MultipartBody$Builder;->type:Lokhttp3/MediaType;

    .line 280
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lokhttp3/MultipartBody$Builder;->parts:Ljava/util/List;

    .line 287
    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v3

    iput-object v3, v2, Lokhttp3/MultipartBody$Builder;->boundary:Lokio/ByteString;

    .line 288
    return-void
.end method


# virtual methods
.method public addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;
    .locals 6

    .prologue
    .line 317
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-static {v4, v5}, Lokhttp3/MultipartBody$Part;->createFormData(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Part;

    move-result-object v4

    invoke-virtual {v3, v4}, Lokhttp3/MultipartBody$Builder;->addPart(Lokhttp3/MultipartBody$Part;)Lokhttp3/MultipartBody$Builder;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method public addFormDataPart(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Builder;
    .locals 8

    .prologue
    .line 322
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-static {v5, v6, v7}, Lokhttp3/MultipartBody$Part;->createFormData(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Part;

    move-result-object v5

    invoke-virtual {v4, v5}, Lokhttp3/MultipartBody$Builder;->addPart(Lokhttp3/MultipartBody$Part;)Lokhttp3/MultipartBody$Builder;

    move-result-object v4

    move-object v0, v4

    return-object v0
.end method

.method public addPart(Lokhttp3/Headers;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Builder;
    .locals 6

    .prologue
    .line 312
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-static {v4, v5}, Lokhttp3/MultipartBody$Part;->create(Lokhttp3/Headers;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Part;

    move-result-object v4

    invoke-virtual {v3, v4}, Lokhttp3/MultipartBody$Builder;->addPart(Lokhttp3/MultipartBody$Part;)Lokhttp3/MultipartBody$Builder;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method public addPart(Lokhttp3/MultipartBody$Part;)Lokhttp3/MultipartBody$Builder;
    .locals 6

    .prologue
    .line 327
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/NullPointerException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "part == null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 328
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lokhttp3/MultipartBody$Builder;->parts:Ljava/util/List;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 329
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public addPart(Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Builder;
    .locals 4

    .prologue
    .line 307
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Lokhttp3/MultipartBody$Part;->create(Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Part;

    move-result-object v3

    invoke-virtual {v2, v3}, Lokhttp3/MultipartBody$Builder;->addPart(Lokhttp3/MultipartBody$Part;)Lokhttp3/MultipartBody$Builder;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public build()Lokhttp3/MultipartBody;
    .locals 7

    .prologue
    .line 334
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/MultipartBody$Builder;->parts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 335
    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    const-string v3, "Multipart body must have at least one part."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 337
    :cond_0
    new-instance v1, Lokhttp3/MultipartBody;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    move-object v3, v0

    iget-object v3, v3, Lokhttp3/MultipartBody$Builder;->boundary:Lokio/ByteString;

    move-object v4, v0

    iget-object v4, v4, Lokhttp3/MultipartBody$Builder;->type:Lokhttp3/MediaType;

    move-object v5, v0

    iget-object v5, v5, Lokhttp3/MultipartBody$Builder;->parts:Ljava/util/List;

    invoke-direct {v2, v3, v4, v5}, Lokhttp3/MultipartBody;-><init>(Lokio/ByteString;Lokhttp3/MediaType;Ljava/util/List;)V

    move-object v0, v1

    return-object v0
.end method

.method public setType(Lokhttp3/MediaType;)Lokhttp3/MultipartBody$Builder;
    .locals 7

    .prologue
    .line 295
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-nez v2, :cond_0

    .line 296
    new-instance v2, Ljava/lang/NullPointerException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const-string v4, "type == null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 298
    :cond_0
    move-object v2, v1

    invoke-virtual {v2}, Lokhttp3/MediaType;->type()Ljava/lang/String;

    move-result-object v2

    const-string v3, "multipart"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 299
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "multipart != "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 301
    :cond_1
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lokhttp3/MultipartBody$Builder;->type:Lokhttp3/MediaType;

    .line 302
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method
