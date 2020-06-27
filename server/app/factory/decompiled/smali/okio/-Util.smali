.class public final Lokio/-Util;
.super Ljava/lang/Object;
.source "-Util.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000:\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u0005\n\u0002\u0008\u0002\n\u0002\u0010\n\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\u001a0\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u0005H\u0000\u001a \u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u0008\u001a\u00020\u000cH\u0000\u001a\u0019\u0010\u000e\u001a\u00020\u000c2\u0006\u0010\u0002\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u000cH\u0080\u0008\u001a\u0019\u0010\u000e\u001a\u00020\u000c2\u0006\u0010\u0002\u001a\u00020\u000c2\u0006\u0010\u0006\u001a\u00020\u0005H\u0080\u0008\u001a\u0015\u0010\u000f\u001a\u00020\u0005*\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0005H\u0080\u000c\u001a\u0015\u0010\u000f\u001a\u00020\u000c*\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u000cH\u0080\u000c\u001a\u0015\u0010\u000f\u001a\u00020\u000c*\u00020\u00052\u0006\u0010\u0011\u001a\u00020\u000cH\u0080\u000c\u001a\u000c\u0010\u0012\u001a\u00020\u0005*\u00020\u0005H\u0000\u001a\u000c\u0010\u0012\u001a\u00020\u000c*\u00020\u000cH\u0000\u001a\u000c\u0010\u0012\u001a\u00020\u0013*\u00020\u0013H\u0000\u001a\u0015\u0010\u0014\u001a\u00020\u0005*\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0005H\u0080\u000c\u001a\u0015\u0010\u0015\u001a\u00020\u0005*\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0005H\u0080\u000c\u001a\u000c\u0010\u0016\u001a\u00020\u0017*\u00020\u0010H\u0000\u001a\u000c\u0010\u0016\u001a\u00020\u0017*\u00020\u0005H\u0000\u001a\u000c\u0010\u0016\u001a\u00020\u0017*\u00020\u000cH\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "arrayRangeEquals",
        "",
        "a",
        "",
        "aOffset",
        "",
        "b",
        "bOffset",
        "byteCount",
        "checkOffsetAndCount",
        "",
        "size",
        "",
        "offset",
        "minOf",
        "and",
        "",
        "other",
        "reverseBytes",
        "",
        "shl",
        "shr",
        "toHexString",
        "",
        "okio"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation

.annotation build Lkotlin/jvm/JvmName;
    name = "-Util"
.end annotation


# direct methods
.method public static final and(BI)I
    .locals 5

    .prologue
    move v0, p0

    move v1, p1

    const/4 v3, 0x0

    move v2, v3

    .line 66
    move v3, v0

    move v4, v1

    and-int/2addr v3, v4

    move v0, v3

    return v0
.end method

.method public static final and(BJ)J
    .locals 8

    .prologue
    move v0, p0

    move-wide v1, p1

    const/4 v4, 0x0

    move v3, v4

    .line 69
    move v4, v0

    int-to-long v4, v4

    move-wide v6, v1

    and-long/2addr v4, v6

    move-wide v0, v4

    return-wide v0
.end method

.method public static final and(IJ)J
    .locals 8

    .prologue
    move v0, p0

    move-wide v1, p1

    const/4 v4, 0x0

    move v3, v4

    .line 72
    move v4, v0

    int-to-long v4, v4

    move-wide v6, v1

    and-long/2addr v4, v6

    move-wide v0, v4

    return-wide v0
.end method

