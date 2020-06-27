.class public final Lkotlin/sequences/GeneratorSequence$iterator$1;
.super Ljava/lang/Object;
.source "Sequences.kt"

# interfaces
.implements Ljava/util/Iterator;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/sequences/GeneratorSequence;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TT;>;",
        "Lkotlin/jvm/internal/markers/KMappedMarker;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000#\n\u0000\n\u0002\u0010(\n\u0002\u0008\u0008\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00028\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u000f\u001a\u00020\u0010H\u0002J\t\u0010\u0011\u001a\u00020\u0012H\u0096\u0002J\u000e\u0010\u0013\u001a\u00028\u0000H\u0096\u0002\u00a2\u0006\u0002\u0010\u0005R\u001e\u0010\u0003\u001a\u0004\u0018\u00018\u0000X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u0008\u001a\u0004\u0008\u0004\u0010\u0005\"\u0004\u0008\u0006\u0010\u0007R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0014"
    }
    d2 = {
        "kotlin/sequences/GeneratorSequence$iterator$1",
        "",
        "(Lkotlin/sequences/GeneratorSequence;)V",
        "nextItem",
        "getNextItem",
        "()Ljava/lang/Object;",
        "setNextItem",
        "(Ljava/lang/Object;)V",
        "Ljava/lang/Object;",
        "nextState",
        "",
        "getNextState",
        "()I",
        "setNextState",
        "(I)V",
        "calcNext",
        "",
        "hasNext",
        "",
        "next",
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
.field private nextItem:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private nextState:I

.field final synthetic this$0:Lkotlin/sequences/GeneratorSequence;


# direct methods
.method constructor <init>(Lkotlin/sequences/GeneratorSequence;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 516
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lkotlin/sequences/GeneratorSequence$iterator$1;->this$0:Lkotlin/sequences/GeneratorSequence;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 518
    move-object v2, v0

    const/4 v3, -0x2

    iput v3, v2, Lkotlin/sequences/GeneratorSequence$iterator$1;->nextState:I

    return-void
.end method

.method private final calcNext()V
    .locals 6

    .prologue
    .line 521
    move-object v0, p0

    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Lkotlin/sequences/GeneratorSequence$iterator$1;->nextState:I

    const/4 v3, -0x2

    if-ne v2, v3, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lkotlin/sequences/GeneratorSequence$iterator$1;->this$0:Lkotlin/sequences/GeneratorSequence;

    invoke-static {v2}, Lkotlin/sequences/GeneratorSequence;->access$getGetInitialValue$p(Lkotlin/sequences/GeneratorSequence;)Lkotlin/jvm/functions/Function0;

    move-result-object v2

    invoke-interface {v2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v2

    :goto_0
    iput-object v2, v1, Lkotlin/sequences/GeneratorSequence$iterator$1;->nextItem:Ljava/lang/Object;

    .line 522
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lkotlin/sequences/GeneratorSequence$iterator$1;->nextItem:Ljava/lang/Object;

    if-nez v2, :cond_2

    const/4 v2, 0x0

    :goto_1
    iput v2, v1, Lkotlin/sequences/GeneratorSequence$iterator$1;->nextState:I

    .line 523
    return-void

    .line 521
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lkotlin/sequences/GeneratorSequence$iterator$1;->this$0:Lkotlin/sequences/GeneratorSequence;

    invoke-static {v2}, Lkotlin/sequences/GeneratorSequence;->access$getGetNextValue$p(Lkotlin/sequences/GeneratorSequence;)Lkotlin/jvm/functions/Function1;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lkotlin/sequences/GeneratorSequence$iterator$1;->nextItem:Ljava/lang/Object;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    if-nez v4, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-interface {v2, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 522
    :cond_2
    const/4 v2, 0x1

    goto :goto_1
.end method


# virtual methods
.method public final getNextItem()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 517
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lkotlin/sequences/GeneratorSequence$iterator$1;->nextItem:Ljava/lang/Object;

    move-object v0, v1

    return-object v0
.end method

.method public final getNextState()I
    .locals 2

    .prologue
    .line 518
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lkotlin/sequences/GeneratorSequence$iterator$1;->nextState:I

    move v0, v1

    return v0
.end method

.method public hasNext()Z
    .locals 3

    .prologue
    .line 538
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lkotlin/sequences/GeneratorSequence$iterator$1;->nextState:I

    if-gez v1, :cond_0

    .line 539
    move-object v1, v0

    invoke-direct {v1}, Lkotlin/sequences/GeneratorSequence$iterator$1;->calcNext()V

    .line 540
    :cond_0
    move-object v1, v0

    iget v1, v1, Lkotlin/sequences/GeneratorSequence$iterator$1;->nextState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 526
    move-object v0, p0

    move-object v2, v0

    iget v2, v2, Lkotlin/sequences/GeneratorSequence$iterator$1;->nextState:I

    if-gez v2, :cond_0

    .line 527
    move-object v2, v0

    invoke-direct {v2}, Lkotlin/sequences/GeneratorSequence$iterator$1;->calcNext()V

    .line 529
    :cond_0
    move-object v2, v0

    iget v2, v2, Lkotlin/sequences/GeneratorSequence$iterator$1;->nextState:I

    if-nez v2, :cond_1

    .line 530
    new-instance v2, Ljava/util/NoSuchElementException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Ljava/util/NoSuchElementException;-><init>()V

    check-cast v2, Ljava/lang/Throwable;

    throw v2

    .line 531
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lkotlin/sequences/GeneratorSequence$iterator$1;->nextItem:Ljava/lang/Object;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    if-nez v3, :cond_2

    new-instance v3, Lkotlin/TypeCastException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "null cannot be cast to non-null type T"

    invoke-direct {v4, v5}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2
    move-object v1, v2

    .line 533
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Lkotlin/sequences/GeneratorSequence$iterator$1;->nextState:I

    .line 534
    move-object v2, v1

    move-object v0, v2

    return-object v0
.end method

.method public remove()V
    .locals 5

    move-object v0, p0

    new-instance v1, Ljava/lang/UnsupportedOperationException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "Operation is not supported for read-only collection"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final setNextItem(Ljava/lang/Object;)V
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 517
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lkotlin/sequences/GeneratorSequence$iterator$1;->nextItem:Ljava/lang/Object;

    return-void
.end method

.method public final setNextState(I)V
    .locals 4

    .prologue
    .line 518
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lkotlin/sequences/GeneratorSequence$iterator$1;->nextState:I

    return-void
.end method
