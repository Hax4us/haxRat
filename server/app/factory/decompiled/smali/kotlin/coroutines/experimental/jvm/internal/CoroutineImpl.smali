.class public abstract Lkotlin/coroutines/experimental/jvm/internal/CoroutineImpl;
.super Lkotlin/jvm/internal/Lambda;
.source "CoroutineImpl.kt"

# interfaces
.implements Lkotlin/coroutines/experimental/Continuation;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/coroutines/experimental/Continuation",
        "<",
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
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0003\n\u0002\u0008\u0003\u0008&\u0018\u00002\u00020\u00012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0002B\u001f\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0010\u0010\u0006\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0003\u0018\u00010\u0002\u00a2\u0006\u0002\u0010\u0007J$\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u00022\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u00032\n\u0010\u0006\u001a\u0006\u0012\u0002\u0008\u00030\u0002H\u0016J\u001a\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u00022\n\u0010\u0006\u001a\u0006\u0012\u0002\u0008\u00030\u0002H\u0016J\u001e\u0010\u0015\u001a\u0004\u0018\u00010\u00032\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u00032\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0018H$J\u0012\u0010\u0019\u001a\u00020\u00132\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0003H\u0016J\u0010\u0010\u001a\u001a\u00020\u00132\u0006\u0010\u0017\u001a\u00020\u0018H\u0016R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0018\u0010\n\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0003\u0018\u00010\u0002X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0006\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0003\u0018\u00010\u00028\u0004@\u0004X\u0085\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u00020\t8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\rR\u0019\u0010\u000e\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u00028F\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\u0010R\u0012\u0010\u0011\u001a\u00020\u00058\u0004@\u0004X\u0085\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001b"
    }
    d2 = {
        "Lkotlin/coroutines/experimental/jvm/internal/CoroutineImpl;",
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/coroutines/experimental/Continuation;",
        "",
        "arity",
        "",
        "completion",
        "(ILkotlin/coroutines/experimental/Continuation;)V",
        "_context",
        "Lkotlin/coroutines/experimental/CoroutineContext;",
        "_facade",
        "context",
        "getContext",
        "()Lkotlin/coroutines/experimental/CoroutineContext;",
        "facade",
        "getFacade",
        "()Lkotlin/coroutines/experimental/Continuation;",
        "label",
        "create",
        "",
        "value",
        "doResume",
        "data",
        "exception",
        "",
        "resume",
        "resumeWithException",
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
.field private final _context:Lkotlin/coroutines/experimental/CoroutineContext;

.field private _facade:Lkotlin/coroutines/experimental/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/coroutines/experimental/Continuation",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected completion:Lkotlin/coroutines/experimental/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/coroutines/experimental/Continuation",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field protected label:I
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILkotlin/coroutines/experimental/Continuation;)V
    .locals 7
    .param p2    # Lkotlin/coroutines/experimental/Continuation;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/coroutines/experimental/Continuation",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 17
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, v0

    .line 21
    move v4, v1

    invoke-direct {v3, v4}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lkotlin/coroutines/experimental/jvm/internal/CoroutineImpl;->completion:Lkotlin/coroutines/experimental/Continuation;

    .line 26
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lkotlin/coroutines/experimental/jvm/internal/CoroutineImpl;->completion:Lkotlin/coroutines/experimental/Continuation;

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    :goto_0
    iput v4, v3, Lkotlin/coroutines/experimental/jvm/internal/CoroutineImpl;->label:I

    .line 28
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lkotlin/coroutines/experimental/jvm/internal/CoroutineImpl;->completion:Lkotlin/coroutines/experimental/Continuation;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    if-eqz v5, :cond_1

    invoke-interface {v4}, Lkotlin/coroutines/experimental/Continuation;->getContext()Lkotlin/coroutines/experimental/CoroutineContext;

    move-result-object v4

    :goto_1
    iput-object v4, v3, Lkotlin/coroutines/experimental/jvm/internal/CoroutineImpl;->_context:Lkotlin/coroutines/experimental/CoroutineContext;

    return-void

    .line 26
    :cond_0
    const/4 v4, -0x1

    goto :goto_0

    .line 28
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method


# virtual methods
.method public create(Ljava/lang/Object;Lkotlin/coroutines/experimental/Continuation;)Lkotlin/coroutines/experimental/Continuation;
    .locals 7
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/experimental/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/experimental/Continuation",
            "<*>;)",
            "Lkotlin/coroutines/experimental/Continuation",
            "<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v2

    const-string v4, "completion"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    new-instance v3, Ljava/lang/IllegalStateException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "create(Any?;Continuation) has not been overridden"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Throwable;

    throw v3
.end method

.method public create(Lkotlin/coroutines/experimental/Continuation;)Lkotlin/coroutines/experimental/Continuation;
    .locals 6
    .param p1    # Lkotlin/coroutines/experimental/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/experimental/Continuation",
            "<*>;)",
            "Lkotlin/coroutines/experimental/Continuation",
            "<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    const-string v3, "completion"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    new-instance v2, Ljava/lang/IllegalStateException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "create(Continuation) has not been overridden"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2
