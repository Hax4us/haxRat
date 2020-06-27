.class public final Lkotlin/SuspendKt;
.super Ljava/lang/Object;
.source "Suspend.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u001aM\u0010\u0000\u001a\u0018\u0008\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00030\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u0001\"\u0004\u0008\u0000\u0010\u00032\u001e\u0008\u0008\u0010\u0005\u001a\u0018\u0008\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00030\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u0001H\u0087\u0008\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0006\u0082\u0002\t\n\u0007\u0008\u0091\u001e\u0018\u00020\u0001\u00a8\u0006\u0007"
    }
    d2 = {
        "suspend",
        "Lkotlin/Function1;",
        "Lkotlin/coroutines/experimental/Continuation;",
        "R",
        "",
        "block",
        "(Lkotlin/jvm/functions/Function1;)Lkotlin/jvm/functions/Function1;",
        "kotlin-stdlib"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0xa
    }
.end annotation


# direct methods
.method private static final suspend(Lkotlin/jvm/functions/Function1;)Lkotlin/jvm/functions/Function1;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function1",
            "<-",
            "Lkotlin/coroutines/experimental/Continuation",
            "<-TR;>;+",
            "Ljava/lang/Object;",
            ">;)",
            "Lkotlin/jvm/functions/Function1",
            "<",
            "Lkotlin/coroutines/experimental/Continuation",
            "<-TR;>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lkotlin/SinceKotlin;
        version = "1.2"
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .prologue
    .line 14
    move-object v0, p0

    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method
