.class public Lio/socket/parseqs/ParseQS;
.super Ljava/lang/Object;
.source "ParseQS.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 11
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/String;)Ljava/util/Map;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 24
    move-object v0, p0

    new-instance v8, Ljava/util/HashMap;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    move-object v1, v8

    .line 25
    move-object v8, v0

    const-string v9, "&"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    move-object v2, v8

    .line 26
    move-object v8, v2

    move-object v3, v8

    move-object v8, v3

    array-length v8, v8

    move v4, v8

    const/4 v8, 0x0

    move v5, v8

    :goto_0
    move v8, v5

    move v9, v4

    if-ge v8, v9, :cond_1

    move-object v8, v3

    move v9, v5

    aget-object v8, v8, v9

    move-object v6, v8

    .line 27
    move-object v8, v6

    const-string v9, "="

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    move-object v7, v8

    .line 28
    move-object v8, v1

    move-object v9, v7

    const/4 v10, 0x0

    aget-object v9, v9, v10

    invoke-static {v9}, Lio/socket/global/Global;->decodeURIComponent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v10, v7

    array-length v10, v10

    const/4 v11, 0x1

    if-le v10, v11, :cond_0

    move-object v10, v7

    const/4 v11, 0x1

    aget-object v10, v10, v11

    .line 29
    invoke-static {v10}, Lio/socket/global/Global;->decodeURIComponent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 28
    :goto_1
    invoke-interface {v8, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 26
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 29
    :cond_0
    const-string v10, ""

    goto :goto_1

    .line 31
    :cond_1
    move-object v8, v1

    move-object v0, v8

    return-object v0
.end method

.method public static encode(Ljava/util/Map;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 14
    move-object v0, p0

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, v4

    .line 15
    move-object v4, v0

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v4

    :goto_0
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    move-object v3, v4

    .line 16
    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_0

    move-object v4, v1

    const-string v5, "&"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 17
    :cond_0
    move-object v4, v1

    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lio/socket/global/Global;->encodeURIComponent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v3

    .line 18
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lio/socket/global/Global;->encodeURIComponent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    return-object v0
.end method
