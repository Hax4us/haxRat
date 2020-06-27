.class Lkotlin/text/StringsKt__IndentKt;
.super Ljava/lang/Object;
.source "Indent.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u001e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0008\u000b\u001a!\u0010\u0000\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0002H\u0002\u00a2\u0006\u0002\u0008\u0004\u001a\u0011\u0010\u0005\u001a\u00020\u0006*\u00020\u0002H\u0002\u00a2\u0006\u0002\u0008\u0007\u001a\u0014\u0010\u0008\u001a\u00020\u0002*\u00020\u00022\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0002\u001aJ\u0010\t\u001a\u00020\u0002*\u0008\u0012\u0004\u0012\u00020\u00020\n2\u0006\u0010\u000b\u001a\u00020\u00062\u0012\u0010\u000c\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020\u00012\u0014\u0010\r\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001H\u0082\u0008\u00a2\u0006\u0002\u0008\u000e\u001a\u0014\u0010\u000f\u001a\u00020\u0002*\u00020\u00022\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u0002\u001a\u001e\u0010\u0011\u001a\u00020\u0002*\u00020\u00022\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u0002\u001a\n\u0010\u0013\u001a\u00020\u0002*\u00020\u0002\u001a\u0014\u0010\u0014\u001a\u00020\u0002*\u00020\u00022\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u0002\u00a8\u0006\u0015"
    }
    d2 = {
        "getIndentFunction",
        "Lkotlin/Function1;",
        "",
        "indent",
        "getIndentFunction$StringsKt__IndentKt",
        "indentWidth",
        "",
        "indentWidth$StringsKt__IndentKt",
        "prependIndent",
        "reindent",
        "",
        "resultSizeEstimate",
        "indentAddFunction",
        "indentCutFunction",
        "reindent$StringsKt__IndentKt",
        "replaceIndent",
        "newIndent",
        "replaceIndentByMargin",
        "marginPrefix",
        "trimIndent",
        "trimMargin",
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

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final getIndentFunction$StringsKt__IndentKt(Ljava/lang/String;)Lkotlin/jvm/functions/Function1;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lkotlin/jvm/functions/Function1",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 101
    move-object v0, p0

    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    move-object v1, v2

    move-object v2, v1

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    if-eqz v2, :cond_1

    .line 102
    sget-object v2, Lkotlin/text/StringsKt__IndentKt$getIndentFunction$1;->INSTANCE:Lkotlin/text/StringsKt__IndentKt$getIndentFunction$1;

    check-cast v2, Lkotlin/jvm/functions/Function1;

    .line 101
    :goto_1
    move-object v0, v2

    return-object v0

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 103
    :cond_1
    new-instance v2, Lkotlin/text/StringsKt__IndentKt$getIndentFunction$2;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Lkotlin/text/StringsKt__IndentKt$getIndentFunction$2;-><init>(Ljava/lang/String;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    goto :goto_1
.end method

.method private static final indentWidth$StringsKt__IndentKt(Ljava/lang/String;)I
    .locals 9
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    .line 99
    move-object v0, p0

    move-object v7, v0

    check-cast v7, Ljava/lang/CharSequence;

    move-object v1, v7

    .line 193
    const/4 v7, 0x0

    move v2, v7

    move-object v7, v1

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    move v3, v7

    :goto_0
    move v7, v2

    move v8, v3

    if-ge v7, v8, :cond_2

    .line 194
    move-object v7, v1

    move v8, v2

    invoke-interface {v7, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    move v4, v7

    .line 99
    move v7, v4

    invoke-static {v7}, Lkotlin/text/CharsKt;->isWhitespace(C)Z

    move-result v7

    if-nez v7, :cond_0

    const/4 v7, 0x1

    :goto_1
    if-eqz v7, :cond_1

    .line 195
    move v7, v2

    .line 198
    :goto_2
    move v1, v7

    .line 99
    move v7, v1

    move v2, v7

    move v7, v2

    const/4 v8, -0x1

    if-ne v7, v8, :cond_3

    move-object v7, v0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    :goto_3
    move v0, v7

    return v0

    :cond_0
    const/4 v7, 0x0

    goto :goto_1

    .line 193
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 198
    :cond_2
    const/4 v7, -0x1

    goto :goto_2

    .line 99
    :cond_3
    move v7, v2

    goto :goto_3
.end method

.method public static final prependIndent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string v3, "$receiver"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v1

    const-string v3, "indent"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Lkotlin/text/StringsKt;->lineSequence(Ljava/lang/CharSequence;)Lkotlin/sequences/Sequence;

    move-result-object v2

    .line 86
    new-instance v3, Lkotlin/text/StringsKt__IndentKt$prependIndent$1;

    move-object v11, v3

    move-object v3, v11

    move-object v4, v11

    move-object v5, v1

    invoke-direct {v4, v5}, Lkotlin/text/StringsKt__IndentKt$prependIndent$1;-><init>(Ljava/lang/String;)V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    invoke-static {v2, v3}, Lkotlin/sequences/SequencesKt;->map(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v2

    .line 97
    const-string v3, "\n"

    check-cast v3, Ljava/lang/CharSequence;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x3e

    const/4 v10, 0x0

    invoke-static/range {v2 .. v10}, Lkotlin/sequences/SequencesKt;->joinToString$default(Lkotlin/sequences/Sequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public static bridge synthetic prependIndent$default(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;
    .locals 6
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, v2

    const/4 v5, 0x1

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_0

    .line 84
    const-string v4, "    "

    move-object v1, v4

    :cond_0
    move-object v4, v0

    move-object v5, v1

    invoke-static {v4, v5}, Lkotlin/text/StringsKt;->prependIndent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    return-object v0
.end method

.method private static final reindent$StringsKt__IndentKt(Ljava/util/List;ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Ljava/lang/String;
    .locals 39
    .param p0    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Lkotlin/jvm/functions/Function1",
            "<-",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/jvm/functions/Function1",
            "<-",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 111
    move-object/from16 v2, p0

    move/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v28, v2

    invoke-static/range {v28 .. v28}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v28

    move/from16 v7, v28

    .line 112
    move-object/from16 v28, v2

    check-cast v28, Ljava/lang/Iterable;

    move-object/from16 v8, v28

    .line 199
    move-object/from16 v28, v8

    move-object/from16 v9, v28

    new-instance v28, Ljava/util/ArrayList;

    move-object/from16 v38, v28

    move-object/from16 v28, v38

    move-object/from16 v29, v38

    invoke-direct/range {v29 .. v29}, Ljava/util/ArrayList;-><init>()V

    check-cast v28, Ljava/util/Collection;

    move-object/from16 v10, v28

    .line 209
    move-object/from16 v28, v9

    move-object/from16 v11, v28

    .line 210
    const/16 v28, 0x0

    move/from16 v12, v28

    .line 211
    move-object/from16 v28, v11

    invoke-interface/range {v28 .. v28}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v28

    move-object/from16 v13, v28

    :goto_0
    move-object/from16 v28, v13

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_4

    move-object/from16 v28, v13

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    move-object/from16 v14, v28

    move/from16 v28, v12

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v29, v14

    move-object/from16 v15, v29

    move/from16 v16, v28

    .line 209
    move/from16 v28, v16

    move-object/from16 v29, v15

    check-cast v29, Ljava/lang/String;

    move-object/from16 v17, v29

    move/from16 v18, v28

    .line 113
    move/from16 v28, v18

    if-eqz v28, :cond_0

    move/from16 v28, v18

    move/from16 v29, v7

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_1

    :cond_0
    move-object/from16 v28, v17

    check-cast v28, Ljava/lang/CharSequence;

    invoke-static/range {v28 .. v28}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v28

    if-eqz v28, :cond_1

    .line 114
    const/16 v28, 0x0

    .line 113
    :goto_1
    move-object/from16 v38, v28

    move-object/from16 v28, v38

    move-object/from16 v29, v38

    if-eqz v29, :cond_3

    move-object/from16 v21, v28

    move-object/from16 v28, v21

    move-object/from16 v22, v28

    .line 209
    move-object/from16 v28, v10

    move-object/from16 v29, v22

    invoke-interface/range {v28 .. v29}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v28

    :goto_2
    nop

    goto :goto_0

    .line 116
    :cond_1
    move-object/from16 v28, v5

    move-object/from16 v29, v17

    invoke-interface/range {v28 .. v29}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/String;

    move-object/from16 v38, v28

    move-object/from16 v28, v38

    move-object/from16 v29, v38

    if-eqz v29, :cond_2

    move-object/from16 v19, v28

    move-object/from16 v28, v4

    move-object/from16 v29, v19

    invoke-interface/range {v28 .. v29}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/String;

    move-object/from16 v38, v28

    move-object/from16 v28, v38

    move-object/from16 v29, v38

    if-eqz v29, :cond_2

    goto :goto_1

    :cond_2
    move-object/from16 v28, v17

    goto :goto_1

    :cond_3
    goto :goto_2

    .line 212
    :cond_4
    nop

    .line 213
    move-object/from16 v28, v10

    check-cast v28, Ljava/util/List;

    check-cast v28, Ljava/lang/Iterable;

    .line 118
    new-instance v29, Ljava/lang/StringBuilder;

    move-object/from16 v38, v29

    move-object/from16 v29, v38

    move-object/from16 v30, v38

    move/from16 v31, v3

    invoke-direct/range {v30 .. v31}, Ljava/lang/StringBuilder;-><init>(I)V

    check-cast v29, Ljava/lang/Appendable;

    const-string v30, "\n"

    check-cast v30, Ljava/lang/CharSequence;

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x7c

    const/16 v37, 0x0

    invoke-static/range {v28 .. v37}, Lkotlin/collections/CollectionsKt;->joinTo$default(Ljava/lang/Iterable;Ljava/lang/Appendable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/Appendable;

    move-result-object v28

    check-cast v28, Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v38, v28

    move-object/from16 v28, v38

    move-object/from16 v29, v38

    const-string v30, "mapIndexedNotNull { inde\u2026\"\\n\")\n        .toString()"

    invoke-static/range {v29 .. v30}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v2, v28

    return-object v2
.end method

.method public static final replaceIndent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 46
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v35, v2

    const-string v36, "$receiver"

    invoke-static/range {v35 .. v36}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v35, v3

    const-string v36, "newIndent"

    invoke-static/range {v35 .. v36}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    move-object/from16 v35, v2

    check-cast v35, Ljava/lang/CharSequence;

    invoke-static/range {v35 .. v35}, Lkotlin/text/StringsKt;->lines(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v35

    move-object/from16 v4, v35

    .line 71
    move-object/from16 v35, v4

    check-cast v35, Ljava/lang/Iterable;

    move-object/from16 v6, v35

    .line 72
    nop

    .line 157
    move-object/from16 v35, v6

    move-object/from16 v7, v35

    new-instance v35, Ljava/util/ArrayList;

    move-object/from16 v45, v35

    move-object/from16 v35, v45

    move-object/from16 v36, v45

    invoke-direct/range {v36 .. v36}, Ljava/util/ArrayList;-><init>()V

    check-cast v35, Ljava/util/Collection;

    move-object/from16 v8, v35

    .line 158
    move-object/from16 v35, v7

    invoke-interface/range {v35 .. v35}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v35

    move-object/from16 v9, v35

    :cond_0
    :goto_0
    move-object/from16 v35, v9

    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->hasNext()Z

    move-result v35

    if-eqz v35, :cond_2

    move-object/from16 v35, v9

    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v35

    move-object/from16 v10, v35

    move-object/from16 v35, v10

    check-cast v35, Ljava/lang/String;

    move-object/from16 v11, v35

    move-object/from16 v35, v11

    check-cast v35, Ljava/lang/CharSequence;

    move-object/from16 v12, v35

    .line 72
    move-object/from16 v35, v12

    invoke-static/range {v35 .. v35}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v35

    if-nez v35, :cond_1

    const/16 v35, 0x1

    :goto_1
    if-eqz v35, :cond_0

    move-object/from16 v35, v8

    move-object/from16 v36, v10

    invoke-interface/range {v35 .. v36}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v35

    goto :goto_0

    :cond_1
    const/16 v35, 0x0

    goto :goto_1

    .line 159
    :cond_2
    move-object/from16 v35, v8

    check-cast v35, Ljava/util/List;

    check-cast v35, Ljava/lang/Iterable;

    move-object/from16 v6, v35

    .line 73
    nop

    .line 160
    move-object/from16 v35, v6

    move-object/from16 v7, v35

    new-instance v35, Ljava/util/ArrayList;

    move-object/from16 v45, v35

    move-object/from16 v35, v45

    move-object/from16 v36, v45

    move-object/from16 v37, v6

    const/16 v38, 0xa

    invoke-static/range {v37 .. v38}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v37

    invoke-direct/range {v36 .. v37}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v35, Ljava/util/Collection;

    move-object/from16 v8, v35

    .line 161
    move-object/from16 v35, v7

    invoke-interface/range {v35 .. v35}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v35

    move-object/from16 v9, v35

    :goto_2
    move-object/from16 v35, v9

    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->hasNext()Z

    move-result v35

    if-eqz v35, :cond_3

    move-object/from16 v35, v9

    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v35

    move-object/from16 v10, v35

    .line 162
    move-object/from16 v35, v8

    move-object/from16 v36, v10

    check-cast v36, Ljava/lang/String;

    move-object/from16 v11, v36

    move-object/from16 v33, v35

    move-object/from16 v35, v11

    .line 73
    invoke-static/range {v35 .. v35}, Lkotlin/text/StringsKt__IndentKt;->indentWidth$StringsKt__IndentKt(Ljava/lang/String;)I

    move-result v35

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    move-object/from16 v34, v35

    move-object/from16 v35, v33

    move-object/from16 v36, v34

    invoke-interface/range {v35 .. v36}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v35

    .line 161
    goto :goto_2

    .line 163
    :cond_3
    move-object/from16 v35, v8

    check-cast v35, Ljava/util/List;

    check-cast v35, Ljava/lang/Iterable;

    .line 74
    invoke-static/range {v35 .. v35}, Lkotlin/collections/CollectionsKt;->min(Ljava/lang/Iterable;)Ljava/lang/Comparable;

    move-result-object v35

    check-cast v35, Ljava/lang/Integer;

    move-object/from16 v45, v35

    move-object/from16 v35, v45

    move-object/from16 v36, v45

    if-eqz v36, :cond_5

    invoke-virtual/range {v35 .. v35}, Ljava/lang/Integer;->intValue()I

    move-result v35

    .line 71
    :goto_3
    move/from16 v5, v35

    .line 76
    move-object/from16 v35, v4

    move-object/from16 v6, v35

    move-object/from16 v35, v2

    invoke-virtual/range {v35 .. v35}, Ljava/lang/String;->length()I

    move-result v35

    move-object/from16 v36, v3

    invoke-virtual/range {v36 .. v36}, Ljava/lang/String;->length()I

    move-result v36

    move-object/from16 v37, v4

    invoke-interface/range {v37 .. v37}, Ljava/util/List;->size()I

    move-result v37

    mul-int v36, v36, v37

    add-int v35, v35, v36

    move/from16 v7, v35

    move-object/from16 v35, v3

    invoke-static/range {v35 .. v35}, Lkotlin/text/StringsKt__IndentKt;->getIndentFunction$StringsKt__IndentKt(Ljava/lang/String;)Lkotlin/jvm/functions/Function1;

    move-result-object v35

    move-object/from16 v8, v35

    .line 164
    move-object/from16 v35, v6

    invoke-static/range {v35 .. v35}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v35

    move/from16 v9, v35

    .line 165
    move-object/from16 v35, v6

    check-cast v35, Ljava/lang/Iterable;

    move-object/from16 v10, v35

    .line 174
    move-object/from16 v35, v10

    move-object/from16 v11, v35

    new-instance v35, Ljava/util/ArrayList;

    move-object/from16 v45, v35

    move-object/from16 v35, v45

    move-object/from16 v36, v45

    invoke-direct/range {v36 .. v36}, Ljava/util/ArrayList;-><init>()V

    check-cast v35, Ljava/util/Collection;

    move-object/from16 v12, v35

    .line 184
    move-object/from16 v35, v11

    move-object/from16 v13, v35

    .line 185
    const/16 v35, 0x0

    move/from16 v14, v35

    .line 186
    move-object/from16 v35, v13

    invoke-interface/range {v35 .. v35}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v35

    move-object/from16 v15, v35

    :goto_4
    move-object/from16 v35, v15

    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->hasNext()Z

    move-result v35

    if-eqz v35, :cond_9

    move-object/from16 v35, v15

    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v35

    move-object/from16 v16, v35

    move/from16 v35, v14

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v36, v16

    move-object/from16 v17, v36

    move/from16 v18, v35

    .line 184
    move/from16 v35, v18

    move-object/from16 v36, v17

    check-cast v36, Ljava/lang/String;

    move-object/from16 v19, v36

    move/from16 v20, v35

    .line 187
    move/from16 v35, v20

    if-eqz v35, :cond_4

    move/from16 v35, v20

    move/from16 v36, v9

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_6

    :cond_4
    move-object/from16 v35, v19

    check-cast v35, Ljava/lang/CharSequence;

    invoke-static/range {v35 .. v35}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v35

    if-eqz v35, :cond_6

    .line 188
    const/16 v35, 0x0

    .line 187
    :goto_5
    move-object/from16 v45, v35

    move-object/from16 v35, v45

    move-object/from16 v36, v45

    if-eqz v36, :cond_8

    move-object/from16 v24, v35

    move-object/from16 v35, v24

    move-object/from16 v25, v35

    .line 184
    move-object/from16 v35, v12

    move-object/from16 v36, v25

    invoke-interface/range {v35 .. v36}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v35

    :goto_6
    nop

    goto :goto_4

    .line 74
    :cond_5
    const/16 v35, 0x0

    goto/16 :goto_3

    .line 190
    :cond_6
    move-object/from16 v35, v19

    move-object/from16 v21, v35

    .line 76
    move-object/from16 v35, v21

    move/from16 v36, v5

    invoke-static/range {v35 .. v36}, Lkotlin/text/StringsKt;->drop(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v45, v35

    move-object/from16 v35, v45

    move-object/from16 v36, v45

    if-eqz v36, :cond_7

    move-object/from16 v23, v35

    move-object/from16 v35, v8

    move-object/from16 v36, v23

    invoke-interface/range {v35 .. v36}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Ljava/lang/String;

    move-object/from16 v45, v35

    move-object/from16 v35, v45

    move-object/from16 v36, v45

    if-eqz v36, :cond_7

    goto :goto_5

    .line 190
    :cond_7
    move-object/from16 v35, v19

    goto :goto_5

    :cond_8
    goto :goto_6

    .line 191
    :cond_9
    nop

    .line 192
    move-object/from16 v35, v12

    check-cast v35, Ljava/util/List;

    check-cast v35, Ljava/lang/Iterable;

    .line 173
    new-instance v36, Ljava/lang/StringBuilder;

    move-object/from16 v45, v36

    move-object/from16 v36, v45

    move-object/from16 v37, v45

    move/from16 v38, v7

    invoke-direct/range {v37 .. v38}, Ljava/lang/StringBuilder;-><init>(I)V

    check-cast v36, Ljava/lang/Appendable;

    const-string v37, "\n"

    check-cast v37, Ljava/lang/CharSequence;

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x7c

    const/16 v44, 0x0

    invoke-static/range {v35 .. v44}, Lkotlin/collections/CollectionsKt;->joinTo$default(Ljava/lang/Iterable;Ljava/lang/Appendable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/Appendable;

    move-result-object v35

    check-cast v35, Ljava/lang/StringBuilder;

    .line 172
    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v45, v35

    move-object/from16 v35, v45

    move-object/from16 v36, v45

    const-string v37, "mapIndexedNotNull { inde\u2026\"\\n\")\n        .toString()"

    invoke-static/range {v36 .. v37}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v2, v35

    return-object v2
.end method

.method public static bridge synthetic replaceIndent$default(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;
    .locals 6
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, v2

    const/4 v5, 0x1

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_0

    .line 68
    const-string v4, ""

    move-object v1, v4

    :cond_0
    move-object v4, v0

    move-object v5, v1

    invoke-static {v4, v5}, Lkotlin/text/StringsKt;->replaceIndent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    return-object v0
.end method

.method public static final replaceIndentByMargin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 51
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v40, v2

    const-string v41, "$receiver"

    invoke-static/range {v40 .. v41}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v40, v3

    const-string v41, "newIndent"

    invoke-static/range {v40 .. v41}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v40, v4

    const-string v41, "marginPrefix"

    invoke-static/range {v40 .. v41}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    move-object/from16 v40, v4

    check-cast v40, Ljava/lang/CharSequence;

    move-object/from16 v5, v40

    move-object/from16 v40, v5

    invoke-static/range {v40 .. v40}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v40

    if-nez v40, :cond_0

    const/16 v40, 0x1

    :goto_0
    move/from16 v5, v40

    move/from16 v40, v5

    if-nez v40, :cond_1

    const-string v40, "marginPrefix must be non-blank string."

    move-object/from16 v7, v40

    new-instance v40, Ljava/lang/IllegalArgumentException;

    move-object/from16 v50, v40

    move-object/from16 v40, v50

    move-object/from16 v41, v50

    move-object/from16 v42, v7

    invoke-virtual/range {v42 .. v42}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-direct/range {v41 .. v42}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v40, Ljava/lang/Throwable;

    throw v40

    :cond_0
    const/16 v40, 0x0

    goto :goto_0

    .line 35
    :cond_1
    move-object/from16 v40, v2

    check-cast v40, Ljava/lang/CharSequence;

    invoke-static/range {v40 .. v40}, Lkotlin/text/StringsKt;->lines(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v40

    move-object/from16 v5, v40

    .line 37
    move-object/from16 v40, v5

    move-object/from16 v6, v40

    move-object/from16 v40, v2

    invoke-virtual/range {v40 .. v40}, Ljava/lang/String;->length()I

    move-result v40

    move-object/from16 v41, v3

    invoke-virtual/range {v41 .. v41}, Ljava/lang/String;->length()I

    move-result v41

    move-object/from16 v42, v5

    invoke-interface/range {v42 .. v42}, Ljava/util/List;->size()I

    move-result v42

    mul-int v41, v41, v42

    add-int v40, v40, v41

    move/from16 v7, v40

    move-object/from16 v40, v3

    invoke-static/range {v40 .. v40}, Lkotlin/text/StringsKt__IndentKt;->getIndentFunction$StringsKt__IndentKt(Ljava/lang/String;)Lkotlin/jvm/functions/Function1;

    move-result-object v40

    move-object/from16 v8, v40

    .line 122
    move-object/from16 v40, v6

    invoke-static/range {v40 .. v40}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v40

    move/from16 v9, v40

    .line 123
    move-object/from16 v40, v6

    check-cast v40, Ljava/lang/Iterable;

    move-object/from16 v10, v40

    .line 132
    move-object/from16 v40, v10

    move-object/from16 v11, v40

    new-instance v40, Ljava/util/ArrayList;

    move-object/from16 v50, v40

    move-object/from16 v40, v50

    move-object/from16 v41, v50

    invoke-direct/range {v41 .. v41}, Ljava/util/ArrayList;-><init>()V

    check-cast v40, Ljava/util/Collection;

    move-object/from16 v12, v40

    .line 142
    move-object/from16 v40, v11

    move-object/from16 v13, v40

    .line 143
    const/16 v40, 0x0

    move/from16 v14, v40

    .line 144
    move-object/from16 v40, v13

    invoke-interface/range {v40 .. v40}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v40

    move-object/from16 v15, v40

    :goto_1
    move-object/from16 v40, v15

    invoke-interface/range {v40 .. v40}, Ljava/util/Iterator;->hasNext()Z

    move-result v40

    if-eqz v40, :cond_c

    move-object/from16 v40, v15

    invoke-interface/range {v40 .. v40}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v40

    move-object/from16 v16, v40

    move/from16 v40, v14

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v41, v16

    move-object/from16 v17, v41

    move/from16 v18, v40

    .line 142
    move/from16 v40, v18

    move-object/from16 v41, v17

    check-cast v41, Ljava/lang/String;

    move-object/from16 v19, v41

    move/from16 v20, v40

    .line 145
    move/from16 v40, v20

    if-eqz v40, :cond_2

    move/from16 v40, v20

    move/from16 v41, v9

    move/from16 v0, v40

    move/from16 v1, v41

    if-ne v0, v1, :cond_3

    :cond_2
    move-object/from16 v40, v19

    check-cast v40, Ljava/lang/CharSequence;

    invoke-static/range {v40 .. v40}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v40

    if-eqz v40, :cond_3

    .line 146
    const/16 v40, 0x0

    .line 145
    :goto_2
    move-object/from16 v50, v40

    move-object/from16 v40, v50

    move-object/from16 v41, v50

    if-eqz v41, :cond_b

    move-object/from16 v31, v40

    move-object/from16 v40, v31

    move-object/from16 v32, v40

    .line 142
    move-object/from16 v40, v12

    move-object/from16 v41, v32

    invoke-interface/range {v40 .. v41}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v40

    :goto_3
    nop

    goto :goto_1

    .line 148
    :cond_3
    move-object/from16 v40, v19

    move-object/from16 v21, v40

    .line 38
    move-object/from16 v40, v21

    check-cast v40, Ljava/lang/CharSequence;

    move-object/from16 v22, v40

    .line 149
    const/16 v40, 0x0

    move/from16 v23, v40

    move-object/from16 v40, v22

    invoke-interface/range {v40 .. v40}, Ljava/lang/CharSequence;->length()I

    move-result v40

    move/from16 v24, v40

    :goto_4
    move/from16 v40, v23

    move/from16 v41, v24

    move/from16 v0, v40

    move/from16 v1, v41

    if-ge v0, v1, :cond_6

    .line 150
    move-object/from16 v40, v22

    move/from16 v41, v23

    invoke-interface/range {v40 .. v41}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v40

    move/from16 v25, v40

    .line 38
    move/from16 v40, v25

    invoke-static/range {v40 .. v40}, Lkotlin/text/CharsKt;->isWhitespace(C)Z

    move-result v40

    if-nez v40, :cond_4

    const/16 v40, 0x1

    :goto_5
    if-eqz v40, :cond_5

    .line 151
    move/from16 v40, v23

    .line 38
    :goto_6
    move/from16 v26, v40

    .line 40
    move/from16 v40, v26

    const/16 v41, -0x1

    move/from16 v0, v40

    move/from16 v1, v41

    if-ne v0, v1, :cond_7

    const/16 v40, 0x0

    :goto_7
    nop

    move-object/from16 v50, v40

    move-object/from16 v40, v50

    move-object/from16 v41, v50

    if-eqz v41, :cond_a

    move-object/from16 v30, v40

    move-object/from16 v40, v8

    move-object/from16 v41, v30

    invoke-interface/range {v40 .. v41}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Ljava/lang/String;

    move-object/from16 v50, v40

    move-object/from16 v40, v50

    move-object/from16 v41, v50

    if-eqz v41, :cond_a

    goto :goto_2

    .line 38
    :cond_4
    const/16 v40, 0x0

    goto :goto_5

    .line 149
    :cond_5
    add-int/lit8 v23, v23, 0x1

    goto :goto_4

    .line 154
    :cond_6
    const/16 v40, -0x1

    goto :goto_6

    .line 42
    :cond_7
    move-object/from16 v40, v21

    move-object/from16 v41, v4

    move/from16 v42, v26

    const/16 v43, 0x0

    const/16 v44, 0x4

    const/16 v45, 0x0

    invoke-static/range {v40 .. v45}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;IZILjava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_9

    move-object/from16 v40, v21

    move-object/from16 v22, v40

    move/from16 v40, v26

    move-object/from16 v41, v4

    invoke-virtual/range {v41 .. v41}, Ljava/lang/String;->length()I

    move-result v41

    add-int v40, v40, v41

    move/from16 v23, v40

    move-object/from16 v40, v22

    move-object/from16 v50, v40

    move-object/from16 v40, v50

    move-object/from16 v41, v50

    if-nez v41, :cond_8

    new-instance v41, Lkotlin/TypeCastException;

    move-object/from16 v50, v41

    move-object/from16 v41, v50

    move-object/from16 v42, v50

    const-string v43, "null cannot be cast to non-null type java.lang.String"

    invoke-direct/range {v42 .. v43}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v41

    :cond_8
    move/from16 v41, v23

    invoke-virtual/range {v40 .. v41}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v40

    move-object/from16 v50, v40

    move-object/from16 v40, v50

    move-object/from16 v41, v50

    const-string v42, "(this as java.lang.String).substring(startIndex)"

    invoke-static/range {v41 .. v42}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_7

    .line 43
    :cond_9
    const/16 v40, 0x0

    goto :goto_7

    .line 148
    :cond_a
    move-object/from16 v40, v19

    goto/16 :goto_2

    :cond_b
    goto/16 :goto_3

    .line 155
    :cond_c
    nop

    .line 156
    move-object/from16 v40, v12

    check-cast v40, Ljava/util/List;

    check-cast v40, Ljava/lang/Iterable;

    .line 131
    new-instance v41, Ljava/lang/StringBuilder;

    move-object/from16 v50, v41

    move-object/from16 v41, v50

    move-object/from16 v42, v50

    move/from16 v43, v7

    invoke-direct/range {v42 .. v43}, Ljava/lang/StringBuilder;-><init>(I)V

    check-cast v41, Ljava/lang/Appendable;

    const-string v42, "\n"

    check-cast v42, Ljava/lang/CharSequence;

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    const/16 v48, 0x7c

    const/16 v49, 0x0

    invoke-static/range {v40 .. v49}, Lkotlin/collections/CollectionsKt;->joinTo$default(Ljava/lang/Iterable;Ljava/lang/Appendable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/Appendable;

    move-result-object v40

    check-cast v40, Ljava/lang/StringBuilder;

    .line 130
    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v50, v40

    move-object/from16 v40, v50

    move-object/from16 v41, v50

    const-string v42, "mapIndexedNotNull { inde\u2026\"\\n\")\n        .toString()"

    invoke-static/range {v41 .. v42}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v2, v40

    return-object v2
.end method

.method public static bridge synthetic replaceIndentByMargin$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;
    .locals 8
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, v3

    const/4 v6, 0x1

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_0

    .line 33
    const-string v5, ""

    move-object v1, v5

    :cond_0
    move v5, v3

    const/4 v6, 0x2

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_1

    const-string v5, "|"

    move-object v2, v5

    :cond_1
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-static {v5, v6, v7}, Lkotlin/text/StringsKt;->replaceIndentByMargin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    return-object v0
.end method

.method public static final trimIndent(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, v0

    const-string v2, "$receiver"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    move-object v1, v0

    const-string v2, ""

    invoke-static {v1, v2}, Lkotlin/text/StringsKt;->replaceIndent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static final trimMargin(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string v3, "$receiver"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v1

    const-string v3, "marginPrefix"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    move-object v2, v0

    const-string v3, ""

    move-object v4, v1

    invoke-static {v2, v3, v4}, Lkotlin/text/StringsKt;->replaceIndentByMargin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public static bridge synthetic trimMargin$default(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;
    .locals 6
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, v2

    const/4 v5, 0x1

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_0

    .line 25
    const-string v4, "|"

    move-object v1, v4

    :cond_0
    move-object v4, v0

    move-object v5, v1

    invoke-static {v4, v5}, Lkotlin/text/StringsKt;->trimMargin(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    return-object v0
.end method
