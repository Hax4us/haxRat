.class public final Lkotlin/collections/SlidingWindowKt;
.super Ljava/lang/Object;
.source "SlidingWindow.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000*\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010(\n\u0002\u0010 \n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u001a\u0018\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0003H\u0000\u001aH\u0010\u0005\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00080\u00070\u0006\"\u0004\u0008\u0000\u0010\u00082\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u0002H\u00080\u00062\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u000bH\u0000\u001aD\u0010\r\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00080\u00070\u000e\"\u0004\u0008\u0000\u0010\u0008*\u0008\u0012\u0004\u0012\u0002H\u00080\u000e2\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u000bH\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "checkWindowSizeStep",
        "",
        "size",
        "",
        "step",
        "windowedIterator",
        "",
        "",
        "T",
        "iterator",
        "partialWindows",
        "",
        "reuseBuffer",
        "windowedSequence",
        "Lkotlin/sequences/Sequence;",
        "kotlin-stdlib"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0xa
    }
.end annotation


# direct methods
.method public static final checkWindowSizeStep(II)V
    .locals 9

    .prologue
    .line 12
    move v0, p0

    move v1, p1

    move v5, v0

    if-lez v5, :cond_0

    move v5, v1

    if-lez v5, :cond_0

    const/4 v5, 0x1

    :goto_0
    move v2, v5

    move v5, v2

    if-nez v5, :cond_2

    .line 13
    move v5, v0

    move v6, v1

    if-eq v5, v6, :cond_1

    .line 14
    new-instance v5, Ljava/lang/StringBuilder;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Both size "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " and step "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " must be greater than zero."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 13
    :goto_1
    nop

    .line 12
    move-object v4, v5

    new-instance v5, Ljava/lang/IllegalArgumentException;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v4

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v5, Ljava/lang/Throwable;

    throw v5

    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 16
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "size "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " must be greater than zero."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 18
    :cond_2
    return-void
.end method

.method public static final windowedIterator(Ljava/util/Iterator;IIZZ)Ljava/util/Iterator;
    .locals 14
    .param p0    # Ljava/util/Iterator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator",
            "<+TT;>;IIZZ)",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object v5, v0

    const-string v6, "iterator"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    move-object v5, v0

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_0

    sget-object v5, Lkotlin/collections/EmptyIterator;->INSTANCE:Lkotlin/collections/EmptyIterator;

    check-cast v5, Ljava/util/Iterator;

    move-object v0, v5

    .line 27
    :goto_0
    return-object v0

    :cond_0
    new-instance v5, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;

    move-object v13, v5

    move-object v5, v13

    move-object v6, v13

    move v7, v2

    move v8, v1

    move-object v9, v0

    move v10, v4

    move v11, v3

    const/4 v12, 0x0

    invoke-direct/range {v6 .. v12}, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;-><init>(IILjava/util/Iterator;ZZLkotlin/coroutines/experimental/Continuation;)V

    check-cast v5, Lkotlin/jvm/functions/Function2;

    invoke-static {v5}, Lkotlin/coroutines/experimental/SequenceBuilderKt;->buildIterator(Lkotlin/jvm/functions/Function2;)Ljava/util/Iterator;

    move-result-object v5

    move-object v0, v5

    goto :goto_0
.end method

.method public static final windowedSequence(Lkotlin/sequences/Sequence;IIZZ)Lkotlin/sequences/Sequence;
    .locals 13
    .param p0    # Lkotlin/sequences/Sequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/sequences/Sequence",
            "<+TT;>;IIZZ)",
            "Lkotlin/sequences/Sequence",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    move-object v0, p0

    move v1, p1

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object v5, v0

    const-string v6, "$receiver"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    move v5, v1

    move v6, v2

    invoke-static {v5, v6}, Lkotlin/collections/SlidingWindowKt;->checkWindowSizeStep(II)V

    .line 22
    new-instance v5, Lkotlin/collections/SlidingWindowKt$windowedSequence$$inlined$Sequence$1;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    move-object v7, v0

    move v8, v1

    move v9, v2

    move v10, v3

    move v11, v4

    invoke-direct/range {v6 .. v11}, Lkotlin/collections/SlidingWindowKt$windowedSequence$$inlined$Sequence$1;-><init>(Lkotlin/sequences/Sequence;IIZZ)V

    check-cast v5, Lkotlin/sequences/Sequence;

    move-object v0, v5

    return-object v0
.end method