.end method

.method protected abstract doResume(Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/Object;
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
.end method

.method public getContext()Lkotlin/coroutines/experimental/CoroutineContext;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 31
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lkotlin/coroutines/experimental/jvm/internal/CoroutineImpl;->_context:Lkotlin/coroutines/experimental/CoroutineContext;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    if-nez v2, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    move-object v0, v1

    return-object v0
.end method

.method public final getFacade()Lkotlin/coroutines/experimental/Continuation;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/coroutines/experimental/Continuation",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 36
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lkotlin/coroutines/experimental/jvm/internal/CoroutineImpl;->_facade:Lkotlin/coroutines/experimental/Continuation;

    if-nez v1, :cond_1

    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lkotlin/coroutines/experimental/jvm/internal/CoroutineImpl;->_context:Lkotlin/coroutines/experimental/CoroutineContext;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    if-nez v3, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    move-object v3, v0

    check-cast v3, Lkotlin/coroutines/experimental/Continuation;

    invoke-static {v2, v3}, Lkotlin/coroutines/experimental/jvm/internal/CoroutineIntrinsics;->interceptContinuationIfNeeded(Lkotlin/coroutines/experimental/CoroutineContext;Lkotlin/coroutines/experimental/Continuation;)Lkotlin/coroutines/experimental/Continuation;

    move-result-object v2

    iput-object v2, v1, Lkotlin/coroutines/experimental/jvm/internal/CoroutineImpl;->_facade:Lkotlin/coroutines/experimental/Continuation;

    .line 37
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Lkotlin/coroutines/experimental/jvm/internal/CoroutineImpl;->_facade:Lkotlin/coroutines/experimental/Continuation;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    if-nez v2, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    move-object v0, v1

    return-object v0
.end method

.method public resume(Ljava/lang/Object;)V
    .locals 10
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 41
    move-object v0, p0

    move-object v1, p1

    move-object v5, v0

    iget-object v5, v5, Lkotlin/coroutines/experimental/jvm/internal/CoroutineImpl;->completion:Lkotlin/coroutines/experimental/Continuation;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    if-nez v6, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    move-object v2, v5

    nop

    .line 42
    move-object v5, v0

    move-object v6, v1

    const/4 v7, 0x0

    :try_start_0
    invoke-virtual {v5, v6, v7}, Lkotlin/coroutines/experimental/jvm/internal/CoroutineImpl;->doResume(Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v5

    .line 41
    move-object v4, v5

    move-object v5, v4

    invoke-static {}, Lkotlin/coroutines/experimental/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v6

    if-eq v5, v6, :cond_1

    move-object v5, v2

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    if-nez v6, :cond_2

    new-instance v6, Lkotlin/TypeCastException;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    const-string v8, "null cannot be cast to non-null type kotlin.coroutines.experimental.Continuation<kotlin.Any?>"

    invoke-direct {v7, v8}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v5

    move-object v4, v5

    move-object v5, v2

    move-object v6, v4

    invoke-interface {v5, v6}, Lkotlin/coroutines/experimental/Continuation;->resumeWithException(Ljava/lang/Throwable;)V

    .line 44
    :cond_1
    :goto_0
    return-void

    .line 41
    :cond_2
    move-object v6, v4

    :try_start_1
    invoke-interface {v5, v6}, Lkotlin/coroutines/experimental/Continuation;->resume(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

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

    move-object v5, v1

    const-string v6, "exception"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    move-object v5, v0

    iget-object v5, v5, Lkotlin/coroutines/experimental/jvm/internal/CoroutineImpl;->completion:Lkotlin/coroutines/experimental/Continuation;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    if-nez v6, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    move-object v2, v5

    nop

    .line 48
    move-object v5, v0

    const/4 v6, 0x0

    move-object v7, v1

    :try_start_0
    invoke-virtual {v5, v6, v7}, Lkotlin/coroutines/experimental/jvm/internal/CoroutineImpl;->doResume(Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v5

    .line 47
    move-object v4, v5

    move-object v5, v4

    invoke-static {}, Lkotlin/coroutines/experimental/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v6

    if-eq v5, v6, :cond_1

    move-object v5, v2

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    if-nez v6, :cond_2

    new-instance v6, Lkotlin/TypeCastException;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    const-string v8, "null cannot be cast to non-null type kotlin.coroutines.experimental.Continuation<kotlin.Any?>"

    invoke-direct {v7, v8}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v5

    move-object v4, v5

    move-object v5, v2

    move-object v6, v4

    invoke-interface {v5, v6}, Lkotlin/coroutines/experimental/Continuation;->resumeWithException(Ljava/lang/Throwable;)V

    .line 50
    :cond_1
    :goto_0
    return-void

    .line 47
    :cond_2
    move-object v6, v4

    :try_start_1
    invoke-interface {v5, v6}, Lkotlin/coroutines/experimental/Continuation;->resume(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
