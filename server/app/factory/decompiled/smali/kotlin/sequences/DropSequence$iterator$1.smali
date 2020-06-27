.class public final Lkotlin/sequences/DropSequence$iterator$1;
.super Ljava/lang/Object;
.source "Sequences.kt"

# interfaces
.implements Ljava/util/Iterator;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/sequences/DropSequence;->iterator()Ljava/util/Iterator;
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
        "\u0000#\n\u0000\n\u0002\u0010(\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00028\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u000c\u001a\u00020\rH\u0002J\t\u0010\u000e\u001a\u00020\u000fH\u0096\u0002J\u000e\u0010\u0010\u001a\u00028\u0000H\u0096\u0002\u00a2\u0006\u0002\u0010\u0011R\u0017\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0001\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0004\u0010\u0005R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000b\u00a8\u0006\u0012"
    }
    d2 = {
        "kotlin/sequences/DropSequence$iterator$1",
        "",
        "(Lkotlin/sequences/DropSequence;)V",
        "iterator",
        "getIterator",
        "()Ljava/util/Iterator;",
        "left",
        "",
        "getLeft",
        "()I",
        "setLeft",
        "(I)V",
        "drop",
        "",
        "hasNext",
        "",
        "next",
        "()Ljava/lang/Object;",
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

.field private left:I

.field final synthetic this$0:Lkotlin/sequences/DropSequence;


# direct methods
.method constructor <init>(Lkotlin/sequences/DropSequence;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 419
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lkotlin/sequences/DropSequence$iterator$1;->this$0:Lkotlin/sequences/DropSequence;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 420
    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Lkotlin/sequences/DropSequence;->access$getSequence$p(Lkotlin/sequences/DropSequence;)Lkotlin/sequences/Sequence;

    move-result-object v3

    invoke-interface {v3}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v3

    iput-object v3, v2, Lkotlin/sequences/DropSequence$iterator$1;->iterator:Ljava/util/Iterator;

    .line 421
    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Lkotlin/sequences/DropSequence;->access$getCount$p(Lkotlin/sequences/DropSequence;)I

    move-result v3

    iput v3, v2, Lkotlin/sequences/DropSequence$iterator$1;->left:I

    return-void
.end method

.method private final drop()V
    .locals 6

    .prologue
    .line 425
    move-object v0, p0

    :goto_0
    move-object v2, v0

    iget v2, v2, Lkotlin/sequences/DropSequence$iterator$1;->left:I

    if-lez v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lkotlin/sequences/DropSequence$iterator$1;->iterator:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 426
    move-object v2, v0

    iget-object v2, v2, Lkotlin/sequences/DropSequence$iterator$1;->iterator:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 427
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Lkotlin/sequences/DropSequence$iterator$1;->left:I

    move v5, v3

    move v3, v5

    move v4, v5

    move v1, v4

    const/4 v4, -0x1

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Lkotlin/sequences/DropSequence$iterator$1;->left:I

    .line 425
    goto :goto_0

    .line 429
    :cond_0
    return-void
.end method


# virtual methods
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
    .line 420
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lkotlin/sequences/DropSequence$iterator$1;->iterator:Ljava/util/Iterator;

    move-object v0, v1

    return-object v0
.end method

.method public final getLeft()I
    .locals 2

    .prologue
    .line 421
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lkotlin/sequences/DropSequence$iterator$1;->left:I

    move v0, v1

    return v0
.end method

.method public hasNext()Z
    .locals 2

    .prologue
    .line 437
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lkotlin/sequences/DropSequence$iterator$1;->drop()V

    .line 438
    move-object v1, v0

    iget-object v1, v1, Lkotlin/sequences/DropSequence$iterator$1;->iterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 432
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lkotlin/sequences/DropSequence$iterator$1;->drop()V

    .line 433
    move-object v1, v0

    iget-object v1, v1, Lkotlin/sequences/DropSequence$iterator$1;->iterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

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

.method public final setLeft(I)V
    .locals 4

    .prologue
    .line 421
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lkotlin/sequences/DropSequence$iterator$1;->left:I

    return-void
.end method
