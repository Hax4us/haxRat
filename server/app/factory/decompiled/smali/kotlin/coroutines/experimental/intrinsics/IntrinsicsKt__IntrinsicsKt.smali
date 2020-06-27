.class Lkotlin/coroutines/experimental/intrinsics/IntrinsicsKt__IntrinsicsKt;
.super Lkotlin/coroutines/experimental/intrinsics/IntrinsicsKt__IntrinsicsJvmKt;
.source "Intrinsics.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u0014\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0004\u001a5\u0010\u0000\u001a\u0002H\u0001\"\u0004\u0008\u0000\u0010\u00012\u001c\u0008\u0004\u0010\u0002\u001a\u0016\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00010\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0003H\u0087H\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0006\u001a5\u0010\u0007\u001a\u0002H\u0001\"\u0004\u0008\u0000\u0010\u00012\u001c\u0008\u0004\u0010\u0002\u001a\u0016\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00010\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0003H\u0087H\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0006\u001a\u001f\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u0002H\u00010\u0004\"\u0004\u0008\u0000\u0010\u0001*\u0008\u0012\u0004\u0012\u0002H\u00010\u0004H\u0087\u0008\u0082\u0002\u0004\n\u0002\u0008\t\u00a8\u0006\t"
    }
    d2 = {
        "suspendCoroutineOrReturn",
        "T",
        "block",
        "Lkotlin/Function1;",
        "Lkotlin/coroutines/experimental/Continuation;",
        "",
        "(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/experimental/Continuation;)Ljava/lang/Object;",
        "suspendCoroutineUninterceptedOrReturn",
        "intercepted",
        "kotlin-stdlib"
    }
    k = 0x5
    mv = {
        0x1,
        0x1,
        0xa
    }
    xi = 0x1
    xs = "kotlin/coroutines/experimental/intrinsics/IntrinsicsKt"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lkotlin/coroutines/experimental/intrinsics/IntrinsicsKt__IntrinsicsJvmKt;-><init>()V

    return-void
.end method

.method private static final intercepted(Lkotlin/coroutines/experimental/Continuation;)Lkotlin/coroutines/experimental/Continuation;
    .locals 6
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

    .annotation build Lkotlin/SinceKotlin;
        version = "1.2"
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .prologue
    .line 53
    move-object v0, p0

    new-instance v2, Lkotlin/NotImplementedError;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Implementation of intercepted is intrinsic"

    invoke-direct {v3, v4}, Lkotlin/NotImplementedError;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2
.end method

.method private static final suspendCoroutineOrReturn(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/experimental/Continuation;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function1",
            "<-",
            "Lkotlin/coroutines/experimental/Continuation",
            "<-TT;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/experimental/Continuation",
            "<-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lkotlin/SinceKotlin;
        version = "1.1"
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .prologue
    .line 34
    move-object v0, p0

    move-object v1, p1

    const/4 v8, 0x0

    invoke-static {v8}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    move-object v8, v1

    move-object v3, v8

    move-object v8, v0

    move-object v9, v3

    move-object v4, v9

    move-object v5, v8

    move-object v8, v4

    invoke-static {v8}, Lkotlin/coroutines/experimental/jvm/internal/CoroutineIntrinsics;->normalizeContinuation(Lkotlin/coroutines/experimental/Continuation;)Lkotlin/coroutines/experimental/Continuation;

    move-result-object v8

    move-object v6, v8

    move-object v8, v5

    move-object v9, v6

    invoke-interface {v8, v9}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    const/4 v9, 0x1

    invoke-static {v9}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    move-object v0, v8

    return-object v0
.end method

.method private static final suspendCoroutineUninterceptedOrReturn(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/experimental/Continuation;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function1",
            "<-",
            "Lkotlin/coroutines/experimental/Continuation",
            "<-TT;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/experimental/Continuation",
            "<-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lkotlin/SinceKotlin;
        version = "1.2"
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .prologue
    .line 45
    move-object v0, p0

    move-object v1, p1

    new-instance v3, Lkotlin/NotImplementedError;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "Implementation of suspendCoroutineUninterceptedOrReturn is intrinsic"

    invoke-direct {v4, v5}, Lkotlin/NotImplementedError;-><init>(Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Throwable;

    throw v3
.end method
