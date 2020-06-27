.class public final Lkotlin/system/TimingKt;
.super Ljava/lang/Object;
.source "Timing.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u001a\u0017\u0010\u0000\u001a\u00020\u00012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003H\u0086\u0008\u001a\u0017\u0010\u0005\u001a\u00020\u00012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003H\u0086\u0008\u00a8\u0006\u0006"
    }
    d2 = {
        "measureNanoTime",
        "",
        "block",
        "Lkotlin/Function0;",
        "",
        "measureTimeMillis",
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
    name = "TimingKt"
.end annotation


# direct methods
.method public static final measureNanoTime(Lkotlin/jvm/functions/Function0;)J
    .locals 8
    .param p0    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0",
            "<",
            "Lkotlin/Unit;",
            ">;)J"
        }
    .end annotation

    .prologue
    move-object v0, p0

    move-object v4, v0

    const-string v5, "block"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    move-wide v2, v4

    .line 23
    move-object v4, v0

    invoke-interface {v4}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v4

    .line 24
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    move-wide v6, v2

    sub-long/2addr v4, v6

    move-wide v0, v4

    return-wide v0
.end method

.method public static final measureTimeMillis(Lkotlin/jvm/functions/Function0;)J
    .locals 8
    .param p0    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0",
            "<",
            "Lkotlin/Unit;",
            ">;)J"
        }
    .end annotation

    .prologue
    move-object v0, p0

    move-object v4, v0

    const-string v5, "block"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-wide v2, v4

    .line 14
    move-object v4, v0

    invoke-interface {v4}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v4

    .line 15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-wide v6, v2

    sub-long/2addr v4, v6

    move-wide v0, v4

    return-wide v0
.end method
