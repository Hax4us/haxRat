.class public final Lkotlin/sequences/DropWhileSequence$iterator$1;
.super Ljava/lang/Object;
.source "Sequences.kt"

# interfaces
.implements Ljava/util/Iterator;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/sequences/DropWhileSequence;->iterator()Ljava/util/Iterator;
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
        "\u0000#\n\u0000\n\u0002\u0010(\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u000e\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00028\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0012\u001a\u00020\u0013H\u0002J\t\u0010\u0014\u001a\u00020\u0015H\u0096\u0002J\u000e\u0010\u0016\u001a\u00028\u0000H\u0096\u0002\u00a2\u0006\u0002\u0010\u000eR\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u0017\u0010\t\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0001\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u001e\u0010\u000c\u001a\u0004\u0018\u00018\u0000X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u0011\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0017"
    }
    d2 = {
        "kotlin/sequences/DropWhileSequence$iterator$1",
        "",
        "(Lkotlin/sequences/DropWhileSequence;)V",
        "dropState",
        "",
        "getDropState",
        "()I",
        "setDropState",
        "(I)V",
        "iterator",
        "getIterator",
        "()Ljava/util/Iterator;",
        "nextItem",
        "getNextItem",
        "()Ljava/lang/Object;",
        "setNextItem",
        "(Ljava/lang/Object;)V",
        "Ljava/lang/Object;",
        "drop",
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
.field private dropState:I

.field private final iterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private nextItem:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field final synthetic this$0:Lkotlin/sequences/DropWhileSequence;


# direct methods
.method constructor <init>(Lkotlin/sequences/DropWhileSequence;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 453
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lkotlin/sequences/DropWhileSequence$iterator$1;->this$0:Lkotlin/sequences/DropWhileSequence;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 454
    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Lkotlin/sequences/DropWhileSequence;->access$getSequence$p(Lkotlin/sequences/DropWhileSequence;)Lkotlin/sequences/Sequence;

    move-result-object v3

    invoke-interface {v3}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v3

    iput-object v3, v2, Lkotlin/sequences/DropWhileSequence$iterator$1;->iterator:Ljava/util/Iterator;

    .line 455
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Lkotlin/sequences/DropWhileSequence$iterator$1;->dropState:I

    return-void
.end method

.method private final drop()V
    .locals 4

    .prologue
    .line 459
    move-object v0, p0

    :goto_0
    move-object v2, v0

    iget-object v2, v2, Lkotlin/sequences/DropWhileSequence$iterator$1;->iterator:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 460
    move-object v2, v0

    iget-object v2, v2, Lkotlin/sequences/DropWhileSequence$iterator$1;->iterator:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    .line 461
    move-object v2, v0

    iget-object v2, v2, Lkotlin/sequences/DropWhileSequence$iterator$1;->this$0:Lkotlin/sequences/DropWhileSequence;

    invoke-static {v2}, Lkotlin/sequences/DropWhileSequence;->access$getPredicate$p(Lkotlin/sequences/DropWhileSequence;)Lkotlin/jvm/functions/Function1;

    move-result-object v2

    move-object v3, v1

    invoke-interface {v2, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    .line 462
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lkotlin/sequences/DropWhileSequence$iterator$1;->nextItem:Ljava/lang/Object;

    .line 463
    move-object v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lkotlin/sequences/DropWhileSequence$iterator$1;->dropState:I

    .line 468
    :goto_1
    return-void

    .line 459
    :cond_0
    goto :goto_0

    .line 467
    :cond_1
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lkotlin/sequences/DropWhileSequence$iterator$1;->dropState:I

    .line 468
    goto :goto_1
.end method


# virtual methods
.method public final getDropState()I
    .locals 2

    .prologue
    .line 455
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lkotlin/sequences/DropWhileSequence$iterator$1;->dropState:I

    move v0, v1

    return v0
.end method

.method public final getIterator()Ljava/util/Iterator;
    .locals 2
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
    .line 454
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lkotlin/sequences/DropWhileSequence$iterator$1;->iterator:Ljava/util/Iterator;

    move-object v0, v1

    return-object v0
.end method

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
    .line 456
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lkotlin/sequences/DropWhileSequence$iterator$1;->nextItem:Ljava/lang/Object;

    move-object v0, v1

    return-object v0
.end method

.method public hasNext()Z
    .locals 3

    .prologue
    .line 485
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lkotlin/sequences/DropWhileSequence$iterator$1;->dropState:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 486
    move-object v1, v0

    invoke-direct {v1}, Lkotlin/sequences/DropWhileSequence$iterator$1;->drop()V

    .line 487
    :cond_0
    move-object v1, v0

    iget v1, v1, Lkotlin/sequences/DropWhileSequence$iterator$1;->dropState:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    move-object v1, v0

    iget-object v1, v1, Lkotlin/sequences/DropWhileSequence$iterator$1;->iterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 471
    move-object v0, p0

    move-object v2, v0

    iget v2, v2, Lkotlin/sequences/DropWhileSequence$iterator$1;->dropState:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 472
    move-object v2, v0

    invoke-direct {v2}, Lkotlin/sequences/DropWhileSequence$iterator$1;->drop()V

    .line 474
    :cond_0
    move-object v2, v0

    iget v2, v2, Lkotlin/sequences/DropWhileSequence$iterator$1;->dropState:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 476
    move-object v2, v0

    iget-object v2, v2, Lkotlin/sequences/DropWhileSequence$iterator$1;->nextItem:Ljava/lang/Object;

    move-object v1, v2

    .line 477
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lkotlin/sequences/DropWhileSequence$iterator$1;->nextItem:Ljava/lang/Object;

    .line 478
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lkotlin/sequences/DropWhileSequence$iterator$1;->dropState:I

    .line 479
    move-object v2, v1

    move-object v0, v2

    .line 481
    :goto_0
    return-object v0

    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lkotlin/sequences/DropWhileSequence$iterator$1;->iterator:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
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

.method public final setDropState(I)V
    .locals 4

    .prologue
    .line 455
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lkotlin/sequences/DropWhileSequence$iterator$1;->dropState:I

    return-void
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
    .line 456
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lkotlin/sequences/DropWhileSequence$iterator$1;->nextItem:Ljava/lang/Object;

    return-void
.end method
