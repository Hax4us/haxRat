.class public final Lokio/Utf8;
.super Ljava/lang/Object;
.source "Utf8.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000D\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0005\n\u0000\n\u0002\u0010\u000c\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0012\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0002\u001a\u0011\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u0001H\u0080\u0008\u001a\u0011\u0010\u000e\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\u0007H\u0080\u0008\u001a1\u0010\u0010\u001a\u00020\u0001*\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00012\u0006\u0010\u0013\u001a\u00020\u00012\u0012\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00160\u0015H\u0080\u0008\u001a1\u0010\u0017\u001a\u00020\u0001*\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00012\u0006\u0010\u0013\u001a\u00020\u00012\u0012\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00160\u0015H\u0080\u0008\u001a1\u0010\u0018\u001a\u00020\u0001*\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00012\u0006\u0010\u0013\u001a\u00020\u00012\u0012\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00160\u0015H\u0080\u0008\u001a1\u0010\u0019\u001a\u00020\u0016*\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00012\u0006\u0010\u0013\u001a\u00020\u00012\u0012\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00160\u0015H\u0080\u0008\u001a1\u0010\u001a\u001a\u00020\u0016*\u00020\u001b2\u0006\u0010\u0012\u001a\u00020\u00012\u0006\u0010\u0013\u001a\u00020\u00012\u0012\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00160\u0015H\u0080\u0008\u001a1\u0010\u001c\u001a\u00020\u0016*\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00012\u0006\u0010\u0013\u001a\u00020\u00012\u0012\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00160\u0015H\u0080\u0008\u001a%\u0010\u001d\u001a\u00020\u001e*\u00020\u001b2\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u00012\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u0001H\u0007\u00a2\u0006\u0002\u0008\u001f\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0080T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0001X\u0080T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0003\u001a\u00020\u0001X\u0080T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0004\u001a\u00020\u0001X\u0080T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0005\u001a\u00020\u0001X\u0080T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0006\u001a\u00020\u0007X\u0080T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0008\u001a\u00020\tX\u0080T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\n\u001a\u00020\u0001X\u0080T\u00a2\u0006\u0002\n\u0000\u00a8\u0006 "
    }
    d2 = {
        "HIGH_SURROGATE_HEADER",
        "",
        "LOG_SURROGATE_HEADER",
        "MASK_2BYTES",
        "MASK_3BYTES",
        "MASK_4BYTES",
        "REPLACEMENT_BYTE",
        "",
        "REPLACEMENT_CHARACTER",
        "",
        "REPLACEMENT_CODE_POINT",
        "isIsoControl",
        "",
        "codePoint",
        "isUtf8Continuation",
        "byte",
        "process2Utf8Bytes",
        "",
        "beginIndex",
        "endIndex",
        "yield",
        "Lkotlin/Function1;",
        "",
        "process3Utf8Bytes",
        "process4Utf8Bytes",
        "processUtf16Chars",
        "processUtf8Bytes",
        "",
        "processUtf8CodePoints",
        "utf8Size",
        "",
        "size",
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
    name = "Utf8"
.end annotation


# static fields
.field public static final HIGH_SURROGATE_HEADER:I = 0xd7c0

.field public static final LOG_SURROGATE_HEADER:I = 0xdc00

.field public static final MASK_2BYTES:I = 0xf80

.field public static final MASK_3BYTES:I = -0x1e080

.field public static final MASK_4BYTES:I = 0x381f80

.field public static final REPLACEMENT_BYTE:B = 0x3ft

.field public static final REPLACEMENT_CHARACTER:C = '\ufffd'

.field public static final REPLACEMENT_CODE_POINT:I = 0xfffd


# direct methods
.method public static final isIsoControl(I)Z
    .locals 6

    .prologue
    move v0, p0

    const/4 v3, 0x0

    move v1, v3

    .line 122
    const/16 v3, 0x1f

    const/4 v4, 0x0

    move v5, v0

    move v2, v5

    move v5, v2

    if-gt v4, v5, :cond_1

    move v4, v2

    if-ge v3, v4, :cond_3

    :goto_0
    const/16 v3, 0x9f

    const/16 v4, 0x7f

    move v5, v0

    move v2, v5

    move v5, v2

    if-le v4, v5, :cond_2

    :cond_0
    const/4 v3, 0x0

    :goto_1
    move v0, v3

    return v0

    :cond_1
    goto :goto_0

    :cond_2
    move v4, v2

    if-lt v3, v4, :cond_0

    :cond_3
    const/4 v3, 0x1

    goto :goto_1
.end method

.method public static final isUtf8Continuation(B)Z
    .locals 7

    .prologue
    move v0, p0

    const/4 v5, 0x0

    move v1, v5

    .line 127
    move v5, v0

    move v2, v5

    const/16 v5, 0xc0

    move v3, v5

    const/4 v5, 0x0

    move v4, v5

    .line 550
    move v5, v2

    move v6, v3

    and-int/2addr v5, v6

    const/16 v6, 0x80

    if-ne v5, v6, :cond_0

    const/4 v5, 0x1

    :goto_0
    move v0, v5

    return v0

    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public static final process2Utf8Bytes([BIILkotlin/jvm/functions/Function1;)I
    .locals 14
    .param p0    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lkotlin/jvm/functions/Function1",
            "<-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)I"
        }
    .end annotation

    .prologue
    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    const/4 v11, 0x0

    move v4, v11

    move-object v11, v0

    const-string v12, "$this$process2Utf8Bytes"

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v11, v3

    const-string v12, "yield"

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 393
    move v11, v2

    move v12, v1

    const/4 v13, 0x1

    add-int/lit8 v12, v12, 0x1

    if-gt v11, v12, :cond_0

    .line 394
    move-object v11, v3

    const v12, 0xfffd

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v11, v12}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .line 396
    const/4 v11, 0x1

    move v0, v11

    .line 418
    :goto_0
    return v0

    .line 399
    :cond_0
    move-object v11, v0

    move v12, v1

    aget-byte v11, v11, v12

    move v5, v11

    .line 400
    move-object v11, v0

    move v12, v1

    const/4 v13, 0x1

    add-int/lit8 v12, v12, 0x1

    aget-byte v11, v11, v12

    move v6, v11

    .line 401
    const/4 v11, 0x0

    move v7, v11

    .line 833
    move v11, v6

    move v8, v11

    const/16 v11, 0xc0

    move v9, v11

    const/4 v11, 0x0

    move v10, v11

    .line 834
    move v11, v8

    move v12, v9

    and-int/2addr v11, v12

    const/16 v12, 0x80

    if-ne v11, v12, :cond_1

    const/4 v11, 0x1

    :goto_1
    if-nez v11, :cond_2

    .line 402
    move-object v11, v3

    const v12, 0xfffd

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v11, v12}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .line 403
    const/4 v11, 0x1

    move v0, v11

    goto :goto_0

    .line 834
    :cond_1
    const/4 v11, 0x0

    goto :goto_1

    .line 406
    :cond_2
    const/16 v11, 0xf80

    .line 408
    move v12, v6

    xor-int/2addr v11, v12

    .line 409
    move v12, v5

    const/4 v13, 0x6

    shl-int/lit8 v12, v12, 0x6

    xor-int/2addr v11, v12

    .line 406
    move v7, v11

    .line 411
    nop

    .line 412
    move v11, v7

    const/16 v12, 0x80

    if-ge v11, v12, :cond_3

    .line 413
    move-object v11, v3

    const v12, 0xfffd

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v11, v12}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .line 418
    :goto_2
    const/4 v11, 0x2

    move v0, v11

    goto :goto_0

    .line 416
    :cond_3
    move-object v11, v3

    move v12, v7

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v11, v12}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    goto :goto_2
.end method

.method public static final process3Utf8Bytes([BIILkotlin/jvm/functions/Function1;)I
    .locals 15
    .param p0    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lkotlin/jvm/functions/Function1",
            "<-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)I"
        }
    .end annotation

    .prologue
    move-object v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    const/4 v12, 0x0

    move v4, v12

    move-object v12, v0

    const-string v13, "$this$process3Utf8Bytes"

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v12, v3

    const-string v13, "yield"

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 434
    move v12, v2

    move v13, v1

    const/4 v14, 0x2

    add-int/lit8 v13, v13, 0x2

    if-gt v12, v13, :cond_3

    .line 436
    move-object v12, v3

    const v13, 0xfffd

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v12, v13}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 437
    move v12, v2

    move v13, v1

    const/4 v14, 0x1

    add-int/lit8 v13, v13, 0x1

    if-le v12, v13, :cond_0

    move-object v12, v0

    move v13, v1

    const/4 v14, 0x1

    add-int/lit8 v13, v13, 0x1

    aget-byte v12, v12, v13

    move v5, v12

    const/4 v12, 0x0

    move v6, v12

    .line 835
    move v12, v5

    move v7, v12

    const/16 v12, 0xc0

    move v8, v12

    const/4 v12, 0x0

    move v9, v12

    .line 836
    move v12, v7

    move v13, v8

    and-int/2addr v12, v13

    const/16 v13, 0x80

    if-ne v12, v13, :cond_1

    const/4 v12, 0x1

    :goto_0
    if-nez v12, :cond_2

    .line 440
    :cond_0
    const/4 v12, 0x1

    move v0, v12

    .line 475
    :goto_1
    return v0

    .line 836
    :cond_1
    const/4 v12, 0x0

    goto :goto_0

    .line 443
    :cond_2
    const/4 v12, 0x2

    move v0, v12

    goto :goto_1

    .line 444
    :cond_3
    move-object v12, v0

    move v13, v1

    aget-byte v12, v12, v13

    move v5, v12

    .line 448
    move-object v12, v0

    move v13, v1

    const/4 v14, 0x1

    add-int/lit8 v13, v13, 0x1

    aget-byte v12, v12, v13

    move v6, v12

    .line 449
    const/4 v12, 0x0

    move v7, v12

    .line 837
    move v12, v6

    move v8, v12

    const/16 v12, 0xc0

    move v9, v12

    const/4 v12, 0x0

    move v10, v12

    .line 838
    move v12, v8

    move v13, v9

    and-int/2addr v12, v13

    const/16 v13, 0x80

    if-ne v12, v13, :cond_4

    const/4 v12, 0x1

    :goto_2
    if-nez v12, :cond_5

    .line 450
    move-object v12, v3

    const v13, 0xfffd

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v12, v13}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 451
    const/4 v12, 0x1

    move v0, v12

    goto :goto_1

    .line 838
    :cond_4
    const/4 v12, 0x0

    goto :goto_2

    .line 453
    :cond_5
    move-object v12, v0

    move v13, v1

    const/4 v14, 0x2

    add-int/lit8 v13, v13, 0x2

    aget-byte v12, v12, v13

    move v7, v12

    .line 454
    const/4 v12, 0x0

    move v8, v12

    .line 839
    move v12, v7

    move v9, v12

    const/16 v12, 0xc0

    move v10, v12

    const/4 v12, 0x0

    move v11, v12

    .line 840
    move v12, v9

    move v13, v10

    and-int/2addr v12, v13

    const/16 v13, 0x80

    if-ne v12, v13, :cond_6

    const/4 v12, 0x1

    :goto_3
    if-nez v12, :cond_7

    .line 455
    move-object v12, v3

    const v13, 0xfffd

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v12, v13}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 456
    const/4 v12, 0x2

    move v0, v12

    goto :goto_1

    .line 840
    :cond_6
    const/4 v12, 0x0

    goto :goto_3

    .line 459
    :cond_7
    const v12, -0x1e080

    .line 461
    move v13, v7

    xor-int/2addr v12, v13

    .line 462
    move v13, v6

    const/4 v14, 0x6

    shl-int/lit8 v13, v13, 0x6

    xor-int/2addr v12, v13

    .line 463
    move v13, v5

    const/16 v14, 0xc

    shl-int/lit8 v13, v13, 0xc

    xor-int/2addr v12, v13

    .line 459
    move v8, v12

    .line 465
    nop

    .line 466
    move v12, v8

    const/16 v13, 0x800

    if-ge v12, v13, :cond_8

    .line 467
    move-object v12, v3

    const v13, 0xfffd

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v12, v13}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 475
    :goto_4
    const/4 v12, 0x3

    move v0, v12

    goto/16 :goto_1

    .line 469
    :cond_8
    const v12, 0xdfff

    const v13, 0xd800

    move v14, v8

    move v9, v14

    move v14, v9

    if-le v13, v14, :cond_a

    .line 473
    :cond_9
    move-object v12, v3

    move v13, v8

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v12, v13}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    goto :goto_4

    .line 469
    :cond_a
    move v13, v9

    if-lt v12, v13, :cond_9

    .line 470
    move-object v12, v3

    const v13, 0xfffd

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v12, v13}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    goto :goto_4
.end method

