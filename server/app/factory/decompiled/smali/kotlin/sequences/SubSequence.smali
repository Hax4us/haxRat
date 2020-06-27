.class public final Lkotlin/sequences/SubSequence;
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
        "\u0000\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0010(\n\u0002\u0008\u0002\u0008\u0000\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u00022\u0008\u0012\u0004\u0012\u0002H\u00010\u0003B#\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0008J\u0016\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00022\u0006\u0010\r\u001a\u00020\u0006H\u0016J\u000f\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u000fH\u0096\u0002J\u0016\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00022\u0006\u0010\r\u001a\u00020\u0006H\u0016R\u0014\u0010\t\u001a\u00020\u00068BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000bR\u000e\u0010\u0007\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0002X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lkotlin/sequences/SubSequence;",
        "T",
        "Lkotlin/sequences/Sequence;",
        "Lkotlin/sequences/DropTakeSequence;",
        "sequence",
        "startIndex",
        "",
        "endIndex",
        "(Lkotlin/sequences/Sequence;II)V",
        "count",
        "getCount",
        "()I",
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
.field private final endIndex:I

.field private final sequence:Lkotlin/sequences/Sequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/sequences/Sequence",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final startIndex:I


# direct methods
.method public constructor <init>(Lkotlin/sequences/Sequence;II)V
    .locals 11
    .param p1    # Lkotlin/sequences/Sequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/sequences/Sequence",
            "<+TT;>;II)V"
        }
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v7, v1

    const-string v8, "sequence"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 278
    move-object v7, v0

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    move-object v7, v0

    move-object v8, v1

    iput-object v8, v7, Lkotlin/sequences/SubSequence;->sequence:Lkotlin/sequences/Sequence;

    move-object v7, v0

    move v8, v2

    iput v8, v7, Lkotlin/sequences/SubSequence;->startIndex:I

    move-object v7, v0

    move v8, v3

    iput v8, v7, Lkotlin/sequences/SubSequence;->endIndex:I

    .line 285
    move-object v7, v0

    iget v7, v7, Lkotlin/sequences/SubSequence;->startIndex:I

    if-ltz v7, :cond_0

    const/4 v7, 0x1

    :goto_0
    move v4, v7

    move v7, v4

    if-nez v7, :cond_1

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "startIndex should be non-negative, but is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v0

    iget v8, v8, Lkotlin/sequences/SubSequence;->startIndex:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    new-instance v7, Ljava/lang/IllegalArgumentException;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v9, v6

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v7, Ljava/lang/Throwable;

    throw v7

    :cond_0
    const/4 v7, 0x0

    goto :goto_0

    .line 286
    :cond_1
    move-object v7, v0

    iget v7, v7, Lkotlin/sequences/SubSequence;->endIndex:I

    if-ltz v7, :cond_2

    const/4 v7, 0x1

    :goto_1
    move v4, v7

    move v7, v4

    if-nez v7, :cond_3

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "endIndex should be non-negative, but is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v0

    iget v8, v8, Lkotlin/sequences/SubSequence;->endIndex:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    new-instance v7, Ljava/lang/IllegalArgumentException;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v9, v6

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v7, Ljava/lang/Throwable;

    throw v7

    :cond_2
    const/4 v7, 0x0

    goto :goto_1

    .line 287
    :cond_3
    move-object v7, v0

    iget v7, v7, Lkotlin/sequences/SubSequence;->endIndex:I

    move-object v8, v0

    iget v8, v8, Lkotlin/sequences/SubSequence;->startIndex:I

    if-lt v7, v8, :cond_4

    const/4 v7, 0x1

    :goto_2
    move v4, v7

    move v7, v4

    if-nez v7, :cond_5

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "endIndex should be not less than startIndex, but was "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v0

    iget v8, v8, Lkotlin/sequences/SubSequence;->endIndex:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " < "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v0

    iget v8, v8, Lkotlin/sequences/SubSequence;->startIndex:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    new-instance v7, Ljava/lang/IllegalArgumentException;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v9, v6

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v7, Ljava/lang/Throwable;

    throw v7

    :cond_4
    const/4 v7, 0x0

    goto :goto_2

    :cond_5
    return-void
