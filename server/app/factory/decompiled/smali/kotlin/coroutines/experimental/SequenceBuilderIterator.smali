.class final Lkotlin/coroutines/experimental/SequenceBuilderIterator;
.super Lkotlin/coroutines/experimental/SequenceBuilder;
.source "SequenceBuilder.kt"

# interfaces
.implements Ljava/util/Iterator;
.implements Lkotlin/coroutines/experimental/Continuation;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlin/coroutines/experimental/SequenceBuilder",
        "<TT;>;",
        "Ljava/util/Iterator",
        "<TT;>;",
        "Lkotlin/coroutines/experimental/Continuation",
        "<",
        "Lkotlin/Unit;",
        ">;",
        "Lkotlin/jvm/internal/markers/KMappedMarker;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010(\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u000e\u0008\u0002\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u00022\u0008\u0012\u0004\u0012\u0002H\u00010\u00032\u0008\u0012\u0004\u0012\u00020\u00050\u0004B\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\u0016\u001a\u00020\u0017H\u0002J\t\u0010\u0018\u001a\u00020\u0019H\u0096\u0002J\u000e\u0010\u001a\u001a\u00028\u0000H\u0096\u0002\u00a2\u0006\u0002\u0010\u001bJ\r\u0010\u001c\u001a\u00028\u0000H\u0002\u00a2\u0006\u0002\u0010\u001bJ\u0015\u0010\u001d\u001a\u00020\u00052\u0006\u0010\u001e\u001a\u00020\u0005H\u0016\u00a2\u0006\u0002\u0010\u001fJ\u0010\u0010 \u001a\u00020\u00052\u0006\u0010!\u001a\u00020\u0017H\u0016J\u0019\u0010\"\u001a\u00020\u00052\u0006\u0010\u001e\u001a\u00028\u0000H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010#J\u001f\u0010$\u001a\u00020\u00052\u000c\u0010%\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0003H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010&R\u0014\u0010\u0007\u001a\u00020\u00088VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\nR\u0016\u0010\u000b\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\"\u0010\u000c\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u0012\u0010\u0011\u001a\u0004\u0018\u00018\u0000X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0012R\u0012\u0010\u0013\u001a\u00060\u0014j\u0002`\u0015X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\t\u00a8\u0006\'"
    }
    d2 = {
        "Lkotlin/coroutines/experimental/SequenceBuilderIterator;",
        "T",
        "Lkotlin/coroutines/experimental/SequenceBuilder;",
        "",
        "Lkotlin/coroutines/experimental/Continuation;",
        "",
        "()V",
        "context",
        "Lkotlin/coroutines/experimental/CoroutineContext;",
        "getContext",
        "()Lkotlin/coroutines/experimental/CoroutineContext;",
        "nextIterator",
        "nextStep",
        "getNextStep",
        "()Lkotlin/coroutines/experimental/Continuation;",
        "setNextStep",
        "(Lkotlin/coroutines/experimental/Continuation;)V",
        "nextValue",
        "Ljava/lang/Object;",
        "state",
        "",
        "Lkotlin/coroutines/experimental/State;",
        "exceptionalState",
        "",
        "hasNext",
        "",
        "next",
        "()Ljava/lang/Object;",
        "nextNotReady",
        "resume",
        "value",
        "(Lkotlin/Unit;)V",
        "resumeWithException",
        "exception",
        "yield",
        "(Ljava/lang/Object;Lkotlin/coroutines/experimental/Continuation;)Ljava/lang/Object;",
        "yieldAll",
        "iterator",
        "(Ljava/util/Iterator;Lkotlin/coroutines/experimental/Continuation;)Ljava/lang/Object;",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xa
    }
.end annotation


# instance fields
.field private nextIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<+TT;>;"
        }
    .end annotation
.end field

.field private nextStep:Lkotlin/coroutines/experimental/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/coroutines/experimental/Continuation",
            "<-",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private nextValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private state:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 96
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lkotlin/coroutines/experimental/SequenceBuilder;-><init>()V

    return-void
.end method

.method private final exceptionalState()Ljava/lang/Throwable;
    .locals 6

    .prologue
    .line 147
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lkotlin/coroutines/experimental/SequenceBuilderIterator;->state:I

    packed-switch v1, :pswitch_data_0

    .line 150
    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected state of the iterator: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    iget v4, v4, Lkotlin/coroutines/experimental/SequenceBuilderIterator;->state:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    .line 147
    :goto_0
    move-object v0, v1

    return-object v0

    .line 148
    :pswitch_0
    new-instance v1, Ljava/util/NoSuchElementException;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    invoke-direct {v2}, Ljava/util/NoSuchElementException;-><init>()V

    check-cast v1, Ljava/lang/Throwable;

    goto :goto_0

    .line 149
    :pswitch_1
    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const-string v3, "Iterator has failed."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    goto :goto_0

    .line 147
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private final nextNotReady()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 144
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lkotlin/coroutines/experimental/SequenceBuilderIterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/NoSuchElementException;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/util/NoSuchElementException;-><init>()V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    :cond_0
    move-object v1, v0

    invoke-virtual {v1}, Lkotlin/coroutines/experimental/SequenceBuilderIterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method


