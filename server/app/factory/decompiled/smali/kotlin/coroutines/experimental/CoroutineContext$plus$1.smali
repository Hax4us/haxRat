.class final Lkotlin/coroutines/experimental/CoroutineContext$plus$1;
.super Lkotlin/jvm/internal/Lambda;
.source "CoroutineContext.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/coroutines/experimental/CoroutineContext$DefaultImpls;->plus(Lkotlin/coroutines/experimental/CoroutineContext;Lkotlin/coroutines/experimental/CoroutineContext;)Lkotlin/coroutines/experimental/CoroutineContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2",
        "<",
        "Lkotlin/coroutines/experimental/CoroutineContext;",
        "Lkotlin/coroutines/experimental/CoroutineContext$Element;",
        "Lkotlin/coroutines/experimental/CoroutineContext;",
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
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "Lkotlin/coroutines/experimental/CoroutineContext;",
        "acc",
        "element",
        "Lkotlin/coroutines/experimental/CoroutineContext$Element;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xa
    }
.end annotation


# static fields
.field public static final INSTANCE:Lkotlin/coroutines/experimental/CoroutineContext$plus$1;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lkotlin/coroutines/experimental/CoroutineContext$plus$1;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lkotlin/coroutines/experimental/CoroutineContext$plus$1;-><init>()V

    sput-object v0, Lkotlin/coroutines/experimental/CoroutineContext$plus$1;->INSTANCE:Lkotlin/coroutines/experimental/CoroutineContext$plus$1;

    return-void
.end method

.method constructor <init>()V
    .locals 3

    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 14
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    check-cast v4, Lkotlin/coroutines/experimental/CoroutineContext;

    move-object v5, v2

    check-cast v5, Lkotlin/coroutines/experimental/CoroutineContext$Element;

    invoke-virtual {v3, v4, v5}, Lkotlin/coroutines/experimental/CoroutineContext$plus$1;->invoke(Lkotlin/coroutines/experimental/CoroutineContext;Lkotlin/coroutines/experimental/CoroutineContext$Element;)Lkotlin/coroutines/experimental/CoroutineContext;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method public final invoke(Lkotlin/coroutines/experimental/CoroutineContext;Lkotlin/coroutines/experimental/CoroutineContext$Element;)Lkotlin/coroutines/experimental/CoroutineContext;
    .locals 13
    .param p1    # Lkotlin/coroutines/experimental/CoroutineContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/experimental/CoroutineContext$Element;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, v1

    const-string v7, "acc"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v6, v2

    const-string v7, "element"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    move-object v6, v1

    move-object v7, v2

    invoke-interface {v7}, Lkotlin/coroutines/experimental/CoroutineContext$Element;->getKey()Lkotlin/coroutines/experimental/CoroutineContext$Key;

    move-result-object v7

    invoke-interface {v6, v7}, Lkotlin/coroutines/experimental/CoroutineContext;->minusKey(Lkotlin/coroutines/experimental/CoroutineContext$Key;)Lkotlin/coroutines/experimental/CoroutineContext;

    move-result-object v6

    move-object v3, v6

    .line 36
    move-object v6, v3

    sget-object v7, Lkotlin/coroutines/experimental/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/experimental/EmptyCoroutineContext;

    if-ne v6, v7, :cond_0

    move-object v6, v2

    check-cast v6, Lkotlin/coroutines/experimental/CoroutineContext;

    :goto_0
    move-object v0, v6

    return-object v0

    .line 38
    :cond_0
    move-object v6, v3

    sget-object v7, Lkotlin/coroutines/experimental/ContinuationInterceptor;->Key:Lkotlin/coroutines/experimental/ContinuationInterceptor$Key;

    check-cast v7, Lkotlin/coroutines/experimental/CoroutineContext$Key;

    invoke-interface {v6, v7}, Lkotlin/coroutines/experimental/CoroutineContext;->get(Lkotlin/coroutines/experimental/CoroutineContext$Key;)Lkotlin/coroutines/experimental/CoroutineContext$Element;

    move-result-object v6

    check-cast v6, Lkotlin/coroutines/experimental/ContinuationInterceptor;

    move-object v4, v6

    .line 39
    move-object v6, v4

    if-nez v6, :cond_1

    new-instance v6, Lkotlin/coroutines/experimental/CombinedContext;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v8, v3

    move-object v9, v2

    invoke-direct {v7, v8, v9}, Lkotlin/coroutines/experimental/CombinedContext;-><init>(Lkotlin/coroutines/experimental/CoroutineContext;Lkotlin/coroutines/experimental/CoroutineContext$Element;)V

    .line 41
    :goto_1
    check-cast v6, Lkotlin/coroutines/experimental/CoroutineContext;

    goto :goto_0

    .line 40
    :cond_1
    move-object v6, v3

    sget-object v7, Lkotlin/coroutines/experimental/ContinuationInterceptor;->Key:Lkotlin/coroutines/experimental/ContinuationInterceptor$Key;

    check-cast v7, Lkotlin/coroutines/experimental/CoroutineContext$Key;

    invoke-interface {v6, v7}, Lkotlin/coroutines/experimental/CoroutineContext;->minusKey(Lkotlin/coroutines/experimental/CoroutineContext$Key;)Lkotlin/coroutines/experimental/CoroutineContext;

    move-result-object v6

    move-object v5, v6

    .line 41
    move-object v6, v5

    sget-object v7, Lkotlin/coroutines/experimental/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/experimental/EmptyCoroutineContext;

    if-ne v6, v7, :cond_2

    new-instance v6, Lkotlin/coroutines/experimental/CombinedContext;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v8, v2

    check-cast v8, Lkotlin/coroutines/experimental/CoroutineContext;

    move-object v9, v4

    check-cast v9, Lkotlin/coroutines/experimental/CoroutineContext$Element;

    invoke-direct {v7, v8, v9}, Lkotlin/coroutines/experimental/CombinedContext;-><init>(Lkotlin/coroutines/experimental/CoroutineContext;Lkotlin/coroutines/experimental/CoroutineContext$Element;)V

    goto :goto_1

    .line 42
    :cond_2
    new-instance v6, Lkotlin/coroutines/experimental/CombinedContext;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    new-instance v8, Lkotlin/coroutines/experimental/CombinedContext;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v10, v5

    move-object v11, v2

    invoke-direct {v9, v10, v11}, Lkotlin/coroutines/experimental/CombinedContext;-><init>(Lkotlin/coroutines/experimental/CoroutineContext;Lkotlin/coroutines/experimental/CoroutineContext$Element;)V

    check-cast v8, Lkotlin/coroutines/experimental/CoroutineContext;

    move-object v9, v4

    check-cast v9, Lkotlin/coroutines/experimental/CoroutineContext$Element;

    invoke-direct {v7, v8, v9}, Lkotlin/coroutines/experimental/CombinedContext;-><init>(Lkotlin/coroutines/experimental/CoroutineContext;Lkotlin/coroutines/experimental/CoroutineContext$Element;)V

    goto :goto_1
.end method
