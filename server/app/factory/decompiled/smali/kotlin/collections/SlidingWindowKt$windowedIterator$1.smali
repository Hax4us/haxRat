.class final Lkotlin/collections/SlidingWindowKt$windowedIterator$1;
.super Lkotlin/coroutines/experimental/jvm/internal/CoroutineImpl;
.source "SlidingWindow.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/collections/SlidingWindowKt;->windowedIterator(Ljava/util/Iterator;IIZZ)Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/experimental/jvm/internal/CoroutineImpl;",
        "Lkotlin/jvm/functions/Function2",
        "<",
        "Lkotlin/coroutines/experimental/SequenceBuilder",
        "<-",
        "Ljava/util/List",
        "<+TT;>;>;",
        "Lkotlin/coroutines/experimental/Continuation",
        "<-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002*\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00020\u00040\u0003H\n\u00a2\u0006\u0004\u0008\u0005\u0010\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "T",
        "Lkotlin/coroutines/experimental/SequenceBuilder;",
        "",
        "invoke",
        "(Lkotlin/coroutines/experimental/SequenceBuilder;Lkotlin/coroutines/experimental/Continuation;)Ljava/lang/Object;"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xa
    }
.end annotation


# instance fields
.field final synthetic $iterator:Ljava/util/Iterator;

.field final synthetic $partialWindows:Z

.field final synthetic $reuseBuffer:Z

.field final synthetic $size:I

.field final synthetic $step:I

.field I$0:I

.field I$1:I

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field private p$:Lkotlin/coroutines/experimental/SequenceBuilder;


