.class Lkotlin/text/StringsKt__StringNumberConversionsKt;
.super Lkotlin/text/StringsKt__StringNumberConversionsJVMKt;
.source "StringNumberConversions.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000&\n\u0000\n\u0002\u0010\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\n\n\u0002\u0008\u0003\u001a\u0013\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u0002H\u0007\u00a2\u0006\u0002\u0010\u0003\u001a\u001b\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0005H\u0007\u00a2\u0006\u0002\u0010\u0006\u001a\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0005*\u00020\u0002H\u0007\u00a2\u0006\u0002\u0010\u0008\u001a\u001b\u0010\u0007\u001a\u0004\u0018\u00010\u0005*\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0005H\u0007\u00a2\u0006\u0002\u0010\t\u001a\u0013\u0010\n\u001a\u0004\u0018\u00010\u000b*\u00020\u0002H\u0007\u00a2\u0006\u0002\u0010\u000c\u001a\u001b\u0010\n\u001a\u0004\u0018\u00010\u000b*\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0005H\u0007\u00a2\u0006\u0002\u0010\r\u001a\u0013\u0010\u000e\u001a\u0004\u0018\u00010\u000f*\u00020\u0002H\u0007\u00a2\u0006\u0002\u0010\u0010\u001a\u001b\u0010\u000e\u001a\u0004\u0018\u00010\u000f*\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0005H\u0007\u00a2\u0006\u0002\u0010\u0011\u00a8\u0006\u0012"
    }
    d2 = {
        "toByteOrNull",
        "",
        "",
        "(Ljava/lang/String;)Ljava/lang/Byte;",
        "radix",
        "",
        "(Ljava/lang/String;I)Ljava/lang/Byte;",
        "toIntOrNull",
        "(Ljava/lang/String;)Ljava/lang/Integer;",
        "(Ljava/lang/String;I)Ljava/lang/Integer;",
        "toLongOrNull",
        "",
        "(Ljava/lang/String;)Ljava/lang/Long;",
        "(Ljava/lang/String;I)Ljava/lang/Long;",
        "toShortOrNull",
        "",
        "(Ljava/lang/String;)Ljava/lang/Short;",
        "(Ljava/lang/String;I)Ljava/lang/Short;",
        "kotlin-stdlib"
    }
    k = 0x5
    mv = {
        0x1,
        0x1,
        0xa
    }
    xi = 0x1
    xs = "kotlin/text/StringsKt"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lkotlin/text/StringsKt__StringNumberConversionsJVMKt;-><init>()V

    return-void
.end method

.method public static final toByteOrNull(Ljava/lang/String;)Ljava/lang/Byte;
    .locals 3
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/SinceKotlin;
        version = "1.1"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, v0

    const-string v2, "$receiver"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    move-object v1, v0

    const/16 v2, 0xa

    invoke-static {v1, v2}, Lkotlin/text/StringsKt;->toByteOrNull(Ljava/lang/String;I)Ljava/lang/Byte;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static final toByteOrNull(Ljava/lang/String;I)Ljava/lang/Byte;
    .locals 6
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/SinceKotlin;
        version = "1.1"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    const-string v4, "$receiver"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    move-object v3, v0

    move v4, v1

    invoke-static {v3, v4}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v3

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move v2, v3

    .line 32
    move v3, v2

    const/16 v4, -0x80

    if-lt v3, v4, :cond_0

    move v3, v2

    const/16 v4, 0x7f

    if-le v3, v4, :cond_2

    :cond_0
    const/4 v3, 0x0

    move-object v0, v3

    .line 33
    :goto_0
    return-object v0

    .line 31
    :cond_1
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0

    .line 33
    :cond_2
    move v3, v2

    int-to-byte v3, v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    move-object v0, v3

    goto :goto_0
.end method

