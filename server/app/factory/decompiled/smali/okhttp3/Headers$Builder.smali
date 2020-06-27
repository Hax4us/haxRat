.class public final Lokhttp3/Headers$Builder;
.super Ljava/lang/Object;
.source "Headers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/Headers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field final namesAndValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    .line 239
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 240
    move-object v1, v0

    new-instance v2, Ljava/util/ArrayList;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const/16 v4, 0x14

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, v1, Lokhttp3/Headers$Builder;->namesAndValues:Ljava/util/List;

    return-void
.end method

.method private checkNameAndValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 14

    .prologue
    .line 307
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object v6, v1

    if-nez v6, :cond_0

    new-instance v6, Ljava/lang/NullPointerException;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    const-string v8, "name == null"

    invoke-direct {v7, v8}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 308
    :cond_0
    move-object v6, v1

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    new-instance v6, Ljava/lang/IllegalArgumentException;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    const-string v8, "name is empty"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 309
    :cond_1
    const/4 v6, 0x0

    move v3, v6

    move-object v6, v1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    move v4, v6

    :goto_0
    move v6, v3

    move v7, v4

    if-ge v6, v7, :cond_4

    .line 310
    move-object v6, v1

    move v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    move v5, v6

    .line 311
    move v6, v5

    const/16 v7, 0x1f

    if-le v6, v7, :cond_2

    move v6, v5

    const/16 v7, 0x7f

    if-lt v6, v7, :cond_3

    .line 312
    :cond_2
    new-instance v6, Ljava/lang/IllegalArgumentException;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    const-string v8, "Unexpected char %#04x at %d in header name: %s"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x0

    move v12, v5

    .line 313
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x1

    move v12, v3

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x2

    move-object v12, v1

    aput-object v12, v10, v11

    .line 312
    invoke-static {v8, v9}, Lokhttp3/internal/Util;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 309
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 316
    :cond_4
    move-object v6, v2

    if-nez v6, :cond_5

    new-instance v6, Ljava/lang/NullPointerException;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    const-string v8, "value == null"

    invoke-direct {v7, v8}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 317
    :cond_5
    const/4 v6, 0x0

    move v3, v6

    move-object v6, v2

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    move v4, v6

    :goto_1
    move v6, v3

    move v7, v4

    if-ge v6, v7, :cond_9

    .line 318
    move-object v6, v2

    move v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    move v5, v6

    .line 319
    move v6, v5

    const/16 v7, 0x1f

    if-gt v6, v7, :cond_6

    move v6, v5

    const/16 v7, 0x9

    if-ne v6, v7, :cond_7

    :cond_6
    move v6, v5

    const/16 v7, 0x7f

    if-lt v6, v7, :cond_8

    .line 320
    :cond_7
    new-instance v6, Ljava/lang/IllegalArgumentException;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    const-string v8, "Unexpected char %#04x at %d in %s value: %s"

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x0

    move v12, v5

    .line 321
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x1

    move v12, v3

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x2

    move-object v12, v1

    aput-object v12, v10, v11

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x3

    move-object v12, v2

    aput-object v12, v10, v11

    .line 320
    invoke-static {v8, v9}, Lokhttp3/internal/Util;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 317
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 324
    :cond_9
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;)Lokhttp3/Headers$Builder;
    .locals 9

    .prologue
    .line 261
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    move v2, v3

    .line 262
    move v3, v2

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 263
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected header: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 265
    :cond_0
    move-object v3, v0

    move-object v4, v1

    const/4 v5, 0x0

    move v6, v2

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    move-object v5, v1

    move v6, v2

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lokhttp3/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method public add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;
    .locals 6

    .prologue
    .line 270
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lokhttp3/Headers$Builder;->checkNameAndValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lokhttp3/Headers$Builder;->addLenient(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method addLenient(Ljava/lang/String;)Lokhttp3/Headers$Builder;
    .locals 8

    .prologue
    .line 247
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    const-string v4, ":"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    move v2, v3

    .line 248
    move v3, v2

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 249
    move-object v3, v0

    move-object v4, v1

    const/4 v5, 0x0

    move v6, v2

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    move-object v5, v1

    move v6, v2

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lokhttp3/Headers$Builder;->addLenient(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    move-result-object v3

    move-object v0, v3

    .line 255
    :goto_0
    return-object v0

    .line 250
    :cond_0
    move-object v3, v1

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 253
    move-object v3, v0

    const-string v4, ""

    move-object v5, v1

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lokhttp3/Headers$Builder;->addLenient(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 255
    :cond_1
    move-object v3, v0

    const-string v4, ""

    move-object v5, v1

    invoke-virtual {v3, v4, v5}, Lokhttp3/Headers$Builder;->addLenient(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    move-result-object v3

    move-object v0, v3

    goto :goto_0
.end method

.method addLenient(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;
    .locals 5

    .prologue
    .line 279
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Lokhttp3/Headers$Builder;->namesAndValues:Ljava/util/List;

    move-object v4, v1

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 280
    move-object v3, v0

    iget-object v3, v3, Lokhttp3/Headers$Builder;->namesAndValues:Ljava/util/List;

    move-object v4, v2

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 281
    move-object v3, v0

    move-object v0, v3

    return-object v0
.end method

.method public build()Lokhttp3/Headers;
    .locals 5

    .prologue
    .line 337
    move-object v0, p0

    new-instance v1, Lokhttp3/Headers;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lokhttp3/Headers;-><init>(Lokhttp3/Headers$Builder;)V

    move-object v0, v1

    return-object v0
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 328
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Lokhttp3/Headers$Builder;->namesAndValues:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x2

    add-int/lit8 v3, v3, -0x2

    move v2, v3

    :goto_0
    move v3, v2

    if-ltz v3, :cond_1

    .line 329
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lokhttp3/Headers$Builder;->namesAndValues:Ljava/util/List;

    move v5, v2

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 330
    move-object v3, v0

    iget-object v3, v3, Lokhttp3/Headers$Builder;->namesAndValues:Ljava/util/List;

    move v4, v2

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object v0, v3

    .line 333
    :goto_1
    return-object v0

    .line 328
    :cond_0
    add-int/lit8 v2, v2, -0x2

    goto :goto_0

    .line 333
    :cond_1
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_1
.end method

.method public removeAll(Ljava/lang/String;)Lokhttp3/Headers$Builder;
    .locals 6

    .prologue
    .line 285
    move-object v0, p0

    move-object v1, p1

    const/4 v3, 0x0

    move v2, v3

    :goto_0
    move v3, v2

    move-object v4, v0

    iget-object v4, v4, Lokhttp3/Headers$Builder;->namesAndValues:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 286
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lokhttp3/Headers$Builder;->namesAndValues:Ljava/util/List;

    move v5, v2

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 287
    move-object v3, v0

    iget-object v3, v3, Lokhttp3/Headers$Builder;->namesAndValues:Ljava/util/List;

    move v4, v2

    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v3

    .line 288
    move-object v3, v0

    iget-object v3, v3, Lokhttp3/Headers$Builder;->namesAndValues:Ljava/util/List;

    move v4, v2

    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v3

    .line 289
    add-int/lit8 v2, v2, -0x2

    .line 285
    :cond_0
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 292
    :cond_1
    move-object v3, v0

    move-object v0, v3

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;
    .locals 6

    .prologue
    .line 300
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lokhttp3/Headers$Builder;->checkNameAndValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lokhttp3/Headers$Builder;->removeAll(Ljava/lang/String;)Lokhttp3/Headers$Builder;

    move-result-object v3

    .line 302
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lokhttp3/Headers$Builder;->addLenient(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    move-result-object v3

    .line 303
    move-object v3, v0

    move-object v0, v3

    return-object v0
.end method
