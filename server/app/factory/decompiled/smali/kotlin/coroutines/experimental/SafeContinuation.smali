.class public final Lkotlin/coroutines/experimental/SafeContinuation;
.super Ljava/lang/Object;
.source "SafeContinuationJvm.kt"

# interfaces
.implements Lkotlin/coroutines/experimental/Continuation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/coroutines/experimental/SafeContinuation$Fail;,
        Lkotlin/coroutines/experimental/SafeContinuation$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlin/coroutines/experimental/Continuation",
        "<TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0003\n\u0002\u0008\u0003\u0008\u0001\u0018\u0000 \u0015*\u0006\u0008\u0000\u0010\u0001 \u00002\u0008\u0012\u0004\u0012\u0002H\u00010\u0002:\u0002\u0015\u0016B\u0015\u0008\u0011\u0012\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0002\u00a2\u0006\u0002\u0010\u0004B\u001f\u0008\u0000\u0012\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0002\u0010\u0007J\n\u0010\r\u001a\u0004\u0018\u00010\u0006H\u0001J\u0015\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010\u0011J\u0010\u0010\u0012\u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\u0014H\u0016R\u0014\u0010\u0008\u001a\u00020\t8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000bR\u0014\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0002X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000c\u001a\u0004\u0018\u00010\u00068\u0002@\u0002X\u0083\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lkotlin/coroutines/experimental/SafeContinuation;",
        "T",
        "Lkotlin/coroutines/experimental/Continuation;",
        "delegate",
        "(Lkotlin/coroutines/experimental/Continuation;)V",
        "initialResult",
        "",
        "(Lkotlin/coroutines/experimental/Continuation;Ljava/lang/Object;)V",
        "context",
        "Lkotlin/coroutines/experimental/CoroutineContext;",
        "getContext",
        "()Lkotlin/coroutines/experimental/CoroutineContext;",
        "result",
        "getResult",
        "resume",
        "",
        "value",
        "(Ljava/lang/Object;)V",
        "resumeWithException",
        "exception",
        "",
        "Companion",
        "Fail",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xa
    }
.end annotation

.annotation build Lkotlin/PublishedApi;
.end annotation


# static fields
.field public static final Companion:Lkotlin/coroutines/experimental/SafeContinuation$Companion;

.field private static final RESULT:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater",
            "<",
            "Lkotlin/coroutines/experimental/SafeContinuation",
            "<*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final RESUMED:Ljava/lang/Object;

.field private static final UNDECIDED:Ljava/lang/Object;


# instance fields
.field private final delegate:Lkotlin/coroutines/experimental/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/coroutines/experimental/Continuation",
            "<TT;>;"
        }
    .end annotation
.end field

.field private volatile result:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    new-instance v0, Lkotlin/coroutines/experimental/SafeContinuation$Companion;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lkotlin/coroutines/experimental/SafeContinuation$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlin/coroutines/experimental/SafeContinuation;->Companion:Lkotlin/coroutines/experimental/SafeContinuation$Companion;

    .line 28
    new-instance v0, Ljava/lang/Object;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lkotlin/coroutines/experimental/SafeContinuation;->UNDECIDED:Ljava/lang/Object;

    .line 29
    new-instance v0, Ljava/lang/Object;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lkotlin/coroutines/experimental/SafeContinuation;->RESUMED:Ljava/lang/Object;

    .line 33
    const-class v0, Lkotlin/coroutines/experimental/SafeContinuation;

    const-class v1, Ljava/lang/Object;

    const-string v2, "result"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlin/coroutines/experimental/SafeContinuation;->RESULT:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lkotlin/coroutines/experimental/Continuation;)V
    .locals 5
    .param p1    # Lkotlin/coroutines/experimental/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/experimental/Continuation",
            "<-TT;>;)V"
        }
    .end annotation

    .annotation build Lkotlin/PublishedApi;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    const-string v3, "delegate"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    move-object v2, v0

    move-object v3, v1

    sget-object v4, Lkotlin/coroutines/experimental/SafeContinuation;->UNDECIDED:Ljava/lang/Object;

    invoke-direct {v2, v3, v4}, Lkotlin/coroutines/experimental/SafeContinuation;-><init>(Lkotlin/coroutines/experimental/Continuation;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lkotlin/coroutines/experimental/Continuation;Ljava/lang/Object;)V
    .locals 5
    .param p1    # Lkotlin/coroutines/experimental/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/experimental/Continuation",
            "<-TT;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v1

    const-string v4, "delegate"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lkotlin/coroutines/experimental/SafeContinuation;->delegate:Lkotlin/coroutines/experimental/Continuation;

    .line 25
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lkotlin/coroutines/experimental/SafeContinuation;->result:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getContext()Lkotlin/coroutines/experimental/CoroutineContext;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 22
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lkotlin/coroutines/experimental/SafeContinuation;->delegate:Lkotlin/coroutines/experimental/Continuation;

    invoke-interface {v1}, Lkotlin/coroutines/experimental/Continuation;->getContext()Lkotlin/coroutines/experimental/CoroutineContext;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public final getResult()Ljava/lang/Object;
    .locals 6
    .annotation build Lkotlin/PublishedApi;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 70
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lkotlin/coroutines/experimental/SafeContinuation;->result:Ljava/lang/Object;

    move-object v1, v2

    .line 71
    move-object v2, v1

    sget-object v3, Lkotlin/coroutines/experimental/SafeContinuation;->UNDECIDED:Ljava/lang/Object;

    if-ne v2, v3, :cond_1

    .line 72
    sget-object v2, Lkotlin/coroutines/experimental/SafeContinuation;->RESULT:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-object v3, v0

    sget-object v4, Lkotlin/coroutines/experimental/SafeContinuation;->UNDECIDED:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/experimental/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lkotlin/coroutines/experimental/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .line 78
    :goto_0
    return-object v0

    .line 73
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lkotlin/coroutines/experimental/SafeContinuation;->result:Ljava/lang/Object;

    move-object v1, v2

    .line 75
    :cond_1
    move-object v2, v1

    sget-object v3, Lkotlin/coroutines/experimental/SafeContinuation;->RESUMED:Ljava/lang/Object;

    if-ne v2, v3, :cond_2

    invoke-static {}, Lkotlin/coroutines/experimental/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 77
    :cond_2
    move-object v2, v1

    instance-of v2, v2, Lkotlin/coroutines/experimental/SafeContinuation$Fail;

    if-eqz v2, :cond_3

    move-object v2, v1

    check-cast v2, Lkotlin/coroutines/experimental/SafeContinuation$Fail;

    invoke-virtual {v2}, Lkotlin/coroutines/experimental/SafeContinuation$Fail;->getException()Ljava/lang/Throwable;

    move-result-object v2

    throw v2

    .line 78
    :cond_3
    move-object v2, v1

    move-object v0, v2

    goto :goto_0