.method public static final process4Utf8Bytes([BIILkotlin/jvm/functions/Function1;)I
    .locals 16
    .param p0    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lkotlin/jvm/functions/Function1",
            "<-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)I"
        }
    .end annotation

    .prologue
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    const/4 v13, 0x0

    move v4, v13

    move-object v13, v0

    const-string v14, "$this$process4Utf8Bytes"

    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v13, v3

    const-string v14, "yield"

    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 492
    move v13, v2

    move v14, v1

    const/4 v15, 0x3

    add-int/lit8 v14, v14, 0x3

    if-gt v13, v14, :cond_6

    .line 494
    move-object v13, v3

    const v14, 0xfffd

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v13, v14}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .line 495
    move v13, v2

    move v14, v1

    const/4 v15, 0x1

    add-int/lit8 v14, v14, 0x1

    if-le v13, v14, :cond_0

    move-object v13, v0

    move v14, v1

    const/4 v15, 0x1

    add-int/lit8 v14, v14, 0x1

    aget-byte v13, v13, v14

    move v5, v13

    const/4 v13, 0x0

    move v6, v13

    .line 841
    move v13, v5

    move v7, v13

    const/16 v13, 0xc0

    move v8, v13

    const/4 v13, 0x0

    move v9, v13

    .line 842
    move v13, v7

    move v14, v8

    and-int/2addr v13, v14

    const/16 v14, 0x80

    if-ne v13, v14, :cond_1

    const/4 v13, 0x1

    :goto_0
    if-nez v13, :cond_2

    .line 498
    :cond_0
    const/4 v13, 0x1

    move v0, v13

    .line 546
    :goto_1
    return v0

    .line 842
    :cond_1
    const/4 v13, 0x0

    goto :goto_0

    .line 499
    :cond_2
    move v13, v2

    move v14, v1

    const/4 v15, 0x2

    add-int/lit8 v14, v14, 0x2

    if-le v13, v14, :cond_3

    move-object v13, v0

    move v14, v1

    const/4 v15, 0x2

    add-int/lit8 v14, v14, 0x2

    aget-byte v13, v13, v14

    move v5, v13

    const/4 v13, 0x0

    move v6, v13

    .line 843
    move v13, v5

    move v7, v13

    const/16 v13, 0xc0

    move v8, v13

    const/4 v13, 0x0

    move v9, v13

    .line 844
    move v13, v7

    move v14, v8

    and-int/2addr v13, v14

    const/16 v14, 0x80

    if-ne v13, v14, :cond_4

    const/4 v13, 0x1

    :goto_2
    if-nez v13, :cond_5

    .line 502
    :cond_3
    const/4 v13, 0x2

    move v0, v13

    goto :goto_1

    .line 844
    :cond_4
    const/4 v13, 0x0

    goto :goto_2

    .line 505
    :cond_5
    const/4 v13, 0x3

    move v0, v13

    goto :goto_1

    .line 506
    :cond_6
    move-object v13, v0

    move v14, v1

    aget-byte v13, v13, v14

    move v5, v13

    .line 510
    move-object v13, v0

    move v14, v1

    const/4 v15, 0x1

    add-int/lit8 v14, v14, 0x1

    aget-byte v13, v13, v14

    move v6, v13

    .line 511
    const/4 v13, 0x0

    move v7, v13

    .line 845
    move v13, v6

    move v8, v13

    const/16 v13, 0xc0

    move v9, v13

    const/4 v13, 0x0

    move v10, v13

    .line 846
    move v13, v8

    move v14, v9

    and-int/2addr v13, v14

    const/16 v14, 0x80

    if-ne v13, v14, :cond_7

    const/4 v13, 0x1

    :goto_3
    if-nez v13, :cond_8

    .line 512
    move-object v13, v3

    const v14, 0xfffd

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v13, v14}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .line 513
    const/4 v13, 0x1

    move v0, v13

    goto :goto_1

    .line 846
    :cond_7
    const/4 v13, 0x0

    goto :goto_3

    .line 515
    :cond_8
    move-object v13, v0

    move v14, v1

    const/4 v15, 0x2

    add-int/lit8 v14, v14, 0x2

    aget-byte v13, v13, v14

    move v7, v13

    .line 516
    const/4 v13, 0x0

    move v8, v13

    .line 847
    move v13, v7

    move v9, v13

    const/16 v13, 0xc0

    move v10, v13

    const/4 v13, 0x0

    move v11, v13

    .line 848
    move v13, v9

    move v14, v10

    and-int/2addr v13, v14

    const/16 v14, 0x80

    if-ne v13, v14, :cond_9

    const/4 v13, 0x1

    :goto_4
    if-nez v13, :cond_a

    .line 517
    move-object v13, v3

    const v14, 0xfffd

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v13, v14}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .line 518
    const/4 v13, 0x2

    move v0, v13

    goto/16 :goto_1

    .line 848
    :cond_9
    const/4 v13, 0x0

    goto :goto_4

    .line 520
    :cond_a
    move-object v13, v0

    move v14, v1

    const/4 v15, 0x3

    add-int/lit8 v14, v14, 0x3

    aget-byte v13, v13, v14

    move v8, v13

    .line 521
    const/4 v13, 0x0

    move v9, v13

    .line 849
    move v13, v8

    move v10, v13

    const/16 v13, 0xc0

    move v11, v13

    const/4 v13, 0x0

    move v12, v13

    .line 850
    move v13, v10

    move v14, v11

    and-int/2addr v13, v14

    const/16 v14, 0x80

    if-ne v13, v14, :cond_b

    const/4 v13, 0x1

    :goto_5
    if-nez v13, :cond_c

    .line 522
    move-object v13, v3

    const v14, 0xfffd

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v13, v14}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .line 523
    const/4 v13, 0x3

    move v0, v13

    goto/16 :goto_1

    .line 850
    :cond_b
    const/4 v13, 0x0

    goto :goto_5

    .line 526
    :cond_c
    const v13, 0x381f80

    .line 528
    move v14, v8

    xor-int/2addr v13, v14

    .line 529
    move v14, v7

    const/4 v15, 0x6

    shl-int/lit8 v14, v14, 0x6

    xor-int/2addr v13, v14

    .line 530
    move v14, v6

    const/16 v15, 0xc

    shl-int/lit8 v14, v14, 0xc

    xor-int/2addr v13, v14

    .line 531
    move v14, v5

    const/16 v15, 0x12

    shl-int/lit8 v14, v14, 0x12

    xor-int/2addr v13, v14

    .line 526
    move v9, v13

    .line 533
    nop

    .line 534
    move v13, v9

    const v14, 0x10ffff

    if-le v13, v14, :cond_d

    .line 535
    move-object v13, v3

    const v14, 0xfffd

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v13, v14}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .line 546
    :goto_6
    const/4 v13, 0x4

    move v0, v13

    goto/16 :goto_1

    .line 537
    :cond_d
    const v13, 0xdfff

    const v14, 0xd800

    move v15, v9

    move v10, v15

    move v15, v10

    if-le v14, v15, :cond_f

    .line 540
    :cond_e
    move v13, v9

    const/high16 v14, 0x10000

    if-ge v13, v14, :cond_10

    .line 541
    move-object v13, v3

    const v14, 0xfffd

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v13, v14}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    goto :goto_6

    .line 537
    :cond_f
    move v14, v10

    if-lt v13, v14, :cond_e

    .line 538
    move-object v13, v3

    const v14, 0xfffd

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v13, v14}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    goto :goto_6

    .line 544
    :cond_10
    move-object v13, v3

    move v14, v9

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v13, v14}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    goto :goto_6
.end method

