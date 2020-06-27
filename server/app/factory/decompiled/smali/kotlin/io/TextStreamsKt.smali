.class public final Lkotlin/io/TextStreamsKt;
.super Ljava/lang/Object;
.source "ReadWrite.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000X\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u001a\u0017\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0004H\u0087\u0008\u001a\u0017\u0010\u0000\u001a\u00020\u0005*\u00020\u00062\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0004H\u0087\u0008\u001a\u001c\u0010\u0007\u001a\u00020\u0008*\u00020\u00022\u0006\u0010\t\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0004\u001a\u001e\u0010\n\u001a\u00020\u000b*\u00020\u00022\u0012\u0010\u000c\u001a\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000b0\r\u001a\u0010\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u0010*\u00020\u0001\u001a\n\u0010\u0011\u001a\u00020\u0012*\u00020\u0013\u001a\u0010\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u0015*\u00020\u0002\u001a\n\u0010\u0016\u001a\u00020\u000e*\u00020\u0002\u001a\u0017\u0010\u0016\u001a\u00020\u000e*\u00020\u00132\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u0018H\u0087\u0008\u001a\r\u0010\u0019\u001a\u00020\u001a*\u00020\u000eH\u0087\u0008\u001a5\u0010\u001b\u001a\u0002H\u001c\"\u0004\u0008\u0000\u0010\u001c*\u00020\u00022\u0018\u0010\u001d\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000e0\u0010\u0012\u0004\u0012\u0002H\u001c0\rH\u0086\u0008\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u001f\u0082\u0002\u0008\n\u0006\u0008\u0011(\u001e0\u0001\u00a8\u0006 "
    }
    d2 = {
        "buffered",
        "Ljava/io/BufferedReader;",
        "Ljava/io/Reader;",
        "bufferSize",
        "",
        "Ljava/io/BufferedWriter;",
        "Ljava/io/Writer;",
        "copyTo",
        "",
        "out",
        "forEachLine",
        "",
        "action",
        "Lkotlin/Function1;",
        "",
        "lineSequence",
        "Lkotlin/sequences/Sequence;",
        "readBytes",
        "",
        "Ljava/net/URL;",
        "readLines",
        "",
        "readText",
        "charset",
        "Ljava/nio/charset/Charset;",
        "reader",
        "Ljava/io/StringReader;",
        "useLines",
        "T",
        "block",
        "Requires newer compiler version to be inlined correctly.",
        "(Ljava/io/Reader;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;",
        "kotlin-stdlib"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0xa
    }
.end annotation

.annotation build Lkotlin/jvm/JvmName;
    name = "TextStreamsKt"
.end annotation


