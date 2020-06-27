.class Lkotlin/io/FilesKt__UtilsKt;
.super Lkotlin/io/FilesKt__FileTreeWalkKt;
.source "Utils.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000<\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000c\u001a(\u0010\t\u001a\u00020\u00022\u0008\u0008\u0002\u0010\n\u001a\u00020\u00012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00012\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u0002\u001a(\u0010\r\u001a\u00020\u00022\u0008\u0008\u0002\u0010\n\u001a\u00020\u00012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00012\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u0002\u001a8\u0010\u000e\u001a\u00020\u000f*\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u000f2\u001a\u0008\u0002\u0010\u0012\u001a\u0014\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u00150\u0013\u001a&\u0010\u0016\u001a\u00020\u0002*\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u000f2\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u0018\u001a\n\u0010\u0019\u001a\u00020\u000f*\u00020\u0002\u001a\u0012\u0010\u001a\u001a\u00020\u000f*\u00020\u00022\u0006\u0010\u001b\u001a\u00020\u0002\u001a\u0012\u0010\u001a\u001a\u00020\u000f*\u00020\u00022\u0006\u0010\u001b\u001a\u00020\u0001\u001a\n\u0010\u001c\u001a\u00020\u0002*\u00020\u0002\u001a\u001d\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u001d*\u0008\u0012\u0004\u0012\u00020\u00020\u001dH\u0002\u00a2\u0006\u0002\u0008\u001e\u001a\u0011\u0010\u001c\u001a\u00020\u001f*\u00020\u001fH\u0002\u00a2\u0006\u0002\u0008\u001e\u001a\u0012\u0010 \u001a\u00020\u0002*\u00020\u00022\u0006\u0010!\u001a\u00020\u0002\u001a\u0014\u0010\"\u001a\u0004\u0018\u00010\u0002*\u00020\u00022\u0006\u0010!\u001a\u00020\u0002\u001a\u0012\u0010#\u001a\u00020\u0002*\u00020\u00022\u0006\u0010!\u001a\u00020\u0002\u001a\u0012\u0010$\u001a\u00020\u0002*\u00020\u00022\u0006\u0010%\u001a\u00020\u0002\u001a\u0012\u0010$\u001a\u00020\u0002*\u00020\u00022\u0006\u0010%\u001a\u00020\u0001\u001a\u0012\u0010&\u001a\u00020\u0002*\u00020\u00022\u0006\u0010%\u001a\u00020\u0002\u001a\u0012\u0010&\u001a\u00020\u0002*\u00020\u00022\u0006\u0010%\u001a\u00020\u0001\u001a\u0012\u0010\'\u001a\u00020\u000f*\u00020\u00022\u0006\u0010\u001b\u001a\u00020\u0002\u001a\u0012\u0010\'\u001a\u00020\u000f*\u00020\u00022\u0006\u0010\u001b\u001a\u00020\u0001\u001a\u0012\u0010(\u001a\u00020\u0001*\u00020\u00022\u0006\u0010!\u001a\u00020\u0002\u001a\u001b\u0010)\u001a\u0004\u0018\u00010\u0001*\u00020\u00022\u0006\u0010!\u001a\u00020\u0002H\u0002\u00a2\u0006\u0002\u0008*\"\u0015\u0010\u0000\u001a\u00020\u0001*\u00020\u00028F\u00a2\u0006\u0006\u001a\u0004\u0008\u0003\u0010\u0004\"\u0015\u0010\u0005\u001a\u00020\u0001*\u00020\u00028F\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0004\"\u0015\u0010\u0007\u001a\u00020\u0001*\u00020\u00028F\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\u0004\u00a8\u0006+"
    }
    d2 = {
        "extension",
        "",
        "Ljava/io/File;",
        "getExtension",
        "(Ljava/io/File;)Ljava/lang/String;",
        "invariantSeparatorsPath",
        "getInvariantSeparatorsPath",
        "nameWithoutExtension",
        "getNameWithoutExtension",
        "createTempDir",
        "prefix",
        "suffix",
        "directory",
        "createTempFile",
        "copyRecursively",
        "",
        "target",
        "overwrite",
        "onError",
        "Lkotlin/Function2;",
        "Ljava/io/IOException;",
        "Lkotlin/io/OnErrorAction;",
        "copyTo",
        "bufferSize",
        "",
        "deleteRecursively",
        "endsWith",
        "other",
        "normalize",
        "",
        "normalize$FilesKt__UtilsKt",
        "Lkotlin/io/FilePathComponents;",
        "relativeTo",
        "base",
        "relativeToOrNull",
        "relativeToOrSelf",
        "resolve",
        "relative",
        "resolveSibling",
        "startsWith",
        "toRelativeString",
        "toRelativeStringOrNull",
        "toRelativeStringOrNull$FilesKt__UtilsKt",
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

    invoke-direct {v1}, Lkotlin/io/FilesKt__FileTreeWalkKt;-><init>()V

    return-void
.end method

.method public static final copyRecursively(Ljava/io/File;Ljava/io/File;ZLkotlin/jvm/functions/Function2;)Z
    .locals 19
    .param p0    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/io/File;",
            "Z",
            "Lkotlin/jvm/functions/Function2",
            "<-",
            "Ljava/io/File;",
            "-",
            "Ljava/io/IOException;",
            "+",
            "Lkotlin/io/OnErrorAction;",
            ">;)Z"
        }
    .end annotation

    .prologue
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object v9, v0

    const-string v10, "$receiver"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v9, v1

    const-string v10, "target"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v9, v3

    const-string v10, "onError"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 265
    move-object v9, v0

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_1

    .line 266
    move-object v9, v3

    move-object v10, v0

    new-instance v11, Lkotlin/io/NoSuchFileException;

    move-object/from16 v18, v11

    move-object/from16 v11, v18

    move-object/from16 v12, v18

    move-object v13, v0

    const/4 v14, 0x0

    const-string v15, "The source file doesn\'t exist."

    const/16 v16, 0x2

    const/16 v17, 0x0

    invoke-direct/range {v12 .. v17}, Lkotlin/io/NoSuchFileException;-><init>(Ljava/io/File;Ljava/io/File;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v9, v10, v11}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lkotlin/io/OnErrorAction;

    sget-object v10, Lkotlin/io/OnErrorAction;->TERMINATE:Lkotlin/io/OnErrorAction;

    if-eq v9, v10, :cond_0

    const/4 v9, 0x1

    :goto_0
    move v0, v9

    .line 309
    :goto_1
    return v0

    .line 266
    :cond_0
    const/4 v9, 0x0

    goto :goto_0

    .line 269
    :cond_1
    nop

    .line 271
    move-object v9, v0

    :try_start_0
    invoke-static {v9}, Lkotlin/io/FilesKt;->walkTopDown(Ljava/io/File;)Lkotlin/io/FileTreeWalk;

    move-result-object v9

    new-instance v10, Lkotlin/io/FilesKt__UtilsKt$copyRecursively$2;

    move-object/from16 v18, v10

    move-object/from16 v10, v18

    move-object/from16 v11, v18

    move-object v12, v3

    invoke-direct {v11, v12}, Lkotlin/io/FilesKt__UtilsKt$copyRecursively$2;-><init>(Lkotlin/jvm/functions/Function2;)V

    check-cast v10, Lkotlin/jvm/functions/Function2;

    invoke-virtual {v9, v10}, Lkotlin/io/FileTreeWalk;->onFail(Lkotlin/jvm/functions/Function2;)Lkotlin/io/FileTreeWalk;

    move-result-object v9

    invoke-virtual {v9}, Lkotlin/io/FileTreeWalk;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-object v5, v9

    :goto_2
    move-object v9, v5

    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_b

    move-object v9, v5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/io/File;

    move-object v4, v9

    .line 272
    move-object v9, v4

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_2

    .line 273
    move-object v9, v3

    move-object v10, v4

    new-instance v11, Lkotlin/io/NoSuchFileException;

    move-object/from16 v18, v11

    move-object/from16 v11, v18

    move-object/from16 v12, v18

    move-object v13, v4

    const/4 v14, 0x0

    const-string v15, "The source file doesn\'t exist."

    const/16 v16, 0x2

    const/16 v17, 0x0

    invoke-direct/range {v12 .. v17}, Lkotlin/io/NoSuchFileException;-><init>(Ljava/io/File;Ljava/io/File;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v9, v10, v11}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lkotlin/io/OnErrorAction;

    sget-object v10, Lkotlin/io/OnErrorAction;->TERMINATE:Lkotlin/io/OnErrorAction;

    if-ne v9, v10, :cond_8

    .line 275
    const/4 v9, 0x0

    move v0, v9

    goto :goto_1

    .line 277
    :cond_2
    move-object v9, v4

    move-object v10, v0

    invoke-static {v9, v10}, Lkotlin/io/FilesKt;->toRelativeString(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;

    move-result-object v9

    move-object v6, v9

    .line 278
    new-instance v9, Ljava/io/File;

    move-object/from16 v18, v9

    move-object/from16 v9, v18

    move-object/from16 v10, v18

    move-object v11, v1

    move-object v12, v6

    invoke-direct {v10, v11, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v7, v9

    .line 279
    move-object v9, v7

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_9

    move-object v9, v4

    invoke-virtual {v9}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-eqz v9, :cond_3

    move-object v9, v7

    invoke-virtual {v9}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-nez v9, :cond_9

    .line 280
    :cond_3
    move v9, v2

    if-nez v9, :cond_4

    const/4 v9, 0x1

    .line 281
    :goto_3
    move v8, v9

    .line 287
    move v9, v8

    if-eqz v9, :cond_9

    .line 288
    move-object v9, v3

    move-object v10, v7

    new-instance v11, Lkotlin/io/FileAlreadyExistsException;

    move-object/from16 v18, v11

    move-object/from16 v11, v18

    move-object/from16 v12, v18

    move-object v13, v4

    .line 289
    move-object v14, v7

    .line 290
    const-string v15, "The destination file already exists."

    .line 288
    invoke-direct {v12, v13, v14, v15}, Lkotlin/io/FileAlreadyExistsException;-><init>(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V

    invoke-interface {v9, v10, v11}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lkotlin/io/OnErrorAction;

    sget-object v10, Lkotlin/io/OnErrorAction;->TERMINATE:Lkotlin/io/OnErrorAction;

    if-ne v9, v10, :cond_8

    .line 291
    const/4 v9, 0x0

    move v0, v9

    goto/16 :goto_1

    .line 281
    :cond_4
    move-object v9, v7

    invoke-virtual {v9}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 282
    move-object v9, v7

    invoke-static {v9}, Lkotlin/io/FilesKt;->deleteRecursively(Ljava/io/File;)Z

    move-result v9

    if-nez v9, :cond_5

    const/4 v9, 0x1

    goto :goto_3

    :cond_5
    const/4 v9, 0x0

    goto :goto_3

    .line 284
    :cond_6
    move-object v9, v7

    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    move-result v9

    if-nez v9, :cond_7

    const/4 v9, 0x1

    goto :goto_3

    :cond_7
    const/4 v9, 0x0

    goto :goto_3

    .line 304
    :cond_8
    :goto_4
    goto/16 :goto_2

    .line 297
    :cond_9
    move-object v9, v4

    invoke-virtual {v9}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-eqz v9, :cond_a

    .line 298
    move-object v9, v7

    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z

    move-result v9

    goto :goto_4

    .line 300
    :cond_a
    move-object v9, v4

    move-object v10, v7

    move v11, v2

    const/4 v12, 0x0

    const/4 v13, 0x4

    const/4 v14, 0x0

    invoke-static/range {v9 .. v14}, Lkotlin/io/FilesKt;->copyTo$default(Ljava/io/File;Ljava/io/File;ZIILjava/lang/Object;)Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v9

    move-object v11, v4

    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v11

    cmp-long v9, v9, v11

    if-eqz v9, :cond_8

    .line 301
    move-object v9, v3

    move-object v10, v4

    new-instance v11, Ljava/io/IOException;

    move-object/from16 v18, v11

    move-object/from16 v11, v18

    move-object/from16 v12, v18

    const-string v13, "Source file wasn\'t copied completely, length of destination file differs."

    invoke-direct {v12, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-interface {v9, v10, v11}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lkotlin/io/OnErrorAction;

    sget-object v10, Lkotlin/io/OnErrorAction;->TERMINATE:Lkotlin/io/OnErrorAction;
    :try_end_0
    .catch Lkotlin/io/TerminateException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v9, v10, :cond_8

    .line 302
    const/4 v9, 0x0

    move v0, v9

    goto/16 :goto_1

    .line 307
    :cond_b
    const/4 v9, 0x1

    move v0, v9

    goto/16 :goto_1

    .line 308
    :catch_0
    move-exception v9

    move-object v4, v9

    .line 309
    const/4 v9, 0x0

    move v0, v9

    goto/16 :goto_1
.end method

.method public static bridge synthetic copyRecursively$default(Ljava/io/File;Ljava/io/File;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Z
    .locals 10

    .prologue
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move v6, v4

    const/4 v7, 0x2

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_0

    .line 262
    const/4 v6, 0x0

    move v2, v6

    :cond_0
    move v6, v4

    const/4 v7, 0x4

    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_1

    .line 263
    sget-object v6, Lkotlin/io/FilesKt__UtilsKt$copyRecursively$1;->INSTANCE:Lkotlin/io/FilesKt__UtilsKt$copyRecursively$1;

    check-cast v6, Lkotlin/jvm/functions/Function2;

    move-object v3, v6

    :cond_1
    move-object v6, v0

    move-object v7, v1

    move v8, v2

    move-object v9, v3

    invoke-static {v6, v7, v8, v9}, Lkotlin/io/FilesKt;->copyRecursively(Ljava/io/File;Ljava/io/File;ZLkotlin/jvm/functions/Function2;)Z

    move-result v6

    move v0, v6

    return v0
.end method

.method public static final copyTo(Ljava/io/File;Ljava/io/File;ZI)Ljava/io/File;
    .locals 22
    .param p0    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object v14, v0

    const-string v15, "$receiver"

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v14, v1

    const-string v15, "target"

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 185
    move-object v14, v0

    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v14

    if-nez v14, :cond_0

    .line 186
    new-instance v14, Lkotlin/io/NoSuchFileException;

    move-object/from16 v21, v14

    move-object/from16 v14, v21

    move-object/from16 v15, v21

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const-string v18, "The source file doesn\'t exist."

    const/16 v19, 0x2

    const/16 v20, 0x0

    invoke-direct/range {v15 .. v20}, Lkotlin/io/NoSuchFileException;-><init>(Ljava/io/File;Ljava/io/File;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v14, Ljava/lang/Throwable;

    throw v14

    .line 189
    :cond_0
    move-object v14, v1

    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_3

    .line 190
    move v14, v2

    if-nez v14, :cond_1

    const/4 v14, 0x1

    :goto_0
    move v4, v14

    .line 192
    move v14, v4

    if-eqz v14, :cond_3

    .line 193
    new-instance v14, Lkotlin/io/FileAlreadyExistsException;

    move-object/from16 v21, v14

    move-object/from16 v14, v21

    move-object/from16 v15, v21

    .line 194
    move-object/from16 v16, v0

    .line 195
    move-object/from16 v17, v1

    .line 196
    const-string v18, "The destination file already exists."

    .line 193
    invoke-direct/range {v15 .. v18}, Lkotlin/io/FileAlreadyExistsException;-><init>(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V

    check-cast v14, Ljava/lang/Throwable;

    throw v14

    .line 190
    :cond_1
    move-object v14, v1

    invoke-virtual {v14}, Ljava/io/File;->delete()Z

    move-result v14

    if-nez v14, :cond_2

    const/4 v14, 0x1

    goto :goto_0

    :cond_2
    const/4 v14, 0x0

    goto :goto_0

    .line 201
    :cond_3
    move-object v14, v0

    invoke-virtual {v14}, Ljava/io/File;->isDirectory()Z

    move-result v14

    if-eqz v14, :cond_4

    .line 202
    move-object v14, v1

    invoke-virtual {v14}, Ljava/io/File;->mkdirs()Z

    move-result v14

    if-nez v14, :cond_5

    .line 203
    new-instance v14, Lkotlin/io/FileSystemException;

    move-object/from16 v21, v14

    move-object/from16 v14, v21

    move-object/from16 v15, v21

    move-object/from16 v16, v0

    move-object/from16 v17, v1

    const-string v18, "Failed to create target directory."

    invoke-direct/range {v15 .. v18}, Lkotlin/io/FileSystemException;-><init>(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V

    check-cast v14, Ljava/lang/Throwable;

    throw v14

    .line 205
    :cond_4
    move-object v14, v1

    invoke-virtual {v14}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v14

    move-object/from16 v21, v14

    move-object/from16 v14, v21

    move-object/from16 v15, v21

    if-eqz v15, :cond_6

    invoke-virtual {v14}, Ljava/io/File;->mkdirs()Z

    move-result v14

    .line 207
    :goto_1
    move-object v14, v0

    move-object v4, v14

    new-instance v14, Ljava/io/FileInputStream;

    move-object/from16 v21, v14

    move-object/from16 v14, v21

    move-object/from16 v15, v21

    move-object/from16 v16, v4

    invoke-direct/range {v15 .. v16}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    check-cast v14, Ljava/io/Closeable;

    move-object v4, v14

    const/4 v14, 0x0

    check-cast v14, Ljava/lang/Throwable;

    move-object v5, v14

    nop

    move-object v14, v4

    :try_start_0
    check-cast v14, Ljava/io/FileInputStream;

    move-object v6, v14

    .line 208
    move-object v14, v1

    move-object v8, v14

    new-instance v14, Ljava/io/FileOutputStream;

    move-object/from16 v21, v14

    move-object/from16 v14, v21

    move-object/from16 v15, v21

    move-object/from16 v16, v8

    invoke-direct/range {v15 .. v16}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    check-cast v14, Ljava/io/Closeable;

    move-object v8, v14

    const/4 v14, 0x0

    check-cast v14, Ljava/lang/Throwable;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v9, v14

    nop

    move-object v14, v8

    :try_start_1
    check-cast v14, Ljava/io/FileOutputStream;

    move-object v10, v14

    .line 209
    move-object v14, v6

    check-cast v14, Ljava/io/InputStream;

    move-object v15, v10

    check-cast v15, Ljava/io/OutputStream;

    move/from16 v16, v3

    invoke-static/range {v14 .. v16}, Lkotlin/io/ByteStreamsKt;->copyTo(Ljava/io/InputStream;Ljava/io/OutputStream;I)J
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v14

    .line 208
    move-wide v10, v14

    move-object v14, v8

    move-object v15, v9

    :try_start_2
    invoke-static {v14, v15}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-wide v14, v10

    .line 210
    nop

    .line 207
    move-wide v6, v14

    move-object v14, v4

    move-object v15, v5

    invoke-static {v14, v15}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    move-wide v14, v6

    .line 212
    :cond_5
    move-object v14, v1

    move-object v0, v14

    return-object v0

    :cond_6
    goto :goto_1

    .line 208
    :catch_0
    move-exception v14

    move-object v10, v14

    move-object v14, v10

    move-object v9, v14

    move-object v14, v10

    :try_start_3
    throw v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v14

    move-object v10, v14

    move-object v14, v8

    move-object v15, v9

    :try_start_4
    invoke-static {v14, v15}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    move-object v14, v10

    throw v14
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 207
    :catch_1
    move-exception v14

    move-object v6, v14

    move-object v14, v6

    move-object v5, v14

    move-object v14, v6

    :try_start_5
    throw v14
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v14

    move-object v6, v14

    move-object v14, v4

    move-object v15, v5

    invoke-static {v14, v15}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    move-object v14, v6

    throw v14
.end method

.method public static bridge synthetic copyTo$default(Ljava/io/File;Ljava/io/File;ZIILjava/lang/Object;)Ljava/io/File;
    .locals 10
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, v4

    const/4 v7, 0x2

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_0

    .line 184
    const/4 v6, 0x0

    move v2, v6

    :cond_0
    move v6, v4

    const/4 v7, 0x4

    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_1

    const/16 v6, 0x2000

    move v3, v6

    :cond_1
    move-object v6, v0

    move-object v7, v1

    move v8, v2

    move v9, v3

    invoke-static {v6, v7, v8, v9}, Lkotlin/io/FilesKt;->copyTo(Ljava/io/File;Ljava/io/File;ZI)Ljava/io/File;

    move-result-object v6

    move-object v0, v6

    return-object v0
.end method

.method public static final createTempDir(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    .locals 9
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    const-string v5, "prefix"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-static {v4, v5, v6}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v4

    move-object v3, v4

    .line 31
    move-object v4, v3

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v4

    .line 32
    move-object v4, v3

    invoke-virtual {v4}, Ljava/io/File;->mkdir()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 33
    move-object v4, v3

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const-string v6, "dir"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v4

    return-object v0

    .line 35
    :cond_0
    new-instance v4, Ljava/io/IOException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to create temporary directory "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x2e

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    check-cast v4, Ljava/lang/Throwable;

    throw v4
.end method

.method public static bridge synthetic createTempDir$default(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;ILjava/lang/Object;)Ljava/io/File;
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

    .line 29
    const-string v5, "tmp"

    move-object v0, v5

    :cond_0
    move v5, v3

    const/4 v6, 0x2

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_1

    const/4 v5, 0x0

    check-cast v5, Ljava/lang/String;

    move-object v1, v5

    :cond_1
    move v5, v3

    const/4 v6, 0x4

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_2

    const/4 v5, 0x0

    check-cast v5, Ljava/io/File;

    move-object v2, v5

    :cond_2
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-static {v5, v6, v7}, Lkotlin/io/FilesKt;->createTempDir(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v5

    move-object v0, v5

    return-object v0
.end method

.method public static final createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    .locals 7
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    const-string v4, "prefix"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-static {v3, v4, v5}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v3

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "File.createTempFile(prefix, suffix, directory)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v3

    return-object v0
.end method

.method public static bridge synthetic createTempFile$default(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;ILjava/lang/Object;)Ljava/io/File;
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

    .line 51
    const-string v5, "tmp"

    move-object v0, v5

    :cond_0
    move v5, v3

    const/4 v6, 0x2

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_1

    const/4 v5, 0x0

    check-cast v5, Ljava/lang/String;

    move-object v1, v5

    :cond_1
    move v5, v3

    const/4 v6, 0x4

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_2

    const/4 v5, 0x0

    check-cast v5, Ljava/io/File;

    move-object v2, v5

    :cond_2
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-static {v5, v6, v7}, Lkotlin/io/FilesKt;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v5

    move-object v0, v5

    return-object v0
.end method

.method public static final deleteRecursively(Ljava/io/File;)Z
    .locals 12
    .param p0    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move-object v10, v0

    const-string v11, "$receiver"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 319
    move-object v10, v0

    invoke-static {v10}, Lkotlin/io/FilesKt;->walkBottomUp(Ljava/io/File;)Lkotlin/io/FileTreeWalk;

    move-result-object v10

    check-cast v10, Lkotlin/sequences/Sequence;

    move-object v1, v10

    const/4 v10, 0x1

    move v2, v10

    .line 446
    move v10, v2

    move v3, v10

    .line 447
    move-object v10, v1

    invoke-interface {v10}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move-object v4, v10

    :goto_0
    move-object v10, v4

    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    move-object v10, v4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    move-object v5, v10

    move v10, v3

    move-object v11, v5

    check-cast v11, Ljava/io/File;

    move-object v6, v11

    move v7, v10

    .line 319
    move-object v10, v6

    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    move-result v10

    if-nez v10, :cond_0

    move-object v10, v6

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_1

    :cond_0
    move v10, v7

    if-eqz v10, :cond_1

    const/4 v10, 0x1

    :goto_1
    move v3, v10

    goto :goto_0

    :cond_1
    const/4 v10, 0x0

    goto :goto_1

    .line 448
    :cond_2
    move v10, v3

    .line 319
    move v0, v10

    return v0
.end method

.method public static final endsWith(Ljava/io/File;Ljava/io/File;)Z
    .locals 8
    .param p0    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v5, v0

    const-string v6, "$receiver"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v5, v1

    const-string v6, "other"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 356
    move-object v5, v0

    invoke-static {v5}, Lkotlin/io/FilesKt;->toComponents(Ljava/io/File;)Lkotlin/io/FilePathComponents;

    move-result-object v5

    move-object v2, v5

    .line 357
    move-object v5, v1

    invoke-static {v5}, Lkotlin/io/FilesKt;->toComponents(Ljava/io/File;)Lkotlin/io/FilePathComponents;

    move-result-object v5

    move-object v3, v5

    .line 358
    move-object v5, v3

    invoke-virtual {v5}, Lkotlin/io/FilePathComponents;->isRooted()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 359
    move-object v5, v0

    move-object v6, v1

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    move v0, v5

    .line 361
    :goto_0
    return v0

    .line 360
    :cond_0
    move-object v5, v2

    invoke-virtual {v5}, Lkotlin/io/FilePathComponents;->getSize()I

    move-result v5

    move-object v6, v3

    invoke-virtual {v6}, Lkotlin/io/FilePathComponents;->getSize()I

    move-result v6

    sub-int/2addr v5, v6

    move v4, v5

    .line 361
    move v5, v4

    if-gez v5, :cond_1

    const/4 v5, 0x0

    :goto_1
    move v0, v5

    goto :goto_0

    .line 362
    :cond_1
    move-object v5, v2

    invoke-virtual {v5}, Lkotlin/io/FilePathComponents;->getSegments()Ljava/util/List;

    move-result-object v5

    move v6, v4

    move-object v7, v2

    invoke-virtual {v7}, Lkotlin/io/FilePathComponents;->getSize()I

    move-result v7

    invoke-interface {v5, v6, v7}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v5

    move-object v6, v3

    invoke-virtual {v6}, Lkotlin/io/FilePathComponents;->getSegments()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    goto :goto_1
.end method

.method public static final endsWith(Ljava/io/File;Ljava/lang/String;)Z
    .locals 7
    .param p0    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string v3, "$receiver"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v1

    const-string v3, "other"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 373
    move-object v2, v0

    new-instance v3, Ljava/io/File;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3}, Lkotlin/io/FilesKt;->endsWith(Ljava/io/File;Ljava/io/File;)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method public static final getExtension(Ljava/io/File;)Ljava/lang/String;
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

    .line 59
    move-object v1, v0

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "name"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v2, 0x2e

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lkotlin/text/StringsKt;->substringAfterLast(Ljava/lang/String;CLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static final getInvariantSeparatorsPath(Ljava/io/File;)Ljava/lang/String;
    .locals 8
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

    .line 66
    sget-char v1, Ljava/io/File;->separatorChar:C

    const/16 v2, 0x2f

    if-eq v1, v2, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    const-string v3, "path"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-char v2, Ljava/io/File;->separatorChar:C

    const/16 v3, 0x2f

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;CCZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    move-object v0, v1

    return-object v0

    :cond_0
    move-object v1, v0

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    const-string v3, "path"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static final getNameWithoutExtension(Ljava/io/File;)Ljava/lang/String;
    .locals 7
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

    .line 72
    move-object v1, v0

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    const-string v3, "name"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "."

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Lkotlin/text/StringsKt;->substringBeforeLast$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static final normalize(Ljava/io/File;)Ljava/io/File;
    .locals 15
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

    .line 382
    move-object v4, v0

    invoke-static {v4}, Lkotlin/io/FilesKt;->toComponents(Ljava/io/File;)Lkotlin/io/FilePathComponents;

    move-result-object v4

    move-object v1, v4

    move-object v4, v1

    move-object v2, v4

    move-object v4, v2

    invoke-virtual {v4}, Lkotlin/io/FilePathComponents;->getRoot()Ljava/io/File;

    move-result-object v4

    move-object v5, v2

    invoke-virtual {v5}, Lkotlin/io/FilePathComponents;->getSegments()Ljava/util/List;

    move-result-object v5

    invoke-static {v5}, Lkotlin/io/FilesKt__UtilsKt;->normalize$FilesKt__UtilsKt(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    check-cast v5, Ljava/lang/Iterable;

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    move-object v14, v6

    move-object v6, v14

    move-object v7, v14

    const-string v8, "File.separator"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Ljava/lang/CharSequence;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x3e

    const/4 v13, 0x0

    invoke-static/range {v5 .. v13}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/io/FilesKt;->resolve(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    move-object v0, v4

    return-object v0
.end method

.method private static final normalize$FilesKt__UtilsKt(Ljava/util/List;)Ljava/util/List;
    .locals 9
    .param p0    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Ljava/io/File;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 388
    move-object v0, p0

    new-instance v5, Ljava/util/ArrayList;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v0

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v5, Ljava/util/List;

    move-object v1, v5

    .line 389
    move-object v5, v0

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v3, v5

    :goto_0
    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/File;

    move-object v2, v5

    .line 390
    move-object v5, v2

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    if-nez v6, :cond_1

    .line 393
    :cond_0
    :goto_1
    move-object v5, v1

    move-object v6, v2

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 394
    :goto_2
    goto :goto_0

    .line 390
    :cond_1
    move-object v4, v5

    move-object v5, v4

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    move-object v5, v4

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_2

    :sswitch_1
    move-object v5, v4

    const-string v6, ".."

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 392
    move-object v5, v1

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    move-object v5, v1

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".."

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x1

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_2

    move-object v5, v1

    move-object v6, v1

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    invoke-interface {v5, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v5

    goto :goto_2

    :cond_2
    move-object v5, v1

    move-object v6, v2

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v5

    goto :goto_2

    .line 396
    :cond_3
    move-object v5, v1

    move-object v0, v5

    return-object v0

    .line 390
    nop

    :sswitch_data_0
    .sparse-switch
        0x2e -> :sswitch_0
        0x5c0 -> :sswitch_1
    .end sparse-switch
.end method

.method private static final normalize$FilesKt__UtilsKt(Lkotlin/io/FilePathComponents;)Lkotlin/io/FilePathComponents;
    .locals 6
    .param p0    # Lkotlin/io/FilePathComponents;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    .line 385
    move-object v0, p0

    new-instance v1, Lkotlin/io/FilePathComponents;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    move-object v3, v0

    invoke-virtual {v3}, Lkotlin/io/FilePathComponents;->getRoot()Ljava/io/File;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v4}, Lkotlin/io/FilePathComponents;->getSegments()Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lkotlin/io/FilesKt__UtilsKt;->normalize$FilesKt__UtilsKt(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lkotlin/io/FilePathComponents;-><init>(Ljava/io/File;Ljava/util/List;)V

    move-object v0, v1

    return-object v0
.end method

.method public static final relativeTo(Ljava/io/File;Ljava/io/File;)Ljava/io/File;
    .locals 7
    .param p0    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/io/File;
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

    const-string v3, "base"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    new-instance v2, Ljava/io/File;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-static {v4, v5}, Lkotlin/io/FilesKt;->toRelativeString(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    return-object v0
.end method

.method public static final relativeToOrNull(Ljava/io/File;Ljava/io/File;)Ljava/io/File;
    .locals 9
    .param p0    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v5, v0

    const-string v6, "$receiver"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v5, v1

    const-string v6, "base"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    move-object v5, v0

    move-object v6, v1

    invoke-static {v5, v6}, Lkotlin/io/FilesKt__UtilsKt;->toRelativeStringOrNull$FilesKt__UtilsKt(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;

    move-result-object v5

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    if-eqz v6, :cond_0

    move-object v2, v5

    move-object v5, v2

    move-object v3, v5

    new-instance v5, Ljava/io/File;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v3

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_0
    move-object v0, v5

    return-object v0

    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public static final relativeToOrSelf(Ljava/io/File;Ljava/io/File;)Ljava/io/File;
    .locals 9
    .param p0    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v5, v0

    const-string v6, "$receiver"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v5, v1

    const-string v6, "base"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    move-object v5, v0

    move-object v6, v1

    invoke-static {v5, v6}, Lkotlin/io/FilesKt__UtilsKt;->toRelativeStringOrNull$FilesKt__UtilsKt(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;

    move-result-object v5

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    if-eqz v6, :cond_0

    move-object v2, v5

    move-object v5, v2

    move-object v3, v5

    new-instance v5, Ljava/io/File;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v3

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_0
    move-object v0, v5

    return-object v0

    :cond_0
    move-object v5, v0

    goto :goto_0
.end method

.method public static final resolve(Ljava/io/File;Ljava/io/File;)Ljava/io/File;
    .locals 10
    .param p0    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    const-string v5, "$receiver"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, v1

    const-string v5, "relative"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 409
    move-object v4, v1

    invoke-static {v4}, Lkotlin/io/FilesKt;->isRooted(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 410
    move-object v4, v1

    move-object v0, v4

    .line 412
    :goto_0
    return-object v0

    .line 411
    :cond_0
    move-object v4, v0

    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 412
    move-object v4, v2

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const-string v6, "baseName"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/lang/CharSequence;

    move-object v3, v4

    move-object v4, v3

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_2

    const/4 v4, 0x1

    :goto_1
    if-nez v4, :cond_1

    move-object v4, v2

    check-cast v4, Ljava/lang/CharSequence;

    sget-char v5, Ljava/io/File;->separatorChar:C

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-static {v4, v5, v6, v7, v8}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_1
    new-instance v4, Ljava/io/File;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_2
    move-object v0, v4

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    goto :goto_1

    :cond_3
    new-instance v4, Ljava/io/File;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-char v7, Ljava/io/File;->separatorChar:C

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public static final resolve(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 7
    .param p0    # Ljava/io/File;
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

    const-string v3, "relative"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 422
    move-object v2, v0

    new-instance v3, Ljava/io/File;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3}, Lkotlin/io/FilesKt;->resolve(Ljava/io/File;Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public static final resolveSibling(Ljava/io/File;Ljava/io/File;)Ljava/io/File;
    .locals 9
    .param p0    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    const-string v5, "$receiver"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, v1

    const-string v5, "relative"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 432
    move-object v4, v0

    invoke-static {v4}, Lkotlin/io/FilesKt;->toComponents(Ljava/io/File;)Lkotlin/io/FilePathComponents;

    move-result-object v4

    move-object v2, v4

    .line 433
    move-object v4, v2

    invoke-virtual {v4}, Lkotlin/io/FilePathComponents;->getSize()I

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/io/File;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const-string v6, ".."

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_0
    move-object v3, v4

    .line 434
    move-object v4, v2

    invoke-virtual {v4}, Lkotlin/io/FilePathComponents;->getRoot()Ljava/io/File;

    move-result-object v4

    move-object v5, v3

    invoke-static {v4, v5}, Lkotlin/io/FilesKt;->resolve(Ljava/io/File;Ljava/io/File;)Ljava/io/File;

    move-result-object v4

    move-object v5, v1

    invoke-static {v4, v5}, Lkotlin/io/FilesKt;->resolve(Ljava/io/File;Ljava/io/File;)Ljava/io/File;

    move-result-object v4

    move-object v0, v4

    return-object v0

    .line 433
    :cond_0
    move-object v4, v2

    const/4 v5, 0x0

    move-object v6, v2

    invoke-virtual {v6}, Lkotlin/io/FilePathComponents;->getSize()I

    move-result v6

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v4, v5, v6}, Lkotlin/io/FilePathComponents;->subPath(II)Ljava/io/File;

    move-result-object v4

    goto :goto_0
.end method

.method public static final resolveSibling(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 7
    .param p0    # Ljava/io/File;
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

    const-string v3, "relative"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 444
    move-object v2, v0

    new-instance v3, Ljava/io/File;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3}, Lkotlin/io/FilesKt;->resolveSibling(Ljava/io/File;Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public static final startsWith(Ljava/io/File;Ljava/io/File;)Z
    .locals 7
    .param p0    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    const-string v5, "$receiver"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, v1

    const-string v5, "other"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 329
    move-object v4, v0

    invoke-static {v4}, Lkotlin/io/FilesKt;->toComponents(Ljava/io/File;)Lkotlin/io/FilePathComponents;

    move-result-object v4

    move-object v2, v4

    .line 330
    move-object v4, v1

    invoke-static {v4}, Lkotlin/io/FilesKt;->toComponents(Ljava/io/File;)Lkotlin/io/FilePathComponents;

    move-result-object v4

    move-object v3, v4

    .line 331
    move-object v4, v2

    invoke-virtual {v4}, Lkotlin/io/FilePathComponents;->getRoot()Ljava/io/File;

    move-result-object v4

    move-object v5, v3

    invoke-virtual {v5}, Lkotlin/io/FilePathComponents;->getRoot()Ljava/io/File;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_0

    .line 332
    const/4 v4, 0x0

    move v0, v4

    .line 333
    :goto_0
    return v0

    :cond_0
    move-object v4, v2

    invoke-virtual {v4}, Lkotlin/io/FilePathComponents;->getSize()I

    move-result v4

    move-object v5, v3

    invoke-virtual {v5}, Lkotlin/io/FilePathComponents;->getSize()I

    move-result v5

    if-ge v4, v5, :cond_1

    const/4 v4, 0x0

    :goto_1
    move v0, v4

    goto :goto_0

    .line 334
    :cond_1
    move-object v4, v2

    invoke-virtual {v4}, Lkotlin/io/FilePathComponents;->getSegments()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    move-object v6, v3

    invoke-virtual {v6}, Lkotlin/io/FilePathComponents;->getSize()I

    move-result v6

    invoke-interface {v4, v5, v6}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v4

    move-object v5, v3

    invoke-virtual {v5}, Lkotlin/io/FilePathComponents;->getSegments()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    goto :goto_1
.end method

.method public static final startsWith(Ljava/io/File;Ljava/lang/String;)Z
    .locals 7
    .param p0    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string v3, "$receiver"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v1

    const-string v3, "other"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 344
    move-object v2, v0

    new-instance v3, Ljava/io/File;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3}, Lkotlin/io/FilesKt;->startsWith(Ljava/io/File;Ljava/io/File;)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method public static final toRelativeString(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;
    .locals 7
    .param p0    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/io/File;
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

    const-string v3, "base"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Lkotlin/io/FilesKt__UtilsKt;->toRelativeStringOrNull$FilesKt__UtilsKt(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    if-eqz v3, :cond_0

    move-object v0, v2

    return-object v0

    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "this and base files have different roots: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " and "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x2e

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2
.end method

.method private static final toRelativeStringOrNull$FilesKt__UtilsKt(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;
    .locals 25
    .param p0    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    .line 120
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v14, v0

    invoke-static {v14}, Lkotlin/io/FilesKt;->toComponents(Ljava/io/File;)Lkotlin/io/FilePathComponents;

    move-result-object v14

    invoke-static {v14}, Lkotlin/io/FilesKt__UtilsKt;->normalize$FilesKt__UtilsKt(Lkotlin/io/FilePathComponents;)Lkotlin/io/FilePathComponents;

    move-result-object v14

    move-object v2, v14

    .line 121
    move-object v14, v1

    invoke-static {v14}, Lkotlin/io/FilesKt;->toComponents(Ljava/io/File;)Lkotlin/io/FilePathComponents;

    move-result-object v14

    invoke-static {v14}, Lkotlin/io/FilesKt__UtilsKt;->normalize$FilesKt__UtilsKt(Lkotlin/io/FilePathComponents;)Lkotlin/io/FilePathComponents;

    move-result-object v14

    move-object v3, v14

    .line 122
    move-object v14, v2

    invoke-virtual {v14}, Lkotlin/io/FilePathComponents;->getRoot()Ljava/io/File;

    move-result-object v14

    move-object v15, v3

    invoke-virtual {v15}, Lkotlin/io/FilePathComponents;->getRoot()Ljava/io/File;

    move-result-object v15

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    const/4 v15, 0x1

    xor-int/lit8 v14, v14, 0x1

    if-eqz v14, :cond_0

    .line 123
    const/4 v14, 0x0

    move-object v0, v14

    .line 160
    :goto_0
    return-object v0

    .line 126
    :cond_0
    move-object v14, v3

    invoke-virtual {v14}, Lkotlin/io/FilePathComponents;->getSize()I

    move-result v14

    move v4, v14

    .line 127
    move-object v14, v2

    invoke-virtual {v14}, Lkotlin/io/FilePathComponents;->getSize()I

    move-result v14

    move v5, v14

    .line 129
    move-object v14, v0

    move-object v7, v14

    move-object v14, v7

    move-object v8, v14

    .line 130
    const/4 v14, 0x0

    move v9, v14

    .line 131
    move v14, v5

    move v10, v14

    move v14, v4

    move v11, v14

    move v14, v10

    move v15, v11

    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v14

    move v12, v14

    .line 132
    :goto_1
    move v14, v9

    move v15, v12

    if-ge v14, v15, :cond_1

    move-object v14, v2

    invoke-virtual {v14}, Lkotlin/io/FilePathComponents;->getSegments()Ljava/util/List;

    move-result-object v14

    move v15, v9

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/io/File;

    move-object v15, v3

    invoke-virtual {v15}, Lkotlin/io/FilePathComponents;->getSegments()Ljava/util/List;

    move-result-object v15

    move/from16 v16, v9

    invoke-interface/range {v15 .. v16}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/io/File;

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 133
    add-int/lit8 v9, v9, 0x1

    .line 132
    goto :goto_1

    .line 134
    :cond_1
    move v14, v9

    .line 129
    move v6, v14

    .line 138
    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v24, v14

    move-object/from16 v14, v24

    move-object/from16 v15, v24

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object v7, v14

    .line 139
    move v14, v4

    const/4 v15, 0x1

    add-int/lit8 v14, v14, -0x1

    move v8, v14

    move v14, v6

    move v9, v14

    move v14, v8

    move v15, v9

    if-lt v14, v15, :cond_4

    .line 140
    :goto_2
    move-object v14, v3

    invoke-virtual {v14}, Lkotlin/io/FilePathComponents;->getSegments()Ljava/util/List;

    move-result-object v14

    move v15, v8

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/io/File;

    invoke-virtual {v14}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    const-string v15, ".."

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 141
    const/4 v14, 0x0

    move-object v0, v14

    goto :goto_0

    .line 144
    :cond_2
    move-object v14, v7

    const-string v15, ".."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 146
    move v14, v8

    move v15, v6

    if-eq v14, v15, :cond_3

    .line 147
    move-object v14, v7

    sget-char v15, Ljava/io/File;->separatorChar:C

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 139
    :cond_3
    move v14, v8

    move v15, v9

    if-eq v14, v15, :cond_4

    add-int/lit8 v8, v8, -0x1

    goto :goto_2

    .line 152
    :cond_4
    move v14, v6

    move v15, v5

    if-ge v14, v15, :cond_6

    .line 154
    move v14, v6

    move v15, v4

    if-ge v14, v15, :cond_5

    .line 155
    move-object v14, v7

    sget-char v15, Ljava/io/File;->separatorChar:C

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 157
    :cond_5
    move-object v14, v2

    invoke-virtual {v14}, Lkotlin/io/FilePathComponents;->getSegments()Ljava/util/List;

    move-result-object v14

    check-cast v14, Ljava/lang/Iterable;

    move v15, v6

    invoke-static {v14, v15}, Lkotlin/collections/CollectionsKt;->drop(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v14

    check-cast v14, Ljava/lang/Iterable;

    move-object v15, v7

    check-cast v15, Ljava/lang/Appendable;

    sget-object v16, Ljava/io/File;->separator:Ljava/lang/String;

    move-object/from16 v24, v16

    move-object/from16 v16, v24

    move-object/from16 v17, v24

    const-string v18, "File.separator"

    invoke-static/range {v17 .. v18}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v16, Ljava/lang/CharSequence;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x7c

    const/16 v23, 0x0

    invoke-static/range {v14 .. v23}, Lkotlin/collections/CollectionsKt;->joinTo$default(Ljava/lang/Iterable;Ljava/lang/Appendable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/Appendable;

    move-result-object v14

    .line 160
    :cond_6
    move-object v14, v7

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object v0, v14

    goto/16 :goto_0
.end method
