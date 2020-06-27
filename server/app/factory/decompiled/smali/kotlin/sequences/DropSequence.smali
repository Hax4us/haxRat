.class public final Lkotlin/sequences/DropSequence;
.super Ljava/lang/Object;
.source "Sequences.kt"

# interfaces
.implements Lkotlin/sequences/Sequence;
.implements Lkotlin/sequences/DropTakeSequence;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlin/sequences/Sequence",
        "<TT;>;",
        "Lkotlin/sequences/DropTakeSequence",
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
        "\u0000\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010(\n\u0002\u0008\u0002\u0008\u0000\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u00022\u0008\u0012\u0004\u0012\u0002H\u00010\u0003B\u001b\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\u0016\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00022\u0006\u0010\t\u001a\u00020\u0006H\u0016J\u000f\u0010\n\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u000bH\u0096\u0002J\u0016\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00022\u0006\u0010\t\u001a\u00020\u0006H\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0002X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lkotlin/sequences/DropSequence;",
        "T",
        "Lkotlin/sequences/Sequence;",
        "Lkotlin/sequences/DropTakeSequence;",
        "sequence",
        "count",
        "",
        "(Lkotlin/sequences/Sequence;I)V",
        "drop",
        "n",
        "iterator",
        "",
        "take",
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
.field private final count:I

.field private final sequence:Lkotlin/sequences/Sequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/sequences/Sequence",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/sequences/Sequence;I)V
    .locals 10
    .param p1    # Lkotlin/sequences/Sequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/sequences/Sequence",
            "<+TT;>;I)V"
        }
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v6, v1

    const-string v7, "sequence"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 408
    move-object v6, v0

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Lkotlin/sequences/DropSequence;->sequence:Lkotlin/sequences/Sequence;

    move-object v6, v0

    move v7, v2

    iput v7, v6, Lkotlin/sequences/DropSequence;->count:I

    .line 413
    move-object v6, v0

    iget v6, v6, Lkotlin/sequences/DropSequence;->count:I

    if-ltz v6, :cond_0

    const/4 v6, 0x1

    :goto_0
    move v3, v6

    move v6, v3

    if-nez v6, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "count must be non-negative, but was "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v0

    iget v7, v7, Lkotlin/sequences/DropSequence;->count:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x2e

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    new-instance v6, Ljava/lang/IllegalArgumentException;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v5

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v6, Ljava/lang/Throwable;

    throw v6

    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static final synthetic access$getCount$p(Lkotlin/sequences/DropSequence;)I
    .locals 2

    .prologue
    .line 408
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lkotlin/sequences/DropSequence;->count:I

    move v0, v1

    return v0
.end method

.method public static final synthetic access$getSequence$p(Lkotlin/sequences/DropSequence;)Lkotlin/sequences/Sequence;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 408
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lkotlin/sequences/DropSequence;->sequence:Lkotlin/sequences/Sequence;

    move-object v0, v1

    return-object v0
.end method


# virtual methods
.method public drop(I)Lkotlin/sequences/Sequence;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lkotlin/sequences/Sequence",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 416
    move-object v0, p0

    move v1, p1

    new-instance v2, Lkotlin/sequences/DropSequence;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    iget-object v4, v4, Lkotlin/sequences/DropSequence;->sequence:Lkotlin/sequences/Sequence;

    move-object v5, v0

    iget v5, v5, Lkotlin/sequences/DropSequence;->count:I

    move v6, v1

    add-int/2addr v5, v6

    invoke-direct {v3, v4, v5}, Lkotlin/sequences/DropSequence;-><init>(Lkotlin/sequences/Sequence;I)V

    check-cast v2, Lkotlin/sequences/Sequence;

    move-object v0, v2

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 419
    move-object v0, p0

    new-instance v1, Lkotlin/sequences/DropSequence$iterator$1;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lkotlin/sequences/DropSequence$iterator$1;-><init>(Lkotlin/sequences/DropSequence;)V

    check-cast v1, Ljava/util/Iterator;

    .line 440
    move-object v0, v1

    return-object v0
.end method

.method public take(I)Lkotlin/sequences/Sequence;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lkotlin/sequences/Sequence",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 417
    move-object v0, p0

    move v1, p1

    new-instance v2, Lkotlin/sequences/SubSequence;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    iget-object v4, v4, Lkotlin/sequences/DropSequence;->sequence:Lkotlin/sequences/Sequence;

    move-object v5, v0

    iget v5, v5, Lkotlin/sequences/DropSequence;->count:I

    move-object v6, v0

    iget v6, v6, Lkotlin/sequences/DropSequence;->count:I

    move v7, v1

    add-int/2addr v6, v7

    invoke-direct {v3, v4, v5, v6}, Lkotlin/sequences/SubSequence;-><init>(Lkotlin/sequences/Sequence;II)V

    check-cast v2, Lkotlin/sequences/Sequence;

    move-object v0, v2

    return-object v0
.end method
