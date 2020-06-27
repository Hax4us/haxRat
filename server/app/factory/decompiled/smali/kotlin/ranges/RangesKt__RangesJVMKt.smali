.class Lkotlin/ranges/RangesKt__RangesJVMKt;
.super Ljava/lang/Object;
.source "RangesJVM.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0002\u001a\u001b\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002H\u0087\u0002\u00a8\u0006\u0004"
    }
    d2 = {
        "rangeTo",
        "Lkotlin/ranges/ClosedFloatingPointRange;",
        "",
        "that",
        "kotlin-stdlib"
    }
    k = 0x5
    mv = {
        0x1,
        0x1,
        0xa
    }
    xi = 0x1
    xs = "kotlin/ranges/RangesKt"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final rangeTo(FF)Lkotlin/ranges/ClosedFloatingPointRange;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF)",
            "Lkotlin/ranges/ClosedFloatingPointRange",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .annotation build Lkotlin/SinceKotlin;
        version = "1.1"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 51
    move v0, p0

    move v1, p1

    new-instance v2, Lkotlin/ranges/ClosedFloatRange;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move v4, v0

    move v5, v1

    invoke-direct {v3, v4, v5}, Lkotlin/ranges/ClosedFloatRange;-><init>(FF)V

    check-cast v2, Lkotlin/ranges/ClosedFloatingPointRange;

    move-object v0, v2

    return-object v0
.end method
