.class public final Lkotlin/coroutines/experimental/CoroutineContext$Element$DefaultImpls;
.super Ljava/lang/Object;
.source "CoroutineContext.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/coroutines/experimental/CoroutineContext$Element;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xa
    }
.end annotation


# direct methods
.method public static fold(Lkotlin/coroutines/experimental/CoroutineContext$Element;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;
    .locals 6
    .param p2    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/coroutines/experimental/CoroutineContext$Element;",
            "TR;",
            "Lkotlin/jvm/functions/Function2",
            "<-TR;-",
            "Lkotlin/coroutines/experimental/CoroutineContext$Element;",
            "+TR;>;)TR;"
        }
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v2

    const-string v4, "operation"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    move-object v3, v2

    move-object v4, v1

    move-object v5, v0

    invoke-interface {v3, v4, v5}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method public static get(Lkotlin/coroutines/experimental/CoroutineContext$Element;Lkotlin/coroutines/experimental/CoroutineContext$Key;)Lkotlin/coroutines/experimental/CoroutineContext$Element;
    .locals 7
    .param p1    # Lkotlin/coroutines/experimental/CoroutineContext$Key;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lkotlin/coroutines/experimental/CoroutineContext$Element;",
            ">(",
            "Lkotlin/coroutines/experimental/CoroutineContext$Element;",
            "Lkotlin/coroutines/experimental/CoroutineContext$Key",
            "<TE;>;)TE;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    const-string v3, "key"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    move-object v2, v0

    invoke-interface {v2}, Lkotlin/coroutines/experimental/CoroutineContext$Element;->getKey()Lkotlin/coroutines/experimental/CoroutineContext$Key;

    move-result-object v2

    move-object v3, v1

    if-ne v2, v3, :cond_0

    move-object v2, v0

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    if-nez v3, :cond_1

    new-instance v3, Lkotlin/TypeCastException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "null cannot be cast to non-null type E"

    invoke-direct {v4, v5}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    const/4 v2, 0x0

    :cond_1
    move-object v0, v2

    return-object v0
.end method

.method public static minusKey(Lkotlin/coroutines/experimental/CoroutineContext$Element;Lkotlin/coroutines/experimental/CoroutineContext$Key;)Lkotlin/coroutines/experimental/CoroutineContext;
    .locals 4
    .param p1    # Lkotlin/coroutines/experimental/CoroutineContext$Key;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/experimental/CoroutineContext$Element;",
            "Lkotlin/coroutines/experimental/CoroutineContext$Key",
            "<*>;)",
            "Lkotlin/coroutines/experimental/CoroutineContext;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    const-string v3, "key"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    move-object v2, v0

    invoke-interface {v2}, Lkotlin/coroutines/experimental/CoroutineContext$Element;->getKey()Lkotlin/coroutines/experimental/CoroutineContext$Key;

    move-result-object v2

    move-object v3, v1

    if-ne v2, v3, :cond_0

    sget-object v2, Lkotlin/coroutines/experimental/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/experimental/EmptyCoroutineContext;

    check-cast v2, Lkotlin/coroutines/experimental/CoroutineContext;

    :goto_0
    move-object v0, v2

    return-object v0

    :cond_0
    move-object v2, v0

    check-cast v2, Lkotlin/coroutines/experimental/CoroutineContext;

    goto :goto_0
.end method

.method public static plus(Lkotlin/coroutines/experimental/CoroutineContext$Element;Lkotlin/coroutines/experimental/CoroutineContext;)Lkotlin/coroutines/experimental/CoroutineContext;
    .locals 4
    .param p1    # Lkotlin/coroutines/experimental/CoroutineContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    const-string v3, "context"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v0

    check-cast v2, Lkotlin/coroutines/experimental/CoroutineContext;

    move-object v3, v1

    invoke-static {v2, v3}, Lkotlin/coroutines/experimental/CoroutineContext$DefaultImpls;->plus(Lkotlin/coroutines/experimental/CoroutineContext;Lkotlin/coroutines/experimental/CoroutineContext;)Lkotlin/coroutines/experimental/CoroutineContext;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method
