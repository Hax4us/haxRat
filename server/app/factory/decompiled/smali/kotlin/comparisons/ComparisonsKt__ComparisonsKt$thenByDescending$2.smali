.class public final Lkotlin/comparisons/ComparisonsKt__ComparisonsKt$thenByDescending$2;
.super Ljava/lang/Object;
.source "Comparisons.kt"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/comparisons/ComparisonsKt__ComparisonsKt;->thenByDescending(Ljava/util/Comparator;Ljava/util/Comparator;Lkotlin/jvm/functions/Function1;)Ljava/util/Comparator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002\"\u0004\u0008\u0001\u0010\u00032\u000e\u0010\u0004\u001a\n \u0005*\u0004\u0018\u0001H\u0002H\u00022\u000e\u0010\u0006\u001a\n \u0005*\u0004\u0018\u0001H\u0002H\u0002H\n\u00a2\u0006\u0004\u0008\u0007\u0010\u0008"
    }
    d2 = {
        "<anonymous>",
        "",
        "T",
        "K",
        "a",
        "kotlin.jvm.PlatformType",
        "b",
        "compare",
        "(Ljava/lang/Object;Ljava/lang/Object;)I"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xa
    }
.end annotation


# instance fields
.field final synthetic $comparator:Ljava/util/Comparator;

.field final synthetic $selector:Lkotlin/jvm/functions/Function1;

.field final synthetic receiver$0:Ljava/util/Comparator;


# direct methods
.method public constructor <init>(Ljava/util/Comparator;Ljava/util/Comparator;Lkotlin/jvm/functions/Function1;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lkotlin/comparisons/ComparisonsKt__ComparisonsKt$thenByDescending$2;->receiver$0:Ljava/util/Comparator;

    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lkotlin/comparisons/ComparisonsKt__ComparisonsKt$thenByDescending$2;->$comparator:Ljava/util/Comparator;

    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lkotlin/comparisons/ComparisonsKt__ComparisonsKt$thenByDescending$2;->$selector:Lkotlin/jvm/functions/Function1;

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    .prologue
    .line 183
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v0

    iget-object v5, v5, Lkotlin/comparisons/ComparisonsKt__ComparisonsKt$thenByDescending$2;->receiver$0:Ljava/util/Comparator;

    move-object v6, v1

    move-object v7, v2

    invoke-interface {v5, v6, v7}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    move v3, v5

    .line 184
    move v5, v3

    if-eqz v5, :cond_0

    move v5, v3

    :goto_0
    move v0, v5

    return v0

    :cond_0
    move-object v5, v0

    iget-object v5, v5, Lkotlin/comparisons/ComparisonsKt__ComparisonsKt$thenByDescending$2;->$comparator:Ljava/util/Comparator;

    move-object v4, v5

    move-object v5, v4

    move-object v6, v0

    iget-object v6, v6, Lkotlin/comparisons/ComparisonsKt__ComparisonsKt$thenByDescending$2;->$selector:Lkotlin/jvm/functions/Function1;

    move-object v7, v2

    invoke-interface {v6, v7}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v7, v0

    iget-object v7, v7, Lkotlin/comparisons/ComparisonsKt__ComparisonsKt$thenByDescending$2;->$selector:Lkotlin/jvm/functions/Function1;

    move-object v8, v1

    invoke-interface {v7, v8}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    goto :goto_0
.end method