.end method

.method public static final synthetic access$getEndIndex$p(Lkotlin/sequences/SubSequence;)I
    .locals 2

    .prologue
    .line 278
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lkotlin/sequences/SubSequence;->endIndex:I

    move v0, v1

    return v0
.end method

.method public static final synthetic access$getSequence$p(Lkotlin/sequences/SubSequence;)Lkotlin/sequences/Sequence;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 278
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lkotlin/sequences/SubSequence;->sequence:Lkotlin/sequences/Sequence;

    move-object v0, v1

    return-object v0
.end method

.method public static final synthetic access$getStartIndex$p(Lkotlin/sequences/SubSequence;)I
    .locals 2

    .prologue
    .line 278
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lkotlin/sequences/SubSequence;->startIndex:I

    move v0, v1

    return v0
.end method

.method private final getCount()I
    .locals 3

    .prologue
    .line 290
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lkotlin/sequences/SubSequence;->endIndex:I

    move-object v2, v0

    iget v2, v2, Lkotlin/sequences/SubSequence;->startIndex:I

    sub-int/2addr v1, v2

    move v0, v1

    return v0
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
    .line 292
    move-object v0, p0

    move v1, p1

    move v2, v1

    move-object v3, v0

    invoke-direct {v3}, Lkotlin/sequences/SubSequence;->getCount()I

    move-result v3

    if-lt v2, v3, :cond_0

    invoke-static {}, Lkotlin/sequences/SequencesKt;->emptySequence()Lkotlin/sequences/Sequence;

    move-result-object v2

    :goto_0
    move-object v0, v2

    return-object v0

    :cond_0
    new-instance v2, Lkotlin/sequences/SubSequence;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    iget-object v4, v4, Lkotlin/sequences/SubSequence;->sequence:Lkotlin/sequences/Sequence;

    move-object v5, v0

    iget v5, v5, Lkotlin/sequences/SubSequence;->startIndex:I

    move v6, v1

    add-int/2addr v5, v6

    move-object v6, v0

    iget v6, v6, Lkotlin/sequences/SubSequence;->endIndex:I

    invoke-direct {v3, v4, v5, v6}, Lkotlin/sequences/SubSequence;-><init>(Lkotlin/sequences/Sequence;II)V

    check-cast v2, Lkotlin/sequences/Sequence;

    goto :goto_0
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
    .line 295
    move-object v0, p0

    new-instance v1, Lkotlin/sequences/SubSequence$iterator$1;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lkotlin/sequences/SubSequence$iterator$1;-><init>(Lkotlin/sequences/SubSequence;)V

    check-cast v1, Ljava/util/Iterator;

    .line 320
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
    .line 293
    move-object v0, p0

    move v1, p1

    move v2, v1

    move-object v3, v0

    invoke-direct {v3}, Lkotlin/sequences/SubSequence;->getCount()I

    move-result v3

    if-lt v2, v3, :cond_0

    move-object v2, v0

    check-cast v2, Lkotlin/sequences/Sequence;

    :goto_0
    move-object v0, v2

    return-object v0

    :cond_0
    new-instance v2, Lkotlin/sequences/SubSequence;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    iget-object v4, v4, Lkotlin/sequences/SubSequence;->sequence:Lkotlin/sequences/Sequence;

    move-object v5, v0

    iget v5, v5, Lkotlin/sequences/SubSequence;->startIndex:I

    move-object v6, v0

    iget v6, v6, Lkotlin/sequences/SubSequence;->startIndex:I

    move v7, v1

    add-int/2addr v6, v7

    invoke-direct {v3, v4, v5, v6}, Lkotlin/sequences/SubSequence;-><init>(Lkotlin/sequences/Sequence;II)V

    check-cast v2, Lkotlin/sequences/Sequence;

    goto :goto_0
.end method