.method public static final toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 3
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/SinceKotlin;
        version = "1.1"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, v0

    const-string v2, "$receiver"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    move-object v1, v0

    const/16 v2, 0xa

    invoke-static {v1, v2}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static final toIntOrNull(Ljava/lang/String;I)Ljava/lang/Integer;
    .locals 15
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/SinceKotlin;
        version = "1.1"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    move-object v0, p0

    move/from16 v1, p1

    move-object v12, v0

    const-string v13, "$receiver"

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    move v12, v1

    invoke-static {v12}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result v12

    .line 73
    move-object v12, v0

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    move v2, v12

    .line 74
    move v12, v2

    if-nez v12, :cond_0

    const/4 v12, 0x0

    move-object v0, v12

    .line 116
    :goto_0
    return-object v0

    .line 76
    :cond_0
    move-object v12, v0

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Ljava/lang/String;->charAt(I)C

    move-result v12

    move v6, v12

    .line 81
    move v12, v6

    const/16 v13, 0x30

    if-ge v12, v13, :cond_4

    .line 82
    move v12, v2

    const/4 v13, 0x1

    if-ne v12, v13, :cond_1

    const/4 v12, 0x0

    move-object v0, v12

    goto :goto_0

    .line 84
    :cond_1
    const/4 v12, 0x1

    move v3, v12

    .line 86
    move v12, v6

    const/16 v13, 0x2d

    if-ne v12, v13, :cond_2

    .line 87
    const/4 v12, 0x1

    move v4, v12

    .line 88
    const/high16 v12, -0x80000000

    move v5, v12

    .line 98
    :goto_1
    move v12, v5

    move v13, v1

    div-int/2addr v12, v13

    move v7, v12

    .line 102
    const/4 v12, 0x0

    move v8, v12

    .line 103
    move v12, v3

    move v9, v12

    move v12, v2

    const/4 v13, 0x1

    add-int/lit8 v12, v12, -0x1

    move v10, v12

    move v12, v9

    move v13, v10

    if-gt v12, v13, :cond_8

    .line 104
    :goto_2
    move-object v12, v0

    move v13, v9

    invoke-virtual {v12, v13}, Ljava/lang/String;->charAt(I)C

    move-result v12

    move v13, v1

    invoke-static {v12, v13}, Lkotlin/text/CharsKt;->digitOf(CI)I

    move-result v12

    move v11, v12

    .line 106
    move v12, v11

    if-gez v12, :cond_5

    const/4 v12, 0x0

    move-object v0, v12

    goto :goto_0

    .line 89
    :cond_2
    move v12, v6

    const/16 v13, 0x2b

    if-ne v12, v13, :cond_3

    .line 90
    const/4 v12, 0x0

    move v4, v12

    .line 91
    const v12, -0x7fffffff

    move v5, v12

    goto :goto_1

    .line 93
    :cond_3
    const/4 v12, 0x0

    move-object v0, v12

    goto :goto_0

    .line 95
    :cond_4
    const/4 v12, 0x0

    move v3, v12

    .line 96
    const/4 v12, 0x0

    move v4, v12

    .line 97
    const v12, -0x7fffffff

    move v5, v12

    goto :goto_1

    .line 107
    :cond_5
    move v12, v8

    move v13, v7

    if-ge v12, v13, :cond_6

    const/4 v12, 0x0

    move-object v0, v12

    goto :goto_0

    .line 109
    :cond_6
    move v12, v8

    move v13, v1

    mul-int/2addr v12, v13

    move v8, v12

    .line 111
    move v12, v8

    move v13, v5

    move v14, v11

    add-int/2addr v13, v14

    if-ge v12, v13, :cond_7

    const/4 v12, 0x0

    move-object v0, v12

    goto :goto_0

    .line 113
    :cond_7
    move v12, v8

    move v13, v11

    sub-int/2addr v12, v13

    move v8, v12

    .line 103
    move v12, v9

    move v13, v10

    if-eq v12, v13, :cond_8

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 116
    :cond_8
    move v12, v4

    if-eqz v12, :cond_9

    move v12, v8

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    :goto_3
    move-object v0, v12

    goto/16 :goto_0

    :cond_9
    move v12, v8

    neg-int v12, v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    goto :goto_3
.end method

