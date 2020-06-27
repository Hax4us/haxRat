.class public final Lokio/internal/_Utf8Kt;
.super Ljava/lang/Object;
.source "-Utf8.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0010\u0012\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u001a\u001e\u0010\u0003\u001a\u00020\u0002*\u00020\u00012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0005\u00a8\u0006\u0007"
    }
    d2 = {
        "commonAsUtf8ToByteArray",
        "",
        "",
        "commonToUtf8String",
        "beginIndex",
        "",
        "endIndex",
        "okio"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# direct methods
.method public static final commonAsUtf8ToByteArray(Ljava/lang/String;)[B
    .locals 23
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    move-object/from16 v2, p0

    move-object/from16 v17, v2

    const-string v18, "$this$commonAsUtf8ToByteArray"

    invoke-static/range {v17 .. v18}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    const/16 v17, 0x4

    move-object/from16 v18, v2

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    mul-int v17, v17, v18

    move/from16 v0, v17

    new-array v0, v0, [B

    move-object/from16 v17, v0

    move-object/from16 v3, v17

    .line 46
    const/16 v17, 0x0

    move/from16 v4, v17

    move-object/from16 v17, v2

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    move/from16 v5, v17

    :goto_0
    move/from16 v17, v4

    move/from16 v18, v5

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_a

    .line 47
    move-object/from16 v17, v2

    move/from16 v18, v4

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->charAt(I)C

    move-result v17

    move/from16 v6, v17

    .line 48
    move/from16 v17, v6

    const/16 v18, 0x80

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_9

    .line 49
    move/from16 v17, v4

    move/from16 v7, v17

    .line 50
    move-object/from16 v17, v2

    move-object/from16 v8, v17

    move-object/from16 v17, v2

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    move/from16 v9, v17

    const/16 v17, 0x0

    move/from16 v10, v17

    .line 241
    move/from16 v17, v4

    move/from16 v11, v17

    .line 242
    :goto_1
    move/from16 v17, v11

    move/from16 v18, v9

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_8

    .line 243
    move-object/from16 v17, v8

    move/from16 v18, v11

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->charAt(I)C

    move-result v17

    move/from16 v12, v17

    .line 245
    nop

    .line 246
    move/from16 v17, v12

    const/16 v18, 0x80

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_0

    .line 248
    move/from16 v17, v12

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    move/from16 v13, v17

    const/16 v17, 0x0

    move/from16 v14, v17

    .line 51
    move-object/from16 v17, v3

    move/from16 v18, v7

    move/from16 v22, v18

    move/from16 v18, v22

    move/from16 v19, v22

    move/from16 v15, v19

    const/16 v19, 0x1

    add-int/lit8 v18, v18, 0x1

    move/from16 v7, v18

    move/from16 v18, v15

    move/from16 v19, v13

    aput-byte v19, v17, v18

    .line 52
    nop

    .line 249
    add-int/lit8 v11, v11, 0x1

    .line 252
    :goto_2
    move/from16 v17, v11

    move/from16 v18, v9

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_1

    move-object/from16 v17, v8

    move/from16 v18, v11

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->charAt(I)C

    move-result v17

    const/16 v18, 0x80

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_1

    .line 253
    move-object/from16 v17, v8

    move/from16 v18, v11

    add-int/lit8 v11, v11, 0x1

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->charAt(I)C

    move-result v17

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    move/from16 v13, v17

    const/16 v17, 0x0

    move/from16 v14, v17

    .line 51
    move-object/from16 v17, v3

    move/from16 v18, v7

    move/from16 v22, v18

    move/from16 v18, v22

    move/from16 v19, v22

    move/from16 v15, v19

    const/16 v19, 0x1

    add-int/lit8 v18, v18, 0x1

    move/from16 v7, v18

    move/from16 v18, v15

    move/from16 v19, v13

    aput-byte v19, v17, v18

    .line 52
    nop

    .line 252
    goto :goto_2

    .line 257
    :cond_0
    move/from16 v17, v12

    const/16 v18, 0x800

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_2

    .line 260
    move/from16 v17, v12

    const/16 v18, 0x6

    shr-int/lit8 v17, v17, 0x6

    const/16 v18, 0xc0

    move/from16 v0, v17

    or-int/lit16 v0, v0, 0xc0

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    move/from16 v13, v17

    const/16 v17, 0x0

    move/from16 v14, v17

    .line 51
    move-object/from16 v17, v3

    move/from16 v18, v7

    move/from16 v22, v18

    move/from16 v18, v22

    move/from16 v19, v22

    move/from16 v15, v19

    const/16 v19, 0x1

    add-int/lit8 v18, v18, 0x1

    move/from16 v7, v18

    move/from16 v18, v15

    move/from16 v19, v13

    aput-byte v19, v17, v18

    .line 52
    nop

    .line 261
    move/from16 v17, v12

    const/16 v18, 0x3f

    and-int/lit8 v17, v17, 0x3f

    const/16 v18, 0x80

    move/from16 v0, v17

    or-int/lit16 v0, v0, 0x80

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    move/from16 v13, v17

    const/16 v17, 0x0

    move/from16 v14, v17

    .line 51
    move-object/from16 v17, v3

    move/from16 v18, v7

    move/from16 v22, v18

    move/from16 v18, v22

    move/from16 v19, v22

    move/from16 v15, v19

    const/16 v19, 0x1

    add-int/lit8 v18, v18, 0x1

    move/from16 v7, v18

    move/from16 v18, v15

    move/from16 v19, v13

    aput-byte v19, v17, v18

    .line 52
    nop

    .line 263
    add-int/lit8 v11, v11, 0x1

    .line 300
    :cond_1
    :goto_3
    goto/16 :goto_1

    .line 266
    :cond_2
    const v17, 0xdfff

    const v18, 0xd800

    move/from16 v19, v12

    move/from16 v13, v19

    move/from16 v19, v13

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_3

    move/from16 v18, v13

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_4

    .line 269
    :goto_4
    move/from16 v17, v12

    const/16 v18, 0xc

    shr-int/lit8 v17, v17, 0xc

    const/16 v18, 0xe0

    move/from16 v0, v17

    or-int/lit16 v0, v0, 0xe0

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    move/from16 v14, v17

    const/16 v17, 0x0

    move/from16 v15, v17

    .line 51
    move-object/from16 v17, v3

    move/from16 v18, v7

    move/from16 v22, v18

    move/from16 v18, v22

    move/from16 v19, v22

    move/from16 v16, v19

    const/16 v19, 0x1

    add-int/lit8 v18, v18, 0x1

    move/from16 v7, v18

    move/from16 v18, v16

    move/from16 v19, v14

    aput-byte v19, v17, v18

    .line 52
    nop

    .line 270
    move/from16 v17, v12

    const/16 v18, 0x6

    shr-int/lit8 v17, v17, 0x6

    const/16 v18, 0x3f

    and-int/lit8 v17, v17, 0x3f

    const/16 v18, 0x80

    move/from16 v0, v17

    or-int/lit16 v0, v0, 0x80

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    move/from16 v14, v17

    const/16 v17, 0x0

    move/from16 v15, v17

    .line 51
    move-object/from16 v17, v3

    move/from16 v18, v7

    move/from16 v22, v18

    move/from16 v18, v22

    move/from16 v19, v22

    move/from16 v16, v19

    const/16 v19, 0x1

    add-int/lit8 v18, v18, 0x1

    move/from16 v7, v18

    move/from16 v18, v16

    move/from16 v19, v14

    aput-byte v19, v17, v18

    .line 52
    nop

    .line 271
    move/from16 v17, v12

    const/16 v18, 0x3f

    and-int/lit8 v17, v17, 0x3f

    const/16 v18, 0x80

    move/from16 v0, v17

    or-int/lit16 v0, v0, 0x80

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    move/from16 v14, v17

    const/16 v17, 0x0

    move/from16 v15, v17

    .line 51
    move-object/from16 v17, v3

    move/from16 v18, v7

    move/from16 v22, v18

    move/from16 v18, v22

    move/from16 v19, v22

    move/from16 v16, v19

    const/16 v19, 0x1

    add-int/lit8 v18, v18, 0x1

    move/from16 v7, v18

    move/from16 v18, v16

    move/from16 v19, v14

    aput-byte v19, v17, v18

    .line 52
    nop

    .line 273
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_3

    :cond_3
    goto/16 :goto_4

    .line 280
    :cond_4
    move/from16 v17, v12

    const v18, 0xdbff

    move/from16 v0, v17

    move/from16 v1, v18

    if-gt v0, v1, :cond_5

    move/from16 v17, v9

    .line 281
    move/from16 v18, v11

    const/16 v19, 0x1

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_5

    const v17, 0xdfff

    const v18, 0xdc00

    .line 282
    move-object/from16 v19, v8

    move/from16 v20, v11

    const/16 v21, 0x1

    add-int/lit8 v20, v20, 0x1

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->charAt(I)C

    move-result v19

    move/from16 v13, v19

    move/from16 v19, v13

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_6

    move/from16 v18, v13

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_7

    .line 283
    :cond_5
    :goto_5
    const/16 v17, 0x3f

    move/from16 v14, v17

    const/16 v17, 0x0

    move/from16 v15, v17

    .line 51
    move-object/from16 v17, v3

    move/from16 v18, v7

    move/from16 v22, v18

    move/from16 v18, v22

    move/from16 v19, v22

    move/from16 v16, v19

    const/16 v19, 0x1

    add-int/lit8 v18, v18, 0x1

    move/from16 v7, v18

    move/from16 v18, v16

    move/from16 v19, v14

    aput-byte v19, v17, v18

    .line 52
    nop

    .line 284
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_3

    :cond_6
    goto :goto_5

    .line 289
    :cond_7
    move/from16 v17, v12

    const/16 v18, 0xa

    shl-int/lit8 v17, v17, 0xa

    move-object/from16 v18, v8

    move/from16 v19, v11

    const/16 v20, 0x1

    add-int/lit8 v19, v19, 0x1

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->charAt(I)C

    move-result v18

    add-int v17, v17, v18

    .line 290
    const v18, -0x35fdc00

    .line 289
    add-int v17, v17, v18

    move/from16 v13, v17

    .line 294
    move/from16 v17, v13

    const/16 v18, 0x12

    shr-int/lit8 v17, v17, 0x12

    const/16 v18, 0xf0

    move/from16 v0, v17

    or-int/lit16 v0, v0, 0xf0

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    move/from16 v14, v17

    const/16 v17, 0x0

    move/from16 v15, v17

    .line 51
    move-object/from16 v17, v3

    move/from16 v18, v7

    move/from16 v22, v18

    move/from16 v18, v22

    move/from16 v19, v22

    move/from16 v16, v19

    const/16 v19, 0x1

    add-int/lit8 v18, v18, 0x1

    move/from16 v7, v18

    move/from16 v18, v16

    move/from16 v19, v14

    aput-byte v19, v17, v18

    .line 52
    nop

    .line 295
    move/from16 v17, v13

    const/16 v18, 0xc

    shr-int/lit8 v17, v17, 0xc

    const/16 v18, 0x3f

    and-int/lit8 v17, v17, 0x3f

    const/16 v18, 0x80

    move/from16 v0, v17

    or-int/lit16 v0, v0, 0x80

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    move/from16 v14, v17

    const/16 v17, 0x0

    move/from16 v15, v17

    .line 51
    move-object/from16 v17, v3

    move/from16 v18, v7

    move/from16 v22, v18

    move/from16 v18, v22

    move/from16 v19, v22

    move/from16 v16, v19

    const/16 v19, 0x1

    add-int/lit8 v18, v18, 0x1

    move/from16 v7, v18

    move/from16 v18, v16

    move/from16 v19, v14

    aput-byte v19, v17, v18

    .line 52
    nop

    .line 296
    move/from16 v17, v13

    const/16 v18, 0x6

    shr-int/lit8 v17, v17, 0x6

    const/16 v18, 0x3f

    and-int/lit8 v17, v17, 0x3f

    const/16 v18, 0x80

    move/from16 v0, v17

    or-int/lit16 v0, v0, 0x80

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    move/from16 v14, v17

    const/16 v17, 0x0

    move/from16 v15, v17

    .line 51
    move-object/from16 v17, v3

    move/from16 v18, v7

    move/from16 v22, v18

    move/from16 v18, v22

    move/from16 v19, v22

    move/from16 v16, v19

    const/16 v19, 0x1

    add-int/lit8 v18, v18, 0x1

    move/from16 v7, v18

    move/from16 v18, v16

    move/from16 v19, v14

    aput-byte v19, v17, v18

    .line 52
    nop

    .line 297
    move/from16 v17, v13

    const/16 v18, 0x3f

    and-int/lit8 v17, v17, 0x3f

    const/16 v18, 0x80

    move/from16 v0, v17

    or-int/lit16 v0, v0, 0x80

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    move/from16 v14, v17

    const/16 v17, 0x0

    move/from16 v15, v17

    .line 51
    move-object/from16 v17, v3

    move/from16 v18, v7

    move/from16 v22, v18

    move/from16 v18, v22

    move/from16 v19, v22

    move/from16 v16, v19

    const/16 v19, 0x1

    add-int/lit8 v18, v18, 0x1

    move/from16 v7, v18

    move/from16 v18, v16

    move/from16 v19, v14

    aput-byte v19, v17, v18

    .line 52
    nop

    .line 299
    move/from16 v17, v11

    const/16 v18, 0x2

    add-int/lit8 v17, v17, 0x2

    move/from16 v11, v17

    goto/16 :goto_3

    .line 304
    :cond_8
    nop

    .line 53
    move-object/from16 v17, v3

    move-object/from16 v8, v17

    move/from16 v17, v7

    move/from16 v9, v17

    const/16 v17, 0x0

    move/from16 v10, v17

    move-object/from16 v17, v8

    move/from16 v18, v9

    invoke-static/range {v17 .. v18}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v17

    move-object/from16 v22, v17

    move-object/from16 v17, v22

    move-object/from16 v18, v22

    const-string v19, "java.util.Arrays.copyOf(this, newSize)"

    invoke-static/range {v18 .. v19}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v2, v17

    .line 58
    :goto_6
    return-object v2

    .line 55
    :cond_9
    move-object/from16 v17, v3

    move/from16 v18, v4

    move/from16 v19, v6

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    aput-byte v19, v17, v18

    .line 46
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 58
    :cond_a
    move-object/from16 v17, v3

    move-object/from16 v4, v17

    move-object/from16 v17, v2

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    move/from16 v5, v17

    const/16 v17, 0x0

    move/from16 v6, v17

    move-object/from16 v17, v4

    move/from16 v18, v5

    invoke-static/range {v17 .. v18}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v17

    move-object/from16 v22, v17

    move-object/from16 v17, v22

    move-object/from16 v18, v22

    const-string v19, "java.util.Arrays.copyOf(this, newSize)"

    invoke-static/range {v18 .. v19}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v2, v17

    goto :goto_6
.end method

.method public static final commonToUtf8String([BII)Ljava/lang/String;
    .locals 34
    .param p0    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v28, v2

    const-string v29, "$this$commonToUtf8String"

    invoke-static/range {v28 .. v29}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    move/from16 v28, v3

    if-ltz v28, :cond_0

    move/from16 v28, v4

    move-object/from16 v29, v2

    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-gt v0, v1, :cond_0

    move/from16 v28, v3

    move/from16 v29, v4

    move/from16 v0, v28

    move/from16 v1, v29

    if-le v0, v1, :cond_1

    .line 29
    :cond_0
    new-instance v28, Ljava/lang/ArrayIndexOutOfBoundsException;

    move-object/from16 v33, v28

    move-object/from16 v28, v33

    move-object/from16 v29, v33

    new-instance v30, Ljava/lang/StringBuilder;

    move-object/from16 v33, v30

    move-object/from16 v30, v33

    move-object/from16 v31, v33

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "size="

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v31, v2

    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " beginIndex="

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move/from16 v31, v3

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " endIndex="

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move/from16 v31, v4

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-direct/range {v29 .. v30}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    check-cast v28, Ljava/lang/Throwable;

    throw v28

    .line 31
    :cond_1
    move/from16 v28, v4

    move/from16 v29, v3

    sub-int v28, v28, v29

    move/from16 v0, v28

    new-array v0, v0, [C

    move-object/from16 v28, v0

    move-object/from16 v5, v28

    .line 33
    const/16 v28, 0x0

    move/from16 v6, v28

    .line 34
    move-object/from16 v28, v2

    move-object/from16 v7, v28

    const/16 v28, 0x0

    move/from16 v8, v28

    .line 61
    move/from16 v28, v3

    move/from16 v9, v28

    .line 62
    :goto_0
    move/from16 v28, v9

    move/from16 v29, v4

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_2f

    .line 63
    move-object/from16 v28, v7

    move/from16 v29, v9

    aget-byte v28, v28, v29

    move/from16 v10, v28

    .line 64
    nop

    .line 65
    move/from16 v28, v10

    if-ltz v28, :cond_2

    .line 67
    move/from16 v28, v10

    move/from16 v0, v28

    int-to-char v0, v0

    move/from16 v28, v0

    move/from16 v11, v28

    const/16 v28, 0x0

    move/from16 v12, v28

    .line 35
    move-object/from16 v28, v5

    move/from16 v29, v6

    move/from16 v33, v29

    move/from16 v29, v33

    move/from16 v30, v33

    move/from16 v13, v30

    const/16 v30, 0x1

    add-int/lit8 v29, v29, 0x1

    move/from16 v6, v29

    move/from16 v29, v13

    move/from16 v30, v11

    aput-char v30, v28, v29

    .line 36
    nop

    .line 68
    add-int/lit8 v9, v9, 0x1

    .line 72
    :goto_1
    move/from16 v28, v9

    move/from16 v29, v4

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_3

    move-object/from16 v28, v7

    move/from16 v29, v9

    aget-byte v28, v28, v29

    if-ltz v28, :cond_3

    .line 73
    move-object/from16 v28, v7

    move/from16 v29, v9

    add-int/lit8 v9, v9, 0x1

    aget-byte v28, v28, v29

    move/from16 v0, v28

    int-to-char v0, v0

    move/from16 v28, v0

    move/from16 v11, v28

    const/16 v28, 0x0

    move/from16 v12, v28

    .line 35
    move-object/from16 v28, v5

    move/from16 v29, v6

    move/from16 v33, v29

    move/from16 v29, v33

    move/from16 v30, v33

    move/from16 v13, v30

    const/16 v30, 0x1

    add-int/lit8 v29, v29, 0x1

    move/from16 v6, v29

    move/from16 v29, v13

    move/from16 v30, v11

    aput-char v30, v28, v29

    .line 36
    nop

    .line 72
    goto :goto_1

    .line 76
    :cond_2
    move/from16 v28, v10

    move/from16 v14, v28

    const/16 v28, 0x5

    move/from16 v15, v28

    const/16 v28, 0x0

    move/from16 v16, v28

    .line 77
    move/from16 v28, v14

    move/from16 v29, v15

    shr-int v28, v28, v29

    const/16 v29, -0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_8

    .line 78
    move/from16 v28, v9

    move-object/from16 v29, v7

    move-object/from16 v14, v29

    move/from16 v17, v28

    const/16 v28, 0x0

    move/from16 v15, v28

    .line 79
    move/from16 v28, v4

    move/from16 v29, v9

    const/16 v30, 0x1

    add-int/lit8 v29, v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-gt v0, v1, :cond_4

    .line 80
    const v28, 0xfffd

    move/from16 v16, v28

    const/16 v28, 0x0

    move/from16 v18, v28

    .line 78
    move/from16 v28, v16

    move/from16 v0, v28

    int-to-char v0, v0

    move/from16 v28, v0

    move/from16 v11, v28

    const/16 v28, 0x0

    move/from16 v12, v28

    .line 35
    move-object/from16 v28, v5

    move/from16 v29, v6

    move/from16 v33, v29

    move/from16 v29, v33

    move/from16 v30, v33

    move/from16 v13, v30

    const/16 v30, 0x1

    add-int/lit8 v29, v29, 0x1

    move/from16 v6, v29

    move/from16 v29, v13

    move/from16 v30, v11

    aput-char v30, v28, v29

    .line 36
    nop

    nop

    .line 82
    const/16 v28, 0x1

    .line 106
    :goto_2
    move/from16 v25, v28

    move/from16 v28, v17

    move/from16 v29, v25

    .line 78
    add-int v28, v28, v29

    move/from16 v9, v28

    .line 238
    :cond_3
    :goto_3
    goto/16 :goto_0

    .line 85
    :cond_4
    move-object/from16 v28, v14

    move/from16 v29, v9

    aget-byte v28, v28, v29

    move/from16 v19, v28

    .line 86
    move-object/from16 v28, v14

    move/from16 v29, v9

    const/16 v30, 0x1

    add-int/lit8 v29, v29, 0x1

    aget-byte v28, v28, v29

    move/from16 v20, v28

    .line 87
    const/16 v28, 0x0

    move/from16 v21, v28

    .line 88
    move/from16 v28, v20

    move/from16 v22, v28

    const/16 v28, 0xc0

    move/from16 v23, v28

    const/16 v28, 0x0

    move/from16 v24, v28

    .line 89
    move/from16 v28, v22

    move/from16 v29, v23

    and-int v28, v28, v29

    const/16 v29, 0x80

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_5

    const/16 v28, 0x1

    :goto_4
    if-nez v28, :cond_6

    .line 90
    const v28, 0xfffd

    move/from16 v16, v28

    const/16 v28, 0x0

    move/from16 v18, v28

    .line 78
    move/from16 v28, v16

    move/from16 v0, v28

    int-to-char v0, v0

    move/from16 v28, v0

    move/from16 v11, v28

    const/16 v28, 0x0

    move/from16 v12, v28

    .line 35
    move-object/from16 v28, v5

    move/from16 v29, v6

    move/from16 v33, v29

    move/from16 v29, v33

    move/from16 v30, v33

    move/from16 v13, v30

    const/16 v30, 0x1

    add-int/lit8 v29, v29, 0x1

    move/from16 v6, v29

    move/from16 v29, v13

    move/from16 v30, v11

    aput-char v30, v28, v29

    .line 36
    nop

    nop

    .line 91
    const/16 v28, 0x1

    goto :goto_2

    .line 89
    :cond_5
    const/16 v28, 0x0

    goto :goto_4

    .line 94
    :cond_6
    const/16 v28, 0xf80

    .line 96
    move/from16 v29, v20

    xor-int v28, v28, v29

    .line 97
    move/from16 v29, v19

    const/16 v30, 0x6

    shl-int/lit8 v29, v29, 0x6

    xor-int v28, v28, v29

    .line 94
    move/from16 v21, v28

    .line 99
    nop

    .line 100
    move/from16 v28, v21

    const/16 v29, 0x80

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_7

    .line 101
    const v28, 0xfffd

    move/from16 v16, v28

    const/16 v28, 0x0

    move/from16 v18, v28

    .line 78
    move/from16 v28, v16

    move/from16 v0, v28

    int-to-char v0, v0

    move/from16 v28, v0

    move/from16 v11, v28

    const/16 v28, 0x0

    move/from16 v12, v28

    .line 35
    move-object/from16 v28, v5

    move/from16 v29, v6

    move/from16 v33, v29

    move/from16 v29, v33

    move/from16 v30, v33

    move/from16 v13, v30

    const/16 v30, 0x1

    add-int/lit8 v29, v29, 0x1

    move/from16 v6, v29

    move/from16 v29, v13

    move/from16 v30, v11

    aput-char v30, v28, v29

    .line 36
    nop

    .line 106
    :goto_5
    const/16 v28, 0x2

    goto/16 :goto_2

    .line 104
    :cond_7
    move/from16 v28, v21

    move/from16 v16, v28

    const/16 v28, 0x0

    move/from16 v18, v28

    .line 78
    move/from16 v28, v16

    move/from16 v0, v28

    int-to-char v0, v0

    move/from16 v28, v0

    move/from16 v11, v28

    const/16 v28, 0x0

    move/from16 v12, v28

    .line 35
    move-object/from16 v28, v5

    move/from16 v29, v6

    move/from16 v33, v29

    move/from16 v29, v33

    move/from16 v30, v33

    move/from16 v13, v30

    const/16 v30, 0x1

    add-int/lit8 v29, v29, 0x1

    move/from16 v6, v29

    move/from16 v29, v13

    move/from16 v30, v11

    aput-char v30, v28, v29

    .line 36
    nop

    nop

    goto :goto_5

    .line 108
    :cond_8
    move/from16 v28, v10

    move/from16 v14, v28

    const/16 v28, 0x4

    move/from16 v15, v28

    const/16 v28, 0x0

    move/from16 v16, v28

    .line 109
    move/from16 v28, v14

    move/from16 v29, v15

    shr-int v28, v28, v29

    const/16 v29, -0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_14

    .line 110
    move/from16 v28, v9

    move-object/from16 v29, v7

    move-object/from16 v14, v29

    move/from16 v17, v28

    const/16 v28, 0x0

    move/from16 v15, v28

    .line 111
    move/from16 v28, v4

    move/from16 v29, v9

    const/16 v30, 0x2

    add-int/lit8 v29, v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-gt v0, v1, :cond_c

    .line 113
    const v28, 0xfffd

    move/from16 v16, v28

    const/16 v28, 0x0

    move/from16 v18, v28

    .line 110
    move/from16 v28, v16

    move/from16 v0, v28

    int-to-char v0, v0

    move/from16 v28, v0

    move/from16 v11, v28

    const/16 v28, 0x0

    move/from16 v12, v28

    .line 35
    move-object/from16 v28, v5

    move/from16 v29, v6

    move/from16 v33, v29

    move/from16 v29, v33

    move/from16 v30, v33

    move/from16 v13, v30

    const/16 v30, 0x1

    add-int/lit8 v29, v29, 0x1

    move/from16 v6, v29

    move/from16 v29, v13

    move/from16 v30, v11

    aput-char v30, v28, v29

    .line 36
    nop

    nop

    .line 114
    move/from16 v28, v4

    move/from16 v29, v9

    const/16 v30, 0x1

    add-int/lit8 v29, v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-le v0, v1, :cond_9

    move-object/from16 v28, v14

    move/from16 v29, v9

    const/16 v30, 0x1

    add-int/lit8 v29, v29, 0x1

    aget-byte v28, v28, v29

    move/from16 v19, v28

    const/16 v28, 0x0

    move/from16 v20, v28

    .line 115
    move/from16 v28, v19

    move/from16 v21, v28

    const/16 v28, 0xc0

    move/from16 v22, v28

    const/16 v28, 0x0

    move/from16 v23, v28

    .line 116
    move/from16 v28, v21

    move/from16 v29, v22

    and-int v28, v28, v29

    const/16 v29, 0x80

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_a

    const/16 v28, 0x1

    :goto_6
    if-nez v28, :cond_b

    .line 117
    :cond_9
    const/16 v28, 0x1

    .line 156
    :goto_7
    move/from16 v25, v28

    move/from16 v28, v17

    move/from16 v29, v25

    .line 110
    add-int v28, v28, v29

    move/from16 v9, v28

    goto/16 :goto_3

    .line 116
    :cond_a
    const/16 v28, 0x0

    goto :goto_6

    .line 120
    :cond_b
    const/16 v28, 0x2

    goto :goto_7

    .line 124
    :cond_c
    move-object/from16 v28, v14

    move/from16 v29, v9

    aget-byte v28, v28, v29

    move/from16 v19, v28

    .line 125
    move-object/from16 v28, v14

    move/from16 v29, v9

    const/16 v30, 0x1

    add-int/lit8 v29, v29, 0x1

    aget-byte v28, v28, v29

    move/from16 v20, v28

    .line 126
    const/16 v28, 0x0

    move/from16 v21, v28

    .line 127
    move/from16 v28, v20

    move/from16 v22, v28

    const/16 v28, 0xc0

    move/from16 v23, v28

    const/16 v28, 0x0

    move/from16 v24, v28

    .line 128
    move/from16 v28, v22

    move/from16 v29, v23

    and-int v28, v28, v29

    const/16 v29, 0x80

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_d

    const/16 v28, 0x1

    :goto_8
    if-nez v28, :cond_e

    .line 129
    const v28, 0xfffd

    move/from16 v16, v28

    const/16 v28, 0x0

    move/from16 v18, v28

    .line 110
    move/from16 v28, v16

    move/from16 v0, v28

    int-to-char v0, v0

    move/from16 v28, v0

    move/from16 v11, v28

    const/16 v28, 0x0

    move/from16 v12, v28

    .line 35
    move-object/from16 v28, v5

    move/from16 v29, v6

    move/from16 v33, v29

    move/from16 v29, v33

    move/from16 v30, v33

    move/from16 v13, v30

    const/16 v30, 0x1

    add-int/lit8 v29, v29, 0x1

    move/from16 v6, v29

    move/from16 v29, v13

    move/from16 v30, v11

    aput-char v30, v28, v29

    .line 36
    nop

    nop

    .line 130
    const/16 v28, 0x1

    goto :goto_7

    .line 128
    :cond_d
    const/16 v28, 0x0

    goto :goto_8

    .line 132
    :cond_e
    move-object/from16 v28, v14

    move/from16 v29, v9

    const/16 v30, 0x2

    add-int/lit8 v29, v29, 0x2

    aget-byte v28, v28, v29

    move/from16 v21, v28

    .line 133
    const/16 v28, 0x0

    move/from16 v22, v28

    .line 134
    move/from16 v28, v21

    move/from16 v23, v28

    const/16 v28, 0xc0

    move/from16 v24, v28

    const/16 v28, 0x0

    move/from16 v26, v28

    .line 135
    move/from16 v28, v23

    move/from16 v29, v24

    and-int v28, v28, v29

    const/16 v29, 0x80

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_f

    const/16 v28, 0x1

    :goto_9
    if-nez v28, :cond_10

    .line 136
    const v28, 0xfffd

    move/from16 v16, v28

    const/16 v28, 0x0

    move/from16 v18, v28

    .line 110
    move/from16 v28, v16

    move/from16 v0, v28

    int-to-char v0, v0

    move/from16 v28, v0

    move/from16 v11, v28

    const/16 v28, 0x0

    move/from16 v12, v28

    .line 35
    move-object/from16 v28, v5

    move/from16 v29, v6

    move/from16 v33, v29

    move/from16 v29, v33

    move/from16 v30, v33

    move/from16 v13, v30

    const/16 v30, 0x1

    add-int/lit8 v29, v29, 0x1

    move/from16 v6, v29

    move/from16 v29, v13

    move/from16 v30, v11

    aput-char v30, v28, v29

    .line 36
    nop

    nop

    .line 137
    const/16 v28, 0x2

    goto/16 :goto_7

    .line 135
    :cond_f
    const/16 v28, 0x0

    goto :goto_9

    .line 140
    :cond_10
    const v28, -0x1e080

    .line 142
    move/from16 v29, v21

    xor-int v28, v28, v29

    .line 143
    move/from16 v29, v20

    const/16 v30, 0x6

    shl-int/lit8 v29, v29, 0x6

    xor-int v28, v28, v29

    .line 144
    move/from16 v29, v19

    const/16 v30, 0xc

    shl-int/lit8 v29, v29, 0xc

    xor-int v28, v28, v29

    .line 140
    move/from16 v22, v28

    .line 146
    nop

    .line 147
    move/from16 v28, v22

    const/16 v29, 0x800

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_11

    .line 148
    const v28, 0xfffd

    move/from16 v16, v28

    const/16 v28, 0x0

    move/from16 v18, v28

    .line 110
    move/from16 v28, v16

    move/from16 v0, v28

    int-to-char v0, v0

    move/from16 v28, v0

    move/from16 v11, v28

    const/16 v28, 0x0

    move/from16 v12, v28

    .line 35
    move-object/from16 v28, v5

    move/from16 v29, v6

    move/from16 v33, v29

    move/from16 v29, v33

    move/from16 v30, v33

    move/from16 v13, v30

    const/16 v30, 0x1

    add-int/lit8 v29, v29, 0x1

    move/from16 v6, v29

    move/from16 v29, v13

    move/from16 v30, v11

    aput-char v30, v28, v29

    .line 36
    nop

    .line 156
    :goto_a
    const/16 v28, 0x3

    goto/16 :goto_7

    .line 150
    :cond_11
    const v28, 0xdfff

    const v29, 0xd800

    move/from16 v30, v22

    move/from16 v23, v30

    move/from16 v30, v23

    move/from16 v0, v29

    move/from16 v1, v30

    if-le v0, v1, :cond_13

    .line 154
    :cond_12
    move/from16 v28, v22

    move/from16 v16, v28

    const/16 v28, 0x0

    move/from16 v18, v28

    .line 110
    move/from16 v28, v16

    move/from16 v0, v28

    int-to-char v0, v0

    move/from16 v28, v0

    move/from16 v11, v28

    const/16 v28, 0x0

    move/from16 v12, v28

    .line 35
    move-object/from16 v28, v5

    move/from16 v29, v6

    move/from16 v33, v29

    move/from16 v29, v33

    move/from16 v30, v33

    move/from16 v13, v30

    const/16 v30, 0x1

    add-int/lit8 v29, v29, 0x1

    move/from16 v6, v29

    move/from16 v29, v13

    move/from16 v30, v11

    aput-char v30, v28, v29

    .line 36
    nop

    nop

    goto :goto_a

    .line 150
    :cond_13
    move/from16 v29, v23

    move/from16 v0, v28

    move/from16 v1, v29

    if-lt v0, v1, :cond_12

    .line 151
    const v28, 0xfffd

    move/from16 v16, v28

    const/16 v28, 0x0

    move/from16 v18, v28

    .line 110
    move/from16 v28, v16

    move/from16 v0, v28

    int-to-char v0, v0

    move/from16 v28, v0

    move/from16 v11, v28

    const/16 v28, 0x0

    move/from16 v12, v28

    .line 35
    move-object/from16 v28, v5

    move/from16 v29, v6

    move/from16 v33, v29

    move/from16 v29, v33

    move/from16 v30, v33

    move/from16 v13, v30

    const/16 v30, 0x1

    add-int/lit8 v29, v29, 0x1

    move/from16 v6, v29

    move/from16 v29, v13

    move/from16 v30, v11

    aput-char v30, v28, v29

    .line 36
    nop

    goto :goto_a

    .line 158
    :cond_14
    move/from16 v28, v10

    move/from16 v14, v28

    const/16 v28, 0x3

    move/from16 v15, v28

    const/16 v28, 0x0

    move/from16 v16, v28

    .line 159
    move/from16 v28, v14

    move/from16 v29, v15

    shr-int v28, v28, v29

    const/16 v29, -0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_2e

    .line 160
    move/from16 v28, v9

    move-object/from16 v29, v7

    move-object/from16 v14, v29

    move/from16 v17, v28

    const/16 v28, 0x0

    move/from16 v15, v28

    .line 161
    move/from16 v28, v4

    move/from16 v29, v9

    const/16 v30, 0x3

    add-int/lit8 v29, v29, 0x3

    move/from16 v0, v28

    move/from16 v1, v29

    if-gt v0, v1, :cond_1c

    .line 163
    const v28, 0xfffd

    move/from16 v16, v28

    const/16 v28, 0x0

    move/from16 v18, v28

    .line 164
    move/from16 v28, v16

    const v29, 0xfffd

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_16

    .line 169
    move/from16 v28, v16

    const/16 v29, 0xa

    ushr-int/lit8 v28, v28, 0xa

    const v29, 0xd7c0

    add-int v28, v28, v29

    move/from16 v0, v28

    int-to-char v0, v0

    move/from16 v28, v0

    move/from16 v11, v28

    const/16 v28, 0x0

    move/from16 v12, v28

    .line 35
    move-object/from16 v28, v5

    move/from16 v29, v6

    move/from16 v33, v29

    move/from16 v29, v33

    move/from16 v30, v33

    move/from16 v13, v30

    const/16 v30, 0x1

    add-int/lit8 v29, v29, 0x1

    move/from16 v6, v29

    move/from16 v29, v13

    move/from16 v30, v11

    aput-char v30, v28, v29

    .line 36
    nop

    .line 171
    move/from16 v28, v16

    const/16 v29, 0x3ff

    move/from16 v0, v28

    and-int/lit16 v0, v0, 0x3ff

    move/from16 v28, v0

    const v29, 0xdc00

    add-int v28, v28, v29

    move/from16 v0, v28

    int-to-char v0, v0

    move/from16 v28, v0

    move/from16 v11, v28

    const/16 v28, 0x0

    move/from16 v12, v28

    .line 35
    move-object/from16 v28, v5

    move/from16 v29, v6

    move/from16 v33, v29

    move/from16 v29, v33

    move/from16 v30, v33

    move/from16 v13, v30

    const/16 v30, 0x1

    add-int/lit8 v29, v29, 0x1

    move/from16 v6, v29

    move/from16 v29, v13

    move/from16 v30, v11

    aput-char v30, v28, v29

    .line 174
    :goto_b
    nop

    .line 176
    move/from16 v28, v4

    move/from16 v29, v9

    const/16 v30, 0x1

    add-int/lit8 v29, v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-le v0, v1, :cond_15

    move-object/from16 v28, v14

    move/from16 v29, v9

    const/16 v30, 0x1

    add-int/lit8 v29, v29, 0x1

    aget-byte v28, v28, v29

    move/from16 v19, v28

    const/16 v28, 0x0

    move/from16 v20, v28

    .line 177
    move/from16 v28, v19

    move/from16 v21, v28

    const/16 v28, 0xc0

    move/from16 v22, v28

    const/16 v28, 0x0

    move/from16 v23, v28

    .line 178
    move/from16 v28, v21

    move/from16 v29, v22

    and-int v28, v28, v29

    const/16 v29, 0x80

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_17

    const/16 v28, 0x1

    :goto_c
    if-nez v28, :cond_18

    .line 179
    :cond_15
    const/16 v28, 0x1

    .line 233
    :goto_d
    move/from16 v25, v28

    move/from16 v28, v17

    move/from16 v29, v25

    .line 160
    add-int v28, v28, v29

    move/from16 v9, v28

    goto/16 :goto_3

    .line 173
    :cond_16
    const v28, 0xfffd

    move/from16 v11, v28

    const/16 v28, 0x0

    move/from16 v12, v28

    .line 35
    move-object/from16 v28, v5

    move/from16 v29, v6

    move/from16 v33, v29

    move/from16 v29, v33

    move/from16 v30, v33

    move/from16 v13, v30

    const/16 v30, 0x1

    add-int/lit8 v29, v29, 0x1

    move/from16 v6, v29

    move/from16 v29, v13

    move/from16 v30, v11

    aput-char v30, v28, v29

    .line 36
    nop

    goto :goto_b

    .line 178
    :cond_17
    const/16 v28, 0x0

    goto :goto_c

    .line 180
    :cond_18
    move/from16 v28, v4

    move/from16 v29, v9

    const/16 v30, 0x2

    add-int/lit8 v29, v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-le v0, v1, :cond_19

    move-object/from16 v28, v14

    move/from16 v29, v9

    const/16 v30, 0x2

    add-int/lit8 v29, v29, 0x2

    aget-byte v28, v28, v29

    move/from16 v19, v28

    const/16 v28, 0x0

    move/from16 v20, v28

    .line 181
    move/from16 v28, v19

    move/from16 v21, v28

    const/16 v28, 0xc0

    move/from16 v22, v28

    const/16 v28, 0x0

    move/from16 v23, v28

    .line 182
    move/from16 v28, v21

    move/from16 v29, v22

    and-int v28, v28, v29

    const/16 v29, 0x80

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_1a

    const/16 v28, 0x1

    :goto_e
    if-nez v28, :cond_1b

    .line 183
    :cond_19
    const/16 v28, 0x2

    goto :goto_d

    .line 182
    :cond_1a
    const/16 v28, 0x0

    goto :goto_e

    .line 186
    :cond_1b
    const/16 v28, 0x3

    goto :goto_d

    .line 190
    :cond_1c
    move-object/from16 v28, v14

    move/from16 v29, v9

    aget-byte v28, v28, v29

    move/from16 v19, v28

    .line 191
    move-object/from16 v28, v14

    move/from16 v29, v9

    const/16 v30, 0x1

    add-int/lit8 v29, v29, 0x1

    aget-byte v28, v28, v29

    move/from16 v20, v28

    .line 192
    const/16 v28, 0x0

    move/from16 v21, v28

    .line 193
    move/from16 v28, v20

    move/from16 v22, v28

    const/16 v28, 0xc0

    move/from16 v23, v28

    const/16 v28, 0x0

    move/from16 v24, v28

    .line 194
    move/from16 v28, v22

    move/from16 v29, v23

    and-int v28, v28, v29

    const/16 v29, 0x80

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_1d

    const/16 v28, 0x1

    :goto_f
    if-nez v28, :cond_1f

    .line 195
    const v28, 0xfffd

    move/from16 v16, v28

    const/16 v28, 0x0

    move/from16 v18, v28

    .line 164
    move/from16 v28, v16

    const v29, 0xfffd

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_1e

    .line 169
    move/from16 v28, v16

    const/16 v29, 0xa

    ushr-int/lit8 v28, v28, 0xa

    const v29, 0xd7c0

    add-int v28, v28, v29

    move/from16 v0, v28

    int-to-char v0, v0

    move/from16 v28, v0

    move/from16 v11, v28

    const/16 v28, 0x0

    move/from16 v12, v28

    .line 35
    move-object/from16 v28, v5

    move/from16 v29, v6

    move/from16 v33, v29

    move/from16 v29, v33

    move/from16 v30, v33

    move/from16 v13, v30

    const/16 v30, 0x1

    add-int/lit8 v29, v29, 0x1

    move/from16 v6, v29

    move/from16 v29, v13

    move/from16 v30, v11

    aput-char v30, v28, v29

    .line 36
    nop

    .line 171
    move/from16 v28, v16

    const/16 v29, 0x3ff

    move/from16 v0, v28

    and-int/lit16 v0, v0, 0x3ff

    move/from16 v28, v0

    const v29, 0xdc00

    add-int v28, v28, v29

    move/from16 v0, v28

    int-to-char v0, v0

    move/from16 v28, v0

    move/from16 v11, v28

    const/16 v28, 0x0

    move/from16 v12, v28

    .line 35
    move-object/from16 v28, v5

    move/from16 v29, v6

    move/from16 v33, v29

    move/from16 v29, v33

    move/from16 v30, v33

    move/from16 v13, v30

    const/16 v30, 0x1

    add-int/lit8 v29, v29, 0x1

    move/from16 v6, v29

    move/from16 v29, v13

    move/from16 v30, v11

    aput-char v30, v28, v29

    .line 174
    :goto_10
    nop

    .line 196
    const/16 v28, 0x1

    goto/16 :goto_d

    .line 194
    :cond_1d
    const/16 v28, 0x0

    goto :goto_f

    .line 173
    :cond_1e
    const v28, 0xfffd

    move/from16 v11, v28

    const/16 v28, 0x0

    move/from16 v12, v28

    .line 35
    move-object/from16 v28, v5

    move/from16 v29, v6

    move/from16 v33, v29

    move/from16 v29, v33

    move/from16 v30, v33

    move/from16 v13, v30

    const/16 v30, 0x1

    add-int/lit8 v29, v29, 0x1

    move/from16 v6, v29

    move/from16 v29, v13

    move/from16 v30, v11

    aput-char v30, v28, v29

    .line 36
    nop

    goto :goto_10

    .line 198
    :cond_1f
    move-object/from16 v28, v14

    move/from16 v29, v9

    const/16 v30, 0x2

    add-int/lit8 v29, v29, 0x2

    aget-byte v28, v28, v29

    move/from16 v21, v28

    .line 199
    const/16 v28, 0x0

    move/from16 v22, v28

    .line 200
    move/from16 v28, v21

    move/from16 v23, v28

    const/16 v28, 0xc0

    move/from16 v24, v28

    const/16 v28, 0x0

    move/from16 v26, v28

    .line 201
    move/from16 v28, v23

    move/from16 v29, v24

    and-int v28, v28, v29

    const/16 v29, 0x80

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_20

    const/16 v28, 0x1

    :goto_11
    if-nez v28, :cond_22

    .line 202
    const v28, 0xfffd

    move/from16 v16, v28

    const/16 v28, 0x0

    move/from16 v18, v28

    .line 164
    move/from16 v28, v16

    const v29, 0xfffd

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_21

    .line 169
    move/from16 v28, v16

    const/16 v29, 0xa

    ushr-int/lit8 v28, v28, 0xa

    const v29, 0xd7c0

    add-int v28, v28, v29

    move/from16 v0, v28

    int-to-char v0, v0

    move/from16 v28, v0

    move/from16 v11, v28

    const/16 v28, 0x0

    move/from16 v12, v28

    .line 35
    move-object/from16 v28, v5

    move/from16 v29, v6

    move/from16 v33, v29

    move/from16 v29, v33

    move/from16 v30, v33

    move/from16 v13, v30

    const/16 v30, 0x1

    add-int/lit8 v29, v29, 0x1

    move/from16 v6, v29

    move/from16 v29, v13

    move/from16 v30, v11

    aput-char v30, v28, v29

    .line 36
    nop

    .line 171
    move/from16 v28, v16

    const/16 v29, 0x3ff

    move/from16 v0, v28

    and-int/lit16 v0, v0, 0x3ff

    move/from16 v28, v0

    const v29, 0xdc00

    add-int v28, v28, v29

    move/from16 v0, v28

    int-to-char v0, v0

    move/from16 v28, v0

    move/from16 v11, v28

    const/16 v28, 0x0

    move/from16 v12, v28

    .line 35
    move-object/from16 v28, v5

    move/from16 v29, v6

    move/from16 v33, v29

    move/from16 v29, v33

    move/from16 v30, v33

    move/from16 v13, v30

    const/16 v30, 0x1

    add-int/lit8 v29, v29, 0x1

    move/from16 v6, v29

    move/from16 v29, v13

    move/from16 v30, v11

    aput-char v30, v28, v29

    .line 174
    :goto_12
    nop

    .line 203
    const/16 v28, 0x2

    goto/16 :goto_d

    .line 201
    :cond_20
    const/16 v28, 0x0

    goto :goto_11

    .line 173
    :cond_21
    const v28, 0xfffd

    move/from16 v11, v28

    const/16 v28, 0x0

    move/from16 v12, v28

    .line 35
    move-object/from16 v28, v5

    move/from16 v29, v6

    move/from16 v33, v29

    move/from16 v29, v33

    move/from16 v30, v33

    move/from16 v13, v30

    const/16 v30, 0x1

    add-int/lit8 v29, v29, 0x1

    move/from16 v6, v29

    move/from16 v29, v13

    move/from16 v30, v11

    aput-char v30, v28, v29

    .line 36
    nop

    goto :goto_12

    .line 205
    :cond_22
    move-object/from16 v28, v14

    move/from16 v29, v9

    const/16 v30, 0x3

    add-int/lit8 v29, v29, 0x3

    aget-byte v28, v28, v29

    move/from16 v22, v28

    .line 206
    const/16 v28, 0x0

    move/from16 v23, v28

    .line 207
    move/from16 v28, v22

    move/from16 v24, v28

    const/16 v28, 0xc0

    move/from16 v26, v28

    const/16 v28, 0x0

    move/from16 v27, v28

    .line 208
    move/from16 v28, v24

    move/from16 v29, v26

    and-int v28, v28, v29

    const/16 v29, 0x80

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_23

    const/16 v28, 0x1

    :goto_13
    if-nez v28, :cond_25

    .line 209
    const v28, 0xfffd

    move/from16 v16, v28

    const/16 v28, 0x0

    move/from16 v18, v28

    .line 164
    move/from16 v28, v16

    const v29, 0xfffd

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_24

    .line 169
    move/from16 v28, v16

    const/16 v29, 0xa

    ushr-int/lit8 v28, v28, 0xa

    const v29, 0xd7c0

    add-int v28, v28, v29

    move/from16 v0, v28

    int-to-char v0, v0

    move/from16 v28, v0

    move/from16 v11, v28

    const/16 v28, 0x0

    move/from16 v12, v28

    .line 35
    move-object/from16 v28, v5

    move/from16 v29, v6

    move/from16 v33, v29

    move/from16 v29, v33

    move/from16 v30, v33

    move/from16 v13, v30

    const/16 v30, 0x1

    add-int/lit8 v29, v29, 0x1

    move/from16 v6, v29

    move/from16 v29, v13

    move/from16 v30, v11

    aput-char v30, v28, v29

    .line 36
    nop

    .line 171
    move/from16 v28, v16

    const/16 v29, 0x3ff

    move/from16 v0, v28

    and-int/lit16 v0, v0, 0x3ff

    move/from16 v28, v0

    const v29, 0xdc00

    add-int v28, v28, v29

    move/from16 v0, v28

    int-to-char v0, v0

    move/from16 v28, v0

    move/from16 v11, v28

    const/16 v28, 0x0

    move/from16 v12, v28

    .line 35
    move-object/from16 v28, v5

    move/from16 v29, v6

    move/from16 v33, v29

    move/from16 v29, v33

    move/from16 v30, v33

    move/from16 v13, v30

    const/16 v30, 0x1

    add-int/lit8 v29, v29, 0x1

    move/from16 v6, v29

    move/from16 v29, v13

    move/from16 v30, v11

    aput-char v30, v28, v29

    .line 174
    :goto_14
    nop

    .line 210
    const/16 v28, 0x3

    goto/16 :goto_d

    .line 208
    :cond_23
    const/16 v28, 0x0

    goto :goto_13

    .line 173
    :cond_24
    const v28, 0xfffd

    move/from16 v11, v28

    const/16 v28, 0x0

    move/from16 v12, v28

    .line 35
    move-object/from16 v28, v5

    move/from16 v29, v6

    move/from16 v33, v29

    move/from16 v29, v33

    move/from16 v30, v33

    move/from16 v13, v30

    const/16 v30, 0x1

    add-int/lit8 v29, v29, 0x1

    move/from16 v6, v29

    move/from16 v29, v13

    move/from16 v30, v11

    aput-char v30, v28, v29

    .line 36
    nop

    goto :goto_14

    .line 213
    :cond_25
    const v28, 0x381f80

    .line 215
    move/from16 v29, v22

    xor-int v28, v28, v29

    .line 216
    move/from16 v29, v21

    const/16 v30, 0x6

    shl-int/lit8 v29, v29, 0x6

    xor-int v28, v28, v29

    .line 217
    move/from16 v29, v20

    const/16 v30, 0xc

    shl-int/lit8 v29, v29, 0xc

    xor-int v28, v28, v29

    .line 218
    move/from16 v29, v19

    const/16 v30, 0x12

    shl-int/lit8 v29, v29, 0x12

    xor-int v28, v28, v29

    .line 213
    move/from16 v23, v28

    .line 220
    nop

    .line 221
    move/from16 v28, v23

    const v29, 0x10ffff

    move/from16 v0, v28

    move/from16 v1, v29

    if-le v0, v1, :cond_27

    .line 222
    const v28, 0xfffd

    move/from16 v16, v28

    const/16 v28, 0x0

    move/from16 v18, v28

    .line 164
    move/from16 v28, v16

    const v29, 0xfffd

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_26

    .line 169
    move/from16 v28, v16

    const/16 v29, 0xa

    ushr-int/lit8 v28, v28, 0xa

    const v29, 0xd7c0

    add-int v28, v28, v29

    move/from16 v0, v28

    int-to-char v0, v0

    move/from16 v28, v0

    move/from16 v11, v28

    const/16 v28, 0x0

    move/from16 v12, v28

    .line 35
    move-object/from16 v28, v5

    move/from16 v29, v6

    move/from16 v33, v29

    move/from16 v29, v33

    move/from16 v30, v33

    move/from16 v13, v30

    const/16 v30, 0x1

    add-int/lit8 v29, v29, 0x1

    move/from16 v6, v29

    move/from16 v29, v13

    move/from16 v30, v11

    aput-char v30, v28, v29

    .line 36
    nop

    .line 171
    move/from16 v28, v16

    const/16 v29, 0x3ff

    move/from16 v0, v28

    and-int/lit16 v0, v0, 0x3ff

    move/from16 v28, v0

    const v29, 0xdc00

    add-int v28, v28, v29

    move/from16 v0, v28

    int-to-char v0, v0

    move/from16 v28, v0

    move/from16 v11, v28

    const/16 v28, 0x0

    move/from16 v12, v28

    .line 35
    move-object/from16 v28, v5

    move/from16 v29, v6

    move/from16 v33, v29

    move/from16 v29, v33

    move/from16 v30, v33

    move/from16 v13, v30

    const/16 v30, 0x1

    add-int/lit8 v29, v29, 0x1

    move/from16 v6, v29

    move/from16 v29, v13

    move/from16 v30, v11

    aput-char v30, v28, v29

    .line 233
    :goto_15
    const/16 v28, 0x4

    goto/16 :goto_d

    .line 173
    :cond_26
    const v28, 0xfffd

    move/from16 v11, v28

    const/16 v28, 0x0

    move/from16 v12, v28

    .line 35
    move-object/from16 v28, v5

    move/from16 v29, v6

    move/from16 v33, v29

    move/from16 v29, v33

    move/from16 v30, v33

    move/from16 v13, v30

    const/16 v30, 0x1

    add-int/lit8 v29, v29, 0x1

    move/from16 v6, v29

    move/from16 v29, v13

    move/from16 v30, v11

    aput-char v30, v28, v29

    .line 36
    nop

    goto :goto_15

    .line 224
    :cond_27
    const v28, 0xdfff

    const v29, 0xd800

    move/from16 v30, v23

    move/from16 v24, v30

    move/from16 v30, v24

    move/from16 v0, v29

    move/from16 v1, v30

    if-le v0, v1, :cond_29

    .line 227
    :cond_28
    move/from16 v28, v23

    const/high16 v29, 0x10000

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_2c

    .line 228
    const v28, 0xfffd

    move/from16 v16, v28

    const/16 v28, 0x0

    move/from16 v18, v28

    .line 164
    move/from16 v28, v16

    const v29, 0xfffd

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_2b

    .line 169
    move/from16 v28, v16

    const/16 v29, 0xa

    ushr-int/lit8 v28, v28, 0xa

    const v29, 0xd7c0

    add-int v28, v28, v29

    move/from16 v0, v28

    int-to-char v0, v0

    move/from16 v28, v0

    move/from16 v11, v28

    const/16 v28, 0x0

    move/from16 v12, v28

    .line 35
    move-object/from16 v28, v5

    move/from16 v29, v6

    move/from16 v33, v29

    move/from16 v29, v33

    move/from16 v30, v33

    move/from16 v13, v30

    const/16 v30, 0x1

    add-int/lit8 v29, v29, 0x1

    move/from16 v6, v29

    move/from16 v29, v13

    move/from16 v30, v11

    aput-char v30, v28, v29

    .line 36
    nop

    .line 171
    move/from16 v28, v16

    const/16 v29, 0x3ff

    move/from16 v0, v28

    and-int/lit16 v0, v0, 0x3ff

    move/from16 v28, v0

    const v29, 0xdc00

    add-int v28, v28, v29

    move/from16 v0, v28

    int-to-char v0, v0

    move/from16 v28, v0

    move/from16 v11, v28

    const/16 v28, 0x0

    move/from16 v12, v28

    .line 35
    move-object/from16 v28, v5

    move/from16 v29, v6

    move/from16 v33, v29

    move/from16 v29, v33

    move/from16 v30, v33

    move/from16 v13, v30

    const/16 v30, 0x1

    add-int/lit8 v29, v29, 0x1

    move/from16 v6, v29

    move/from16 v29, v13

    move/from16 v30, v11

    aput-char v30, v28, v29

    .line 174
    :goto_16
    goto/16 :goto_15

    .line 224
    :cond_29
    move/from16 v29, v24

    move/from16 v0, v28

    move/from16 v1, v29

    if-lt v0, v1, :cond_28

    .line 225
    const v28, 0xfffd

    move/from16 v16, v28

    const/16 v28, 0x0

    move/from16 v18, v28

    .line 164
    move/from16 v28, v16

    const v29, 0xfffd

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_2a

    .line 169
    move/from16 v28, v16

    const/16 v29, 0xa

    ushr-int/lit8 v28, v28, 0xa

    const v29, 0xd7c0

    add-int v28, v28, v29

    move/from16 v0, v28

    int-to-char v0, v0

    move/from16 v28, v0

    move/from16 v11, v28

    const/16 v28, 0x0

    move/from16 v12, v28

    .line 35
    move-object/from16 v28, v5

    move/from16 v29, v6

    move/from16 v33, v29

    move/from16 v29, v33

    move/from16 v30, v33

    move/from16 v13, v30

    const/16 v30, 0x1

    add-int/lit8 v29, v29, 0x1

    move/from16 v6, v29

    move/from16 v29, v13

    move/from16 v30, v11

    aput-char v30, v28, v29

    .line 36
    nop

    .line 171
    move/from16 v28, v16

    const/16 v29, 0x3ff

    move/from16 v0, v28

    and-int/lit16 v0, v0, 0x3ff

    move/from16 v28, v0

    const v29, 0xdc00

    add-int v28, v28, v29

    move/from16 v0, v28

    int-to-char v0, v0

    move/from16 v28, v0

    move/from16 v11, v28

    const/16 v28, 0x0

    move/from16 v12, v28

    .line 35
    move-object/from16 v28, v5

    move/from16 v29, v6

    move/from16 v33, v29

    move/from16 v29, v33

    move/from16 v30, v33

    move/from16 v13, v30

    const/16 v30, 0x1

    add-int/lit8 v29, v29, 0x1

    move/from16 v6, v29

    move/from16 v29, v13

    move/from16 v30, v11

    aput-char v30, v28, v29

    .line 174
    :goto_17
    goto/16 :goto_15

    .line 173
    :cond_2a
    const v28, 0xfffd

    move/from16 v11, v28

    const/16 v28, 0x0

    move/from16 v12, v28

    .line 35
    move-object/from16 v28, v5

    move/from16 v29, v6

    move/from16 v33, v29

    move/from16 v29, v33

    move/from16 v30, v33

    move/from16 v13, v30

    const/16 v30, 0x1

    add-int/lit8 v29, v29, 0x1

    move/from16 v6, v29

    move/from16 v29, v13

    move/from16 v30, v11

    aput-char v30, v28, v29

    .line 36
    nop

    goto :goto_17

    .line 173
    :cond_2b
    const v28, 0xfffd

    move/from16 v11, v28

    const/16 v28, 0x0

    move/from16 v12, v28

    .line 35
    move-object/from16 v28, v5

    move/from16 v29, v6

    move/from16 v33, v29

    move/from16 v29, v33

    move/from16 v30, v33

    move/from16 v13, v30

    const/16 v30, 0x1

    add-int/lit8 v29, v29, 0x1

    move/from16 v6, v29

    move/from16 v29, v13

    move/from16 v30, v11

    aput-char v30, v28, v29

    .line 36
    nop

    goto/16 :goto_16

    .line 231
    :cond_2c
    move/from16 v28, v23

    move/from16 v16, v28

    const/16 v28, 0x0

    move/from16 v18, v28

    .line 164
    move/from16 v28, v16

    const v29, 0xfffd

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_2d

    .line 169
    move/from16 v28, v16

    const/16 v29, 0xa

    ushr-int/lit8 v28, v28, 0xa

    const v29, 0xd7c0

    add-int v28, v28, v29

    move/from16 v0, v28

    int-to-char v0, v0

    move/from16 v28, v0

    move/from16 v11, v28

    const/16 v28, 0x0

    move/from16 v12, v28

    .line 35
    move-object/from16 v28, v5

    move/from16 v29, v6

    move/from16 v33, v29

    move/from16 v29, v33

    move/from16 v30, v33

    move/from16 v13, v30

    const/16 v30, 0x1

    add-int/lit8 v29, v29, 0x1

    move/from16 v6, v29

    move/from16 v29, v13

    move/from16 v30, v11

    aput-char v30, v28, v29

    .line 36
    nop

    .line 171
    move/from16 v28, v16

    const/16 v29, 0x3ff

    move/from16 v0, v28

    and-int/lit16 v0, v0, 0x3ff

    move/from16 v28, v0

    const v29, 0xdc00

    add-int v28, v28, v29

    move/from16 v0, v28

    int-to-char v0, v0

    move/from16 v28, v0

    move/from16 v11, v28

    const/16 v28, 0x0

    move/from16 v12, v28

    .line 35
    move-object/from16 v28, v5

    move/from16 v29, v6

    move/from16 v33, v29

    move/from16 v29, v33

    move/from16 v30, v33

    move/from16 v13, v30

    const/16 v30, 0x1

    add-int/lit8 v29, v29, 0x1

    move/from16 v6, v29

    move/from16 v29, v13

    move/from16 v30, v11

    aput-char v30, v28, v29

    .line 174
    :goto_18
    nop

    goto/16 :goto_15

    .line 173
    :cond_2d
    const v28, 0xfffd

    move/from16 v11, v28

    const/16 v28, 0x0

    move/from16 v12, v28

    .line 35
    move-object/from16 v28, v5

    move/from16 v29, v6

    move/from16 v33, v29

    move/from16 v29, v33

    move/from16 v30, v33

    move/from16 v13, v30

    const/16 v30, 0x1

    add-int/lit8 v29, v29, 0x1

    move/from16 v6, v29

    move/from16 v29, v13

    move/from16 v30, v11

    aput-char v30, v28, v29

    .line 36
    nop

    goto :goto_18

    .line 235
    :cond_2e
    const v28, 0xfffd

    move/from16 v11, v28

    const/16 v28, 0x0

    move/from16 v12, v28

    .line 35
    move-object/from16 v28, v5

    move/from16 v29, v6

    move/from16 v33, v29

    move/from16 v29, v33

    move/from16 v30, v33

    move/from16 v13, v30

    const/16 v30, 0x1

    add-int/lit8 v29, v29, 0x1

    move/from16 v6, v29

    move/from16 v29, v13

    move/from16 v30, v11

    aput-char v30, v28, v29

    .line 36
    nop

    .line 236
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_3

    .line 240
    :cond_2f
    nop

    .line 38
    const/16 v28, 0x0

    move/from16 v7, v28

    move/from16 v28, v6

    move/from16 v8, v28

    const/16 v28, 0x0

    move/from16 v9, v28

    new-instance v28, Ljava/lang/String;

    move-object/from16 v33, v28

    move-object/from16 v28, v33

    move-object/from16 v29, v33

    move-object/from16 v30, v5

    move/from16 v31, v7

    move/from16 v32, v8

    invoke-direct/range {v29 .. v32}, Ljava/lang/String;-><init>([CII)V

    move-object/from16 v2, v28

    return-object v2
.end method

.method public static synthetic commonToUtf8String$default([BIIILjava/lang/Object;)Ljava/lang/String;
    .locals 8

    .prologue
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, v3

    const/4 v6, 0x1

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_0

    .line 27
    const/4 v5, 0x0

    move v1, v5

    :cond_0
    move v5, v3

    const/4 v6, 0x2

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_1

    move-object v5, v0

    array-length v5, v5

    move v2, v5

    :cond_1
    move-object v5, v0

    move v6, v1

    move v7, v2

    invoke-static {v5, v6, v7}, Lokio/internal/_Utf8Kt;->commonToUtf8String([BII)Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    return-object v0
.end method