.method public static final arrayRangeEquals([BI[BII)Z
    .locals 11
    .param p0    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v7, v0

    const-string v8, "a"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v7, v2

    const-string v8, "b"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    const/4 v7, 0x0

    move v5, v7

    move v7, v4

    move v6, v7

    :goto_0
    move v7, v5

    move v8, v6

    if-ge v7, v8, :cond_1

    .line 88
    move-object v7, v0

    move v8, v5

    move v9, v1

    add-int/2addr v8, v9

    aget-byte v7, v7, v8

    move-object v8, v2

    move v9, v5

    move v10, v3

    add-int/2addr v9, v10

    aget-byte v8, v8, v9

    if-eq v7, v8, :cond_0

    const/4 v7, 0x0

    move v0, v7

    .line 90
    :goto_1
    return v0

    .line 87
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 90
    :cond_1
    const/4 v7, 0x1

    move v0, v7

    goto :goto_1
.end method

.method public static final checkOffsetAndCount(JJJ)V
    .locals 12

    .prologue
    .line 25
    move-wide v0, p0

    move-wide v2, p2

    move-wide/from16 v4, p4

    move-wide v6, v2

    move-wide v8, v4

    or-long/2addr v6, v8

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-ltz v6, :cond_0

    move-wide v6, v2

    move-wide v8, v0

    cmp-long v6, v6, v8

    if-gtz v6, :cond_0

    move-wide v6, v0

    move-wide v8, v2

    sub-long/2addr v6, v8

    move-wide v8, v4

    cmp-long v6, v6, v8

    if-gez v6, :cond_1

    .line 26
    :cond_0
    new-instance v6, Ljava/lang/ArrayIndexOutOfBoundsException;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "size="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide v9, v0

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " offset="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide v9, v2

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " byteCount="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide v9, v4

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    check-cast v6, Ljava/lang/Throwable;

    throw v6

    .line 28
    :cond_1
    return-void
.end method

.method public static final minOf(IJ)J
    .locals 11

    .prologue
    move v0, p0

    move-wide v1, p1

    const/4 v7, 0x0

    move v3, v7

    .line 78
    move v7, v0

    int-to-long v7, v7

    move-wide v4, v7

    const/4 v7, 0x0

    move v6, v7

    move-wide v7, v4

    move-wide v9, v1

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    move-wide v0, v7

    return-wide v0
.end method

.method public static final minOf(JI)J
    .locals 11

    .prologue
    move-wide v0, p0

    move v2, p2

    const/4 v7, 0x0

    move v3, v7

    .line 75
    move v7, v2

    int-to-long v7, v7

    move-wide v4, v7

    const/4 v7, 0x0

    move v6, v7

    move-wide v7, v0

    move-wide v9, v4

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    move-wide v0, v7

    return-wide v0
.end method

.method public static final reverseBytes(I)I
    .locals 4

    .prologue
    .line 40
    move v0, p0

    move v1, v0

    const/high16 v2, -0x1000000

    and-int/2addr v1, v2

    const/16 v2, 0x18

    ushr-int/lit8 v1, v1, 0x18

    .line 41
    move v2, v0

    const/high16 v3, 0xff0000

    and-int/2addr v2, v3

    const/16 v3, 0x8

    ushr-int/lit8 v2, v2, 0x8

    .line 40
    or-int/2addr v1, v2

    .line 42
    move v2, v0

    const v3, 0xff00

    and-int/2addr v2, v3

    const/16 v3, 0x8

    shl-int/lit8 v2, v2, 0x8

    .line 41
    or-int/2addr v1, v2

    .line 43
    move v2, v0

    const/16 v3, 0xff

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0x18

    shl-int/lit8 v2, v2, 0x18

    .line 42
    or-int/2addr v1, v2

    move v0, v1

    return v0
.end method

.method public static final reverseBytes(J)J
    .locals 8

    .prologue
    .line 47
    move-wide v0, p0

    move-wide v2, v0

    const-wide/high16 v4, -0x100000000000000L

    and-long/2addr v2, v4

    const/16 v4, 0x38

    ushr-long/2addr v2, v4

    .line 48
    move-wide v4, v0

    const-wide/high16 v6, 0xff000000000000L

    and-long/2addr v4, v6

    const/16 v6, 0x28

    ushr-long/2addr v4, v6

    .line 47
    or-long/2addr v2, v4

    .line 49
    move-wide v4, v0

    const-wide v6, 0xff0000000000L

    and-long/2addr v4, v6

    const/16 v6, 0x18

    ushr-long/2addr v4, v6

    .line 48
    or-long/2addr v2, v4

    .line 50
    move-wide v4, v0

    const-wide v6, 0xff00000000L

    and-long/2addr v4, v6

    const/16 v6, 0x8

    ushr-long/2addr v4, v6

    .line 49
    or-long/2addr v2, v4

    .line 51
    move-wide v4, v0

    const-wide v6, 0xff000000L

    and-long/2addr v4, v6

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    .line 50
    or-long/2addr v2, v4

    .line 52
    move-wide v4, v0

    const-wide/32 v6, 0xff0000

    and-long/2addr v4, v6

    const/16 v6, 0x18

    shl-long/2addr v4, v6

    .line 51
    or-long/2addr v2, v4

    .line 53
    move-wide v4, v0

    const-wide/32 v6, 0xff00

    and-long/2addr v4, v6

    const/16 v6, 0x28

    shl-long/2addr v4, v6

    .line 52
    or-long/2addr v2, v4

    .line 54
    move-wide v4, v0

    const-wide/16 v6, 0xff

    and-long/2addr v4, v6

    const/16 v6, 0x38

    shl-long/2addr v4, v6

    .line 53
    or-long/2addr v2, v4

    move-wide v0, v2

    return-wide v0
.end method

.method public static final reverseBytes(S)S
    .locals 6

    .prologue
    .line 33
    move v0, p0

    move v3, v0

    const v4, 0xffff

    and-int/2addr v3, v4

    move v1, v3

    .line 34
    move v3, v1

    const v4, 0xff00

    and-int/2addr v3, v4

    const/16 v4, 0x8

    ushr-int/lit8 v3, v3, 0x8

    .line 35
    move v4, v1

    const/16 v5, 0xff

    and-int/lit16 v4, v4, 0xff

    const/16 v5, 0x8

    shl-int/lit8 v4, v4, 0x8

    .line 34
    or-int/2addr v3, v4

    move v2, v3

    .line 36
    move v3, v2

    int-to-short v3, v3

    move v0, v3

    return v0
.end method

.method public static final shl(BI)I
    .locals 5

    .prologue
    move v0, p0

    move v1, p1

    const/4 v3, 0x0

    move v2, v3

    .line 63
    move v3, v0

    move v4, v1

    shl-int/2addr v3, v4

    move v0, v3

    return v0
.end method

.method public static final shr(BI)I
    .locals 5

    .prologue
    move v0, p0

    move v1, p1

    const/4 v3, 0x0

    move v2, v3

    .line 60
    move v3, v0

    move v4, v1

    shr-int/2addr v3, v4

    move v0, v3

    return v0
.end method

.method public static final toHexString(B)Ljava/lang/String;
    .locals 15
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 94
    move v0, p0

    const/4 v9, 0x2

    new-array v9, v9, [C

    move-object v1, v9

    .line 95
    move-object v9, v1

    const/4 v10, 0x0

    invoke-static {}, Lokio/internal/ByteStringKt;->getHEX_DIGIT_CHARS()[C

    move-result-object v11

    move v12, v0

    move v2, v12

    const/4 v12, 0x4

    move v3, v12

    move-object v7, v11

    move v6, v10

    move-object v5, v9

    const/4 v9, 0x0

    move v4, v9

    .line 154
    move v9, v2

    move v10, v3

    shr-int/2addr v9, v10

    move v8, v9

    move-object v9, v5

    move v10, v6

    move-object v11, v7

    move v12, v8

    .line 95
    const/16 v13, 0xf

    and-int/lit8 v12, v12, 0xf

    aget-char v11, v11, v12

    aput-char v11, v9, v10

    .line 96
    move-object v9, v1

    const/4 v10, 0x1

    invoke-static {}, Lokio/internal/ByteStringKt;->getHEX_DIGIT_CHARS()[C

    move-result-object v11

    move v12, v0

    move v2, v12

    const/16 v12, 0xf

    move v3, v12

    move-object v7, v11

    move v6, v10

    move-object v5, v9

    const/4 v9, 0x0

    move v4, v9

    .line 155
    move v9, v2

    move v10, v3

    and-int/2addr v9, v10

    move v8, v9

    move-object v9, v5

    move v10, v6

    move-object v11, v7

    move v12, v8

    aget-char v11, v11, v12

    aput-char v11, v9, v10

    .line 97
    const/4 v9, 0x0

    move v2, v9

    new-instance v9, Ljava/lang/String;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    move-object v11, v1

    invoke-direct {v10, v11}, Ljava/lang/String;-><init>([C)V

    move-object v0, v9

    return-object v0
.end method

.method public static final toHexString(I)Ljava/lang/String;
    .locals 11
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 101
    move v0, p0

    move v5, v0

    if-nez v5, :cond_0

    const-string v5, "0"

    move-object v0, v5

    .line 120
    :goto_0
    return-object v0

    .line 103
    :cond_0
    const/16 v5, 0x8

    new-array v5, v5, [C

    move-object v1, v5

    .line 104
    move-object v5, v1

    const/4 v6, 0x0

    invoke-static {}, Lokio/internal/ByteStringKt;->getHEX_DIGIT_CHARS()[C

    move-result-object v7

    move v8, v0

    const/16 v9, 0x1c

    shr-int/lit8 v8, v8, 0x1c

    const/16 v9, 0xf

    and-int/lit8 v8, v8, 0xf

    aget-char v7, v7, v8

    aput-char v7, v5, v6

    .line 105
    move-object v5, v1

    const/4 v6, 0x1

    invoke-static {}, Lokio/internal/ByteStringKt;->getHEX_DIGIT_CHARS()[C

    move-result-object v7

    move v8, v0

    const/16 v9, 0x18

    shr-int/lit8 v8, v8, 0x18

    const/16 v9, 0xf

    and-int/lit8 v8, v8, 0xf

    aget-char v7, v7, v8

    aput-char v7, v5, v6

    .line 106
    move-object v5, v1

    const/4 v6, 0x2

    invoke-static {}, Lokio/internal/ByteStringKt;->getHEX_DIGIT_CHARS()[C

    move-result-object v7

    move v8, v0

    const/16 v9, 0x14

    shr-int/lit8 v8, v8, 0x14

    const/16 v9, 0xf

    and-int/lit8 v8, v8, 0xf

    aget-char v7, v7, v8

    aput-char v7, v5, v6

    .line 107
    move-object v5, v1

    const/4 v6, 0x3

    invoke-static {}, Lokio/internal/ByteStringKt;->getHEX_DIGIT_CHARS()[C

    move-result-object v7

    move v8, v0

    const/16 v9, 0x10

    shr-int/lit8 v8, v8, 0x10

    const/16 v9, 0xf

    and-int/lit8 v8, v8, 0xf

    aget-char v7, v7, v8

    aput-char v7, v5, v6

    .line 108
    move-object v5, v1

    const/4 v6, 0x4

    invoke-static {}, Lokio/internal/ByteStringKt;->getHEX_DIGIT_CHARS()[C

    move-result-object v7

    move v8, v0

    const/16 v9, 0xc

    shr-int/lit8 v8, v8, 0xc

    const/16 v9, 0xf

    and-int/lit8 v8, v8, 0xf

    aget-char v7, v7, v8

    aput-char v7, v5, v6

    .line 109
    move-object v5, v1

    const/4 v6, 0x5

    invoke-static {}, Lokio/internal/ByteStringKt;->getHEX_DIGIT_CHARS()[C

    move-result-object v7

    move v8, v0

    const/16 v9, 0x8

    shr-int/lit8 v8, v8, 0x8

    const/16 v9, 0xf

    and-int/lit8 v8, v8, 0xf

    aget-char v7, v7, v8

    aput-char v7, v5, v6

    .line 110
    move-object v5, v1

    const/4 v6, 0x6

    invoke-static {}, Lokio/internal/ByteStringKt;->getHEX_DIGIT_CHARS()[C

    move-result-object v7

    move v8, v0

    const/4 v9, 0x4

    shr-int/lit8 v8, v8, 0x4

    const/16 v9, 0xf

    and-int/lit8 v8, v8, 0xf

    aget-char v7, v7, v8

    aput-char v7, v5, v6

    .line 111
    move-object v5, v1

    const/4 v6, 0x7

    invoke-static {}, Lokio/internal/ByteStringKt;->getHEX_DIGIT_CHARS()[C

    move-result-object v7

    move v8, v0

    const/16 v9, 0xf

    and-int/lit8 v8, v8, 0xf

    aget-char v7, v7, v8

    aput-char v7, v5, v6

    .line 114
    const/4 v5, 0x0

    move v2, v5

    .line 115
    :goto_1
    move v5, v2

    move-object v6, v1

    array-length v6, v6

    if-ge v5, v6, :cond_1

    .line 116
    move-object v5, v1

    move v6, v2

    aget-char v5, v5, v6

    const/16 v6, 0x30

    if-eq v5, v6, :cond_2

    .line 120
    :cond_1
    move-object v5, v1

    array-length v5, v5

    move v6, v2

    sub-int/2addr v5, v6

    move v3, v5

    const/4 v5, 0x0

    move v4, v5

    new-instance v5, Ljava/lang/String;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v1

    move v8, v2

    move v9, v3

    invoke-direct {v6, v7, v8, v9}, Ljava/lang/String;-><init>([CII)V

    move-object v0, v5

    goto/16 :goto_0

    .line 117
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 115
    goto :goto_1
.end method

.method public static final toHexString(J)Ljava/lang/String;
    .locals 14
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 124
    move-wide v0, p0

    move-wide v6, v0

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_0

    const-string v6, "0"

    move-object v0, v6

    .line 151
    :goto_0
    return-object v0

    .line 126
    :cond_0
    const/16 v6, 0x10

    new-array v6, v6, [C

    move-object v2, v6

    .line 127
    move-object v6, v2

    const/4 v7, 0x0

    invoke-static {}, Lokio/internal/ByteStringKt;->getHEX_DIGIT_CHARS()[C

    move-result-object v8

    move-wide v9, v0

    const/16 v11, 0x3c

    shr-long/2addr v9, v11

    const-wide/16 v11, 0xf

    and-long/2addr v9, v11

    long-to-int v9, v9

    aget-char v8, v8, v9

    aput-char v8, v6, v7

    .line 128
    move-object v6, v2

    const/4 v7, 0x1

    invoke-static {}, Lokio/internal/ByteStringKt;->getHEX_DIGIT_CHARS()[C

    move-result-object v8

    move-wide v9, v0

    const/16 v11, 0x38

    shr-long/2addr v9, v11

    const-wide/16 v11, 0xf

    and-long/2addr v9, v11

    long-to-int v9, v9

    aget-char v8, v8, v9

    aput-char v8, v6, v7

    .line 129
    move-object v6, v2

    const/4 v7, 0x2

    invoke-static {}, Lokio/internal/ByteStringKt;->getHEX_DIGIT_CHARS()[C

    move-result-object v8

    move-wide v9, v0

    const/16 v11, 0x34

    shr-long/2addr v9, v11

    const-wide/16 v11, 0xf

    and-long/2addr v9, v11

    long-to-int v9, v9

    aget-char v8, v8, v9

    aput-char v8, v6, v7

    .line 130
    move-object v6, v2

    const/4 v7, 0x3

    invoke-static {}, Lokio/internal/ByteStringKt;->getHEX_DIGIT_CHARS()[C

    move-result-object v8

    move-wide v9, v0

    const/16 v11, 0x30

    shr-long/2addr v9, v11

    const-wide/16 v11, 0xf

    and-long/2addr v9, v11

    long-to-int v9, v9

    aget-char v8, v8, v9

    aput-char v8, v6, v7

    .line 131
    move-object v6, v2

    const/4 v7, 0x4

    invoke-static {}, Lokio/internal/ByteStringKt;->getHEX_DIGIT_CHARS()[C

    move-result-object v8

    move-wide v9, v0

    const/16 v11, 0x2c

    shr-long/2addr v9, v11

    const-wide/16 v11, 0xf

    and-long/2addr v9, v11

    long-to-int v9, v9

    aget-char v8, v8, v9

    aput-char v8, v6, v7

    .line 132
    move-object v6, v2

    const/4 v7, 0x5

    invoke-static {}, Lokio/internal/ByteStringKt;->getHEX_DIGIT_CHARS()[C

    move-result-object v8

    move-wide v9, v0

    const/16 v11, 0x28

    shr-long/2addr v9, v11

    const-wide/16 v11, 0xf

    and-long/2addr v9, v11

    long-to-int v9, v9

    aget-char v8, v8, v9

    aput-char v8, v6, v7

    .line 133
    move-object v6, v2

    const/4 v7, 0x6

    invoke-static {}, Lokio/internal/ByteStringKt;->getHEX_DIGIT_CHARS()[C

    move-result-object v8

    move-wide v9, v0

    const/16 v11, 0x24

    shr-long/2addr v9, v11

    const-wide/16 v11, 0xf

    and-long/2addr v9, v11

    long-to-int v9, v9

    aget-char v8, v8, v9

    aput-char v8, v6, v7

    .line 134
    move-object v6, v2

    const/4 v7, 0x7

    invoke-static {}, Lokio/internal/ByteStringKt;->getHEX_DIGIT_CHARS()[C

    move-result-object v8

    move-wide v9, v0

    const/16 v11, 0x20

    shr-long/2addr v9, v11

    const-wide/16 v11, 0xf

    and-long/2addr v9, v11

    long-to-int v9, v9

    aget-char v8, v8, v9

    aput-char v8, v6, v7

    .line 135
    move-object v6, v2

    const/16 v7, 0x8

    invoke-static {}, Lokio/internal/ByteStringKt;->getHEX_DIGIT_CHARS()[C

    move-result-object v8

    move-wide v9, v0

    const/16 v11, 0x1c

    shr-long/2addr v9, v11

    const-wide/16 v11, 0xf

    and-long/2addr v9, v11

    long-to-int v9, v9

    aget-char v8, v8, v9

    aput-char v8, v6, v7

    .line 136
    move-object v6, v2

    const/16 v7, 0x9

    invoke-static {}, Lokio/internal/ByteStringKt;->getHEX_DIGIT_CHARS()[C

    move-result-object v8

    move-wide v9, v0

    const/16 v11, 0x18

    shr-long/2addr v9, v11

    const-wide/16 v11, 0xf

    and-long/2addr v9, v11

    long-to-int v9, v9

    aget-char v8, v8, v9

    aput-char v8, v6, v7

    .line 137
    move-object v6, v2

    const/16 v7, 0xa

    invoke-static {}, Lokio/internal/ByteStringKt;->getHEX_DIGIT_CHARS()[C

    move-result-object v8

    move-wide v9, v0

    const/16 v11, 0x14

    shr-long/2addr v9, v11

    const-wide/16 v11, 0xf

    and-long/2addr v9, v11

    long-to-int v9, v9

    aget-char v8, v8, v9

    aput-char v8, v6, v7

    .line 138
    move-object v6, v2

    const/16 v7, 0xb

    invoke-static {}, Lokio/internal/ByteStringKt;->getHEX_DIGIT_CHARS()[C

    move-result-object v8

    move-wide v9, v0

    const/16 v11, 0x10

    shr-long/2addr v9, v11

    const-wide/16 v11, 0xf

    and-long/2addr v9, v11

    long-to-int v9, v9

    aget-char v8, v8, v9

    aput-char v8, v6, v7

    .line 139
    move-object v6, v2

    const/16 v7, 0xc

    invoke-static {}, Lokio/internal/ByteStringKt;->getHEX_DIGIT_CHARS()[C

    move-result-object v8

    move-wide v9, v0

    const/16 v11, 0xc

    shr-long/2addr v9, v11

    const-wide/16 v11, 0xf

    and-long/2addr v9, v11

    long-to-int v9, v9

    aget-char v8, v8, v9

    aput-char v8, v6, v7

    .line 140
    move-object v6, v2

    const/16 v7, 0xd

    invoke-static {}, Lokio/internal/ByteStringKt;->getHEX_DIGIT_CHARS()[C

    move-result-object v8

    move-wide v9, v0

    const/16 v11, 0x8

    shr-long/2addr v9, v11

    const-wide/16 v11, 0xf

    and-long/2addr v9, v11

    long-to-int v9, v9

    aget-char v8, v8, v9

    aput-char v8, v6, v7

    .line 141
    move-object v6, v2

    const/16 v7, 0xe

    invoke-static {}, Lokio/internal/ByteStringKt;->getHEX_DIGIT_CHARS()[C

    move-result-object v8

    move-wide v9, v0

    const/4 v11, 0x4

    shr-long/2addr v9, v11

    const-wide/16 v11, 0xf

    and-long/2addr v9, v11

    long-to-int v9, v9

    aget-char v8, v8, v9

    aput-char v8, v6, v7

    .line 142
    move-object v6, v2

    const/16 v7, 0xf

    invoke-static {}, Lokio/internal/ByteStringKt;->getHEX_DIGIT_CHARS()[C

    move-result-object v8

    move-wide v9, v0

    const-wide/16 v11, 0xf

    and-long/2addr v9, v11

    long-to-int v9, v9

    aget-char v8, v8, v9

    aput-char v8, v6, v7

    .line 145
    const/4 v6, 0x0

    move v3, v6

    .line 146
    :goto_1
    move v6, v3

    move-object v7, v2

    array-length v7, v7

    if-ge v6, v7, :cond_1

    .line 147
    move-object v6, v2

    move v7, v3

    aget-char v6, v6, v7

    const/16 v7, 0x30

    if-eq v6, v7, :cond_2

    .line 151
    :cond_1
    move-object v6, v2

    array-length v6, v6

    move v7, v3

    sub-int/2addr v6, v7

    move v4, v6

    const/4 v6, 0x0

    move v5, v6

    new-instance v6, Ljava/lang/String;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    move-object v8, v2

    move v9, v3

    move v10, v4

    invoke-direct {v7, v8, v9, v10}, Ljava/lang/String;-><init>([CII)V

    move-object v0, v6

    goto/16 :goto_0

    .line 148
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 146
    goto :goto_1
.end method
