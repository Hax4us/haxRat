.class Lkotlin/PreconditionsKt__AssertionsJVMKt;
.super Ljava/lang/Object;
.source "AssertionsJVM.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u0018\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\u001a\u0011\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0087\u0008\u001a\u001f\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005H\u0087\u0008\u00a8\u0006\u0007"
    }
    d2 = {
        "assert",
        "",
        "value",
        "",
        "lazyMessage",
        "Lkotlin/Function0;",
        "",
        "kotlin-stdlib"
    }
    k = 0x5
    mv = {
        0x1,
        0x1,
        0xa
    }
    xi = 0x1
    xs = "kotlin/PreconditionsKt"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final assert(Z)V
    .locals 8
    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .prologue
    .line 23
    move v0, p0

    sget-boolean v4, Lkotlin/_Assertions;->ENABLED:Z

    if-eqz v4, :cond_0

    move v4, v0

    if-nez v4, :cond_0

    const-string v4, "Assertion failed"

    move-object v3, v4

    new-instance v4, Ljava/lang/AssertionError;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v3

    invoke-direct {v5, v6}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    check-cast v4, Ljava/lang/Throwable;

    throw v4

    .line 24
    :cond_0
    return-void
.end method

.method private static final assert(ZLkotlin/jvm/functions/Function0;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/jvm/functions/Function0",
            "<+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .prologue
    .line 32
    move v0, p0

    move-object v1, p1

    sget-boolean v4, Lkotlin/_Assertions;->ENABLED:Z

    if-eqz v4, :cond_0

    .line 33
    move v4, v0

    if-nez v4, :cond_0

    .line 34
    move-object v4, v1

    invoke-interface {v4}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    .line 35
    new-instance v4, Ljava/lang/AssertionError;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v3

    invoke-direct {v5, v6}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    check-cast v4, Ljava/lang/Throwable;

    throw v4

    .line 38
    :cond_0
    return-void
.end method
