.class public final Lkotlin/ArrayIntrinsicsKt;
.super Ljava/lang/Object;
.source "ArrayIntrinsics.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0011\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a!\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\"\u000b\u0008\u0000\u0010\u0002\u0018\u0001\u00a2\u0006\u0002\u0008\u0003H\u0086\u0008\u00a2\u0006\u0002\u0010\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "emptyArray",
        "",
        "T",
        "Lkotlin/internal/PureReifiable;",
        "()[Ljava/lang/Object;",
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
.method private static final emptyArray()[Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()[TT;"
        }
    .end annotation

    .prologue
    .line 25
    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "T?"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    new-array v1, v1, [Ljava/lang/Object;

    move-object v0, v1

    return-object v0
.end method
