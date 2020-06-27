.class public final Lokhttp3/MultipartBody$Part;
.super Ljava/lang/Object;
.source "MultipartBody.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/MultipartBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Part"
.end annotation


# instance fields
.field final body:Lokhttp3/RequestBody;

.field final headers:Lokhttp3/Headers;


# direct methods
.method private constructor <init>(Lokhttp3/Headers;Lokhttp3/RequestBody;)V
    .locals 5

    .prologue
    .line 263
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 264
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lokhttp3/MultipartBody$Part;->headers:Lokhttp3/Headers;

    .line 265
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lokhttp3/MultipartBody$Part;->body:Lokhttp3/RequestBody;

    .line 266
    return-void
.end method

.method public static create(Lokhttp3/Headers;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Part;
    .locals 7

    .prologue
    .line 229
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-nez v2, :cond_0

    .line 230
    new-instance v2, Ljava/lang/NullPointerException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const-string v4, "body == null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 232
    :cond_0
    move-object v2, v0

    if-eqz v2, :cond_1

    move-object v2, v0

    const-string v3, "Content-Type"

    invoke-virtual {v2, v3}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 233
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const-string v4, "Unexpected header: Content-Type"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 235
    :cond_1
    move-object v2, v0

    if-eqz v2, :cond_2

    move-object v2, v0

    const-string v3, "Content-Length"

    invoke-virtual {v2, v3}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 236
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const-string v4, "Unexpected header: Content-Length"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 238
    :cond_2
    new-instance v2, Lokhttp3/MultipartBody$Part;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lokhttp3/MultipartBody$Part;-><init>(Lokhttp3/Headers;Lokhttp3/RequestBody;)V

    move-object v0, v2

    return-object v0
.end method

.method public static create(Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Part;
    .locals 3

    .prologue
    .line 225
    move-object v0, p0

    const/4 v1, 0x0

    move-object v2, v0

    invoke-static {v1, v2}, Lokhttp3/MultipartBody$Part;->create(Lokhttp3/Headers;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Part;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static createFormData(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Part;
    .locals 6

    .prologue
    .line 242
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v5, v1

    invoke-static {v4, v5}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lokhttp3/MultipartBody$Part;->createFormData(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Part;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public static createFormData(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Part;
    .locals 9

    .prologue
    .line 246
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    if-nez v4, :cond_0

    .line 247
    new-instance v4, Ljava/lang/NullPointerException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const-string v6, "name == null"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 249
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const-string v6, "form-data; name="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v3, v4

    .line 250
    move-object v4, v3

    move-object v5, v0

    invoke-static {v4, v5}, Lokhttp3/MultipartBody;->appendQuotedString(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 252
    move-object v4, v1

    if-eqz v4, :cond_1

    .line 253
    move-object v4, v3

    const-string v5, "; filename="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 254
    move-object v4, v3

    move-object v5, v1

    invoke-static {v4, v5}, Lokhttp3/MultipartBody;->appendQuotedString(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 257
    :cond_1
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    const-string v7, "Content-Disposition"

    aput-object v7, v5, v6

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x1

    move-object v7, v3

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4}, Lokhttp3/Headers;->of([Ljava/lang/String;)Lokhttp3/Headers;

    move-result-object v4

    move-object v5, v2

    invoke-static {v4, v5}, Lokhttp3/MultipartBody$Part;->create(Lokhttp3/Headers;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Part;

    move-result-object v4

    move-object v0, v4

    return-object v0
.end method


# virtual methods
.method public body()Lokhttp3/RequestBody;
    .locals 2

    .prologue
    .line 273
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/MultipartBody$Part;->body:Lokhttp3/RequestBody;

    move-object v0, v1

    return-object v0
.end method

.method public headers()Lokhttp3/Headers;
    .locals 2

    .prologue
    .line 269
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/MultipartBody$Part;->headers:Lokhttp3/Headers;

    move-object v0, v1

    return-object v0
.end method