.end method

.method public resume(Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 41
    move-object v0, p0

    move-object v1, p1

    :goto_0
    move-object v3, v0

    iget-object v3, v3, Lkotlin/coroutines/experimental/SafeContinuation;->result:Ljava/lang/Object;

    move-object v2, v3

    .line 43
    move-object v3, v2

    sget-object v4, Lkotlin/coroutines/experimental/SafeContinuation;->UNDECIDED:Ljava/lang/Object;

    if-ne v3, v4, :cond_0

    sget-object v3, Lkotlin/coroutines/experimental/SafeContinuation;->RESULT:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-object v4, v0

    sget-object v5, Lkotlin/coroutines/experimental/SafeContinuation;->UNDECIDED:Ljava/lang/Object;

    move-object v6, v1

    invoke-virtual {v3, v4, v5, v6}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 47
    :goto_1
    return-void

    .line 45
    :cond_0
    move-object v3, v2

    invoke-static {}, Lkotlin/coroutines/experimental/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v4

    if-ne v3, v4, :cond_1

    sget-object v3, Lkotlin/coroutines/experimental/SafeContinuation;->RESULT:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-object v4, v0

    invoke-static {}, Lkotlin/coroutines/experimental/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Lkotlin/coroutines/experimental/SafeContinuation;->RESUMED:Ljava/lang/Object;

    invoke-virtual {v3, v4, v5, v6}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 46
    move-object v3, v0

    iget-object v3, v3, Lkotlin/coroutines/experimental/SafeContinuation;->delegate:Lkotlin/coroutines/experimental/Continuation;

    move-object v4, v1

    invoke-interface {v3, v4}, Lkotlin/coroutines/experimental/Continuation;->resume(Ljava/lang/Object;)V

    .line 47
    goto :goto_1

    .line 49
    :cond_1
    new-instance v3, Ljava/lang/IllegalStateException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const-string v5, "Already resumed"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Throwable;

    throw v3

    .line 50
    :cond_2
    goto :goto_0
.end method

.method public resumeWithException(Ljava/lang/Throwable;)V
    .locals 10
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    const-string v4, "exception"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    :goto_0
    move-object v3, v0

    iget-object v3, v3, Lkotlin/coroutines/experimental/SafeContinuation;->result:Ljava/lang/Object;

    move-object v2, v3

    .line 57
    move-object v3, v2

    sget-object v4, Lkotlin/coroutines/experimental/SafeContinuation;->UNDECIDED:Ljava/lang/Object;

    if-ne v3, v4, :cond_0

    sget-object v3, Lkotlin/coroutines/experimental/SafeContinuation;->RESULT:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-object v4, v0

    sget-object v5, Lkotlin/coroutines/experimental/SafeContinuation;->UNDECIDED:Ljava/lang/Object;

    new-instance v6, Lkotlin/coroutines/experimental/SafeContinuation$Fail;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v1

    invoke-direct {v7, v8}, Lkotlin/coroutines/experimental/SafeContinuation$Fail;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v3, v4, v5, v6}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 61
    :goto_1
    return-void

    .line 59
    :cond_0
    move-object v3, v2

    invoke-static {}, Lkotlin/coroutines/experimental/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v4

    if-ne v3, v4, :cond_1

    sget-object v3, Lkotlin/coroutines/experimental/SafeContinuation;->RESULT:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-object v4, v0

    invoke-static {}, Lkotlin/coroutines/experimental/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Lkotlin/coroutines/experimental/SafeContinuation;->RESUMED:Ljava/lang/Object;

    invoke-virtual {v3, v4, v5, v6}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 60
    move-object v3, v0

    iget-object v3, v3, Lkotlin/coroutines/experimental/SafeContinuation;->delegate:Lkotlin/coroutines/experimental/Continuation;

    move-object v4, v1

    invoke-interface {v3, v4}, Lkotlin/coroutines/experimental/Continuation;->resumeWithException(Ljava/lang/Throwable;)V

    .line 61
    goto :goto_1

    .line 63
    :cond_1
    new-instance v3, Ljava/lang/IllegalStateException;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    const-string v5, "Already resumed"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Throwable;

    throw v3

    .line 64
    :cond_2
    goto :goto_0
.end method
