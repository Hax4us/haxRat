.class Lkotlin/io/FilesKt__FilePathComponentsKt;
.super Ljava/lang/Object;
.source "FilePathComponents.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000$\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\u001a\u0011\u0010\u000b\u001a\u00020\u000c*\u00020\u0008H\u0002\u00a2\u0006\u0002\u0008\r\u001a\u001c\u0010\u000e\u001a\u00020\u0002*\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u000c2\u0006\u0010\u0010\u001a\u00020\u000cH\u0000\u001a\u000c\u0010\u0011\u001a\u00020\u0012*\u00020\u0002H\u0000\"\u0015\u0010\u0000\u001a\u00020\u0001*\u00020\u00028F\u00a2\u0006\u0006\u001a\u0004\u0008\u0000\u0010\u0003\"\u0018\u0010\u0004\u001a\u00020\u0002*\u00020\u00028@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0006\"\u0018\u0010\u0007\u001a\u00020\u0008*\u00020\u00028@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u0013"
    }
    d2 = {
        "isRooted",
        "",
        "Ljava/io/File;",
        "(Ljava/io/File;)Z",
        "root",
        "getRoot",
        "(Ljava/io/File;)Ljava/io/File;",
        "rootName",
        "",
        "getRootName",
        "(Ljava/io/File;)Ljava/lang/String;",
        "getRootLength",
        "",
        "getRootLength$FilesKt__FilePathComponentsKt",
        "subPath",
        "beginIndex",
        "endIndex",
        "toComponents",
        "Lkotlin/io/FilePathComponents;",
        "kotlin-stdlib"
    }
    k = 0x5
    mv = {
        0x1,
        0x1,
        0xa
    }
    xi = 0x1
    xs = "kotlin/io/FilesKt"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getRoot(Ljava/io/File;)Ljava/io/File;
    .locals 5
    .param p0    # Ljava/io/File;
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

    .line 78
    new-instance v1, Ljava/io/File;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-static {v3}, Lkotlin/io/FilesKt;->getRootName(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    return-object v0
.end method

.method private static final getRootLength$FilesKt__FilePathComponentsKt(Ljava/lang/String;)I
    .locals 8
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    .line 29
    move-object v0, p0

    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    sget-char v3, Ljava/io/File;->separatorChar:C

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v2

    move v1, v2

    .line 30
    move v2, v1

    if-nez v2, :cond_2

    .line 31
    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    move-object v2, v0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    sget-char v3, Ljava/io/File;->separatorChar:C

    if-ne v2, v3, :cond_1

    .line 35
    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    sget-char v3, Ljava/io/File;->separatorChar:C

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v2

    move v1, v2

    .line 36
    move v2, v1

    if-ltz v2, :cond_1

    .line 37
    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    sget-char v3, Ljava/io/File;->separatorChar:C

    move v4, v1

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v2

    move v1, v2

    .line 38
    move v2, v1

    if-ltz v2, :cond_0

    .line 39
    move v2, v1

    const/4 v3, 0x1

    add-int/lit8 v2, v2, 0x1

    move v0, v2

    .line 54
    :goto_0
    return v0

    .line 41
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    move v0, v2

    goto :goto_0

    .line 44
    :cond_1
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0

    .line 47
    :cond_2
    move v2, v1

    if-lez v2, :cond_3

    move-object v2, v0

    move v3, v1

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x3a

    if-ne v2, v3, :cond_3

    .line 48
    add-int/lit8 v1, v1, 0x1

    .line 49
    move v2, v1

    move v0, v2

    goto :goto_0

    .line 52
    :cond_3
    move v2, v1

    const/4 v3, -0x1

    if-ne v2, v3, :cond_4

    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    const/16 v3, 0x3a

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static {v2, v3, v4, v5, v6}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 53
    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    move v0, v2

    goto :goto_0

    .line 54
    :cond_4
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public static final getRootName(Ljava/io/File;)Ljava/lang/String;
    .locals 9
    .param p0    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v4, v0

    const-string v5, "$receiver"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    move-object v4, v0

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const-string v6, "path"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, v4

    const/4 v4, 0x0

    move v2, v4

    move-object v4, v0

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const-string v6, "path"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Lkotlin/io/FilesKt__FilePathComponentsKt;->getRootLength$FilesKt__FilePathComponentsKt(Ljava/lang/String;)I

    move-result v4

    move v3, v4

    move-object v4, v1

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    if-nez v5, :cond_0

    new-instance v5, Lkotlin/TypeCastException;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const-string v7, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {v6, v7}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_0
    move v5, v2

    move v6, v3

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const-string v6, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v4

    return-object v0
.end method

.method public static final isRooted(Ljava/io/File;)Z
    .locals 5
    .param p0    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move-object v1, v0

    const-string v2, "$receiver"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    move-object v1, v0

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "path"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/io/FilesKt__FilePathComponentsKt;->getRootLength$FilesKt__FilePathComponentsKt(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static final subPath(Ljava/io/File;II)Ljava/io/File;
    .locals 6
    .param p0    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    const-string v4, "$receiver"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    move-object v3, v0

    invoke-static {v3}, Lkotlin/io/FilesKt;->toComponents(Ljava/io/File;)Lkotlin/io/FilePathComponents;

    move-result-object v3

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Lkotlin/io/FilePathComponents;->subPath(II)Ljava/io/File;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method public static final toComponents(Ljava/io/File;)Lkotlin/io/FilePathComponents;
    .locals 25
    .param p0    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    move-object/from16 v1, p0

    move-object/from16 v18, v1

    const-string v19, "$receiver"

    invoke-static/range {v18 .. v19}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    move-object/from16 v18, v1

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v2, v18

    .line 131
    move-object/from16 v18, v2

    move-object/from16 v24, v18

    move-object/from16 v18, v24

    move-object/from16 v19, v24

    const-string v20, "path"

    invoke-static/range {v19 .. v20}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static/range {v18 .. v18}, Lkotlin/io/FilesKt__FilePathComponentsKt;->getRootLength$FilesKt__FilePathComponentsKt(Ljava/lang/String;)I

    move-result v18

    move/from16 v3, v18

    .line 132
    move-object/from16 v18, v2

    move-object/from16 v5, v18

    const/16 v18, 0x0

    move/from16 v6, v18

    move-object/from16 v18, v5

    move/from16 v19, v6

    move/from16 v20, v3

    invoke-virtual/range {v18 .. v20}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v24, v18

    move-object/from16 v18, v24

    move-object/from16 v19, v24

    const-string v20, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static/range {v19 .. v20}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v4, v18

    .line 133
    move-object/from16 v18, v2

    move-object/from16 v6, v18

    move-object/from16 v18, v6

    move/from16 v19, v3

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v24, v18

    move-object/from16 v18, v24

    move-object/from16 v19, v24

    const-string v20, "(this as java.lang.String).substring(startIndex)"

    invoke-static/range {v19 .. v20}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v5, v18

    .line 134
    move-object/from16 v18, v5

    check-cast v18, Ljava/lang/CharSequence;

    move-object/from16 v7, v18

    move-object/from16 v18, v7

    invoke-interface/range {v18 .. v18}, Ljava/lang/CharSequence;->length()I

    move-result v18

    if-nez v18, :cond_0

    const/16 v18, 0x1

    :goto_0
    if-eqz v18, :cond_1

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v18

    :goto_1
    move-object/from16 v6, v18

    .line 135
    new-instance v18, Lkotlin/io/FilePathComponents;

    move-object/from16 v24, v18

    move-object/from16 v18, v24

    move-object/from16 v19, v24

    new-instance v20, Ljava/io/File;

    move-object/from16 v24, v20

    move-object/from16 v20, v24

    move-object/from16 v21, v24

    move-object/from16 v22, v4

    invoke-direct/range {v21 .. v22}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v21, v6

    invoke-direct/range {v19 .. v21}, Lkotlin/io/FilePathComponents;-><init>(Ljava/io/File;Ljava/util/List;)V

    move-object/from16 v1, v18

    return-object v1

    .line 134
    :cond_0
    const/16 v18, 0x0

    goto :goto_0

    :cond_1
    move-object/from16 v18, v5

    check-cast v18, Ljava/lang/CharSequence;

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [C

    move-object/from16 v19, v0

    move-object/from16 v24, v19

    move-object/from16 v19, v24

    move-object/from16 v20, v24

    const/16 v21, 0x0

    sget-char v22, Ljava/io/File;->separatorChar:C

    aput-char v22, v20, v21

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x6

    const/16 v23, 0x0

    invoke-static/range {v18 .. v23}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[CZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v18

    check-cast v18, Ljava/lang/Iterable;

    move-object/from16 v7, v18

    .line 150
    move-object/from16 v18, v7

    move-object/from16 v8, v18

    new-instance v18, Ljava/util/ArrayList;

    move-object/from16 v24, v18

    move-object/from16 v18, v24

    move-object/from16 v19, v24

    move-object/from16 v20, v7

    const/16 v21, 0xa

    invoke-static/range {v20 .. v21}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v20

    invoke-direct/range {v19 .. v20}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v18, Ljava/util/Collection;

    move-object/from16 v9, v18

    .line 151
    move-object/from16 v18, v8

    invoke-interface/range {v18 .. v18}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v18

    move-object/from16 v10, v18

    :goto_2
    move-object/from16 v18, v10

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_2

    move-object/from16 v18, v10

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v11, v18

    .line 152
    move-object/from16 v18, v9

    move-object/from16 v19, v11

    check-cast v19, Ljava/lang/String;

    move-object/from16 v12, v19

    move-object/from16 v16, v18

    new-instance v18, Ljava/io/File;

    move-object/from16 v24, v18

    move-object/from16 v18, v24

    move-object/from16 v19, v24

    move-object/from16 v20, v12

    .line 134
    invoke-direct/range {v19 .. v20}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v17, v18

    move-object/from16 v18, v16

    move-object/from16 v19, v17

    invoke-interface/range {v18 .. v19}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v18

    .line 151
    goto :goto_2

    .line 153
    :cond_2
    move-object/from16 v18, v9

    check-cast v18, Ljava/util/List;

    goto/16 :goto_1
.end method