# direct methods
.method private static final buffered(Ljava/io/Reader;I)Ljava/io/BufferedReader;
    .locals 8
    .param p0    # Ljava/io/Reader;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .prologue
    .line 20
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    instance-of v3, v3, Ljava/io/BufferedReader;

    if-eqz v3, :cond_0

    move-object v3, v0

    check-cast v3, Ljava/io/BufferedReader;

    :goto_0
    move-object v0, v3

    return-object v0

    :cond_0
    new-instance v3, Ljava/io/BufferedReader;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move v6, v1

    invoke-direct {v4, v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    goto :goto_0
.end method

.method private static final buffered(Ljava/io/Writer;I)Ljava/io/BufferedWriter;
    .locals 8
    .param p0    # Ljava/io/Writer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .prologue
    .line 25
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    instance-of v3, v3, Ljava/io/BufferedWriter;

    if-eqz v3, :cond_0

    move-object v3, v0

    check-cast v3, Ljava/io/BufferedWriter;

    :goto_0
    move-object v0, v3

    return-object v0

    :cond_0
    new-instance v3, Ljava/io/BufferedWriter;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move v6, v1

    invoke-direct {v4, v5, v6}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    goto :goto_0
.end method

.method static bridge synthetic buffered$default(Ljava/io/Reader;IILjava/lang/Object;)Ljava/io/BufferedReader;
    .locals 9
    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .prologue
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, v2

    const/4 v5, 0x1

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_0

    .line 19
    const/16 v4, 0x2000

    move v1, v4

    .line 153
    :cond_0
    move-object v4, v0

    instance-of v4, v4, Ljava/io/BufferedReader;

    if-eqz v4, :cond_1

    move-object v4, v0

    check-cast v4, Ljava/io/BufferedReader;

    :goto_0
    move-object v0, v4

    return-object v0

    :cond_1
    new-instance v4, Ljava/io/BufferedReader;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    move v7, v1

    invoke-direct {v5, v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    goto :goto_0
.end method

.method static bridge synthetic buffered$default(Ljava/io/Writer;IILjava/lang/Object;)Ljava/io/BufferedWriter;
    .locals 9
    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .prologue
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, v2

    const/4 v5, 0x1

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_0

    .line 24
    const/16 v4, 0x2000

    move v1, v4

    .line 158
    :cond_0
    move-object v4, v0

    instance-of v4, v4, Ljava/io/BufferedWriter;

    if-eqz v4, :cond_1

    move-object v4, v0

    check-cast v4, Ljava/io/BufferedWriter;

    :goto_0
    move-object v0, v4

    return-object v0

    :cond_1
    new-instance v4, Ljava/io/BufferedWriter;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    move v7, v1

    invoke-direct {v5, v6, v7}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    goto :goto_0
.end method

.method public static final copyTo(Ljava/io/Reader;Ljava/io/Writer;I)J
    .locals 11
    .param p0    # Ljava/io/Reader;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/io/Writer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v7, v0

    const-string v8, "$receiver"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v7, v1

    const-string v8, "out"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    const-wide/16 v7, 0x0

    move-wide v3, v7

    .line 122
    move v7, v2

    new-array v7, v7, [C

    move-object v5, v7

    .line 123
    move-object v7, v0

    move-object v8, v5

    invoke-virtual {v7, v8}, Ljava/io/Reader;->read([C)I

    move-result v7

    move v6, v7

    .line 124
    :goto_0
    move v7, v6

    if-ltz v7, :cond_0

    .line 125
    move-object v7, v1

    move-object v8, v5

    const/4 v9, 0x0

    move v10, v6

    invoke-virtual {v7, v8, v9, v10}, Ljava/io/Writer;->write([CII)V

    .line 126
    move-wide v7, v3

    move v9, v6

    int-to-long v9, v9

    add-long/2addr v7, v9

    move-wide v3, v7

    .line 127
    move-object v7, v0

    move-object v8, v5

    invoke-virtual {v7, v8}, Ljava/io/Reader;->read([C)I

    move-result v7

    move v6, v7

    .line 124
    goto :goto_0

    .line 129
    :cond_0
    move-wide v7, v3

    move-wide v0, v7

    return-wide v0
.end method

.method public static bridge synthetic copyTo$default(Ljava/io/Reader;Ljava/io/Writer;IILjava/lang/Object;)J
    .locals 8

    .prologue
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, v3

    const/4 v6, 0x2

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_0

    .line 120
    const/16 v5, 0x2000

    move v2, v5

    :cond_0
    move-object v5, v0

    move-object v6, v1

    move v7, v2

    invoke-static {v5, v6, v7}, Lkotlin/io/TextStreamsKt;->copyTo(Ljava/io/Reader;Ljava/io/Writer;I)J

    move-result-wide v5

    move-wide v0, v5

    return-wide v0
.end method

.method public static final forEachLine(Ljava/io/Reader;Lkotlin/jvm/functions/Function1;)V
    .locals 20
    .param p0    # Ljava/io/Reader;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Reader;",
            "Lkotlin/jvm/functions/Function1",
            "<-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .prologue
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v15, v0

    const-string v16, "$receiver"

    invoke-static/range {v15 .. v16}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v15, v1

    const-string v16, "action"

    invoke-static/range {v15 .. v16}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    move-object v15, v0

    move-object v2, v15

    .line 159
    move-object v15, v2

    move-object v3, v15

    const/16 v15, 0x2000

    move v4, v15

    move-object v15, v3

    instance-of v15, v15, Ljava/io/BufferedReader;

    if-eqz v15, :cond_0

    move-object v15, v3

    check-cast v15, Ljava/io/BufferedReader;

    :goto_0
    check-cast v15, Ljava/io/Closeable;

    move-object v3, v15

    const/4 v15, 0x0

    check-cast v15, Ljava/lang/Throwable;

    move-object v4, v15

    nop

    move-object v15, v3

    :try_start_0
    check-cast v15, Ljava/io/BufferedReader;

    move-object v5, v15

    move-object v15, v5

    invoke-static {v15}, Lkotlin/io/TextStreamsKt;->lineSequence(Ljava/io/BufferedReader;)Lkotlin/sequences/Sequence;

    move-result-object v15

    move-object v6, v15

    .line 33
    move-object v15, v6

    move-object v7, v15

    move-object v15, v1

    move-object v8, v15

    .line 160
    move-object v15, v7

    invoke-interface {v15}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v15

    move-object v9, v15

    :goto_1
    move-object v15, v9

    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_1

    move-object v15, v9

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    move-object v10, v15

    move-object v15, v8

    move-object/from16 v16, v10

    invoke-interface/range {v15 .. v16}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v15

    goto :goto_1

    .line 159
    :cond_0
    new-instance v15, Ljava/io/BufferedReader;

    move-object/from16 v19, v15

    move-object/from16 v15, v19

    move-object/from16 v16, v19

    move-object/from16 v17, v3

    move/from16 v18, v4

    invoke-direct/range {v16 .. v18}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    goto :goto_0

    .line 161
    :cond_1
    nop

    .line 33
    nop

    :try_start_1
    sget-object v15, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 159
    move-object v5, v15

    move-object v15, v3

    move-object/from16 v16, v4

    invoke-static/range {v15 .. v16}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    nop

    .line 33
    return-void

    .line 159
    :catch_0
    move-exception v15

    move-object v5, v15

    move-object v15, v5

    move-object v4, v15

    move-object v15, v5

    :try_start_2
    throw v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v15

    move-object v5, v15

    move-object v15, v3

    move-object/from16 v16, v4

    invoke-static/range {v15 .. v16}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    move-object v15, v5

    throw v15
.end method

.method public static final lineSequence(Ljava/io/BufferedReader;)Lkotlin/sequences/Sequence;
    .locals 5
    .param p0    # Ljava/io/BufferedReader;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/BufferedReader;",
            ")",
            "Lkotlin/sequences/Sequence",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, v0

    const-string v2, "$receiver"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    new-instance v1, Lkotlin/io/LinesSequence;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lkotlin/io/LinesSequence;-><init>(Ljava/io/BufferedReader;)V

    check-cast v1, Lkotlin/sequences/Sequence;

    invoke-static {v1}, Lkotlin/sequences/SequencesKt;->constrainOnce(Lkotlin/sequences/Sequence;)Lkotlin/sequences/Sequence;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static final readBytes(Ljava/net/URL;)[B
    .locals 10
    .param p0    # Ljava/net/URL;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v5, v0

    const-string v6, "$receiver"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    move-object v5, v0

    invoke-virtual {v5}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v5

    check-cast v5, Ljava/io/Closeable;

    move-object v1, v5

    const/4 v5, 0x0

    check-cast v5, Ljava/lang/Throwable;

    move-object v2, v5

    nop

    move-object v5, v1

    :try_start_0
    check-cast v5, Ljava/io/InputStream;

    move-object v3, v5

    move-object v5, v3

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-string v7, "it"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static {v5, v6, v7, v8}, Lkotlin/io/ByteStreamsKt;->readBytes$default(Ljava/io/InputStream;IILjava/lang/Object;)[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    move-object v3, v5

    move-object v5, v1

    move-object v6, v2

    invoke-static {v5, v6}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    move-object v5, v3

    move-object v0, v5

    return-object v0

    :catch_0
    move-exception v5

    move-object v3, v5

    move-object v5, v3

    move-object v2, v5

    move-object v5, v3

    :try_start_1
    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v5

    move-object v3, v5

    move-object v5, v1

    move-object v6, v2

    invoke-static {v5, v6}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    move-object v5, v3

    throw v5
.end method

.method public static final readLines(Ljava/io/Reader;)Ljava/util/List;
    .locals 7
    .param p0    # Ljava/io/Reader;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Reader;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v2, v0

    const-string v3, "$receiver"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    new-instance v2, Ljava/util/ArrayList;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v2

    .line 42
    move-object v2, v0

    new-instance v3, Lkotlin/io/TextStreamsKt$readLines$1;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Lkotlin/io/TextStreamsKt$readLines$1;-><init>(Ljava/util/ArrayList;)V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    invoke-static {v2, v3}, Lkotlin/io/TextStreamsKt;->forEachLine(Ljava/io/Reader;Lkotlin/jvm/functions/Function1;)V

    .line 43
    move-object v2, v1

    check-cast v2, Ljava/util/List;

    move-object v0, v2

    return-object v0
.end method

.method public static final readText(Ljava/io/Reader;)Ljava/lang/String;
    .locals 8
    .param p0    # Ljava/io/Reader;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v2, v0

    const-string v3, "$receiver"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    new-instance v2, Ljava/io/StringWriter;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    move-object v1, v2

    .line 107
    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljava/io/Writer;

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static {v2, v3, v4, v5, v6}, Lkotlin/io/TextStreamsKt;->copyTo$default(Ljava/io/Reader;Ljava/io/Writer;IILjava/lang/Object;)J

    move-result-wide v2

    .line 108
    move-object v2, v1

    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const-string v4, "buffer.toString()"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v2

    return-object v0
.end method

.method private static final readText(Ljava/net/URL;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 9
    .param p0    # Ljava/net/URL;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .prologue
    .line 141
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    invoke-static {v4}, Lkotlin/io/TextStreamsKt;->readBytes(Ljava/net/URL;)[B

    move-result-object v4

    move-object v3, v4

    new-instance v4, Ljava/lang/String;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v3

    move-object v7, v1

    invoke-direct {v5, v6, v7}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    move-object v0, v4

    return-object v0
.end method

.method static bridge synthetic readText$default(Ljava/net/URL;Ljava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;
    .locals 9
    .annotation build Lkotlin/internal/InlineOnly;
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

    .line 141
    sget-object v4, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    move-object v1, v4

    .line 162
    :cond_0
    move-object v4, v0

    invoke-static {v4}, Lkotlin/io/TextStreamsKt;->readBytes(Ljava/net/URL;)[B

    move-result-object v4

    move-object v3, v4

    new-instance v4, Ljava/lang/String;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v3

    move-object v7, v1

    invoke-direct {v5, v6, v7}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    move-object v0, v4

    return-object v0
.end method

.method private static final reader(Ljava/lang/String;)Ljava/io/StringReader;
    .locals 6
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .prologue
    .line 57
    move-object v0, p0

    new-instance v2, Ljava/io/StringReader;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    return-object v0
.end method

.method public static final useLines(Ljava/io/Reader;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 12
    .param p0    # Ljava/io/Reader;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/Reader;",
            "Lkotlin/jvm/functions/Function1",
            "<-",
            "Lkotlin/sequences/Sequence",
            "<",
            "Ljava/lang/String;",
            ">;+TT;>;)TT;"
        }
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v7, v0

    const-string v8, "$receiver"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v7, v1

    const-string v8, "block"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    move-object v7, v0

    move-object v3, v7

    const/16 v7, 0x2000

    move v4, v7

    move-object v7, v3

    instance-of v7, v7, Ljava/io/BufferedReader;

    if-eqz v7, :cond_0

    move-object v7, v3

    check-cast v7, Ljava/io/BufferedReader;

    :goto_0
    check-cast v7, Ljava/io/Closeable;

    move-object v3, v7

    const/4 v7, 0x0

    check-cast v7, Ljava/lang/Throwable;

    move-object v4, v7

    nop

    move-object v7, v3

    :try_start_0
    check-cast v7, Ljava/io/BufferedReader;

    move-object v5, v7

    move-object v7, v1

    move-object v8, v5

    invoke-static {v8}, Lkotlin/io/TextStreamsKt;->lineSequence(Ljava/io/BufferedReader;)Lkotlin/sequences/Sequence;

    move-result-object v8

    invoke-interface {v7, v8}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    move-object v5, v7

    const/4 v7, 0x1

    invoke-static {v7}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Lkotlin/internal/PlatformImplementationsKt;->apiVersionIsAtLeast(III)Z

    move-result v7

    if-eqz v7, :cond_1

    move-object v7, v3

    move-object v8, v4

    invoke-static {v7, v8}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    :goto_1
    const/4 v7, 0x1

    invoke-static {v7}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    move-object v7, v5

    move-object v0, v7

    return-object v0

    :cond_0
    new-instance v7, Ljava/io/BufferedReader;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v3

    move v10, v4

    invoke-direct {v8, v9, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    goto :goto_0

    :cond_1
    move-object v7, v3

    invoke-interface {v7}, Ljava/io/Closeable;->close()V

    goto :goto_1

    :catch_0
    move-exception v7

    move-object v5, v7

    move-object v7, v5

    move-object v4, v7

    move-object v7, v5

    :try_start_1
    throw v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v7

    move-object v5, v7

    const/4 v7, 0x1

    invoke-static {v7}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Lkotlin/internal/PlatformImplementationsKt;->apiVersionIsAtLeast(III)Z

    move-result v7

    if-eqz v7, :cond_2

    move-object v7, v3

    move-object v8, v4

    invoke-static {v7, v8}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    :goto_2
    const/4 v7, 0x1

    invoke-static {v7}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    move-object v7, v5

    throw v7

    :cond_2
    move-object v7, v4

    if-nez v7, :cond_3

    move-object v7, v3

    invoke-interface {v7}, Ljava/io/Closeable;->close()V

    goto :goto_2

    :cond_3
    nop

    move-object v7, v3

    :try_start_2
    invoke-interface {v7}, Ljava/io/Closeable;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v7

    move-object v6, v7

    goto :goto_2
.end method
