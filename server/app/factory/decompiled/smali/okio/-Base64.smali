.class public final Lokio/-Base64;
.super Ljava/lang/Object;
.source "-Base64.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u001a\u000e\u0010\u0006\u001a\u0004\u0018\u00010\u0001*\u00020\u0007H\u0000\u001a\u0016\u0010\u0008\u001a\u00020\u0007*\u00020\u00012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0001H\u0000\"\u0014\u0010\u0000\u001a\u00020\u0001X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0002\u0010\u0003\"\u0014\u0010\u0004\u001a\u00020\u0001X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0003\u00a8\u0006\n"
    }
    d2 = {
        "BASE64",
        "",
        "getBASE64",
        "()[B",
        "BASE64_URL_SAFE",
        "getBASE64_URL_SAFE",
        "decodeBase64ToArray",
        "",
        "encodeBase64",
        "map",
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
    name = "-Base64"
.end annotation


# static fields
.field private static final BASE64:[B
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final BASE64_URL_SAFE:[B
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 27
    sget-object v0, Lokio/ByteString;->Companion:Lokio/ByteString$Companion;

    const-string v1, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    invoke-virtual {v0, v1}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v0

    sput-object v0, Lokio/-Base64;->BASE64:[B

    .line 29
    sget-object v0, Lokio/ByteString;->Companion:Lokio/ByteString$Companion;

    const-string v1, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_"

    invoke-virtual {v0, v1}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v0

    sput-object v0, Lokio/-Base64;->BASE64_URL_SAFE:[B

    return-void
.end method

.method public static final decodeBase64ToArray(Ljava/lang/String;)[B
    .locals 16
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    move-object/from16 v0, p0

    move-object v11, v0

    const-string v12, "$this$decodeBase64ToArray"

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    move-object v11, v0

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    move v1, v11

    .line 34
    :goto_0
    move v11, v1

    if-lez v11, :cond_0

    .line 35
    move-object v11, v0

    move v12, v1

    const/4 v13, 0x1

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v11, v12}, Ljava/lang/String;->charAt(I)C

    move-result v11

    move v2, v11

    .line 36
    move v11, v2

    const/16 v12, 0x3d

    if-eq v11, v12, :cond_6

    move v11, v2

    const/16 v12, 0xa

    if-eq v11, v12, :cond_6

    move v11, v2

    const/16 v12, 0xd

    if-eq v11, v12, :cond_6

    move v11, v2

    const/16 v12, 0x20

    if-eq v11, v12, :cond_6

    move v11, v2

    const/16 v12, 0x9

    if-eq v11, v12, :cond_6

    .line 43
    :cond_0
    move v11, v1

    int-to-long v11, v11

    const-wide/16 v13, 0x6

    mul-long/2addr v11, v13

    const-wide/16 v13, 0x8

    div-long/2addr v11, v13

    long-to-int v11, v11

    new-array v11, v11, [B

    move-object v2, v11

    .line 44
    const/4 v11, 0x0

    move v3, v11

    .line 45
    const/4 v11, 0x0

    move v4, v11

    .line 47
    const/4 v11, 0x0

    move v5, v11

    .line 48
    const/4 v11, 0x0

    move v6, v11

    move v11, v1

    move v7, v11

    :goto_1
    move v11, v6

    move v12, v7

    if-ge v11, v12, :cond_f

    .line 49
    move-object v11, v0

    move v12, v6

    invoke-virtual {v11, v12}, Ljava/lang/String;->charAt(I)C

    move-result v11

    move v8, v11

    .line 51
    const/4 v11, 0x0

    move v9, v11

    .line 52
    const/16 v11, 0x5a

    const/16 v12, 0x41

    move v13, v8

    move v10, v13

    move v13, v10

    if-le v12, v13, :cond_7

    .line 57
    :cond_1
    const/16 v11, 0x7a

    const/16 v12, 0x61

    move v13, v8

    move v10, v13

    move v13, v10

    if-le v12, v13, :cond_8

    .line 62
    :cond_2
    const/16 v11, 0x39

    const/16 v12, 0x30

    move v13, v8

    move v10, v13

    move v13, v10

    if-le v12, v13, :cond_9

    .line 67
    :cond_3
    move v11, v8

    const/16 v12, 0x2b

    if-eq v11, v12, :cond_4

    move v11, v8

    const/16 v12, 0x2d

    if-ne v11, v12, :cond_a

    .line 68
    :cond_4
    const/16 v11, 0x3e

    move v9, v11

    .line 75
    :goto_2
    move v11, v5

    const/4 v12, 0x6

    shl-int/lit8 v11, v11, 0x6

    move v12, v9

    or-int/2addr v11, v12

    move v5, v11

    .line 81
    add-int/lit8 v4, v4, 0x1

    .line 82
    move v11, v4

    const/4 v12, 0x4

    rem-int/lit8 v11, v11, 0x4

    if-nez v11, :cond_5

    .line 83
    move-object v11, v2

    move v12, v3

    add-int/lit8 v3, v3, 0x1

    move v13, v5

    const/16 v14, 0x10

    shr-int/lit8 v13, v13, 0x10

    int-to-byte v13, v13

    aput-byte v13, v11, v12

    .line 84
    move-object v11, v2

    move v12, v3

    add-int/lit8 v3, v3, 0x1

    move v13, v5

    const/16 v14, 0x8

    shr-int/lit8 v13, v13, 0x8

    int-to-byte v13, v13

    aput-byte v13, v11, v12

    .line 85
    move-object v11, v2

    move v12, v3

    add-int/lit8 v3, v3, 0x1

    move v13, v5

    int-to-byte v13, v13

    aput-byte v13, v11, v12

    .line 48
    :cond_5
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 39
    :cond_6
    add-int/lit8 v1, v1, -0x1

    .line 34
    goto/16 :goto_0

    .line 52
    :cond_7
    move v12, v10

    if-lt v11, v12, :cond_1

    .line 56
    move v11, v8

    const/16 v12, 0x41

    add-int/lit8 v11, v11, -0x41

    move v9, v11

    goto :goto_2

    .line 57
    :cond_8
    move v12, v10

    if-lt v11, v12, :cond_2

    .line 61
    move v11, v8

    const/16 v12, 0x47

    add-int/lit8 v11, v11, -0x47

    move v9, v11

    goto :goto_2

    .line 62
    :cond_9
    move v12, v10

    if-lt v11, v12, :cond_3

    .line 66
    move v11, v8

    const/4 v12, 0x4

    add-int/lit8 v11, v11, 0x4

    move v9, v11

    goto :goto_2

    .line 69
    :cond_a
    move v11, v8

    const/16 v12, 0x2f

    if-eq v11, v12, :cond_b

    move v11, v8

    const/16 v12, 0x5f

    if-ne v11, v12, :cond_c

    .line 70
    :cond_b
    const/16 v11, 0x3f

    move v9, v11

    goto :goto_2

    .line 71
    :cond_c
    move v11, v8

    const/16 v12, 0xa

    if-eq v11, v12, :cond_d

    move v11, v8

    const/16 v12, 0xd

    if-eq v11, v12, :cond_d

    move v11, v8

    const/16 v12, 0x20

    if-eq v11, v12, :cond_d

    move v11, v8

    const/16 v12, 0x9

    if-ne v11, v12, :cond_e

    .line 72
    :cond_d
    goto :goto_3

    .line 74
    :cond_e
    const/4 v11, 0x0

    move-object v0, v11

    .line 112
    :goto_4
    return-object v0

    .line 89
    :cond_f
    move v11, v4

    const/4 v12, 0x4

    rem-int/lit8 v11, v11, 0x4

    move v6, v11

    .line 90
    move v11, v6

    packed-switch v11, :pswitch_data_0

    .line 106
    :goto_5
    move v11, v3

    move-object v12, v2

    array-length v12, v12

    if-ne v11, v12, :cond_10

    move-object v11, v2

    move-object v0, v11

    goto :goto_4

    .line 93
    :pswitch_0
    const/4 v11, 0x0

    move-object v0, v11

    goto :goto_4

    .line 97
    :pswitch_1
    move v11, v5

    const/16 v12, 0xc

    shl-int/lit8 v11, v11, 0xc

    move v5, v11

    .line 98
    move-object v11, v2

    move v12, v3

    add-int/lit8 v3, v3, 0x1

    move v13, v5

    const/16 v14, 0x10

    shr-int/lit8 v13, v13, 0x10

    int-to-byte v13, v13

    aput-byte v13, v11, v12

    goto :goto_5

    .line 102
    :pswitch_2
    move v11, v5

    const/4 v12, 0x6

    shl-int/lit8 v11, v11, 0x6

    move v5, v11

    .line 103
    move-object v11, v2

    move v12, v3

    add-int/lit8 v3, v3, 0x1

    move v13, v5

    const/16 v14, 0x10

    shr-int/lit8 v13, v13, 0x10

    int-to-byte v13, v13

    aput-byte v13, v11, v12

    .line 104
    move-object v11, v2

    move v12, v3

    add-int/lit8 v3, v3, 0x1

    move v13, v5

    const/16 v14, 0x8

    shr-int/lit8 v13, v13, 0x8

    int-to-byte v13, v13

    aput-byte v13, v11, v12

    goto :goto_5

    .line 112
    :cond_10
    move-object v11, v2

    move-object v7, v11

    const/4 v11, 0x0

    move v8, v11

    move-object v11, v7

    move v12, v3

    invoke-static {v11, v12}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v11

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const-string v13, "java.util.Arrays.copyOf(this, newSize)"

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v11

    goto :goto_4

    .line 90
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static final encodeBase64([B[B)Ljava/lang/String;
    .locals 16
    .param p0    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v10, v0

    const-string v11, "$this$encodeBase64"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v10, v1

    const-string v11, "map"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    move-object v10, v0

    array-length v10, v10

    const/4 v11, 0x2

    add-int/lit8 v10, v10, 0x2

    const/4 v11, 0x3

    div-int/lit8 v10, v10, 0x3

    const/4 v11, 0x4

    mul-int/lit8 v10, v10, 0x4

    move v2, v10

    .line 117
    move v10, v2

    new-array v10, v10, [B

    move-object v3, v10

    .line 118
    const/4 v10, 0x0

    move v4, v10

    .line 119
    move-object v10, v0

    array-length v10, v10

    move-object v11, v0

    array-length v11, v11

    const/4 v12, 0x3

    rem-int/lit8 v11, v11, 0x3

    sub-int/2addr v10, v11

    move v5, v10

    .line 120
    const/4 v10, 0x0

    move v6, v10

    .line 121
    :goto_0
    move v10, v6

    move v11, v5

    if-ge v10, v11, :cond_0

    .line 122
    move-object v10, v0

    move v11, v6

    add-int/lit8 v6, v6, 0x1

    aget-byte v10, v10, v11

    move v7, v10

    .line 123
    move-object v10, v0

    move v11, v6

    add-int/lit8 v6, v6, 0x1

    aget-byte v10, v10, v11

    move v8, v10

    .line 124
    move-object v10, v0

    move v11, v6

    add-int/lit8 v6, v6, 0x1

    aget-byte v10, v10, v11

    move v9, v10

    .line 125
    move-object v10, v3

    move v11, v4

    add-int/lit8 v4, v4, 0x1

    move-object v12, v1

    move v13, v7

    const/16 v14, 0xff

    and-int/lit16 v13, v13, 0xff

    const/4 v14, 0x2

    shr-int/lit8 v13, v13, 0x2

    aget-byte v12, v12, v13

    aput-byte v12, v10, v11

    .line 126
    move-object v10, v3

    move v11, v4

    add-int/lit8 v4, v4, 0x1

    move-object v12, v1

    move v13, v7

    const/4 v14, 0x3

    and-int/lit8 v13, v13, 0x3

    const/4 v14, 0x4

    shl-int/lit8 v13, v13, 0x4

    move v14, v8

    const/16 v15, 0xff

    and-int/lit16 v14, v14, 0xff

    const/4 v15, 0x4

    shr-int/lit8 v14, v14, 0x4

    or-int/2addr v13, v14

    aget-byte v12, v12, v13

    aput-byte v12, v10, v11

    .line 127
    move-object v10, v3

    move v11, v4

    add-int/lit8 v4, v4, 0x1

    move-object v12, v1

    move v13, v8

    const/16 v14, 0xf

    and-int/lit8 v13, v13, 0xf

    const/4 v14, 0x2

    shl-int/lit8 v13, v13, 0x2

    move v14, v9

    const/16 v15, 0xff

    and-int/lit16 v14, v14, 0xff

    const/4 v15, 0x6

    shr-int/lit8 v14, v14, 0x6

    or-int/2addr v13, v14

    aget-byte v12, v12, v13

    aput-byte v12, v10, v11

    .line 128
    move-object v10, v3

    move v11, v4

    add-int/lit8 v4, v4, 0x1

    move-object v12, v1

    move v13, v9

    const/16 v14, 0x3f

    and-int/lit8 v13, v13, 0x3f

    aget-byte v12, v12, v13

    aput-byte v12, v10, v11

    .line 121
    goto :goto_0

    .line 130
    :cond_0
    move-object v10, v0

    array-length v10, v10

    move v11, v5

    sub-int/2addr v10, v11

    packed-switch v10, :pswitch_data_0

    .line 146
    :goto_1
    move-object v10, v3

    invoke-static {v10}, Lokio/-Platform;->toUtf8String([B)Ljava/lang/String;

    move-result-object v10

    move-object v0, v10

    return-object v0

    .line 132
    :pswitch_0
    move-object v10, v0

    move v11, v6

    aget-byte v10, v10, v11

    move v7, v10

    .line 133
    move-object v10, v3

    move v11, v4

    add-int/lit8 v4, v4, 0x1

    move-object v12, v1

    move v13, v7

    const/16 v14, 0xff

    and-int/lit16 v13, v13, 0xff

    const/4 v14, 0x2

    shr-int/lit8 v13, v13, 0x2

    aget-byte v12, v12, v13

    aput-byte v12, v10, v11

    .line 134
    move-object v10, v3

    move v11, v4

    add-int/lit8 v4, v4, 0x1

    move-object v12, v1

    move v13, v7

    const/4 v14, 0x3

    and-int/lit8 v13, v13, 0x3

    const/4 v14, 0x4

    shl-int/lit8 v13, v13, 0x4

    aget-byte v12, v12, v13

    aput-byte v12, v10, v11

    .line 135
    move-object v10, v3

    move v11, v4

    add-int/lit8 v4, v4, 0x1

    const/16 v12, 0x3d

    int-to-byte v12, v12

    aput-byte v12, v10, v11

    .line 136
    move-object v10, v3

    move v11, v4

    const/16 v12, 0x3d

    int-to-byte v12, v12

    aput-byte v12, v10, v11

    goto :goto_1

    .line 139
    :pswitch_1
    move-object v10, v0

    move v11, v6

    add-int/lit8 v6, v6, 0x1

    aget-byte v10, v10, v11

    move v7, v10

    .line 140
    move-object v10, v0

    move v11, v6

    aget-byte v10, v10, v11

    move v8, v10

    .line 141
    move-object v10, v3

    move v11, v4

    add-int/lit8 v4, v4, 0x1

    move-object v12, v1

    move v13, v7

    const/16 v14, 0xff

    and-int/lit16 v13, v13, 0xff

    const/4 v14, 0x2

    shr-int/lit8 v13, v13, 0x2

    aget-byte v12, v12, v13

    aput-byte v12, v10, v11

    .line 142
    move-object v10, v3

    move v11, v4

    add-int/lit8 v4, v4, 0x1

    move-object v12, v1

    move v13, v7

    const/4 v14, 0x3

    and-int/lit8 v13, v13, 0x3

    const/4 v14, 0x4

    shl-int/lit8 v13, v13, 0x4

    move v14, v8

    const/16 v15, 0xff

    and-int/lit16 v14, v14, 0xff

    const/4 v15, 0x4

    shr-int/lit8 v14, v14, 0x4

    or-int/2addr v13, v14

    aget-byte v12, v12, v13

    aput-byte v12, v10, v11

    .line 143
    move-object v10, v3

    move v11, v4

    add-int/lit8 v4, v4, 0x1

    move-object v12, v1

    move v13, v8

    const/16 v14, 0xf

    and-int/lit8 v13, v13, 0xf

    const/4 v14, 0x2

    shl-int/lit8 v13, v13, 0x2

    aget-byte v12, v12, v13

    aput-byte v12, v10, v11

    .line 144
    move-object v10, v3

    move v11, v4

    const/16 v12, 0x3d

    int-to-byte v12, v12

    aput-byte v12, v10, v11

    goto/16 :goto_1

    .line 130
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static synthetic encodeBase64$default([B[BILjava/lang/Object;)Ljava/lang/String;
    .locals 6

    .prologue
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, v2

    const/4 v5, 0x1

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_0

    .line 115
    sget-object v4, Lokio/-Base64;->BASE64:[B

    move-object v1, v4

    :cond_0
    move-object v4, v0

    move-object v5, v1

    invoke-static {v4, v5}, Lokio/-Base64;->encodeBase64([B[B)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    return-object v0
.end method

.method public static final getBASE64()[B
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 26
    sget-object v0, Lokio/-Base64;->BASE64:[B

    return-object v0
.end method

.method public static final getBASE64_URL_SAFE()[B
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 28
    sget-object v0, Lokio/-Base64;->BASE64_URL_SAFE:[B

    return-object v0
.end method