.method public static final toLongOrNull(Ljava/lang/String;)Ljava/lang/Long;
    .locals 3
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/SinceKotlin;
        version = "1.1"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, v0

    const-string v2, "$receiver"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    move-object v1, v0

    const/16 v2, 0xa

    invoke-static {v1, v2}, Lkotlin/text/StringsKt;->toLongOrNull(Ljava/lang/String;I)Ljava/lang/Long;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static final toLongOrNull(Ljava/lang/String;I)Ljava/lang/Long;
    .locals 23
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/SinceKotlin;
        version = "1.1"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    move-object/from16 v2, p0

    move/from16 v3, p1

    move-object/from16 v17, v2

    const-string v18, "$receiver"

    invoke-static/range {v17 .. v18}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    move/from16 v17, v3

    invoke-static/range {v17 .. v17}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result v17

    .line 136
    move-object/from16 v17, v2

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    move/from16 v4, v17

    .line 137
    move/from16 v17, v4

    if-nez v17, :cond_0

    const/16 v17, 0x0

    move-object/from16 v2, v17

    .line 179
    :goto_0
    return-object v2

    .line 139
    :cond_0
    move-object/from16 v17, v2

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->charAt(I)C

    move-result v17

    move/from16 v9, v17

    .line 144
    move/from16 v17, v9

    const/16 v18, 0x30

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_4

    .line 145
    move/from16 v17, v4

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    const/16 v17, 0x0

    move-object/from16 v2, v17

    goto :goto_0

    .line 147
    :cond_1
    const/16 v17, 0x1

    move/from16 v5, v17

    .line 149
    move/from16 v17, v9

    const/16 v18, 0x2d

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    .line 150
    const/16 v17, 0x1

    move/from16 v6, v17

    .line 151
    const-wide/high16 v17, -0x8000000000000000L

    move-wide/from16 v7, v17

    .line 161
    :goto_1
    move-wide/from16 v17, v7

    move/from16 v19, v3

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v19, v0

    div-long v17, v17, v19

    move-wide/from16 v10, v17

    .line 165
    const-wide/16 v17, 0x0

    move-wide/from16 v12, v17

    .line 166
    move/from16 v17, v5

    move/from16 v14, v17

    move/from16 v17, v4

    const/16 v18, 0x1

    add-int/lit8 v17, v17, -0x1

    move/from16 v15, v17

    move/from16 v17, v14

    move/from16 v18, v15

    move/from16 v0, v17

    move/from16 v1, v18

    if-gt v0, v1, :cond_8

    .line 167
    :goto_2
    move-object/from16 v17, v2

    move/from16 v18, v14

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->charAt(I)C

    move-result v17

    move/from16 v18, v3

    invoke-static/range {v17 .. v18}, Lkotlin/text/CharsKt;->digitOf(CI)I

    move-result v17

    move/from16 v16, v17

    .line 169
    move/from16 v17, v16

    if-gez v17, :cond_5

    const/16 v17, 0x0

    move-object/from16 v2, v17

    goto :goto_0

    .line 152
    :cond_2
    move/from16 v17, v9

    const/16 v18, 0x2b

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    .line 153
    const/16 v17, 0x0

    move/from16 v6, v17

    .line 154
    const-wide v17, -0x7fffffffffffffffL    # -4.9E-324

    move-wide/from16 v7, v17

    goto :goto_1

    .line 156
    :cond_3
    const/16 v17, 0x0

    move-object/from16 v2, v17

    goto/16 :goto_0

    .line 158
    :cond_4
    const/16 v17, 0x0

    move/from16 v5, v17

    .line 159
    const/16 v17, 0x0

    move/from16 v6, v17

    .line 160
    const-wide v17, -0x7fffffffffffffffL    # -4.9E-324

    move-wide/from16 v7, v17

    goto :goto_1

    .line 170
    :cond_5
    move-wide/from16 v17, v12

    move-wide/from16 v19, v10

    cmp-long v17, v17, v19

    if-gez v17, :cond_6

    const/16 v17, 0x0

    move-object/from16 v2, v17

    goto/16 :goto_0

    .line 172
    :cond_6
    move-wide/from16 v17, v12

    move/from16 v19, v3

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v19, v0

    mul-long v17, v17, v19

    move-wide/from16 v12, v17

    .line 174
    move-wide/from16 v17, v12

    move-wide/from16 v19, v7

    move/from16 v21, v16

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v21, v0

    add-long v19, v19, v21

    cmp-long v17, v17, v19

    if-gez v17, :cond_7

    const/16 v17, 0x0

    move-object/from16 v2, v17

    goto/16 :goto_0

    .line 176
    :cond_7
    move-wide/from16 v17, v12

    move/from16 v19, v16

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v19, v0

    sub-long v17, v17, v19

    move-wide/from16 v12, v17

    .line 166
    move/from16 v17, v14

    move/from16 v18, v15

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_8

    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_2

    .line 179
    :cond_8
    move/from16 v17, v6

    if-eqz v17, :cond_9

    move-wide/from16 v17, v12

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    :goto_3
    move-object/from16 v2, v17

    goto/16 :goto_0

    :cond_9
    move-wide/from16 v17, v12

    move-wide/from16 v0, v17

    neg-long v0, v0

    move-wide/from16 v17, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    goto :goto_3
.end method

.method public static final toShortOrNull(Ljava/lang/String;)Ljava/lang/Short;
    .locals 3
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/SinceKotlin;
        version = "1.1"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, v0

    const-string v2, "$receiver"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    move-object v1, v0

    const/16 v2, 0xa

    invoke-static {v1, v2}, Lkotlin/text/StringsKt;->toShortOrNull(Ljava/lang/String;I)Ljava/lang/Short;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static final toShortOrNull(Ljava/lang/String;I)Ljava/lang/Short;
    .locals 6
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/SinceKotlin;
        version = "1.1"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    const-string v4, "$receiver"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    move-object v3, v0

    move v4, v1

    invoke-static {v3, v4}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v3

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move v2, v3

    .line 52
    move v3, v2

    const/16 v4, -0x8000

    if-lt v3, v4, :cond_0

    move v3, v2

    const/16 v4, 0x7fff

    if-le v3, v4, :cond_2

    :cond_0
    const/4 v3, 0x0

    move-object v0, v3

    .line 53
    :goto_0
    return-object v0

    .line 51
    :cond_1
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0

    .line 53
    :cond_2
    move v3, v2

    int-to-short v3, v3

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    move-object v0, v3

    goto :goto_0
.end method
