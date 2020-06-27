.class Lkotlin/ranges/RangesKt__RangesKt;
.super Lkotlin/ranges/RangesKt__RangesJVMKt;
.source "Ranges.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000,\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0004\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000f\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0006\n\u0000\u001a\u0018\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0000\u001a0\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u0002H\u00080\u0007\"\u000e\u0008\u0000\u0010\u0008*\u0008\u0012\u0004\u0012\u0002H\u00080\t*\u0002H\u00082\u0006\u0010\n\u001a\u0002H\u0008H\u0086\u0002\u00a2\u0006\u0002\u0010\u000b\u001a\u001b\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000c*\u00020\r2\u0006\u0010\n\u001a\u00020\rH\u0087\u0002\u00a8\u0006\u000e"
    }
    d2 = {
        "checkStepIsPositive",
        "",
        "isPositive",
        "",
        "step",
        "",
        "rangeTo",
        "Lkotlin/ranges/ClosedRange;",
        "T",
        "",
        "that",
        "(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lkotlin/ranges/ClosedRange;",
        "Lkotlin/ranges/ClosedFloatingPointRange;",
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
    xs = "kotlin/ranges/RangesKt"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lkotlin/ranges/RangesKt__RangesJVMKt;-><init>()V

    return-void
.end method

.method public static final checkStepIsPositive(ZLjava/lang/Number;)V
    .locals 7
    .param p1    # Ljava/lang/Number;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    move v0, p0

    move-object v1, p1

    move-object v2, v1

    const-string v3, "step"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    move v2, v0

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Step must be positive, was: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x2e

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2

    .line 103
    :cond_0
    return-void
.end method

.method public static final rangeTo(DD)Lkotlin/ranges/ClosedFloatingPointRange;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DD)",
            "Lkotlin/ranges/ClosedFloatingPointRange",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .annotation build Lkotlin/SinceKotlin;
        version = "1.1"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 98
    move-wide v0, p0

    move-wide v2, p2

    new-instance v4, Lkotlin/ranges/ClosedDoubleRange;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-wide v6, v0

    move-wide v8, v2

    invoke-direct {v5, v6, v7, v8, v9}, Lkotlin/ranges/ClosedDoubleRange;-><init>(DD)V

    check-cast v4, Lkotlin/ranges/ClosedFloatingPointRange;

    move-object v0, v4

    return-object v0
.end method

.method public static final rangeTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lkotlin/ranges/ClosedRange;
    .locals 7
    .param p0    # Ljava/lang/Comparable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Comparable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable",
            "<-TT;>;>(TT;TT;)",
            "Lkotlin/ranges/ClosedRange",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string v3, "$receiver"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v1

    const-string v3, "that"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    new-instance v2, Lkotlin/ranges/ComparableRange;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lkotlin/ranges/ComparableRange;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    check-cast v2, Lkotlin/ranges/ClosedRange;

    move-object v0, v2

    return-object v0
.end method
