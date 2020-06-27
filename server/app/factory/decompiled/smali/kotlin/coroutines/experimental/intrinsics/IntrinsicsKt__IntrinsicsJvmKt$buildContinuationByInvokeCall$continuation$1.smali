.class public final Lkotlin/coroutines/experimental/intrinsics/IntrinsicsKt__IntrinsicsJvmKt$buildContinuationByInvokeCall$continuation$1;
.super Ljava/lang/Object;
.source "IntrinsicsJvm.kt"

# interfaces
.implements Lkotlin/coroutines/experimental/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/coroutines/experimental/intrinsics/IntrinsicsKt__IntrinsicsJvmKt;->buildContinuationByInvokeCall$IntrinsicsKt__IntrinsicsJvmKt(Lkotlin/coroutines/experimental/Continuation;Lkotlin/jvm/functions/Function0;)Lkotlin/coroutines/experimental/Continuation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/coroutines/experimental/Continuation",
        "<",
        "Lkotlin/Unit;",
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
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0003\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0015\u0010\u0008\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u0002H\u0016\u00a2\u0006\u0002\u0010\nJ\u0010\u0010\u000b\u001a\u00020\u00022\u0006\u0010\u000c\u001a\u00020\rH\u0016R\u0014\u0010\u0004\u001a\u00020\u00058VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u000e"
    }
    d2 = {
        "kotlin/coroutines/experimental/intrinsics/IntrinsicsKt__IntrinsicsJvmKt$buildContinuationByInvokeCall$continuation$1",
        "Lkotlin/coroutines/experimental/Continuation;",
        "",
        "(Lkotlin/coroutines/experimental/Continuation;Lkotlin/jvm/functions/Function0;)V",
        "context",
        "Lkotlin/coroutines/experimental/CoroutineContext;",
        "getContext",
        "()Lkotlin/coroutines/experimental/CoroutineContext;",
        "resume",
        "value",
        "(Lkotlin/Unit;)V",
        "resumeWithException",
        "exception",
        "",
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
.field final synthetic $block:Lkotlin/jvm/functions/Function0;

.field final synthetic $completion:Lkotlin/coroutines/experimental/Continuation;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/experimental/Continuation;Lkotlin/jvm/functions/Function0;)V
    .locals 5

    .prologue
    .line 97
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lkotlin/coroutines/experimental/intrinsics/IntrinsicsKt__IntrinsicsJvmKt$buildContinuationByInvokeCall$continuation$1;->$completion:Lkotlin/coroutines/experimental/Continuation;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lkotlin/coroutines/experimental/intrinsics/IntrinsicsKt__IntrinsicsJvmKt$buildContinuationByInvokeCall$continuation$1;->$block:Lkotlin/jvm/functions/Function0;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContext()Lkotlin/coroutines/experimental/CoroutineContext;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 99
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lkotlin/coroutines/experimental/intrinsics/IntrinsicsKt__IntrinsicsJvmKt$buildContinuationByInvokeCall$continuation$1;->$completion:Lkotlin/coroutines/experimental/Continuation;

    invoke-interface {v1}, Lkotlin/coroutines/experimental/Continuation;->getContext()Lkotlin/coroutines/experimental/CoroutineContext;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public bridge synthetic resume(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 97
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Lkotlin/Unit;

    invoke-virtual {v2, v3}, Lkotlin/coroutines/experimental/intrinsics/IntrinsicsKt__IntrinsicsJvmKt$buildContinuationByInvokeCall$continuation$1;->resume(Lkotlin/Unit;)V

    return-void
.end method

.method public resume(Lkotlin/Unit;)V
    .locals 9
    .param p1    # Lkotlin/Unit;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v4, v1

    const-string v5, "value"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    move-object v4, v0

    iget-object v4, v4, Lkotlin/coroutines/experimental/intrinsics/IntrinsicsKt__IntrinsicsJvmKt$buildContinuationByInvokeCall$continuation$1;->$completion:Lkotlin/coroutines/experimental/Continuation;

    move-object v2, v4

    nop

    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Lkotlin/coroutines/experimental/intrinsics/IntrinsicsKt__IntrinsicsJvmKt$buildContinuationByInvokeCall$continuation$1;->$block:Lkotlin/jvm/functions/Function0;

    invoke-interface {v4}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    move-object v4, v3

    invoke-static {}, Lkotlin/coroutines/experimental/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v5

    if-eq v4, v5, :cond_0

    move-object v4, v2

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    if-nez v5, :cond_1

    new-instance v5, Lkotlin/TypeCastException;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const-string v7, "null cannot be cast to non-null type kotlin.coroutines.experimental.Continuation<kotlin.Any?>"

    invoke-direct {v6, v7}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v4

    move-object v3, v4

    move-object v4, v2

    move-object v5, v3

    invoke-interface {v4, v5}, Lkotlin/coroutines/experimental/Continuation;->resumeWithException(Ljava/lang/Throwable;)V

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    move-object v5, v3

    :try_start_1
    invoke-interface {v4, v5}, Lkotlin/coroutines/experimental/Continuation;->resume(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
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

    .line 106
    move-object v2, v0

    iget-object v2, v2, Lkotlin/coroutines/experimental/intrinsics/IntrinsicsKt__IntrinsicsJvmKt$buildContinuationByInvokeCall$continuation$1;->$completion:Lkotlin/coroutines/experimental/Continuation;

    move-object v3, v1

    invoke-interface {v2, v3}, Lkotlin/coroutines/experimental/Continuation;->resumeWithException(Ljava/lang/Throwable;)V

    .line 107
    return-void
.end method
