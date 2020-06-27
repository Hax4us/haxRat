.class public final Lio/socket/yeast/Yeast;
.super Ljava/lang/Object;
.source "Yeast.java"


# static fields
.field private static alphabet:[C

.field private static length:I

.field private static map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Character;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static prev:Ljava/lang/String;

.field private static seed:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 11
    const-string v1, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz-_"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    sput-object v1, Lio/socket/yeast/Yeast;->alphabet:[C

    .line 13
    sget-object v1, Lio/socket/yeast/Yeast;->alphabet:[C

    array-length v1, v1

    sput v1, Lio/socket/yeast/Yeast;->length:I

    .line 14
    const/4 v1, 0x0

    sput v1, Lio/socket/yeast/Yeast;->seed:I

    .line 16
    new-instance v1, Ljava/util/HashMap;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    sget v3, Lio/socket/yeast/Yeast;->length:I

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    sput-object v1, Lio/socket/yeast/Yeast;->map:Ljava/util/Map;

    .line 18
    const/4 v1, 0x0

    move v0, v1

    :goto_0
    move v1, v0

    sget v2, Lio/socket/yeast/Yeast;->length:I

    if-ge v1, v2, :cond_0

    .line 19
    sget-object v1, Lio/socket/yeast/Yeast;->map:Ljava/util/Map;

    sget-object v2, Lio/socket/yeast/Yeast;->alphabet:[C

    move v3, v0

    aget-char v2, v2, v3

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    move v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 18
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 21
    :cond_0
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 23
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/String;)J
    .locals 11

    .prologue
    .line 37
    move-object v0, p0

    const-wide/16 v7, 0x0

    move-wide v1, v7

    .line 39
    move-object v7, v0

    invoke-virtual {v7}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    move-object v3, v7

    move-object v7, v3

    array-length v7, v7

    move v4, v7

    const/4 v7, 0x0

    move v5, v7

    :goto_0
    move v7, v5

    move v8, v4

    if-ge v7, v8, :cond_0

    move-object v7, v3

    move v8, v5

    aget-char v7, v7, v8

    move v6, v7

    .line 40
    move-wide v7, v1

    sget v9, Lio/socket/yeast/Yeast;->length:I

    int-to-long v9, v9

    mul-long/2addr v7, v9

    sget-object v9, Lio/socket/yeast/Yeast;->map:Ljava/util/Map;

    move v10, v6

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    int-to-long v9, v9

    add-long/2addr v7, v9

    move-wide v1, v7

    .line 39
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 43
    :cond_0
    move-wide v7, v1

    move-wide v0, v7

    return-wide v0
.end method

.method public static encode(J)Ljava/lang/String;
    .locals 13

    .prologue
    .line 26
    move-wide v0, p0

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v5

    .line 27
    move-wide v5, v0

    move-wide v3, v5

    .line 29
    :cond_0
    move-object v5, v2

    const/4 v6, 0x0

    sget-object v7, Lio/socket/yeast/Yeast;->alphabet:[C

    move-wide v8, v3

    sget v10, Lio/socket/yeast/Yeast;->length:I

    int-to-long v10, v10

    rem-long/2addr v8, v10

    long-to-int v8, v8

    aget-char v7, v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 30
    move-wide v5, v3

    sget v7, Lio/socket/yeast/Yeast;->length:I

    int-to-long v7, v7

    div-long/2addr v5, v7

    move-wide v3, v5

    .line 31
    move-wide v5, v3

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-gtz v5, :cond_0

    .line 33
    move-object v5, v2

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    return-object v0
.end method

.method public static yeast()Ljava/lang/String;
    .locals 6

    .prologue
    .line 47
    new-instance v1, Ljava/util/Date;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Lio/socket/yeast/Yeast;->encode(J)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 49
    move-object v1, v0

    sget-object v2, Lio/socket/yeast/Yeast;->prev:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 50
    const/4 v1, 0x0

    sput v1, Lio/socket/yeast/Yeast;->seed:I

    .line 51
    move-object v1, v0

    sput-object v1, Lio/socket/yeast/Yeast;->prev:Ljava/lang/String;

    .line 52
    move-object v1, v0

    move-object v0, v1

    .line 55
    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lio/socket/yeast/Yeast;->seed:I

    move v5, v2

    move v2, v5

    move v3, v5

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    sput v3, Lio/socket/yeast/Yeast;->seed:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Lio/socket/yeast/Yeast;->encode(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    goto :goto_0
.end method
