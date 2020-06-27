.class public final Lio/socket/utf8/UTF8;
.super Ljava/lang/Object;
.source "UTF8.java"


# static fields
.field private static final INVALID_CONTINUATION_BYTE:Ljava/lang/String; = "Invalid continuation byte"

.field private static byteArray:[I

.field private static byteCount:I

.field private static byteIndex:I


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 18
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkScalarValue(I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/socket/utf8/UTF8Exception;
        }
    .end annotation

    .prologue
    .line 162
    move v0, p0

    move v1, v0

    const v2, 0xd800

    if-lt v1, v2, :cond_0

    move v1, v0

    const v2, 0xdfff

    if-gt v1, v2, :cond_0

    .line 163
    new-instance v1, Lio/socket/utf8/UTF8Exception;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Lone surrogate U+"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move v4, v0

    .line 164
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not a scalar value"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lio/socket/utf8/UTF8Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 168
    :cond_0
    return-void
.end method

.method private static createByte(II)[C
    .locals 4

    .prologue
    .line 78
    move v0, p0

    move v1, p1

    move v2, v0

    move v3, v1

    shr-int/2addr v2, v3

    const/16 v3, 0x3f

    and-int/lit8 v2, v2, 0x3f

    const/16 v3, 0x80

    or-int/lit16 v2, v2, 0x80

    invoke-static {v2}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public static decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/socket/utf8/UTF8Exception;
        }
    .end annotation

    .prologue
    .line 34
    move-object v0, p0

    move-object v3, v0

    invoke-static {v3}, Lio/socket/utf8/UTF8;->ucs2decode(Ljava/lang/String;)[I

    move-result-object v3

    sput-object v3, Lio/socket/utf8/UTF8;->byteArray:[I

    .line 35
    sget-object v3, Lio/socket/utf8/UTF8;->byteArray:[I

    array-length v3, v3

    sput v3, Lio/socket/utf8/UTF8;->byteCount:I

    .line 36
    const/4 v3, 0x0

    sput v3, Lio/socket/utf8/UTF8;->byteIndex:I

    .line 37
    new-instance v3, Ljava/util/ArrayList;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v3

    .line 39
    :goto_0
    invoke-static {}, Lio/socket/utf8/UTF8;->decodeSymbol()I

    move-result v3

    move v5, v3

    move v3, v5

    move v4, v5

    move v2, v4

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 40
    move-object v3, v1

    move v4, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_0

    .line 42
    :cond_0
    move-object v3, v1

    invoke-static {v3}, Lio/socket/utf8/UTF8;->listToArray(Ljava/util/List;)[I

    move-result-object v3

    invoke-static {v3}, Lio/socket/utf8/UTF8;->ucs2encode([I)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method private static decodeSymbol()I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/socket/utf8/UTF8Exception;
        }
    .end annotation

    .prologue
    .line 88
    sget v5, Lio/socket/utf8/UTF8;->byteIndex:I

    sget v6, Lio/socket/utf8/UTF8;->byteCount:I

    if-le v5, v6, :cond_0

    .line 89
    new-instance v5, Lio/socket/utf8/UTF8Exception;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const-string v7, "Invalid byte index"

    invoke-direct {v6, v7}, Lio/socket/utf8/UTF8Exception;-><init>(Ljava/lang/String;)V

    throw v5

    .line 92
    :cond_0
    sget v5, Lio/socket/utf8/UTF8;->byteIndex:I

    sget v6, Lio/socket/utf8/UTF8;->byteCount:I

    if-ne v5, v6, :cond_1

    .line 93
    const/4 v5, -0x1

    move v0, v5

    .line 131
    :goto_0
    return v0

    .line 96
    :cond_1
    sget-object v5, Lio/socket/utf8/UTF8;->byteArray:[I

    sget v6, Lio/socket/utf8/UTF8;->byteIndex:I

    aget v5, v5, v6

    const/16 v6, 0xff

    and-int/lit16 v5, v5, 0xff

    move v0, v5

    .line 97
    sget v5, Lio/socket/utf8/UTF8;->byteIndex:I

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    sput v5, Lio/socket/utf8/UTF8;->byteIndex:I

    .line 99
    move v5, v0

    const/16 v6, 0x80

    and-int/lit16 v5, v5, 0x80

    if-nez v5, :cond_2

    .line 100
    move v5, v0

    move v0, v5

    goto :goto_0

    .line 103
    :cond_2
    move v5, v0

    const/16 v6, 0xe0

    and-int/lit16 v5, v5, 0xe0

    const/16 v6, 0xc0

    if-ne v5, v6, :cond_4

    .line 104
    invoke-static {}, Lio/socket/utf8/UTF8;->readContinuationByte()I

    move-result v5

    move v1, v5

    .line 105
    move v5, v0

    const/16 v6, 0x1f

    and-int/lit8 v5, v5, 0x1f

    const/4 v6, 0x6

    shl-int/lit8 v5, v5, 0x6

    move v6, v1

    or-int/2addr v5, v6

    move v4, v5

    .line 106
    move v5, v4

    const/16 v6, 0x80

    if-lt v5, v6, :cond_3

    .line 107
    move v5, v4

    move v0, v5

    goto :goto_0

    .line 109
    :cond_3
    new-instance v5, Lio/socket/utf8/UTF8Exception;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const-string v7, "Invalid continuation byte"

    invoke-direct {v6, v7}, Lio/socket/utf8/UTF8Exception;-><init>(Ljava/lang/String;)V

    throw v5

    .line 113
    :cond_4
    move v5, v0

    const/16 v6, 0xf0

    and-int/lit16 v5, v5, 0xf0

    const/16 v6, 0xe0

    if-ne v5, v6, :cond_6

    .line 114
    invoke-static {}, Lio/socket/utf8/UTF8;->readContinuationByte()I

    move-result v5

    move v1, v5

    .line 115
    invoke-static {}, Lio/socket/utf8/UTF8;->readContinuationByte()I

    move-result v5

    move v2, v5

    .line 116
    move v5, v0

    const/16 v6, 0xf

    and-int/lit8 v5, v5, 0xf

    const/16 v6, 0xc

    shl-int/lit8 v5, v5, 0xc

    move v6, v1

    const/4 v7, 0x6

    shl-int/lit8 v6, v6, 0x6

    or-int/2addr v5, v6

    move v6, v2

    or-int/2addr v5, v6

    move v4, v5

    .line 117
    move v5, v4

    const/16 v6, 0x800

    if-lt v5, v6, :cond_5

    .line 118
    move v5, v4

    invoke-static {v5}, Lio/socket/utf8/UTF8;->checkScalarValue(I)V

    .line 119
    move v5, v4

    move v0, v5

    goto :goto_0

    .line 121
    :cond_5
    new-instance v5, Lio/socket/utf8/UTF8Exception;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const-string v7, "Invalid continuation byte"

    invoke-direct {v6, v7}, Lio/socket/utf8/UTF8Exception;-><init>(Ljava/lang/String;)V

    throw v5

    .line 125
    :cond_6
    move v5, v0

    const/16 v6, 0xf8

    and-int/lit16 v5, v5, 0xf8

    const/16 v6, 0xf0

    if-ne v5, v6, :cond_7

    .line 126
    invoke-static {}, Lio/socket/utf8/UTF8;->readContinuationByte()I

    move-result v5

    move v1, v5

    .line 127
    invoke-static {}, Lio/socket/utf8/UTF8;->readContinuationByte()I

    move-result v5

    move v2, v5

    .line 128
    invoke-static {}, Lio/socket/utf8/UTF8;->readContinuationByte()I

    move-result v5

    move v3, v5

    .line 129
    move v5, v0

    const/16 v6, 0xf

    and-int/lit8 v5, v5, 0xf

    const/16 v6, 0x12

    shl-int/lit8 v5, v5, 0x12

    move v6, v1

    const/16 v7, 0xc

    shl-int/lit8 v6, v6, 0xc

    or-int/2addr v5, v6

    move v6, v2

    const/4 v7, 0x6

    shl-int/lit8 v6, v6, 0x6

    or-int/2addr v5, v6

    move v6, v3

    or-int/2addr v5, v6

    move v4, v5

    .line 130
    move v5, v4

    const/high16 v6, 0x10000

    if-lt v5, v6, :cond_7

    move v5, v4

    const v6, 0x10ffff

    if-gt v5, v6, :cond_7

    .line 131
    move v5, v4

    move v0, v5

    goto/16 :goto_0

    .line 135
    :cond_7
    new-instance v5, Lio/socket/utf8/UTF8Exception;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const-string v7, "Invalid continuation byte"

    invoke-direct {v6, v7}, Lio/socket/utf8/UTF8Exception;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public static encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/socket/utf8/UTF8Exception;
        }
    .end annotation

    .prologue
    .line 21
    move-object v0, p0

    move-object v6, v0

    invoke-static {v6}, Lio/socket/utf8/UTF8;->ucs2decode(Ljava/lang/String;)[I

    move-result-object v6

    move-object v1, v6

    .line 22
    move-object v6, v1

    array-length v6, v6

    move v2, v6

    .line 23
    const/4 v6, -0x1

    move v3, v6

    .line 25
    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v5, v6

    .line 26
    :goto_0
    add-int/lit8 v3, v3, 0x1

    move v6, v3

    move v7, v2

    if-ge v6, v7, :cond_0

    .line 27
    move-object v6, v1

    move v7, v3

    aget v6, v6, v7

    move v4, v6

    .line 28
    move-object v6, v5

    move v7, v4

    invoke-static {v7}, Lio/socket/utf8/UTF8;->encodeCodePoint(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    goto :goto_0

    .line 30
    :cond_0
    move-object v6, v5

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    return-object v0
.end method

.method private static encodeCodePoint(I)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/socket/utf8/UTF8Exception;
        }
    .end annotation

    .prologue
    .line 58
    move v0, p0

    new-instance v2, Ljava/lang/StringBuilder;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, v2

    .line 59
    move v2, v0

    const/16 v3, -0x80

    and-int/lit8 v2, v2, -0x80

    if-nez v2, :cond_0

    .line 60
    move-object v2, v1

    move v3, v0

    invoke-static {v3}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 74
    :goto_0
    return-object v0

    .line 62
    :cond_0
    move v2, v0

    const/16 v3, -0x800

    and-int/lit16 v2, v2, -0x800

    if-nez v2, :cond_2

    .line 63
    move-object v2, v1

    move v3, v0

    const/4 v4, 0x6

    shr-int/lit8 v3, v3, 0x6

    const/16 v4, 0x1f

    and-int/lit8 v3, v3, 0x1f

    const/16 v4, 0xc0

    or-int/lit16 v3, v3, 0xc0

    invoke-static {v3}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 73
    :cond_1
    :goto_1
    move-object v2, v1

    move v3, v0

    const/16 v4, 0x3f

    and-int/lit8 v3, v3, 0x3f

    const/16 v4, 0x80

    or-int/lit16 v3, v3, 0x80

    invoke-static {v3}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 74
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 64
    :cond_2
    move v2, v0

    const/high16 v3, -0x10000

    and-int/2addr v2, v3

    if-nez v2, :cond_3

    .line 65
    move v2, v0

    invoke-static {v2}, Lio/socket/utf8/UTF8;->checkScalarValue(I)V

    .line 66
    move-object v2, v1

    move v3, v0

    const/16 v4, 0xc

    shr-int/lit8 v3, v3, 0xc

    const/16 v4, 0xf

    and-int/lit8 v3, v3, 0xf

    const/16 v4, 0xe0

    or-int/lit16 v3, v3, 0xe0

    invoke-static {v3}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 67
    move-object v2, v1

    move v3, v0

    const/4 v4, 0x6

    invoke-static {v3, v4}, Lio/socket/utf8/UTF8;->createByte(II)[C

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    move-result-object v2

    goto :goto_1

    .line 68
    :cond_3
    move v2, v0

    const/high16 v3, -0x200000

    and-int/2addr v2, v3

    if-nez v2, :cond_1

    .line 69
    move-object v2, v1

    move v3, v0

    const/16 v4, 0x12

    shr-int/lit8 v3, v3, 0x12

    const/4 v4, 0x7

    and-int/lit8 v3, v3, 0x7

    const/16 v4, 0xf0

    or-int/lit16 v3, v3, 0xf0

    invoke-static {v3}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 70
    move-object v2, v1

    move v3, v0

    const/16 v4, 0xc

    invoke-static {v3, v4}, Lio/socket/utf8/UTF8;->createByte(II)[C

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 71
    move-object v2, v1

    move v3, v0

    const/4 v4, 0x6

    invoke-static {v3, v4}, Lio/socket/utf8/UTF8;->createByte(II)[C

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    move-result-object v2

    goto :goto_1
.end method

.method private static listToArray(Ljava/util/List;)[I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    .prologue
    .line 171
    move-object v0, p0

    move-object v4, v0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    move v1, v4

    .line 172
    move v4, v1

    new-array v4, v4, [I

    move-object v2, v4

    .line 173
    const/4 v4, 0x0

    move v3, v4

    :goto_0
    move v4, v3

    move v5, v1

    if-ge v4, v5, :cond_0

    .line 174
    move-object v4, v2

    move v5, v3

    move-object v6, v0

    move v7, v3

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v4, v5

    .line 173
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 176
    :cond_0
    move-object v4, v2

    move-object v0, v4

    return-object v0
.end method

.method private static readContinuationByte()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/socket/utf8/UTF8Exception;
        }
    .end annotation

    .prologue
    .line 139
    sget v1, Lio/socket/utf8/UTF8;->byteIndex:I

    sget v2, Lio/socket/utf8/UTF8;->byteCount:I

    if-lt v1, v2, :cond_0

    .line 140
    new-instance v1, Lio/socket/utf8/UTF8Exception;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "Invalid byte index"

    invoke-direct {v2, v3}, Lio/socket/utf8/UTF8Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 143
    :cond_0
    sget-object v1, Lio/socket/utf8/UTF8;->byteArray:[I

    sget v2, Lio/socket/utf8/UTF8;->byteIndex:I

    aget v1, v1, v2

    const/16 v2, 0xff

    and-int/lit16 v1, v1, 0xff

    move v0, v1

    .line 144
    sget v1, Lio/socket/utf8/UTF8;->byteIndex:I

    const/4 v2, 0x1

    add-int/lit8 v1, v1, 0x1

    sput v1, Lio/socket/utf8/UTF8;->byteIndex:I

    .line 146
    move v1, v0

    const/16 v2, 0xc0

    and-int/lit16 v1, v1, 0xc0

    const/16 v2, 0x80

    if-ne v1, v2, :cond_1

    .line 147
    move v1, v0

    const/16 v2, 0x3f

    and-int/lit8 v1, v1, 0x3f

    move v0, v1

    return v0

    .line 150
    :cond_1
    new-instance v1, Lio/socket/utf8/UTF8Exception;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "Invalid continuation byte"

    invoke-direct {v2, v3}, Lio/socket/utf8/UTF8Exception;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static ucs2decode(Ljava/lang/String;)[I
    .locals 9

    .prologue
    .line 46
    move-object v0, p0

    move-object v6, v0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    move v1, v6

    .line 47
    move-object v6, v0

    const/4 v7, 0x0

    move v8, v1

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->codePointCount(II)I

    move-result v6

    new-array v6, v6, [I

    move-object v2, v6

    .line 48
    const/4 v6, 0x0

    move v3, v6

    .line 50
    const/4 v6, 0x0

    move v5, v6

    :goto_0
    move v6, v5

    move v7, v1

    if-ge v6, v7, :cond_0

    .line 51
    move-object v6, v0

    move v7, v5

    invoke-virtual {v6, v7}, Ljava/lang/String;->codePointAt(I)I

    move-result v6

    move v4, v6

    .line 52
    move-object v6, v2

    move v7, v3

    add-int/lit8 v3, v3, 0x1

    move v8, v4

    aput v8, v6, v7

    .line 50
    move v6, v5

    move v7, v4

    invoke-static {v7}, Ljava/lang/Character;->charCount(I)I

    move-result v7

    add-int/2addr v6, v7

    move v5, v6

    goto :goto_0

    .line 54
    :cond_0
    move-object v6, v2

    move-object v0, v6

    return-object v0
.end method

.method private static ucs2encode([I)Ljava/lang/String;
    .locals 9

    .prologue
    .line 154
    move-object v0, p0

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, v6

    .line 155
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

    aget v6, v6, v7

    move v5, v6

    .line 156
    move-object v6, v1

    move v7, v5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 155
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 158
    :cond_0
    move-object v6, v1

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    return-object v0
.end method
