.class final Lkotlin/sequences/SequencesKt___SequencesKt$zipWithNext$2;
.super Lkotlin/coroutines/experimental/jvm/internal/CoroutineImpl;
.source "_Sequences.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/sequences/SequencesKt___SequencesKt;->zipWithNext(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function2;)Lkotlin/sequences/Sequence;
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
        "<-TR;>;",
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
        "\u0000\u0012\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002\"\u0004\u0008\u0001\u0010\u0003*\u0008\u0012\u0004\u0012\u0002H\u00030\u0004H\n\u00a2\u0006\u0004\u0008\u0005\u0010\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "T",
        "R",
        "Lkotlin/coroutines/experimental/SequenceBuilder;",
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
.field final synthetic $transform:Lkotlin/jvm/functions/Function2;

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field private p$:Lkotlin/coroutines/experimental/SequenceBuilder;

.field final synthetic receiver$0:Lkotlin/sequences/Sequence;


# direct methods
.method constructor <init>(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/experimental/Continuation;)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lkotlin/sequences/SequencesKt___SequencesKt$zipWithNext$2;->receiver$0:Lkotlin/sequences/Sequence;

    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lkotlin/sequences/SequencesKt___SequencesKt$zipWithNext$2;->$transform:Lkotlin/jvm/functions/Function2;

    move-object v4, v0

    const/4 v5, 0x2

    move-object v6, v3

    invoke-direct {v4, v5, v6}, Lkotlin/coroutines/experimental/jvm/internal/CoroutineImpl;-><init>(ILkotlin/coroutines/experimental/Continuation;)V

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

    invoke-virtual {v3, v4, v5}, Lkotlin/sequences/SequencesKt___SequencesKt$zipWithNext$2;->create(Lkotlin/coroutines/experimental/SequenceBuilder;Lkotlin/coroutines/experimental/Continuation;)Lkotlin/coroutines/experimental/Continuation;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method public final create(Lkotlin/coroutines/experimental/SequenceBuilder;Lkotlin/coroutines/experimental/Continuation;)Lkotlin/coroutines/experimental/Continuation;
    .locals 10
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
            "<-TR;>;",
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

    new-instance v4, Lkotlin/sequences/SequencesKt___SequencesKt$zipWithNext$2;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    iget-object v6, v6, Lkotlin/sequences/SequencesKt___SequencesKt$zipWithNext$2;->receiver$0:Lkotlin/sequences/Sequence;

    move-object v7, v0

    iget-object v7, v7, Lkotlin/sequences/SequencesKt___SequencesKt$zipWithNext$2;->$transform:Lkotlin/jvm/functions/Function2;

    move-object v8, v2

    invoke-direct {v5, v6, v7, v8}, Lkotlin/sequences/SequencesKt___SequencesKt$zipWithNext$2;-><init>(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/experimental/Continuation;)V

    move-object v3, v4

    move-object v4, v1

    move-object v5, v3

    move-object v6, v1

    iput-object v6, v5, Lkotlin/sequences/SequencesKt___SequencesKt$zipWithNext$2;->p$:Lkotlin/coroutines/experimental/SequenceBuilder;

    move-object v5, v3

    move-object v0, v5

    return-object v0
.end method

