.class public final Lkotlin/coroutines/experimental/jvm/internal/CoroutineIntrinsics;
.super Ljava/lang/Object;
.source "CoroutineIntrinsics.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001a*\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\u0008\u0000\u0010\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001H\u0000\u001a \u0010\u0006\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\u0008\u0000\u0010\u00022\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\u00a8\u0006\u0007"
    }
    d2 = {
        "interceptContinuationIfNeeded",
        "Lkotlin/coroutines/experimental/Continuation;",
        "T",
        "context",
        "Lkotlin/coroutines/experimental/CoroutineContext;",
        "continuation",
        "normalizeContinuation",
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
    name = "CoroutineIntrinsics"
.end annotation


# direct methods
.method public static final interceptContinuationIfNeeded(Lkotlin/coroutines/experimental/CoroutineContext;Lkotlin/coroutines/experimental/Continuation;)Lkotlin/coroutines/experimental/Continuation;
    .locals 5
    .param p0    # Lkotlin/coroutines/experimental/CoroutineContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/coroutines/experimental/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/coroutines/experimental/CoroutineContext;",
            "Lkotlin/coroutines/experimental/Continuation",
            "<-TT;>;)",
            "Lkotlin/coroutines/experimental/Continuation",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string v3, "context"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v1

    const-string v3, "continuation"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    move-object v2, v0

    sget-object v3, Lkotlin/coroutines/experimental/ContinuationInterceptor;->Key:Lkotlin/coroutines/experimental/ContinuationInterceptor$Key;

    check-cast v3, Lkotlin/coroutines/experimental/CoroutineContext$Key;

    invoke-interface {v2, v3}, Lkotlin/coroutines/experimental/CoroutineContext;->get(Lkotlin/coroutines/experimental/CoroutineContext$Key;)Lkotlin/coroutines/experimental/CoroutineContext$Element;

    move-result-object v2

    check-cast v2, Lkotlin/coroutines/experimental/ContinuationInterceptor;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    if-eqz v3, :cond_0

    move-object v3, v1

    invoke-interface {v2, v3}, Lkotlin/coroutines/experimental/ContinuationInterceptor;->interceptContinuation(Lkotlin/coroutines/experimental/Continuation;)Lkotlin/coroutines/experimental/Continuation;

    move-result-object v2

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    if-eqz v3, :cond_0

    :goto_0
    move-object v0, v2

    return-object v0

    :cond_0
    move-object v2, v1

    goto :goto_0
.end method

.method public static final normalizeContinuation(Lkotlin/coroutines/experimental/Continuation;)Lkotlin/coroutines/experimental/Continuation;
    .locals 4
    .param p0    # Lkotlin/coroutines/experimental/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/coroutines/experimental/Continuation",
            "<-TT;>;)",
            "Lkotlin/coroutines/experimental/Continuation",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, v0

    const-string v2, "continuation"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    move-object v1, v0

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    instance-of v2, v2, Lkotlin/coroutines/experimental/jvm/internal/CoroutineImpl;

    if-nez v2, :cond_0

    const/4 v1, 0x0

    :cond_0
    check-cast v1, Lkotlin/coroutines/experimental/jvm/internal/CoroutineImpl;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lkotlin/coroutines/experimental/jvm/internal/CoroutineImpl;->getFacade()Lkotlin/coroutines/experimental/Continuation;

    move-result-object v1

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    if-eqz v2, :cond_1

    :goto_0
    move-object v0, v1

    return-object v0

    :cond_1
    move-object v1, v0

    goto :goto_0
.end method
