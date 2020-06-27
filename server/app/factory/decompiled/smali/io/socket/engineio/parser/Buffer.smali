.class Lio/socket/engineio/parser/Buffer;
.super Ljava/lang/Object;
.source "Parser.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 292
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static concat([[B)[B
    .locals 8

    .prologue
    .line 295
    move-object v0, p0

    const/4 v6, 0x0

    move v1, v6

    .line 296
    move-object v6, v0

    move-object v2, v6

    move-object v6, v2

    array-length v6, v6

    move v3, v6

    const/4 v6, 0x0

    move v4, v6

    :goto_0
    move v6, v4

    move v7, v3

    if-ge v6, v7, :cond_0

    move-object v6, v2

    move v7, v4

    aget-object v6, v6, v7

    move-object v5, v6

    .line 297
    move v6, v1

    move-object v7, v5

    array-length v7, v7

    add-int/2addr v6, v7

    move v1, v6

    .line 296
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 299
    :cond_0
    move-object v6, v0

    move v7, v1

    invoke-static {v6, v7}, Lio/socket/engineio/parser/Buffer;->concat([[BI)[B

    move-result-object v6

    move-object v0, v6

    return-object v0
.end method

.method public static concat([[BI)[B
    .locals 9

    .prologue
    .line 303
    move-object v0, p0

    move v1, p1

    move-object v7, v0

    array-length v7, v7

    if-nez v7, :cond_0

    .line 304
    const/4 v7, 0x0

    new-array v7, v7, [B

    move-object v0, v7

    .line 314
    :goto_0
    return-object v0

    .line 305
    :cond_0
    move-object v7, v0

    array-length v7, v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    .line 306
    move-object v7, v0

    const/4 v8, 0x0

    aget-object v7, v7, v8

    move-object v0, v7

    goto :goto_0

    .line 309
    :cond_1
    move v7, v1

    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    move-object v2, v7

    .line 310
    move-object v7, v0

    move-object v3, v7

    move-object v7, v3

    array-length v7, v7

    move v4, v7

    const/4 v7, 0x0

    move v5, v7

    :goto_1
    move v7, v5

    move v8, v4

    if-ge v7, v8, :cond_2

    move-object v7, v3

    move v8, v5

    aget-object v7, v7, v8

    move-object v6, v7

    .line 311
    move-object v7, v2

    move-object v8, v6

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 310
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 314
    :cond_2
    move-object v7, v2

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    move-object v0, v7

    goto :goto_0
.end method