.method public final doResume(Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/Object;
    .locals 14
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
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    invoke-static {}, Lkotlin/coroutines/experimental/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v8

    .line 1623
    move-object v7, v8

    move-object v8, v0

    iget v8, v8, Lkotlin/coroutines/experimental/jvm/internal/CoroutineImpl;->label:I

    packed-switch v8, :pswitch_data_0

    .line 1632
    new-instance v8, Ljava/lang/IllegalStateException;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    const-string v10, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1623
    :pswitch_0
    move-object v8, v2

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    if-eqz v9, :cond_0

    throw v8

    :cond_0
    move-object v8, v0

    iget-object v8, v8, Lkotlin/sequences/SequencesKt___SequencesKt$zipWithNext$2;->p$:Lkotlin/coroutines/experimental/SequenceBuilder;

    move-object v3, v8

    .line 1624
    move-object v8, v0

    iget-object v8, v8, Lkotlin/sequences/SequencesKt___SequencesKt$zipWithNext$2;->receiver$0:Lkotlin/sequences/Sequence;

    invoke-interface {v8}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v4, v8

    .line 1625
    move-object v8, v4

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_1

    sget-object v8, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object v0, v8

    .line 1632
    :goto_0
    return-object v0

    .line 1626
    :cond_1
    move-object v8, v4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v5, v8

    .line 1627
    :goto_1
    move-object v8, v4

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1628
    move-object v8, v4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v6, v8

    .line 1629
    move-object v8, v3

    move-object v9, v0

    iget-object v9, v9, Lkotlin/sequences/SequencesKt___SequencesKt$zipWithNext$2;->$transform:Lkotlin/jvm/functions/Function2;

    move-object v10, v5

    move-object v11, v6

    invoke-interface {v9, v10, v11}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v10, v0

    move-object v11, v0

    move-object v12, v3

    iput-object v12, v11, Lkotlin/sequences/SequencesKt___SequencesKt$zipWithNext$2;->L$0:Ljava/lang/Object;

    move-object v11, v0

    move-object v12, v4

    iput-object v12, v11, Lkotlin/sequences/SequencesKt___SequencesKt$zipWithNext$2;->L$1:Ljava/lang/Object;

    move-object v11, v0

    move-object v12, v5

    iput-object v12, v11, Lkotlin/sequences/SequencesKt___SequencesKt$zipWithNext$2;->L$2:Ljava/lang/Object;

    move-object v11, v0

    move-object v12, v6

    iput-object v12, v11, Lkotlin/sequences/SequencesKt___SequencesKt$zipWithNext$2;->L$3:Ljava/lang/Object;

    move-object v11, v0

    const/4 v12, 0x1

    iput v12, v11, Lkotlin/coroutines/experimental/jvm/internal/CoroutineImpl;->label:I

    invoke-virtual {v8, v9, v10}, Lkotlin/coroutines/experimental/SequenceBuilder;->yield(Ljava/lang/Object;Lkotlin/coroutines/experimental/Continuation;)Ljava/lang/Object;

    move-result-object v8

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    move-object v10, v7

    if-ne v9, v10, :cond_3

    .line 1623
    move-object v9, v7

    move-object v0, v9

    goto :goto_0

    :pswitch_1
    move-object v8, v0

    iget-object v8, v8, Lkotlin/sequences/SequencesKt___SequencesKt$zipWithNext$2;->L$3:Ljava/lang/Object;

    move-object v6, v8

    move-object v8, v0

    iget-object v8, v8, Lkotlin/sequences/SequencesKt___SequencesKt$zipWithNext$2;->L$2:Ljava/lang/Object;

    move-object v5, v8

    move-object v8, v0

    iget-object v8, v8, Lkotlin/sequences/SequencesKt___SequencesKt$zipWithNext$2;->L$1:Ljava/lang/Object;

    check-cast v8, Ljava/util/Iterator;

    move-object v4, v8

    move-object v8, v0

    iget-object v8, v8, Lkotlin/sequences/SequencesKt___SequencesKt$zipWithNext$2;->L$0:Ljava/lang/Object;

    check-cast v8, Lkotlin/coroutines/experimental/SequenceBuilder;

    move-object v3, v8

    move-object v8, v2

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    if-eqz v9, :cond_2

    throw v8

    :cond_2
    move-object v8, v1

    .line 1630
    :cond_3
    move-object v8, v6

    move-object v5, v8

    .line 1627
    goto :goto_1

    .line 1632
    :cond_4
    sget-object v8, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object v0, v8

    goto :goto_0

    .line 1623
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
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

    invoke-virtual {v3, v4, v5}, Lkotlin/sequences/SequencesKt___SequencesKt$zipWithNext$2;->invoke(Lkotlin/coroutines/experimental/SequenceBuilder;Lkotlin/coroutines/experimental/Continuation;)Ljava/lang/Object;

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
            "<-TR;>;",
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

    invoke-virtual {v3, v4, v5}, Lkotlin/sequences/SequencesKt___SequencesKt$zipWithNext$2;->create(Lkotlin/coroutines/experimental/SequenceBuilder;Lkotlin/coroutines/experimental/Continuation;)Lkotlin/coroutines/experimental/Continuation;

    move-result-object v3

    check-cast v3, Lkotlin/sequences/SequencesKt___SequencesKt$zipWithNext$2;

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lkotlin/sequences/SequencesKt___SequencesKt$zipWithNext$2;->doResume(Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method
