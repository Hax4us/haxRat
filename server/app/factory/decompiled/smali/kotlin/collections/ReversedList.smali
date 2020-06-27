.class final Lkotlin/collections/ReversedList;
.super Lkotlin/collections/AbstractMutableList;
.source "ReversedViews.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlin/collections/AbstractMutableList",
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
        "\u0000$\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\n\u0008\u0002\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u0002B\u0013\u0012\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0004\u00a2\u0006\u0002\u0010\u0005J\u001d\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u00072\u0006\u0010\r\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010\u000eJ\u0008\u0010\u000f\u001a\u00020\u000bH\u0016J\u0016\u0010\u0010\u001a\u00028\u00002\u0006\u0010\u000c\u001a\u00020\u0007H\u0096\u0002\u00a2\u0006\u0002\u0010\u0011J\u0015\u0010\u0012\u001a\u00028\u00002\u0006\u0010\u000c\u001a\u00020\u0007H\u0016\u00a2\u0006\u0002\u0010\u0011J\u001e\u0010\u0013\u001a\u00028\u00002\u0006\u0010\u000c\u001a\u00020\u00072\u0006\u0010\r\u001a\u00028\u0000H\u0096\u0002\u00a2\u0006\u0002\u0010\u0014R\u0014\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u00020\u00078VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\u0015"
    }
    d2 = {
        "Lkotlin/collections/ReversedList;",
        "T",
        "Lkotlin/collections/AbstractMutableList;",
        "delegate",
        "",
        "(Ljava/util/List;)V",
        "size",
        "",
        "getSize",
        "()I",
        "add",
        "",
        "index",
        "element",
        "(ILjava/lang/Object;)V",
        "clear",
        "get",
        "(I)Ljava/lang/Object;",
        "removeAt",
        "set",
        "(ILjava/lang/Object;)Ljava/lang/Object;",
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
.field private final delegate:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 4
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    const-string v3, "delegate"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    move-object v2, v0

    invoke-direct {v2}, Lkotlin/collections/AbstractMutableList;-><init>()V

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lkotlin/collections/ReversedList;->delegate:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .prologue
    .line 27
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Lkotlin/collections/ReversedList;->delegate:Ljava/util/List;

    move-object v4, v0

    move v5, v1

    invoke-static {v4, v5}, Lkotlin/collections/CollectionsKt__ReversedViewsKt;->access$reversePositionIndex(Ljava/util/List;I)I

    move-result v4

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 28
    return-void
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 22
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lkotlin/collections/ReversedList;->delegate:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 20
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lkotlin/collections/ReversedList;->delegate:Ljava/util/List;

    move-object v3, v0

    move v4, v1

    invoke-static {v3, v4}, Lkotlin/collections/CollectionsKt__ReversedViewsKt;->access$reverseElementIndex(Ljava/util/List;I)I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public getSize()I
    .locals 2

    .prologue
    .line 19
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lkotlin/collections/ReversedList;->delegate:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public removeAt(I)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 23
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lkotlin/collections/ReversedList;->delegate:Ljava/util/List;

    move-object v3, v0

    move v4, v1

    invoke-static {v3, v4}, Lkotlin/collections/CollectionsKt__ReversedViewsKt;->access$reverseElementIndex(Ljava/util/List;I)I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)TT;"
        }
    .end annotation

    .prologue
    .line 25
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Lkotlin/collections/ReversedList;->delegate:Ljava/util/List;

    move-object v4, v0

    move v5, v1

    invoke-static {v4, v5}, Lkotlin/collections/CollectionsKt__ReversedViewsKt;->access$reverseElementIndex(Ljava/util/List;I)I

    move-result v4

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method