# direct methods
.method constructor <init>(IILjava/util/Iterator;ZZLkotlin/coroutines/experimental/Continuation;)V
    .locals 10

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object/from16 v6, p6

    move-object v7, v0

    move v8, v1

    iput v8, v7, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$step:I

    move-object v7, v0

    move v8, v2

    iput v8, v7, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$size:I

    move-object v7, v0

    move-object v8, v3

    iput-object v8, v7, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$iterator:Ljava/util/Iterator;

    move-object v7, v0

    move v8, v4

    iput-boolean v8, v7, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$reuseBuffer:Z

    move-object v7, v0

    move v8, v5

    iput-boolean v8, v7, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$partialWindows:Z

    move-object v7, v0

    const/4 v8, 0x2

    move-object v9, v6

    invoke-direct {v7, v8, v9}, Lkotlin/coroutines/experimental/jvm/internal/CoroutineImpl;-><init>(ILkotlin/coroutines/experimental/Continuation;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic create(Ljava/lang/Object;Lkotlin/coroutines/experimental/Continuation;)Lkotlin/coroutines/experimental/Continuation;
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    check-cast v4, Lkotlin/coroutines/experimental/SequenceBuilder;

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->create(Lkotlin/coroutines/experimental/SequenceBuilder;Lkotlin/coroutines/experimental/Continuation;)Lkotlin/coroutines/experimental/Continuation;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method public final create(Lkotlin/coroutines/experimental/SequenceBuilder;Lkotlin/coroutines/experimental/Continuation;)Lkotlin/coroutines/experimental/Continuation;
    .locals 13
    .param p1    # Lkotlin/coroutines/experimental/SequenceBuilder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/experimental/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/experimental/SequenceBuilder",
            "<-",
            "Ljava/util/List",
            "<+TT;>;>;",
            "Lkotlin/coroutines/experimental/Continuation",
            "<-",
            "Lkotlin/Unit;",
            ">;)",
            "Lkotlin/coroutines/experimental/Continuation",
            "<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v1

    const-string v5, "$receiver"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, v2

    const-string v5, "continuation"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;

    move-object v12, v4

    move-object v4, v12

    move-object v5, v12

    move-object v6, v0

    iget v6, v6, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$step:I

    move-object v7, v0

    iget v7, v7, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$size:I

    move-object v8, v0

    iget-object v8, v8, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$iterator:Ljava/util/Iterator;

    move-object v9, v0

    iget-boolean v9, v9, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$reuseBuffer:Z

    move-object v10, v0

    iget-boolean v10, v10, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$partialWindows:Z

    move-object v11, v2

    invoke-direct/range {v5 .. v11}, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;-><init>(IILjava/util/Iterator;ZZLkotlin/coroutines/experimental/Continuation;)V

    move-object v3, v4

    move-object v4, v1

    move-object v5, v3

    move-object v6, v1

    iput-object v6, v5, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->p$:Lkotlin/coroutines/experimental/SequenceBuilder;

    move-object v5, v3

    move-object v0, v5

    return-object v0
.end method

.method public final doResume(Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/Object;
    .locals 17
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-static {}, Lkotlin/coroutines/experimental/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v11

    .line 27
    move-object v10, v11

    move-object v11, v0

    iget v11, v11, Lkotlin/coroutines/experimental/jvm/internal/CoroutineImpl;->label:I

    packed-switch v11, :pswitch_data_0

    .line 61
    new-instance v11, Ljava/lang/IllegalStateException;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    const-string v13, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v12, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 27
    :pswitch_0
    move-object v11, v2

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    if-eqz v12, :cond_0

    throw v11

    :cond_0
    move-object v11, v0

    iget-object v11, v11, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->p$:Lkotlin/coroutines/experimental/SequenceBuilder;

    move-object v3, v11

    .line 28
    move-object v11, v0

    iget v11, v11, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$step:I

    move-object v12, v0

    iget v12, v12, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$size:I

    sub-int/2addr v11, v12

    move v4, v11

    .line 29
    move v11, v4

    if-ltz v11, :cond_b

    .line 30
    new-instance v11, Ljava/util/ArrayList;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    move-object v13, v0

    iget v13, v13, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$size:I

    invoke-direct {v12, v13}, Ljava/util/ArrayList;-><init>(I)V

    move-object v5, v11

    .line 31
    const/4 v11, 0x0

    move v6, v11

    .line 32
    move-object v11, v0

    iget-object v11, v11, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$iterator:Ljava/util/Iterator;

    move-object v9, v11

    move-object v11, v9

    move-object v8, v11

    :goto_0
    move-object v11, v8

    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    move-object v11, v8

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    move-object v7, v11

    .line 33
    move v11, v6

    if-lez v11, :cond_2

    move v11, v6

    const/4 v12, 0x1

    add-int/lit8 v11, v11, -0x1

    move v6, v11

    .line 32
    :cond_1
    :goto_1
    goto :goto_0

    .line 34
    :cond_2
    move-object v11, v5

    move-object v12, v7

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v11

    .line 35
    move-object v11, v5

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    move-object v12, v0

    iget v12, v12, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$size:I

    if-ne v11, v12, :cond_1

    .line 36
    move-object v11, v3

    move-object v12, v5

    move-object v13, v0

    move-object v14, v0

    move-object v15, v3

    iput-object v15, v14, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$0:Ljava/lang/Object;

    move-object v14, v0

    move v15, v4

    iput v15, v14, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->I$0:I

    move-object v14, v0

    move-object v15, v5

    iput-object v15, v14, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$1:Ljava/lang/Object;

    move-object v14, v0

    move v15, v6

    iput v15, v14, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->I$1:I

    move-object v14, v0

    move-object v15, v7

    iput-object v15, v14, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$2:Ljava/lang/Object;

    move-object v14, v0

    move-object v15, v8

    iput-object v15, v14, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$3:Ljava/lang/Object;

    move-object v14, v0

    const/4 v15, 0x1

    iput v15, v14, Lkotlin/coroutines/experimental/jvm/internal/CoroutineImpl;->label:I

    invoke-virtual {v11, v12, v13}, Lkotlin/coroutines/experimental/SequenceBuilder;->yield(Ljava/lang/Object;Lkotlin/coroutines/experimental/Continuation;)Ljava/lang/Object;

    move-result-object v11

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    move-object v13, v10

    if-ne v12, v13, :cond_4

    .line 27
    move-object v12, v10

    move-object v0, v12

    .line 61
    :goto_2
    return-object v0

    .line 27
    :pswitch_1
    move-object v11, v0

    iget-object v11, v11, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$3:Ljava/lang/Object;

    check-cast v11, Ljava/util/Iterator;

    move-object v8, v11

    move-object v11, v0

    iget-object v11, v11, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$2:Ljava/lang/Object;

    move-object v7, v11

    move-object v11, v0

    iget v11, v11, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->I$1:I

    move v6, v11

    move-object v11, v0

    iget-object v11, v11, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$1:Ljava/lang/Object;

    check-cast v11, Ljava/util/ArrayList;

    move-object v5, v11

    move-object v11, v0

    iget v11, v11, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->I$0:I

    move v4, v11

    move-object v11, v0

    iget-object v11, v11, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$0:Ljava/lang/Object;

    check-cast v11, Lkotlin/coroutines/experimental/SequenceBuilder;

    move-object v3, v11

    move-object v11, v2

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    if-eqz v12, :cond_3

    throw v11

    :cond_3
    move-object v11, v1

    .line 37
    :cond_4
    move-object v11, v0

    iget-boolean v11, v11, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$reuseBuffer:Z

    if-eqz v11, :cond_5

    move-object v11, v5

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 38
    :goto_3
    move v11, v4

    move v6, v11

    goto :goto_1

    .line 37
    :cond_5
    new-instance v11, Ljava/util/ArrayList;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    move-object v13, v0

    iget v13, v13, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$size:I

    invoke-direct {v12, v13}, Ljava/util/ArrayList;-><init>(I)V

    move-object v5, v11

    goto :goto_3

    .line 41
    :cond_6
    move-object v11, v5

    check-cast v11, Ljava/util/Collection;

    move-object v7, v11

    move-object v11, v7

    invoke-interface {v11}, Ljava/util/Collection;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_8

    const/4 v11, 0x1

    :goto_4
    if-eqz v11, :cond_a

    .line 42
    move-object v11, v0

    iget-boolean v11, v11, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$partialWindows:Z

    if-nez v11, :cond_7

    move-object v11, v5

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    move-object v12, v0

    iget v12, v12, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$size:I

    if-ne v11, v12, :cond_a

    :cond_7
    move-object v11, v3

    move-object v12, v5

    move-object v13, v0

    move-object v14, v0

    move v15, v4

    iput v15, v14, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->I$0:I

    move-object v14, v0

    move-object v15, v5

    iput-object v15, v14, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$0:Ljava/lang/Object;

    move-object v14, v0

    move v15, v6

    iput v15, v14, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->I$1:I

    move-object v14, v0

    const/4 v15, 0x2

    iput v15, v14, Lkotlin/coroutines/experimental/jvm/internal/CoroutineImpl;->label:I

    invoke-virtual {v11, v12, v13}, Lkotlin/coroutines/experimental/SequenceBuilder;->yield(Ljava/lang/Object;Lkotlin/coroutines/experimental/Continuation;)Ljava/lang/Object;

    move-result-object v11

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    move-object v13, v10

    if-ne v12, v13, :cond_a

    .line 27
    move-object v12, v10

    move-object v0, v12

    goto/16 :goto_2

    .line 41
    :cond_8
    const/4 v11, 0x0

    goto :goto_4

    .line 27
    :pswitch_2
    move-object v11, v0

    iget v11, v11, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->I$1:I

    move v6, v11

    move-object v11, v0

    iget-object v11, v11, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$0:Ljava/lang/Object;

    check-cast v11, Ljava/util/ArrayList;

    move-object v5, v11

    move-object v11, v0

    iget v11, v11, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->I$0:I

    move v4, v11

    move-object v11, v2

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    if-eqz v12, :cond_9

    throw v11

    :cond_9
    move-object v11, v1

    .line 61
    :cond_a
    :goto_5
    sget-object v11, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object v0, v11

    goto/16 :goto_2

    .line 45
    :cond_b
    new-instance v11, Lkotlin/collections/RingBuffer;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    move-object v13, v0

    iget v13, v13, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$size:I

    invoke-direct {v12, v13}, Lkotlin/collections/RingBuffer;-><init>(I)V

    move-object v5, v11

    .line 46
    move-object v11, v0

    iget-object v11, v11, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$iterator:Ljava/util/Iterator;

    move-object v8, v11

    move-object v11, v8

    move-object v7, v11

    :goto_6
    move-object v11, v7

    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_10

    move-object v11, v7

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    move-object v6, v11

    .line 47
    move-object v11, v5

    move-object v12, v6

    invoke-virtual {v11, v12}, Lkotlin/collections/RingBuffer;->add(Ljava/lang/Object;)V

    .line 48
    move-object v11, v5

    invoke-virtual {v11}, Lkotlin/collections/RingBuffer;->isFull()Z

    move-result v11

    if-eqz v11, :cond_f

    .line 49
    move-object v11, v3

    move-object v12, v0

    iget-boolean v12, v12, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$reuseBuffer:Z

    if-eqz v12, :cond_c

    move-object v12, v5

    check-cast v12, Ljava/util/List;

    :goto_7
    move-object v13, v0

    move-object v14, v0

    move-object v15, v3

    iput-object v15, v14, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$0:Ljava/lang/Object;

    move-object v14, v0

    move v15, v4

    iput v15, v14, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->I$0:I

    move-object v14, v0

    move-object v15, v5

    iput-object v15, v14, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$1:Ljava/lang/Object;

    move-object v14, v0

    move-object v15, v6

    iput-object v15, v14, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$2:Ljava/lang/Object;

    move-object v14, v0

    move-object v15, v7

    iput-object v15, v14, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$3:Ljava/lang/Object;

    move-object v14, v0

    const/4 v15, 0x3

    iput v15, v14, Lkotlin/coroutines/experimental/jvm/internal/CoroutineImpl;->label:I

    invoke-virtual {v11, v12, v13}, Lkotlin/coroutines/experimental/SequenceBuilder;->yield(Ljava/lang/Object;Lkotlin/coroutines/experimental/Continuation;)Ljava/lang/Object;

    move-result-object v11

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    move-object v13, v10

    if-ne v12, v13, :cond_e

    .line 27
    move-object v12, v10

    move-object v0, v12

    goto/16 :goto_2

    .line 49
    :cond_c
    new-instance v12, Ljava/util/ArrayList;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    move-object v14, v5

    check-cast v14, Ljava/util/Collection;

    invoke-direct {v13, v14}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    check-cast v12, Ljava/util/List;

    goto :goto_7

    .line 27
    :pswitch_3
    move-object v11, v0

    iget-object v11, v11, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$3:Ljava/lang/Object;

    check-cast v11, Ljava/util/Iterator;

    move-object v7, v11

    move-object v11, v0

    iget-object v11, v11, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$2:Ljava/lang/Object;

    move-object v6, v11

    move-object v11, v0

    iget-object v11, v11, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$1:Ljava/lang/Object;

    check-cast v11, Lkotlin/collections/RingBuffer;

    move-object v5, v11

    move-object v11, v0

    iget v11, v11, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->I$0:I

    move v4, v11

    move-object v11, v0

    iget-object v11, v11, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$0:Ljava/lang/Object;

    check-cast v11, Lkotlin/coroutines/experimental/SequenceBuilder;

    move-object v3, v11

    move-object v11, v2

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    if-eqz v12, :cond_d

    throw v11

    :cond_d
    move-object v11, v1

    .line 50
    :cond_e
    move-object v11, v5

    move-object v12, v0

    iget v12, v12, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$step:I

    invoke-virtual {v11, v12}, Lkotlin/collections/RingBuffer;->removeFirst(I)V

    .line 46
    :cond_f
    goto/16 :goto_6

    .line 53
    :cond_10
    move-object v11, v0

    iget-boolean v11, v11, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$partialWindows:Z

    if-eqz v11, :cond_a

    .line 54
    :goto_8
    move-object v11, v5

    invoke-virtual {v11}, Lkotlin/collections/RingBuffer;->size()I

    move-result v11

    move-object v12, v0

    iget v12, v12, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$step:I

    if-le v11, v12, :cond_14

    .line 55
    move-object v11, v3

    move-object v12, v0

    iget-boolean v12, v12, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$reuseBuffer:Z

    if-eqz v12, :cond_11

    move-object v12, v5

    check-cast v12, Ljava/util/List;

    :goto_9
    move-object v13, v0

    move-object v14, v0

    move-object v15, v3

    iput-object v15, v14, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$0:Ljava/lang/Object;

    move-object v14, v0

    move v15, v4

    iput v15, v14, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->I$0:I

    move-object v14, v0

    move-object v15, v5

    iput-object v15, v14, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$1:Ljava/lang/Object;

    move-object v14, v0

    const/4 v15, 0x4

    iput v15, v14, Lkotlin/coroutines/experimental/jvm/internal/CoroutineImpl;->label:I

    invoke-virtual {v11, v12, v13}, Lkotlin/coroutines/experimental/SequenceBuilder;->yield(Ljava/lang/Object;Lkotlin/coroutines/experimental/Continuation;)Ljava/lang/Object;

    move-result-object v11

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    move-object v13, v10

    if-ne v12, v13, :cond_13

    .line 27
    move-object v12, v10

    move-object v0, v12

    goto/16 :goto_2

    .line 55
    :cond_11
    new-instance v12, Ljava/util/ArrayList;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    move-object v14, v5

    check-cast v14, Ljava/util/Collection;

    invoke-direct {v13, v14}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    check-cast v12, Ljava/util/List;

    goto :goto_9

    .line 27
    :pswitch_4
    move-object v11, v0

    iget-object v11, v11, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$1:Ljava/lang/Object;

    check-cast v11, Lkotlin/collections/RingBuffer;

    move-object v5, v11

    move-object v11, v0

    iget v11, v11, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->I$0:I

    move v4, v11

    move-object v11, v0

    iget-object v11, v11, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$0:Ljava/lang/Object;

    check-cast v11, Lkotlin/coroutines/experimental/SequenceBuilder;

    move-object v3, v11

    move-object v11, v2

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    if-eqz v12, :cond_12

    throw v11

    :cond_12
    move-object v11, v1

    .line 56
    :cond_13
    move-object v11, v5

    move-object v12, v0

    iget v12, v12, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$step:I

    invoke-virtual {v11, v12}, Lkotlin/collections/RingBuffer;->removeFirst(I)V

    .line 54
    goto :goto_8

    .line 58
    :cond_14
    move-object v11, v5

    check-cast v11, Ljava/util/Collection;

    move-object v6, v11

    move-object v11, v6

    invoke-interface {v11}, Ljava/util/Collection;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_15

    const/4 v11, 0x1

    :goto_a
    if-eqz v11, :cond_a

    move-object v11, v3

    move-object v12, v5

    move-object v13, v0

    move-object v14, v0

    move v15, v4

    iput v15, v14, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->I$0:I

    move-object v14, v0

    move-object v15, v5

    iput-object v15, v14, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$0:Ljava/lang/Object;

    move-object v14, v0

    const/4 v15, 0x5

    iput v15, v14, Lkotlin/coroutines/experimental/jvm/internal/CoroutineImpl;->label:I

    invoke-virtual {v11, v12, v13}, Lkotlin/coroutines/experimental/SequenceBuilder;->yield(Ljava/lang/Object;Lkotlin/coroutines/experimental/Continuation;)Ljava/lang/Object;

    move-result-object v11

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    move-object v13, v10

    if-ne v12, v13, :cond_17

    .line 27
    move-object v12, v10

    move-object v0, v12

    goto/16 :goto_2

    .line 58
    :cond_15
    const/4 v11, 0x0

    goto :goto_a

    .line 27
    :pswitch_5
    move-object v11, v0

    iget-object v11, v11, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$0:Ljava/lang/Object;

    check-cast v11, Lkotlin/collections/RingBuffer;

    move-object v5, v11

    move-object v11, v0

    iget v11, v11, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->I$0:I

    move v4, v11

    move-object v11, v2

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    if-eqz v12, :cond_16

    throw v11

    :cond_16
    move-object v11, v1

    :cond_17
    goto/16 :goto_5

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    check-cast v4, Lkotlin/coroutines/experimental/SequenceBuilder;

    move-object v5, v2

    check-cast v5, Lkotlin/coroutines/experimental/Continuation;

    invoke-virtual {v3, v4, v5}, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->invoke(Lkotlin/coroutines/experimental/SequenceBuilder;Lkotlin/coroutines/experimental/Continuation;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method public final invoke(Lkotlin/coroutines/experimental/SequenceBuilder;Lkotlin/coroutines/experimental/Continuation;)Ljava/lang/Object;
    .locals 6
    .param p1    # Lkotlin/coroutines/experimental/SequenceBuilder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/experimental/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/experimental/SequenceBuilder",
            "<-",
            "Ljava/util/List",
            "<+TT;>;>;",
            "Lkotlin/coroutines/experimental/Continuation",
            "<-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v1

    const-string v4, "$receiver"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v2

    const-string v4, "continuation"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->create(Lkotlin/coroutines/experimental/SequenceBuilder;Lkotlin/coroutines/experimental/Continuation;)Lkotlin/coroutines/experimental/Continuation;

    move-result-object v3

    check-cast v3, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->doResume(Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method