# virtual methods
.method public getContext()Lkotlin/coroutines/experimental/CoroutineContext;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 183
    move-object v0, p0

    sget-object v1, Lkotlin/coroutines/experimental/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/experimental/EmptyCoroutineContext;

    check-cast v1, Lkotlin/coroutines/experimental/CoroutineContext;

    move-object v0, v1

    return-object v0
.end method

.method public final getNextStep()Lkotlin/coroutines/experimental/Continuation;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/coroutines/experimental/Continuation",
            "<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 100
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lkotlin/coroutines/experimental/SequenceBuilderIterator;->nextStep:Lkotlin/coroutines/experimental/Continuation;

    move-object v0, v1

    return-object v0
.end method

.method public hasNext()Z
    .locals 5

    .prologue
    .line 103
    move-object v0, p0

    :goto_0
    move-object v2, v0

    iget v2, v2, Lkotlin/coroutines/experimental/SequenceBuilderIterator;->state:I

    packed-switch v2, :pswitch_data_0

    .line 115
    move-object v2, v0

    invoke-direct {v2}, Lkotlin/coroutines/experimental/SequenceBuilderIterator;->exceptionalState()Ljava/lang/Throwable;

    move-result-object v2

    throw v2

    .line 116
    :goto_1
    :pswitch_0
    move-object v2, v0

    const/4 v3, 0x5

    iput v3, v2, Lkotlin/coroutines/experimental/SequenceBuilderIterator;->state:I

    .line 119
    move-object v2, v0

    iget-object v2, v2, Lkotlin/coroutines/experimental/SequenceBuilderIterator;->nextStep:Lkotlin/coroutines/experimental/Continuation;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    if-nez v3, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    move-object v1, v2

    .line 120
    move-object v2, v0

    const/4 v3, 0x0

    check-cast v3, Lkotlin/coroutines/experimental/Continuation;

    iput-object v3, v2, Lkotlin/coroutines/experimental/SequenceBuilderIterator;->nextStep:Lkotlin/coroutines/experimental/Continuation;

    .line 121
    move-object v2, v1

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-interface {v2, v3}, Lkotlin/coroutines/experimental/Continuation;->resume(Ljava/lang/Object;)V

    .line 103
    goto :goto_0

    .line 107
    :pswitch_1
    move-object v2, v0

    iget-object v2, v2, Lkotlin/coroutines/experimental/SequenceBuilderIterator;->nextIterator:Ljava/util/Iterator;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    if-nez v3, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 108
    move-object v2, v0

    const/4 v3, 0x2

    iput v3, v2, Lkotlin/coroutines/experimental/SequenceBuilderIterator;->state:I

    .line 109
    const/4 v2, 0x1

    move v0, v2

    .line 114
    :goto_2
    return v0

    .line 111
    :cond_2
    move-object v2, v0

    const/4 v3, 0x0

    check-cast v3, Ljava/util/Iterator;

    iput-object v3, v2, Lkotlin/coroutines/experimental/SequenceBuilderIterator;->nextIterator:Ljava/util/Iterator;

    .line 112
    goto :goto_1

    .line 113
    :pswitch_2
    const/4 v2, 0x0

    move v0, v2

    goto :goto_2

    .line 114
    :pswitch_3
    const/4 v2, 0x1

    move v0, v2

    goto :goto_2

    .line 103
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public next()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 126
    move-object v0, p0

    move-object v2, v0

    iget v2, v2, Lkotlin/coroutines/experimental/SequenceBuilderIterator;->state:I

    packed-switch v2, :pswitch_data_0

    .line 139
    move-object v2, v0

    invoke-direct {v2}, Lkotlin/coroutines/experimental/SequenceBuilderIterator;->exceptionalState()Ljava/lang/Throwable;

    move-result-object v2

    throw v2

    .line 127
    :pswitch_0
    move-object v2, v0

    invoke-direct {v2}, Lkotlin/coroutines/experimental/SequenceBuilderIterator;->nextNotReady()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .line 137
    :goto_0
    return-object v0

    .line 129
    :pswitch_1
    move-object v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lkotlin/coroutines/experimental/SequenceBuilderIterator;->state:I

    .line 130
    move-object v2, v0

    iget-object v2, v2, Lkotlin/coroutines/experimental/SequenceBuilderIterator;->nextIterator:Ljava/util/Iterator;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    if-nez v3, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 133
    :pswitch_2
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lkotlin/coroutines/experimental/SequenceBuilderIterator;->state:I

    .line 135
    move-object v2, v0

    iget-object v2, v2, Lkotlin/coroutines/experimental/SequenceBuilderIterator;->nextValue:Ljava/lang/Object;

    move-object v1, v2

    .line 136
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lkotlin/coroutines/experimental/SequenceBuilderIterator;->nextValue:Ljava/lang/Object;

    .line 137
    move-object v2, v1

    move-object v0, v2

    goto :goto_0

    .line 126
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public remove()V
    .locals 5

    move-object v0, p0

    new-instance v1, Ljava/lang/UnsupportedOperationException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "Operation is not supported for read-only collection"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public bridge synthetic resume(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 96
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Lkotlin/Unit;

    invoke-virtual {v2, v3}, Lkotlin/coroutines/experimental/SequenceBuilderIterator;->resume(Lkotlin/Unit;)V

    return-void
.end method

.method public resume(Lkotlin/Unit;)V
    .locals 4
    .param p1    # Lkotlin/Unit;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    const-string v3, "value"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    move-object v2, v0

    const/4 v3, 0x4

    iput v3, v2, Lkotlin/coroutines/experimental/SequenceBuilderIterator;->state:I

    .line 176
    return-void
.end method

.method public resumeWithException(Ljava/lang/Throwable;)V
    .locals 4
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    const-string v3, "exception"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 179
    move-object v2, v1

    throw v2
.end method

.method public final setNextStep(Lkotlin/coroutines/experimental/Continuation;)V
    .locals 4
    .param p1    # Lkotlin/coroutines/experimental/Continuation;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/experimental/Continuation",
            "<-",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 100
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lkotlin/coroutines/experimental/SequenceBuilderIterator;->nextStep:Lkotlin/coroutines/experimental/Continuation;

    return-void
.end method

.method public yield(Ljava/lang/Object;Lkotlin/coroutines/experimental/Continuation;)Ljava/lang/Object;
    .locals 7
    .param p2    # Lkotlin/coroutines/experimental/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lkotlin/coroutines/experimental/Continuation",
            "<-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 155
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lkotlin/coroutines/experimental/SequenceBuilderIterator;->nextValue:Ljava/lang/Object;

    .line 156
    move-object v5, v0

    const/4 v6, 0x3

    iput v6, v5, Lkotlin/coroutines/experimental/SequenceBuilderIterator;->state:I

    .line 157
    move-object v5, v2

    invoke-static {v5}, Lkotlin/coroutines/experimental/jvm/internal/CoroutineIntrinsics;->normalizeContinuation(Lkotlin/coroutines/experimental/Continuation;)Lkotlin/coroutines/experimental/Continuation;

    move-result-object v5

    move-object v3, v5

    .line 158
    move-object v5, v0

    move-object v6, v3

    invoke-virtual {v5, v6}, Lkotlin/coroutines/experimental/SequenceBuilderIterator;->setNextStep(Lkotlin/coroutines/experimental/Continuation;)V

    .line 159
    invoke-static {}, Lkotlin/coroutines/experimental/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v5

    .line 157
    move-object v0, v5

    return-object v0
.end method

.method public yieldAll(Ljava/util/Iterator;Lkotlin/coroutines/experimental/Continuation;)Ljava/lang/Object;
    .locals 7
    .param p1    # Ljava/util/Iterator;
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
            "Ljava/util/Iterator",
            "<+TT;>;",
            "Lkotlin/coroutines/experimental/Continuation",
            "<-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 164
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v1

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_0

    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object v0, v5

    .line 167
    :goto_0
    return-object v0

    .line 165
    :cond_0
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lkotlin/coroutines/experimental/SequenceBuilderIterator;->nextIterator:Ljava/util/Iterator;

    .line 166
    move-object v5, v0

    const/4 v6, 0x2

    iput v6, v5, Lkotlin/coroutines/experimental/SequenceBuilderIterator;->state:I

    .line 167
    move-object v5, v2

    invoke-static {v5}, Lkotlin/coroutines/experimental/jvm/internal/CoroutineIntrinsics;->normalizeContinuation(Lkotlin/coroutines/experimental/Continuation;)Lkotlin/coroutines/experimental/Continuation;

    move-result-object v5

    move-object v3, v5

    .line 168
    move-object v5, v0

    move-object v6, v3

    invoke-virtual {v5, v6}, Lkotlin/coroutines/experimental/SequenceBuilderIterator;->setNextStep(Lkotlin/coroutines/experimental/Continuation;)V

    .line 169
    invoke-static {}, Lkotlin/coroutines/experimental/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v5

    .line 167
    move-object v0, v5

    goto :goto_0
.end method