.method public static final processUtf16Chars([BIILkotlin/jvm/functions/Function1;)V
    .locals 26
    .param p0    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lkotlin/jvm/functions/Function1",
            "<-",
            "Ljava/lang/Character;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .prologue
    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    const/16 v23, 0x0

    move/from16 v6, v23

    move-object/from16 v23, v2

    const-string v24, "$this$processUtf16Chars"

    invoke-static/range {v23 .. v24}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v23, v5

    const-string v24, "yield"

    invoke-static/range {v23 .. v24}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 256
    move/from16 v23, v3

    move/from16 v7, v23

    .line 257
    :goto_0
    move/from16 v23, v7

    move/from16 v24, v4

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_2d

    .line 258
    move-object/from16 v23, v2

    move/from16 v24, v7

    aget-byte v23, v23, v24

    move/from16 v8, v23

    .line 259
    nop

    .line 260
    move/from16 v23, v8

    if-ltz v23, :cond_0

    .line 262
    move-object/from16 v23, v5

    move/from16 v24, v8

    move/from16 v0, v24

    int-to-char v0, v0

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v24

    invoke-interface/range {v23 .. v24}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    .line 263
    add-int/lit8 v7, v7, 0x1

    .line 267
    :goto_1
    move/from16 v23, v7

    move/from16 v24, v4

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_1

    move-object/from16 v23, v2

    move/from16 v24, v7

    aget-byte v23, v23, v24

    if-ltz v23, :cond_1

    .line 268
    move-object/from16 v23, v5

    move-object/from16 v24, v2

    move/from16 v25, v7

    add-int/lit8 v7, v7, 0x1

    aget-byte v24, v24, v25

    move/from16 v0, v24

    int-to-char v0, v0

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v24

    invoke-interface/range {v23 .. v24}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    .line 267
    goto :goto_1

    .line 271
    :cond_0
    move/from16 v23, v8

    move/from16 v9, v23

    const/16 v23, 0x5

    move/from16 v10, v23

    const/16 v23, 0x0

    move/from16 v11, v23

    .line 692
    move/from16 v23, v9

    move/from16 v24, v10

    shr-int v23, v23, v24

    const/16 v24, -0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_6

    .line 273
    move/from16 v23, v7

    move-object/from16 v24, v2

    move-object/from16 v9, v24

    move/from16 v21, v23

    const/16 v23, 0x0

    move/from16 v10, v23

    .line 693
    move/from16 v23, v4

    move/from16 v24, v7

    const/16 v25, 0x1

    add-int/lit8 v24, v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-gt v0, v1, :cond_2

    .line 694
    const v23, 0xfffd

    move/from16 v11, v23

    const/16 v23, 0x0

    move/from16 v12, v23

    .line 273
    move-object/from16 v23, v5

    move/from16 v24, v11

    move/from16 v0, v24

    int-to-char v0, v0

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v24

    invoke-interface/range {v23 .. v24}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    .line 696
    const/16 v23, 0x1

    .line 720
    :goto_2
    move/from16 v22, v23

    move/from16 v23, v21

    move/from16 v24, v22

    .line 273
    add-int v23, v23, v24

    move/from16 v7, v23

    .line 301
    :cond_1
    :goto_3
    goto/16 :goto_0

    .line 699
    :cond_2
    move-object/from16 v23, v9

    move/from16 v24, v7

    aget-byte v23, v23, v24

    move/from16 v13, v23

    .line 700
    move-object/from16 v23, v9

    move/from16 v24, v7

    const/16 v25, 0x1

    add-int/lit8 v24, v24, 0x1

    aget-byte v23, v23, v24

    move/from16 v14, v23

    .line 701
    const/16 v23, 0x0

    move/from16 v15, v23

    .line 702
    move/from16 v23, v14

    move/from16 v16, v23

    const/16 v23, 0xc0

    move/from16 v17, v23

    const/16 v23, 0x0

    move/from16 v18, v23

    .line 703
    move/from16 v23, v16

    move/from16 v24, v17

    and-int v23, v23, v24

    const/16 v24, 0x80

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_3

    const/16 v23, 0x1

    :goto_4
    if-nez v23, :cond_4

    .line 704
    const v23, 0xfffd

    move/from16 v11, v23

    const/16 v23, 0x0

    move/from16 v12, v23

    .line 273
    move-object/from16 v23, v5

    move/from16 v24, v11

    move/from16 v0, v24

    int-to-char v0, v0

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v24

    invoke-interface/range {v23 .. v24}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    .line 705
    const/16 v23, 0x1

    goto :goto_2

    .line 703
    :cond_3
    const/16 v23, 0x0

    goto :goto_4

    .line 708
    :cond_4
    const/16 v23, 0xf80

    .line 710
    move/from16 v24, v14

    xor-int v23, v23, v24

    .line 711
    move/from16 v24, v13

    const/16 v25, 0x6

    shl-int/lit8 v24, v24, 0x6

    xor-int v23, v23, v24

    .line 708
    move/from16 v15, v23

    .line 713
    nop

    .line 714
    move/from16 v23, v15

    const/16 v24, 0x80

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_5

    .line 715
    const v23, 0xfffd

    move/from16 v11, v23

    const/16 v23, 0x0

    move/from16 v12, v23

    .line 273
    move-object/from16 v23, v5

    move/from16 v24, v11

    move/from16 v0, v24

    int-to-char v0, v0

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v24

    invoke-interface/range {v23 .. v24}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    .line 720
    :goto_5
    const/16 v23, 0x2

    goto/16 :goto_2

    .line 718
    :cond_5
    move/from16 v23, v15

    move/from16 v11, v23

    const/16 v23, 0x0

    move/from16 v12, v23

    .line 273
    move-object/from16 v23, v5

    move/from16 v24, v11

    move/from16 v0, v24

    int-to-char v0, v0

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v24

    invoke-interface/range {v23 .. v24}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    goto :goto_5

    .line 275
    :cond_6
    move/from16 v23, v8

    move/from16 v9, v23

    const/16 v23, 0x4

    move/from16 v10, v23

    const/16 v23, 0x0

    move/from16 v11, v23

    .line 722
    move/from16 v23, v9

    move/from16 v24, v10

    shr-int v23, v23, v24

    const/16 v24, -0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_12

    .line 277
    move/from16 v23, v7

    move-object/from16 v24, v2

    move-object/from16 v9, v24

    move/from16 v21, v23

    const/16 v23, 0x0

    move/from16 v10, v23

    .line 723
    move/from16 v23, v4

    move/from16 v24, v7

    const/16 v25, 0x2

    add-int/lit8 v24, v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-gt v0, v1, :cond_a

    .line 725
    const v23, 0xfffd

    move/from16 v11, v23

    const/16 v23, 0x0

    move/from16 v12, v23

    .line 277
    move-object/from16 v23, v5

    move/from16 v24, v11

    move/from16 v0, v24

    int-to-char v0, v0

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v24

    invoke-interface/range {v23 .. v24}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    .line 726
    move/from16 v23, v4

    move/from16 v24, v7

    const/16 v25, 0x1

    add-int/lit8 v24, v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_7

    move-object/from16 v23, v9

    move/from16 v24, v7

    const/16 v25, 0x1

    add-int/lit8 v24, v24, 0x1

    aget-byte v23, v23, v24

    move/from16 v13, v23

    const/16 v23, 0x0

    move/from16 v14, v23

    .line 727
    move/from16 v23, v13

    move/from16 v15, v23

    const/16 v23, 0xc0

    move/from16 v16, v23

    const/16 v23, 0x0

    move/from16 v17, v23

    .line 728
    move/from16 v23, v15

    move/from16 v24, v16

    and-int v23, v23, v24

    const/16 v24, 0x80

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_8

    const/16 v23, 0x1

    :goto_6
    if-nez v23, :cond_9

    .line 729
    :cond_7
    const/16 v23, 0x1

    .line 768
    :goto_7
    move/from16 v22, v23

    move/from16 v23, v21

    move/from16 v24, v22

    .line 277
    add-int v23, v23, v24

    move/from16 v7, v23

    goto/16 :goto_3

    .line 728
    :cond_8
    const/16 v23, 0x0

    goto :goto_6

    .line 732
    :cond_9
    const/16 v23, 0x2

    goto :goto_7

    .line 736
    :cond_a
    move-object/from16 v23, v9

    move/from16 v24, v7

    aget-byte v23, v23, v24

    move/from16 v13, v23

    .line 737
    move-object/from16 v23, v9

    move/from16 v24, v7

    const/16 v25, 0x1

    add-int/lit8 v24, v24, 0x1

    aget-byte v23, v23, v24

    move/from16 v14, v23

    .line 738
    const/16 v23, 0x0

    move/from16 v15, v23

    .line 739
    move/from16 v23, v14

    move/from16 v16, v23

    const/16 v23, 0xc0

    move/from16 v17, v23

    const/16 v23, 0x0

    move/from16 v18, v23

    .line 740
    move/from16 v23, v16

    move/from16 v24, v17

    and-int v23, v23, v24

    const/16 v24, 0x80

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_b

    const/16 v23, 0x1

    :goto_8
    if-nez v23, :cond_c

    .line 741
    const v23, 0xfffd

    move/from16 v11, v23

    const/16 v23, 0x0

    move/from16 v12, v23

    .line 277
    move-object/from16 v23, v5

    move/from16 v24, v11

    move/from16 v0, v24

    int-to-char v0, v0

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v24

    invoke-interface/range {v23 .. v24}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    .line 742
    const/16 v23, 0x1

    goto :goto_7

    .line 740
    :cond_b
    const/16 v23, 0x0

    goto :goto_8

    .line 744
    :cond_c
    move-object/from16 v23, v9

    move/from16 v24, v7

    const/16 v25, 0x2

    add-int/lit8 v24, v24, 0x2

    aget-byte v23, v23, v24

    move/from16 v15, v23

    .line 745
    const/16 v23, 0x0

    move/from16 v16, v23

    .line 746
    move/from16 v23, v15

    move/from16 v17, v23

    const/16 v23, 0xc0

    move/from16 v18, v23

    const/16 v23, 0x0

    move/from16 v19, v23

    .line 747
    move/from16 v23, v17

    move/from16 v24, v18

    and-int v23, v23, v24

    const/16 v24, 0x80

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_d

    const/16 v23, 0x1

    :goto_9
    if-nez v23, :cond_e

    .line 748
    const v23, 0xfffd

    move/from16 v11, v23

    const/16 v23, 0x0

    move/from16 v12, v23

    .line 277
    move-object/from16 v23, v5

    move/from16 v24, v11

    move/from16 v0, v24

    int-to-char v0, v0

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v24

    invoke-interface/range {v23 .. v24}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    .line 749
    const/16 v23, 0x2

    goto/16 :goto_7

    .line 747
    :cond_d
    const/16 v23, 0x0

    goto :goto_9

    .line 752
    :cond_e
    const v23, -0x1e080

    .line 754
    move/from16 v24, v15

    xor-int v23, v23, v24

    .line 755
    move/from16 v24, v14

    const/16 v25, 0x6

    shl-int/lit8 v24, v24, 0x6

    xor-int v23, v23, v24

    .line 756
    move/from16 v24, v13

    const/16 v25, 0xc

    shl-int/lit8 v24, v24, 0xc

    xor-int v23, v23, v24

    .line 752
    move/from16 v16, v23

    .line 758
    nop

    .line 759
    move/from16 v23, v16

    const/16 v24, 0x800

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_f

    .line 760
    const v23, 0xfffd

    move/from16 v11, v23

    const/16 v23, 0x0

    move/from16 v12, v23

    .line 277
    move-object/from16 v23, v5

    move/from16 v24, v11

    move/from16 v0, v24

    int-to-char v0, v0

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v24

    invoke-interface/range {v23 .. v24}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    .line 768
    :goto_a
    const/16 v23, 0x3

    goto/16 :goto_7

    .line 762
    :cond_f
    const v23, 0xdfff

    const v24, 0xd800

    move/from16 v25, v16

    move/from16 v17, v25

    move/from16 v25, v17

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_11

    .line 766
    :cond_10
    move/from16 v23, v16

    move/from16 v11, v23

    const/16 v23, 0x0

    move/from16 v12, v23

    .line 277
    move-object/from16 v23, v5

    move/from16 v24, v11

    move/from16 v0, v24

    int-to-char v0, v0

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v24

    invoke-interface/range {v23 .. v24}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    goto :goto_a

    .line 762
    :cond_11
    move/from16 v24, v17

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_10

    .line 763
    const v23, 0xfffd

    move/from16 v11, v23

    const/16 v23, 0x0

    move/from16 v12, v23

    .line 277
    move-object/from16 v23, v5

    move/from16 v24, v11

    move/from16 v0, v24

    int-to-char v0, v0

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v24

    invoke-interface/range {v23 .. v24}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    goto :goto_a

    .line 279
    :cond_12
    move/from16 v23, v8

    move/from16 v9, v23

    const/16 v23, 0x3

    move/from16 v10, v23

    const/16 v23, 0x0

    move/from16 v11, v23

    .line 770
    move/from16 v23, v9

    move/from16 v24, v10

    shr-int v23, v23, v24

    const/16 v24, -0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_2c

    .line 281
    move/from16 v23, v7

    move-object/from16 v24, v2

    move-object/from16 v9, v24

    move/from16 v21, v23

    const/16 v23, 0x0

    move/from16 v10, v23

    .line 771
    move/from16 v23, v4

    move/from16 v24, v7

    const/16 v25, 0x3

    add-int/lit8 v24, v24, 0x3

    move/from16 v0, v23

    move/from16 v1, v24

    if-gt v0, v1, :cond_1a

    .line 773
    const v23, 0xfffd

    move/from16 v11, v23

    const/16 v23, 0x0

    move/from16 v12, v23

    .line 282
    move/from16 v23, v11

    const v24, 0xfffd

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_14

    .line 287
    move-object/from16 v23, v5

    move/from16 v24, v11

    const/16 v25, 0xa

    ushr-int/lit8 v24, v24, 0xa

    const v25, 0xd7c0

    add-int v24, v24, v25

    move/from16 v0, v24

    int-to-char v0, v0

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v24

    invoke-interface/range {v23 .. v24}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    .line 289
    move-object/from16 v23, v5

    move/from16 v24, v11

    const/16 v25, 0x3ff

    move/from16 v0, v24

    and-int/lit16 v0, v0, 0x3ff

    move/from16 v24, v0

    const v25, 0xdc00

    add-int v24, v24, v25

    move/from16 v0, v24

    int-to-char v0, v0

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v24

    invoke-interface/range {v23 .. v24}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    .line 292
    :goto_b
    nop

    .line 774
    move/from16 v23, v4

    move/from16 v24, v7

    const/16 v25, 0x1

    add-int/lit8 v24, v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_13

    move-object/from16 v23, v9

    move/from16 v24, v7

    const/16 v25, 0x1

    add-int/lit8 v24, v24, 0x1

    aget-byte v23, v23, v24

    move/from16 v13, v23

    const/16 v23, 0x0

    move/from16 v14, v23

    .line 775
    move/from16 v23, v13

    move/from16 v15, v23

    const/16 v23, 0xc0

    move/from16 v16, v23

    const/16 v23, 0x0

    move/from16 v17, v23

    .line 776
    move/from16 v23, v15

    move/from16 v24, v16

    and-int v23, v23, v24

    const/16 v24, 0x80

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_15

    const/16 v23, 0x1

    :goto_c
    if-nez v23, :cond_16

    .line 777
    :cond_13
    const/16 v23, 0x1

    .line 831
    :goto_d
    move/from16 v22, v23

    move/from16 v23, v21

    move/from16 v24, v22

    .line 281
    add-int v23, v23, v24

    move/from16 v7, v23

    goto/16 :goto_3

    .line 291
    :cond_14
    move-object/from16 v23, v5

    const v24, 0xfffd

    invoke-static/range {v24 .. v24}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v24

    invoke-interface/range {v23 .. v24}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    goto :goto_b

    .line 776
    :cond_15
    const/16 v23, 0x0

    goto :goto_c

    .line 778
    :cond_16
    move/from16 v23, v4

    move/from16 v24, v7

    const/16 v25, 0x2

    add-int/lit8 v24, v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_17

    move-object/from16 v23, v9

    move/from16 v24, v7

    const/16 v25, 0x2

    add-int/lit8 v24, v24, 0x2

    aget-byte v23, v23, v24

    move/from16 v13, v23

    const/16 v23, 0x0

    move/from16 v14, v23

    .line 779
    move/from16 v23, v13

    move/from16 v15, v23

    const/16 v23, 0xc0

    move/from16 v16, v23

    const/16 v23, 0x0

    move/from16 v17, v23

    .line 780
    move/from16 v23, v15

    move/from16 v24, v16

    and-int v23, v23, v24

    const/16 v24, 0x80

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_18

    const/16 v23, 0x1

    :goto_e
    if-nez v23, :cond_19

    .line 781
    :cond_17
    const/16 v23, 0x2

    goto :goto_d

    .line 780
    :cond_18
    const/16 v23, 0x0

    goto :goto_e

    .line 784
    :cond_19
    const/16 v23, 0x3

    goto :goto_d

    .line 788
    :cond_1a
    move-object/from16 v23, v9

    move/from16 v24, v7

    aget-byte v23, v23, v24

    move/from16 v13, v23

    .line 789
    move-object/from16 v23, v9

    move/from16 v24, v7

    const/16 v25, 0x1

    add-int/lit8 v24, v24, 0x1

    aget-byte v23, v23, v24

    move/from16 v14, v23

    .line 790
    const/16 v23, 0x0

    move/from16 v15, v23

    .line 791
    move/from16 v23, v14

    move/from16 v16, v23

    const/16 v23, 0xc0

    move/from16 v17, v23

    const/16 v23, 0x0

    move/from16 v18, v23

    .line 792
    move/from16 v23, v16

    move/from16 v24, v17

    and-int v23, v23, v24

    const/16 v24, 0x80

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_1b

    const/16 v23, 0x1

    :goto_f
    if-nez v23, :cond_1d

    .line 793
    const v23, 0xfffd

    move/from16 v11, v23

    const/16 v23, 0x0

    move/from16 v12, v23

    .line 282
    move/from16 v23, v11

    const v24, 0xfffd

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_1c

    .line 287
    move-object/from16 v23, v5

    move/from16 v24, v11

    const/16 v25, 0xa

    ushr-int/lit8 v24, v24, 0xa

    const v25, 0xd7c0

    add-int v24, v24, v25

    move/from16 v0, v24

    int-to-char v0, v0

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v24

    invoke-interface/range {v23 .. v24}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    .line 289
    move-object/from16 v23, v5

    move/from16 v24, v11

    const/16 v25, 0x3ff

    move/from16 v0, v24

    and-int/lit16 v0, v0, 0x3ff

    move/from16 v24, v0

    const v25, 0xdc00

    add-int v24, v24, v25

    move/from16 v0, v24

    int-to-char v0, v0

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v24

    invoke-interface/range {v23 .. v24}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    .line 292
    :goto_10
    nop

    .line 794
    const/16 v23, 0x1

    goto/16 :goto_d

    .line 792
    :cond_1b
    const/16 v23, 0x0

    goto :goto_f

    .line 291
    :cond_1c
    move-object/from16 v23, v5

    const v24, 0xfffd

    invoke-static/range {v24 .. v24}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v24

    invoke-interface/range {v23 .. v24}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    goto :goto_10

    .line 796
    :cond_1d
    move-object/from16 v23, v9

    move/from16 v24, v7

    const/16 v25, 0x2

    add-int/lit8 v24, v24, 0x2

    aget-byte v23, v23, v24

    move/from16 v15, v23

    .line 797
    const/16 v23, 0x0

    move/from16 v16, v23

    .line 798
    move/from16 v23, v15

    move/from16 v17, v23

    const/16 v23, 0xc0

    move/from16 v18, v23

    const/16 v23, 0x0

    move/from16 v19, v23

    .line 799
    move/from16 v23, v17

    move/from16 v24, v18

    and-int v23, v23, v24

    const/16 v24, 0x80

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_1e

    const/16 v23, 0x1

    :goto_11
    if-nez v23, :cond_20

    .line 800
    const v23, 0xfffd

    move/from16 v11, v23

    const/16 v23, 0x0

    move/from16 v12, v23

    .line 282
    move/from16 v23, v11

    const v24, 0xfffd

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_1f

    .line 287
    move-object/from16 v23, v5

    move/from16 v24, v11

    const/16 v25, 0xa

    ushr-int/lit8 v24, v24, 0xa

    const v25, 0xd7c0

    add-int v24, v24, v25

    move/from16 v0, v24

    int-to-char v0, v0

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v24

    invoke-interface/range {v23 .. v24}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    .line 289
    move-object/from16 v23, v5

    move/from16 v24, v11

    const/16 v25, 0x3ff

    move/from16 v0, v24

    and-int/lit16 v0, v0, 0x3ff

    move/from16 v24, v0

    const v25, 0xdc00

    add-int v24, v24, v25

    move/from16 v0, v24

    int-to-char v0, v0

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v24

    invoke-interface/range {v23 .. v24}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    .line 292
    :goto_12
    nop

    .line 801
    const/16 v23, 0x2

    goto/16 :goto_d

    .line 799
    :cond_1e
    const/16 v23, 0x0

    goto :goto_11

    .line 291
    :cond_1f
    move-object/from16 v23, v5

    const v24, 0xfffd

    invoke-static/range {v24 .. v24}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v24

    invoke-interface/range {v23 .. v24}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    goto :goto_12

    .line 803
    :cond_20
    move-object/from16 v23, v9

    move/from16 v24, v7

    const/16 v25, 0x3

    add-int/lit8 v24, v24, 0x3

    aget-byte v23, v23, v24

    move/from16 v16, v23

    .line 804
    const/16 v23, 0x0

    move/from16 v17, v23

    .line 805
    move/from16 v23, v16

    move/from16 v18, v23

    const/16 v23, 0xc0

    move/from16 v19, v23

    const/16 v23, 0x0

    move/from16 v20, v23

    .line 806
    move/from16 v23, v18

    move/from16 v24, v19

    and-int v23, v23, v24

    const/16 v24, 0x80

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_21

    const/16 v23, 0x1

    :goto_13
    if-nez v23, :cond_23

    .line 807
    const v23, 0xfffd

    move/from16 v11, v23

    const/16 v23, 0x0

    move/from16 v12, v23

    .line 282
    move/from16 v23, v11

    const v24, 0xfffd

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_22

    .line 287
    move-object/from16 v23, v5

    move/from16 v24, v11

    const/16 v25, 0xa

    ushr-int/lit8 v24, v24, 0xa

    const v25, 0xd7c0

    add-int v24, v24, v25

    move/from16 v0, v24

    int-to-char v0, v0

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v24

    invoke-interface/range {v23 .. v24}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    .line 289
    move-object/from16 v23, v5

    move/from16 v24, v11

    const/16 v25, 0x3ff

    move/from16 v0, v24

    and-int/lit16 v0, v0, 0x3ff

    move/from16 v24, v0

    const v25, 0xdc00

    add-int v24, v24, v25

    move/from16 v0, v24

    int-to-char v0, v0

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v24

    invoke-interface/range {v23 .. v24}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    .line 292
    :goto_14
    nop

    .line 808
    const/16 v23, 0x3

    goto/16 :goto_d

    .line 806
    :cond_21
    const/16 v23, 0x0

    goto :goto_13

    .line 291
    :cond_22
    move-object/from16 v23, v5

    const v24, 0xfffd

    invoke-static/range {v24 .. v24}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v24

    invoke-interface/range {v23 .. v24}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    goto :goto_14

    .line 811
    :cond_23
    const v23, 0x381f80

    .line 813
    move/from16 v24, v16

    xor-int v23, v23, v24

    .line 814
    move/from16 v24, v15

    const/16 v25, 0x6

    shl-int/lit8 v24, v24, 0x6

    xor-int v23, v23, v24

    .line 815
    move/from16 v24, v14

    const/16 v25, 0xc

    shl-int/lit8 v24, v24, 0xc

    xor-int v23, v23, v24

    .line 816
    move/from16 v24, v13

    const/16 v25, 0x12

    shl-int/lit8 v24, v24, 0x12

    xor-int v23, v23, v24

    .line 811
    move/from16 v17, v23

    .line 818
    nop

    .line 819
    move/from16 v23, v17

    const v24, 0x10ffff

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_25

    .line 820
    const v23, 0xfffd

    move/from16 v11, v23

    const/16 v23, 0x0

    move/from16 v12, v23

    .line 282
    move/from16 v23, v11

    const v24, 0xfffd

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_24

    .line 287
    move-object/from16 v23, v5

    move/from16 v24, v11

    const/16 v25, 0xa

    ushr-int/lit8 v24, v24, 0xa

    const v25, 0xd7c0

    add-int v24, v24, v25

    move/from16 v0, v24

    int-to-char v0, v0

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v24

    invoke-interface/range {v23 .. v24}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    .line 289
    move-object/from16 v23, v5

    move/from16 v24, v11

    const/16 v25, 0x3ff

    move/from16 v0, v24

    and-int/lit16 v0, v0, 0x3ff

    move/from16 v24, v0

    const v25, 0xdc00

    add-int v24, v24, v25

    move/from16 v0, v24

    int-to-char v0, v0

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v24

    invoke-interface/range {v23 .. v24}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    .line 831
    :goto_15
    const/16 v23, 0x4

    goto/16 :goto_d

    .line 291
    :cond_24
    move-object/from16 v23, v5

    const v24, 0xfffd

    invoke-static/range {v24 .. v24}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v24

    invoke-interface/range {v23 .. v24}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    goto :goto_15

    .line 822
    :cond_25
    const v23, 0xdfff

    const v24, 0xd800

    move/from16 v25, v17

    move/from16 v18, v25

    move/from16 v25, v18

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_27

    .line 825
    :cond_26
    move/from16 v23, v17

    const/high16 v24, 0x10000

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_2a

    .line 826
    const v23, 0xfffd

    move/from16 v11, v23

    const/16 v23, 0x0

    move/from16 v12, v23

    .line 282
    move/from16 v23, v11

    const v24, 0xfffd

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_29

    .line 287
    move-object/from16 v23, v5

    move/from16 v24, v11

    const/16 v25, 0xa

    ushr-int/lit8 v24, v24, 0xa

    const v25, 0xd7c0

    add-int v24, v24, v25

    move/from16 v0, v24

    int-to-char v0, v0

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v24

    invoke-interface/range {v23 .. v24}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    .line 289
    move-object/from16 v23, v5

    move/from16 v24, v11

    const/16 v25, 0x3ff

    move/from16 v0, v24

    and-int/lit16 v0, v0, 0x3ff

    move/from16 v24, v0

    const v25, 0xdc00

    add-int v24, v24, v25

    move/from16 v0, v24

    int-to-char v0, v0

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v24

    invoke-interface/range {v23 .. v24}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    .line 292
    :goto_16
    goto :goto_15

    .line 822
    :cond_27
    move/from16 v24, v18

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_26

    .line 823
    const v23, 0xfffd

    move/from16 v11, v23

    const/16 v23, 0x0

    move/from16 v12, v23

    .line 282
    move/from16 v23, v11

    const v24, 0xfffd

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_28

    .line 287
    move-object/from16 v23, v5

    move/from16 v24, v11

    const/16 v25, 0xa

    ushr-int/lit8 v24, v24, 0xa

    const v25, 0xd7c0

    add-int v24, v24, v25

    move/from16 v0, v24

    int-to-char v0, v0

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v24

    invoke-interface/range {v23 .. v24}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    .line 289
    move-object/from16 v23, v5

    move/from16 v24, v11

    const/16 v25, 0x3ff

    move/from16 v0, v24

    and-int/lit16 v0, v0, 0x3ff

    move/from16 v24, v0

    const v25, 0xdc00

    add-int v24, v24, v25

    move/from16 v0, v24

    int-to-char v0, v0

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v24

    invoke-interface/range {v23 .. v24}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    .line 292
    :goto_17
    goto/16 :goto_15

    .line 291
    :cond_28
    move-object/from16 v23, v5

    const v24, 0xfffd

    invoke-static/range {v24 .. v24}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v24

    invoke-interface/range {v23 .. v24}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    goto :goto_17

    :cond_29
    move-object/from16 v23, v5

    const v24, 0xfffd

    invoke-static/range {v24 .. v24}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v24

    invoke-interface/range {v23 .. v24}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    goto :goto_16

    .line 829
    :cond_2a
    move/from16 v23, v17

    move/from16 v11, v23

    const/16 v23, 0x0

    move/from16 v12, v23

    .line 282
    move/from16 v23, v11

    const v24, 0xfffd

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_2b

    .line 287
    move-object/from16 v23, v5

    move/from16 v24, v11

    const/16 v25, 0xa

    ushr-int/lit8 v24, v24, 0xa

    const v25, 0xd7c0

    add-int v24, v24, v25

    move/from16 v0, v24

    int-to-char v0, v0

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v24

    invoke-interface/range {v23 .. v24}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    .line 289
    move-object/from16 v23, v5

    move/from16 v24, v11

    const/16 v25, 0x3ff

    move/from16 v0, v24

    and-int/lit16 v0, v0, 0x3ff

    move/from16 v24, v0

    const v25, 0xdc00

    add-int v24, v24, v25

    move/from16 v0, v24

    int-to-char v0, v0

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v24

    invoke-interface/range {v23 .. v24}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    .line 292
    :goto_18
    nop

    goto/16 :goto_15

    .line 291
    :cond_2b
    move-object/from16 v23, v5

    const v24, 0xfffd

    invoke-static/range {v24 .. v24}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v24

    invoke-interface/range {v23 .. v24}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    goto :goto_18

    .line 298
    :cond_2c
    move-object/from16 v23, v5

    const v24, 0xfffd

    invoke-static/range {v24 .. v24}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v24

    invoke-interface/range {v23 .. v24}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    .line 299
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_3

    .line 303
    :cond_2d
    return-void
.end method

.method public static final processUtf8Bytes(Ljava/lang/String;IILkotlin/jvm/functions/Function1;)V
    .locals 13
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Lkotlin/jvm/functions/Function1",
            "<-",
            "Ljava/lang/Byte;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .prologue
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object/from16 v3, p3

    const/4 v8, 0x0

    move v4, v8

    move-object v8, v0

    const-string v9, "$this$processUtf8Bytes"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v8, v3

    const-string v9, "yield"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    move v8, v1

    move v5, v8

    .line 139
    :goto_0
    move v8, v5

    move v9, v2

    if-ge v8, v9, :cond_8

    .line 140
    move-object v8, v0

    move v9, v5

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    move v6, v8

    .line 142
    nop

    .line 143
    move v8, v6

    const/16 v9, 0x80

    if-ge v8, v9, :cond_0

    .line 145
    move-object v8, v3

    move v9, v6

    int-to-byte v9, v9

    invoke-static {v9}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v9

    invoke-interface {v8, v9}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 146
    add-int/lit8 v5, v5, 0x1

    .line 149
    :goto_1
    move v8, v5

    move v9, v2

    if-ge v8, v9, :cond_1

    move-object v8, v0

    move v9, v5

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x80

    if-ge v8, v9, :cond_1

    .line 150
    move-object v8, v3

    move-object v9, v0

    move v10, v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    int-to-byte v9, v9

    invoke-static {v9}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v9

    invoke-interface {v8, v9}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 149
    goto :goto_1

    .line 154
    :cond_0
    move v8, v6

    const/16 v9, 0x800

    if-ge v8, v9, :cond_2

    .line 157
    move-object v8, v3

    move v9, v6

    const/4 v10, 0x6

    shr-int/lit8 v9, v9, 0x6

    const/16 v10, 0xc0

    or-int/lit16 v9, v9, 0xc0

    int-to-byte v9, v9

    invoke-static {v9}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v9

    invoke-interface {v8, v9}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 158
    move-object v8, v3

    move v9, v6

    const/16 v10, 0x3f

    and-int/lit8 v9, v9, 0x3f

    const/16 v10, 0x80

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    invoke-static {v9}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v9

    invoke-interface {v8, v9}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 160
    add-int/lit8 v5, v5, 0x1

    .line 197
    :cond_1
    :goto_2
    goto :goto_0

    .line 163
    :cond_2
    const v8, 0xdfff

    const v9, 0xd800

    move v10, v6

    move v7, v10

    move v10, v7

    if-gt v9, v10, :cond_3

    move v9, v7

    if-ge v8, v9, :cond_4

    .line 166
    :goto_3
    move-object v8, v3

    move v9, v6

    const/16 v10, 0xc

    shr-int/lit8 v9, v9, 0xc

    const/16 v10, 0xe0

    or-int/lit16 v9, v9, 0xe0

    int-to-byte v9, v9

    invoke-static {v9}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v9

    invoke-interface {v8, v9}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 167
    move-object v8, v3

    move v9, v6

    const/4 v10, 0x6

    shr-int/lit8 v9, v9, 0x6

    const/16 v10, 0x3f

    and-int/lit8 v9, v9, 0x3f

    const/16 v10, 0x80

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    invoke-static {v9}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v9

    invoke-interface {v8, v9}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 168
    move-object v8, v3

    move v9, v6

    const/16 v10, 0x3f

    and-int/lit8 v9, v9, 0x3f

    const/16 v10, 0x80

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    invoke-static {v9}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v9

    invoke-interface {v8, v9}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 170
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_3
    goto :goto_3

    .line 177
    :cond_4
    move v8, v6

    const v9, 0xdbff

    if-gt v8, v9, :cond_5

    move v8, v2

    .line 178
    move v9, v5

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    if-le v8, v9, :cond_5

    const v8, 0xdfff

    const v9, 0xdc00

    .line 179
    move-object v10, v0

    move v11, v5

    const/4 v12, 0x1

    add-int/lit8 v11, v11, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    move v7, v10

    move v10, v7

    if-gt v9, v10, :cond_6

    move v9, v7

    if-ge v8, v9, :cond_7

    .line 180
    :cond_5
    :goto_4
    move-object v8, v3

    const/16 v9, 0x3f

    invoke-static {v9}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v9

    invoke-interface {v8, v9}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 181
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_6
    goto :goto_4

    .line 186
    :cond_7
    move v8, v6

    const/16 v9, 0xa

    shl-int/lit8 v8, v8, 0xa

    move-object v9, v0

    move v10, v5

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    add-int/2addr v8, v9

    .line 187
    const v9, -0x35fdc00

    .line 186
    add-int/2addr v8, v9

    move v7, v8

    .line 191
    move-object v8, v3

    move v9, v7

    const/16 v10, 0x12

    shr-int/lit8 v9, v9, 0x12

    const/16 v10, 0xf0

    or-int/lit16 v9, v9, 0xf0

    int-to-byte v9, v9

    invoke-static {v9}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v9

    invoke-interface {v8, v9}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 192
    move-object v8, v3

    move v9, v7

    const/16 v10, 0xc

    shr-int/lit8 v9, v9, 0xc

    const/16 v10, 0x3f

    and-int/lit8 v9, v9, 0x3f

    const/16 v10, 0x80

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    invoke-static {v9}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v9

    invoke-interface {v8, v9}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 193
    move-object v8, v3

    move v9, v7

    const/4 v10, 0x6

    shr-int/lit8 v9, v9, 0x6

    const/16 v10, 0x3f

    and-int/lit8 v9, v9, 0x3f

    const/16 v10, 0x80

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    invoke-static {v9}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v9

    invoke-interface {v8, v9}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 194
    move-object v8, v3

    move v9, v7

    const/16 v10, 0x3f

    and-int/lit8 v9, v9, 0x3f

    const/16 v10, 0x80

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    invoke-static {v9}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v9

    invoke-interface {v8, v9}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 196
    move v8, v5

    const/4 v9, 0x2

    add-int/lit8 v8, v8, 0x2

    move v5, v8

    goto/16 :goto_2

    .line 201
    :cond_8
    return-void
.end method

.method public static final processUtf8CodePoints([BIILkotlin/jvm/functions/Function1;)V
    .locals 26
    .param p0    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lkotlin/jvm/functions/Function1",
            "<-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .prologue
    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    const/16 v23, 0x0

    move/from16 v6, v23

    move-object/from16 v23, v2

    const-string v24, "$this$processUtf8CodePoints"

    invoke-static/range {v23 .. v24}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v23, v5

    const-string v24, "yield"

    invoke-static/range {v23 .. v24}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 209
    move/from16 v23, v3

    move/from16 v7, v23

    .line 210
    :goto_0
    move/from16 v23, v7

    move/from16 v24, v4

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_25

    .line 211
    move-object/from16 v23, v2

    move/from16 v24, v7

    aget-byte v23, v23, v24

    move/from16 v8, v23

    .line 212
    nop

    .line 213
    move/from16 v23, v8

    if-ltz v23, :cond_0

    .line 215
    move-object/from16 v23, v5

    move/from16 v24, v8

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-interface/range {v23 .. v24}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    .line 216
    add-int/lit8 v7, v7, 0x1

    .line 219
    :goto_1
    move/from16 v23, v7

    move/from16 v24, v4

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_1

    move-object/from16 v23, v2

    move/from16 v24, v7

    aget-byte v23, v23, v24

    if-ltz v23, :cond_1

    .line 220
    move-object/from16 v23, v5

    move-object/from16 v24, v2

    move/from16 v25, v7

    add-int/lit8 v7, v7, 0x1

    aget-byte v24, v24, v25

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-interface/range {v23 .. v24}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    .line 219
    goto :goto_1

    .line 223
    :cond_0
    move/from16 v23, v8

    move/from16 v9, v23

    const/16 v23, 0x5

    move/from16 v10, v23

    const/16 v23, 0x0

    move/from16 v11, v23

    .line 551
    move/from16 v23, v9

    move/from16 v24, v10

    shr-int v23, v23, v24

    const/16 v24, -0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_6

    .line 225
    move/from16 v23, v7

    move-object/from16 v24, v2

    move-object/from16 v9, v24

    move/from16 v21, v23

    const/16 v23, 0x0

    move/from16 v10, v23

    .line 552
    move/from16 v23, v4

    move/from16 v24, v7

    const/16 v25, 0x1

    add-int/lit8 v24, v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-gt v0, v1, :cond_2

    .line 553
    const v23, 0xfffd

    move/from16 v11, v23

    const/16 v23, 0x0

    move/from16 v12, v23

    .line 225
    move-object/from16 v23, v5

    move/from16 v24, v11

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-interface/range {v23 .. v24}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    .line 555
    const/16 v23, 0x1

    .line 579
    :goto_2
    move/from16 v22, v23

    move/from16 v23, v21

    move/from16 v24, v22

    .line 225
    add-int v23, v23, v24

    move/from16 v7, v23

    .line 241
    :cond_1
    :goto_3
    goto/16 :goto_0

    .line 558
    :cond_2
    move-object/from16 v23, v9

    move/from16 v24, v7

    aget-byte v23, v23, v24

    move/from16 v13, v23

    .line 559
    move-object/from16 v23, v9

    move/from16 v24, v7

    const/16 v25, 0x1

    add-int/lit8 v24, v24, 0x1

    aget-byte v23, v23, v24

    move/from16 v14, v23

    .line 560
    const/16 v23, 0x0

    move/from16 v15, v23

    .line 561
    move/from16 v23, v14

    move/from16 v16, v23

    const/16 v23, 0xc0

    move/from16 v17, v23

    const/16 v23, 0x0

    move/from16 v18, v23

    .line 562
    move/from16 v23, v16

    move/from16 v24, v17

    and-int v23, v23, v24

    const/16 v24, 0x80

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_3

    const/16 v23, 0x1

    :goto_4
    if-nez v23, :cond_4

    .line 563
    const v23, 0xfffd

    move/from16 v11, v23

    const/16 v23, 0x0

    move/from16 v12, v23

    .line 225
    move-object/from16 v23, v5

    move/from16 v24, v11

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-interface/range {v23 .. v24}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    .line 564
    const/16 v23, 0x1

    goto :goto_2

    .line 562
    :cond_3
    const/16 v23, 0x0

    goto :goto_4

    .line 567
    :cond_4
    const/16 v23, 0xf80

    .line 569
    move/from16 v24, v14

    xor-int v23, v23, v24

    .line 570
    move/from16 v24, v13

    const/16 v25, 0x6

    shl-int/lit8 v24, v24, 0x6

    xor-int v23, v23, v24

    .line 567
    move/from16 v15, v23

    .line 572
    nop

    .line 573
    move/from16 v23, v15

    const/16 v24, 0x80

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_5

    .line 574
    const v23, 0xfffd

    move/from16 v11, v23

    const/16 v23, 0x0

    move/from16 v12, v23

    .line 225
    move-object/from16 v23, v5

    move/from16 v24, v11

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-interface/range {v23 .. v24}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    .line 579
    :goto_5
    const/16 v23, 0x2

    goto/16 :goto_2

    .line 577
    :cond_5
    move/from16 v23, v15

    move/from16 v11, v23

    const/16 v23, 0x0

    move/from16 v12, v23

    .line 225
    move-object/from16 v23, v5

    move/from16 v24, v11

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-interface/range {v23 .. v24}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    goto :goto_5

    .line 227
    :cond_6
    move/from16 v23, v8

    move/from16 v9, v23

    const/16 v23, 0x4

    move/from16 v10, v23

    const/16 v23, 0x0

    move/from16 v11, v23

    .line 581
    move/from16 v23, v9

    move/from16 v24, v10

    shr-int v23, v23, v24

    const/16 v24, -0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_12

    .line 229
    move/from16 v23, v7

    move-object/from16 v24, v2

    move-object/from16 v9, v24

    move/from16 v21, v23

    const/16 v23, 0x0

    move/from16 v10, v23

    .line 582
    move/from16 v23, v4

    move/from16 v24, v7

    const/16 v25, 0x2

    add-int/lit8 v24, v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-gt v0, v1, :cond_a

    .line 584
    const v23, 0xfffd

    move/from16 v11, v23

    const/16 v23, 0x0

    move/from16 v12, v23

    .line 229
    move-object/from16 v23, v5

    move/from16 v24, v11

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-interface/range {v23 .. v24}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    .line 585
    move/from16 v23, v4

    move/from16 v24, v7

    const/16 v25, 0x1

    add-int/lit8 v24, v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_7

    move-object/from16 v23, v9

    move/from16 v24, v7

    const/16 v25, 0x1

    add-int/lit8 v24, v24, 0x1

    aget-byte v23, v23, v24

    move/from16 v13, v23

    const/16 v23, 0x0

    move/from16 v14, v23

    .line 586
    move/from16 v23, v13

    move/from16 v15, v23

    const/16 v23, 0xc0

    move/from16 v16, v23

    const/16 v23, 0x0

    move/from16 v17, v23

    .line 587
    move/from16 v23, v15

    move/from16 v24, v16

    and-int v23, v23, v24

    const/16 v24, 0x80

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_8

    const/16 v23, 0x1

    :goto_6
    if-nez v23, :cond_9

    .line 588
    :cond_7
    const/16 v23, 0x1

    .line 627
    :goto_7
    move/from16 v22, v23

    move/from16 v23, v21

    move/from16 v24, v22

    .line 229
    add-int v23, v23, v24

    move/from16 v7, v23

    goto/16 :goto_3

    .line 587
    :cond_8
    const/16 v23, 0x0

    goto :goto_6

    .line 591
    :cond_9
    const/16 v23, 0x2

    goto :goto_7

    .line 595
    :cond_a
    move-object/from16 v23, v9

    move/from16 v24, v7

    aget-byte v23, v23, v24

    move/from16 v13, v23

    .line 596
    move-object/from16 v23, v9

    move/from16 v24, v7

    const/16 v25, 0x1

    add-int/lit8 v24, v24, 0x1

    aget-byte v23, v23, v24

    move/from16 v14, v23

    .line 597
    const/16 v23, 0x0

    move/from16 v15, v23

    .line 598
    move/from16 v23, v14

    move/from16 v16, v23

    const/16 v23, 0xc0

    move/from16 v17, v23

    const/16 v23, 0x0

    move/from16 v18, v23

    .line 599
    move/from16 v23, v16

    move/from16 v24, v17

    and-int v23, v23, v24

    const/16 v24, 0x80

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_b

    const/16 v23, 0x1

    :goto_8
    if-nez v23, :cond_c

    .line 600
    const v23, 0xfffd

    move/from16 v11, v23

    const/16 v23, 0x0

    move/from16 v12, v23

    .line 229
    move-object/from16 v23, v5

    move/from16 v24, v11

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-interface/range {v23 .. v24}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    .line 601
    const/16 v23, 0x1

    goto :goto_7

    .line 599
    :cond_b
    const/16 v23, 0x0

    goto :goto_8

    .line 603
    :cond_c
    move-object/from16 v23, v9

    move/from16 v24, v7

    const/16 v25, 0x2

    add-int/lit8 v24, v24, 0x2

    aget-byte v23, v23, v24

    move/from16 v15, v23

    .line 604
    const/16 v23, 0x0

    move/from16 v16, v23

    .line 605
    move/from16 v23, v15

    move/from16 v17, v23

    const/16 v23, 0xc0

    move/from16 v18, v23

    const/16 v23, 0x0

    move/from16 v19, v23

    .line 606
    move/from16 v23, v17

    move/from16 v24, v18

    and-int v23, v23, v24

    const/16 v24, 0x80

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_d

    const/16 v23, 0x1

    :goto_9
    if-nez v23, :cond_e

    .line 607
    const v23, 0xfffd

    move/from16 v11, v23

    const/16 v23, 0x0

    move/from16 v12, v23

    .line 229
    move-object/from16 v23, v5

    move/from16 v24, v11

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-interface/range {v23 .. v24}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    .line 608
    const/16 v23, 0x2

    goto/16 :goto_7

    .line 606
    :cond_d
    const/16 v23, 0x0

    goto :goto_9

    .line 611
    :cond_e
    const v23, -0x1e080

    .line 613
    move/from16 v24, v15

    xor-int v23, v23, v24

    .line 614
    move/from16 v24, v14

    const/16 v25, 0x6

    shl-int/lit8 v24, v24, 0x6

    xor-int v23, v23, v24

    .line 615
    move/from16 v24, v13

    const/16 v25, 0xc

    shl-int/lit8 v24, v24, 0xc

    xor-int v23, v23, v24

    .line 611
    move/from16 v16, v23

    .line 617
    nop

    .line 618
    move/from16 v23, v16

    const/16 v24, 0x800

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_f

    .line 619
    const v23, 0xfffd

    move/from16 v11, v23

    const/16 v23, 0x0

    move/from16 v12, v23

    .line 229
    move-object/from16 v23, v5

    move/from16 v24, v11

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-interface/range {v23 .. v24}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    .line 627
    :goto_a
    const/16 v23, 0x3

    goto/16 :goto_7

    .line 621
    :cond_f
    const v23, 0xdfff

    const v24, 0xd800

    move/from16 v25, v16

    move/from16 v17, v25

    move/from16 v25, v17

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_11

    .line 625
    :cond_10
    move/from16 v23, v16

    move/from16 v11, v23

    const/16 v23, 0x0

    move/from16 v12, v23

    .line 229
    move-object/from16 v23, v5

    move/from16 v24, v11

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-interface/range {v23 .. v24}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    goto :goto_a

    .line 621
    :cond_11
    move/from16 v24, v17

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_10

    .line 622
    const v23, 0xfffd

    move/from16 v11, v23

    const/16 v23, 0x0

    move/from16 v12, v23

    .line 229
    move-object/from16 v23, v5

    move/from16 v24, v11

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-interface/range {v23 .. v24}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    goto :goto_a

    .line 231
    :cond_12
    move/from16 v23, v8

    move/from16 v9, v23

    const/16 v23, 0x3

    move/from16 v10, v23

    const/16 v23, 0x0

    move/from16 v11, v23

    .line 629
    move/from16 v23, v9

    move/from16 v24, v10

    shr-int v23, v23, v24

    const/16 v24, -0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_24

    .line 233
    move/from16 v23, v7

    move-object/from16 v24, v2

    move-object/from16 v9, v24

    move/from16 v21, v23

    const/16 v23, 0x0

    move/from16 v10, v23

    .line 630
    move/from16 v23, v4

    move/from16 v24, v7

    const/16 v25, 0x3

    add-int/lit8 v24, v24, 0x3

    move/from16 v0, v23

    move/from16 v1, v24

    if-gt v0, v1, :cond_19

    .line 632
    const v23, 0xfffd

    move/from16 v11, v23

    const/16 v23, 0x0

    move/from16 v12, v23

    .line 233
    move-object/from16 v23, v5

    move/from16 v24, v11

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-interface/range {v23 .. v24}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    .line 633
    move/from16 v23, v4

    move/from16 v24, v7

    const/16 v25, 0x1

    add-int/lit8 v24, v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_13

    move-object/from16 v23, v9

    move/from16 v24, v7

    const/16 v25, 0x1

    add-int/lit8 v24, v24, 0x1

    aget-byte v23, v23, v24

    move/from16 v13, v23

    const/16 v23, 0x0

    move/from16 v14, v23

    .line 634
    move/from16 v23, v13

    move/from16 v15, v23

    const/16 v23, 0xc0

    move/from16 v16, v23

    const/16 v23, 0x0

    move/from16 v17, v23

    .line 635
    move/from16 v23, v15

    move/from16 v24, v16

    and-int v23, v23, v24

    const/16 v24, 0x80

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_14

    const/16 v23, 0x1

    :goto_b
    if-nez v23, :cond_15

    .line 636
    :cond_13
    const/16 v23, 0x1

    .line 690
    :goto_c
    move/from16 v22, v23

    move/from16 v23, v21

    move/from16 v24, v22

    .line 233
    add-int v23, v23, v24

    move/from16 v7, v23

    goto/16 :goto_3

    .line 635
    :cond_14
    const/16 v23, 0x0

    goto :goto_b

    .line 637
    :cond_15
    move/from16 v23, v4

    move/from16 v24, v7

    const/16 v25, 0x2

    add-int/lit8 v24, v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_16

    move-object/from16 v23, v9

    move/from16 v24, v7

    const/16 v25, 0x2

    add-int/lit8 v24, v24, 0x2

    aget-byte v23, v23, v24

    move/from16 v13, v23

    const/16 v23, 0x0

    move/from16 v14, v23

    .line 638
    move/from16 v23, v13

    move/from16 v15, v23

    const/16 v23, 0xc0

    move/from16 v16, v23

    const/16 v23, 0x0

    move/from16 v17, v23

    .line 639
    move/from16 v23, v15

    move/from16 v24, v16

    and-int v23, v23, v24

    const/16 v24, 0x80

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_17

    const/16 v23, 0x1

    :goto_d
    if-nez v23, :cond_18

    .line 640
    :cond_16
    const/16 v23, 0x2

    goto :goto_c

    .line 639
    :cond_17
    const/16 v23, 0x0

    goto :goto_d

    .line 643
    :cond_18
    const/16 v23, 0x3

    goto :goto_c

    .line 647
    :cond_19
    move-object/from16 v23, v9

    move/from16 v24, v7

    aget-byte v23, v23, v24

    move/from16 v13, v23

    .line 648
    move-object/from16 v23, v9

    move/from16 v24, v7

    const/16 v25, 0x1

    add-int/lit8 v24, v24, 0x1

    aget-byte v23, v23, v24

    move/from16 v14, v23

    .line 649
    const/16 v23, 0x0

    move/from16 v15, v23

    .line 650
    move/from16 v23, v14

    move/from16 v16, v23

    const/16 v23, 0xc0

    move/from16 v17, v23

    const/16 v23, 0x0

    move/from16 v18, v23

    .line 651
    move/from16 v23, v16

    move/from16 v24, v17

    and-int v23, v23, v24

    const/16 v24, 0x80

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_1a

    const/16 v23, 0x1

    :goto_e
    if-nez v23, :cond_1b

    .line 652
    const v23, 0xfffd

    move/from16 v11, v23

    const/16 v23, 0x0

    move/from16 v12, v23

    .line 233
    move-object/from16 v23, v5

    move/from16 v24, v11

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-interface/range {v23 .. v24}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    .line 653
    const/16 v23, 0x1

    goto/16 :goto_c

    .line 651
    :cond_1a
    const/16 v23, 0x0

    goto :goto_e

    .line 655
    :cond_1b
    move-object/from16 v23, v9

    move/from16 v24, v7

    const/16 v25, 0x2

    add-int/lit8 v24, v24, 0x2

    aget-byte v23, v23, v24

    move/from16 v15, v23

    .line 656
    const/16 v23, 0x0

    move/from16 v16, v23

    .line 657
    move/from16 v23, v15

    move/from16 v17, v23

    const/16 v23, 0xc0

    move/from16 v18, v23

    const/16 v23, 0x0

    move/from16 v19, v23

    .line 658
    move/from16 v23, v17

    move/from16 v24, v18

    and-int v23, v23, v24

    const/16 v24, 0x80

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_1c

    const/16 v23, 0x1

    :goto_f
    if-nez v23, :cond_1d

    .line 659
    const v23, 0xfffd

    move/from16 v11, v23

    const/16 v23, 0x0

    move/from16 v12, v23

    .line 233
    move-object/from16 v23, v5

    move/from16 v24, v11

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-interface/range {v23 .. v24}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    .line 660
    const/16 v23, 0x2

    goto/16 :goto_c

    .line 658
    :cond_1c
    const/16 v23, 0x0

    goto :goto_f

    .line 662
    :cond_1d
    move-object/from16 v23, v9

    move/from16 v24, v7

    const/16 v25, 0x3

    add-int/lit8 v24, v24, 0x3

    aget-byte v23, v23, v24

    move/from16 v16, v23

    .line 663
    const/16 v23, 0x0

    move/from16 v17, v23

    .line 664
    move/from16 v23, v16

    move/from16 v18, v23

    const/16 v23, 0xc0

    move/from16 v19, v23

    const/16 v23, 0x0

    move/from16 v20, v23

    .line 665
    move/from16 v23, v18

    move/from16 v24, v19

    and-int v23, v23, v24

    const/16 v24, 0x80

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_1e

    const/16 v23, 0x1

    :goto_10
    if-nez v23, :cond_1f

    .line 666
    const v23, 0xfffd

    move/from16 v11, v23

    const/16 v23, 0x0

    move/from16 v12, v23

    .line 233
    move-object/from16 v23, v5

    move/from16 v24, v11

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-interface/range {v23 .. v24}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    .line 667
    const/16 v23, 0x3

    goto/16 :goto_c

    .line 665
    :cond_1e
    const/16 v23, 0x0

    goto :goto_10

    .line 670
    :cond_1f
    const v23, 0x381f80

    .line 672
    move/from16 v24, v16

    xor-int v23, v23, v24

    .line 673
    move/from16 v24, v15

    const/16 v25, 0x6

    shl-int/lit8 v24, v24, 0x6

    xor-int v23, v23, v24

    .line 674
    move/from16 v24, v14

    const/16 v25, 0xc

    shl-int/lit8 v24, v24, 0xc

    xor-int v23, v23, v24

    .line 675
    move/from16 v24, v13

    const/16 v25, 0x12

    shl-int/lit8 v24, v24, 0x12

    xor-int v23, v23, v24

    .line 670
    move/from16 v17, v23

    .line 677
    nop

    .line 678
    move/from16 v23, v17

    const v24, 0x10ffff

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_20

    .line 679
    const v23, 0xfffd

    move/from16 v11, v23

    const/16 v23, 0x0

    move/from16 v12, v23

    .line 233
    move-object/from16 v23, v5

    move/from16 v24, v11

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-interface/range {v23 .. v24}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    .line 690
    :goto_11
    const/16 v23, 0x4

    goto/16 :goto_c

    .line 681
    :cond_20
    const v23, 0xdfff

    const v24, 0xd800

    move/from16 v25, v17

    move/from16 v18, v25

    move/from16 v25, v18

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_22

    .line 684
    :cond_21
    move/from16 v23, v17

    const/high16 v24, 0x10000

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_23

    .line 685
    const v23, 0xfffd

    move/from16 v11, v23

    const/16 v23, 0x0

    move/from16 v12, v23

    .line 233
    move-object/from16 v23, v5

    move/from16 v24, v11

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-interface/range {v23 .. v24}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    goto :goto_11

    .line 681
    :cond_22
    move/from16 v24, v18

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_21

    .line 682
    const v23, 0xfffd

    move/from16 v11, v23

    const/16 v23, 0x0

    move/from16 v12, v23

    .line 233
    move-object/from16 v23, v5

    move/from16 v24, v11

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-interface/range {v23 .. v24}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    goto :goto_11

    .line 688
    :cond_23
    move/from16 v23, v17

    move/from16 v11, v23

    const/16 v23, 0x0

    move/from16 v12, v23

    .line 233
    move-object/from16 v23, v5

    move/from16 v24, v11

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-interface/range {v23 .. v24}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    goto :goto_11

    .line 238
    :cond_24
    move-object/from16 v23, v5

    const v24, 0xfffd

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-interface/range {v23 .. v24}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    .line 239
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_3

    .line 243
    :cond_25
    return-void
.end method

.method public static final size(Ljava/lang/String;)J
    .locals 6
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmName;
        name = "size"
    .end annotation

    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Lokio/Utf8;->size$default(Ljava/lang/String;IIILjava/lang/Object;)J

    move-result-wide v1

    move-wide v0, v1

    return-wide v0
.end method

.method public static final size(Ljava/lang/String;I)J
    .locals 7
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmName;
        name = "size"
    .end annotation

    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static {v2, v3, v4, v5, v6}, Lokio/Utf8;->size$default(Ljava/lang/String;IIILjava/lang/Object;)J

    move-result-wide v2

    move-wide v0, v2

    return-wide v0
.end method

.method public static final size(Ljava/lang/String;II)J
    .locals 16
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmName;
        name = "size"
    .end annotation

    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .prologue
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object v10, v0

    const-string v11, "$this$utf8Size"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    move v10, v1

    if-ltz v10, :cond_0

    const/4 v10, 0x1

    :goto_0
    move v3, v10

    const/4 v10, 0x0

    move v4, v10

    const/4 v10, 0x0

    move v5, v10

    move v10, v3

    if-nez v10, :cond_1

    const/4 v10, 0x0

    move v6, v10

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "beginIndex < 0: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move v11, v1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v5, v10

    new-instance v10, Ljava/lang/IllegalArgumentException;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    move-object v12, v5

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v10, Ljava/lang/Throwable;

    throw v10

    :cond_0
    const/4 v10, 0x0

    goto :goto_0

    .line 79
    :cond_1
    move v10, v2

    move v11, v1

    if-lt v10, v11, :cond_2

    const/4 v10, 0x1

    :goto_1
    move v3, v10

    const/4 v10, 0x0

    move v4, v10

    const/4 v10, 0x0

    move v5, v10

    move v10, v3

    if-nez v10, :cond_3

    const/4 v10, 0x0

    move v6, v10

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "endIndex < beginIndex: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move v11, v2

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " < "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move v11, v1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v5, v10

    new-instance v10, Ljava/lang/IllegalArgumentException;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    move-object v12, v5

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v10, Ljava/lang/Throwable;

    throw v10

    :cond_2
    const/4 v10, 0x0

    goto :goto_1

    .line 80
    :cond_3
    move v10, v2

    move-object v11, v0

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-gt v10, v11, :cond_4

    const/4 v10, 0x1

    :goto_2
    move v3, v10

    const/4 v10, 0x0

    move v4, v10

    const/4 v10, 0x0

    move v5, v10

    move v10, v3

    if-nez v10, :cond_5

    const/4 v10, 0x0

    move v6, v10

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "endIndex > string.length: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move v11, v2

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " > "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v0

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v5, v10

    new-instance v10, Ljava/lang/IllegalArgumentException;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    move-object v12, v5

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v10, Ljava/lang/Throwable;

    throw v10

    :cond_4
    const/4 v10, 0x0

    goto :goto_2

    .line 82
    :cond_5
    const-wide/16 v10, 0x0

    move-wide v3, v10

    .line 83
    move v10, v1

    move v5, v10

    .line 84
    :goto_3
    move v10, v5

    move v11, v2

    if-ge v10, v11, :cond_d

    .line 85
    move-object v10, v0

    move v11, v5

    invoke-virtual {v10, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    move v6, v10

    .line 87
    move v10, v6

    const/16 v11, 0x80

    if-ge v10, v11, :cond_6

    .line 89
    move-wide v10, v3

    move-wide v14, v10

    move-wide v10, v14

    move-wide v12, v14

    move-wide v7, v12

    const-wide/16 v12, 0x1

    add-long/2addr v10, v12

    move-wide v3, v10

    .line 90
    add-int/lit8 v5, v5, 0x1

    .line 109
    :goto_4
    goto :goto_3

    .line 91
    :cond_6
    move v10, v6

    const/16 v11, 0x800

    if-ge v10, v11, :cond_7

    .line 93
    move-wide v10, v3

    const/4 v12, 0x2

    int-to-long v12, v12

    add-long/2addr v10, v12

    move-wide v3, v10

    .line 94
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 95
    :cond_7
    move v10, v6

    const v11, 0xd800

    if-lt v10, v11, :cond_8

    move v10, v6

    const v11, 0xdfff

    if-le v10, v11, :cond_9

    .line 97
    :cond_8
    move-wide v10, v3

    const/4 v12, 0x3

    int-to-long v12, v12

    add-long/2addr v10, v12

    move-wide v3, v10

    .line 98
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 100
    :cond_9
    move v10, v5

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    move v11, v2

    if-ge v10, v11, :cond_b

    move-object v10, v0

    move v11, v5

    const/4 v12, 0x1

    add-int/lit8 v11, v11, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    :goto_5
    move v7, v10

    .line 101
    move v10, v6

    const v11, 0xdbff

    if-gt v10, v11, :cond_a

    move v10, v7

    const v11, 0xdc00

    if-lt v10, v11, :cond_a

    move v10, v7

    const v11, 0xdfff

    if-le v10, v11, :cond_c

    .line 103
    :cond_a
    move-wide v10, v3

    move-wide v14, v10

    move-wide v10, v14

    move-wide v12, v14

    move-wide v8, v12

    const-wide/16 v12, 0x1

    add-long/2addr v10, v12

    move-wide v3, v10

    .line 104
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 100
    :cond_b
    const/4 v10, 0x0

    goto :goto_5

    .line 107
    :cond_c
    move-wide v10, v3

    const/4 v12, 0x4

    int-to-long v12, v12

    add-long/2addr v10, v12

    move-wide v3, v10

    .line 108
    move v10, v5

    const/4 v11, 0x2

    add-int/lit8 v10, v10, 0x2

    move v5, v10

    goto :goto_4

    .line 113
    :cond_d
    move-wide v10, v3

    move-wide v0, v10

    return-wide v0
.end method

.method public static synthetic size$default(Ljava/lang/String;IIILjava/lang/Object;)J
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

    .line 77
    const/4 v5, 0x0

    move v1, v5

    :cond_0
    move v5, v3

    const/4 v6, 0x2

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_1

    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    move v2, v5

    :cond_1
    move-object v5, v0

    move v6, v1

    move v7, v2

    invoke-static {v5, v6, v7}, Lokio/Utf8;->size(Ljava/lang/String;II)J

    move-result-wide v5

    move-wide v0, v5

    return-wide v0
.end method
