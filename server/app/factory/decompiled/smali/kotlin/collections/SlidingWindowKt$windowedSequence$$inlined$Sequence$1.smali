.class public final Lkotlin/collections/SlidingWindowKt$windowedSequence$$inlined$Sequence$1;
.super Ljava/lang/Object;
.source "Sequences.kt"

# interfaces
.implements Lkotlin/sequences/Sequence;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/collections/SlidingWindowKt;->windowedSequence(Lkotlin/sequences/Sequence;IIZZ)Lkotlin/sequences/Sequence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/sequences/Sequence",
        "<",
        "Ljava/util/List",
        "<+TT;>;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0002\n\u0002\u0010(\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00028\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u000f\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0004H\u0096\u0002\u00a8\u0006\u0005\u00b8\u0006\u0000"
    }
    d2 = {
        "kotlin/sequences/SequencesKt__SequencesKt$Sequence$1",
        "Lkotlin/sequences/Sequence;",
        "(Lkotlin/jvm/functions/Function0;)V",
        "iterator",
        "",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xa
    }
.end annotation


# instance fields
.field final synthetic $partialWindows$inlined:Z

.field final synthetic $reuseBuffer$inlined:Z

.field final synthetic $size$inlined:I

.field final synthetic $step$inlined:I

.field final synthetic receiver$0$inlined:Lkotlin/sequences/Sequence;


# direct methods
.method public constructor <init>(Lkotlin/sequences/Sequence;IIZZ)V
    .locals 8

    .prologue
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Lkotlin/collections/SlidingWindowKt$windowedSequence$$inlined$Sequence$1;->receiver$0$inlined:Lkotlin/sequences/Sequence;

    move-object v6, v0

    move v7, v2

    iput v7, v6, Lkotlin/collections/SlidingWindowKt$windowedSequence$$inlined$Sequence$1;->$size$inlined:I

    move-object v6, v0

    move v7, v3

    iput v7, v6, Lkotlin/collections/SlidingWindowKt$windowedSequence$$inlined$Sequence$1;->$step$inlined:I

    move-object v6, v0

    move v7, v4

    iput-boolean v7, v6, Lkotlin/collections/SlidingWindowKt$windowedSequence$$inlined$Sequence$1;->$partialWindows$inlined:Z

    move-object v6, v0

    move v7, v5

    iput-boolean v7, v6, Lkotlin/collections/SlidingWindowKt$windowedSequence$$inlined$Sequence$1;->$reuseBuffer$inlined:Z

    .line 21
    move-object v6, v0

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/List",
            "<+TT;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 22
    move-object v0, p0

    nop

    .line 611
    move-object v2, v0

    iget-object v2, v2, Lkotlin/collections/SlidingWindowKt$windowedSequence$$inlined$Sequence$1;->receiver$0$inlined:Lkotlin/sequences/Sequence;

    invoke-interface {v2}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v3, v0

    iget v3, v3, Lkotlin/collections/SlidingWindowKt$windowedSequence$$inlined$Sequence$1;->$size$inlined:I

    move-object v4, v0

    iget v4, v4, Lkotlin/collections/SlidingWindowKt$windowedSequence$$inlined$Sequence$1;->$step$inlined:I

    move-object v5, v0

    iget-boolean v5, v5, Lkotlin/collections/SlidingWindowKt$windowedSequence$$inlined$Sequence$1;->$partialWindows$inlined:Z

    move-object v6, v0

    iget-boolean v6, v6, Lkotlin/collections/SlidingWindowKt$windowedSequence$$inlined$Sequence$1;->$reuseBuffer$inlined:Z

    invoke-static {v2, v3, v4, v5, v6}, Lkotlin/collections/SlidingWindowKt;->windowedIterator(Ljava/util/Iterator;IIZZ)Ljava/util/Iterator;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method
