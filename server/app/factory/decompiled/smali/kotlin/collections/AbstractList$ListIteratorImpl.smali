.class Lkotlin/collections/AbstractList$ListIteratorImpl;
.super Lkotlin/collections/AbstractList$IteratorImpl;
.source "AbstractList.kt"

# interfaces
.implements Ljava/util/ListIterator;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/collections/AbstractList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListIteratorImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/collections/AbstractList",
        "<TE;>.IteratorImpl;",
        "Ljava/util/ListIterator",
        "<TE;>;",
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
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010*\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0008\u0092\u0004\u0018\u00002\u000c0\u0001R\u0008\u0012\u0004\u0012\u00028\u00000\u00022\u0008\u0012\u0004\u0012\u00028\u00000\u0003B\r\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\u0007\u001a\u00020\u0008H\u0016J\u0008\u0010\t\u001a\u00020\u0005H\u0016J\r\u0010\n\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010\u000bJ\u0008\u0010\u000c\u001a\u00020\u0005H\u0016\u00a8\u0006\r"
    }
    d2 = {
        "Lkotlin/collections/AbstractList$ListIteratorImpl;",
        "Lkotlin/collections/AbstractList$IteratorImpl;",
        "Lkotlin/collections/AbstractList;",
        "",
        "index",
        "",
        "(Lkotlin/collections/AbstractList;I)V",
        "hasPrevious",
        "",
        "nextIndex",
        "previous",
        "()Ljava/lang/Object;",
        "previousIndex",
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
.field final synthetic this$0:Lkotlin/collections/AbstractList;


# direct methods
.method public constructor <init>(Lkotlin/collections/AbstractList;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 87
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lkotlin/collections/AbstractList$ListIteratorImpl;->this$0:Lkotlin/collections/AbstractList;

    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lkotlin/collections/AbstractList$IteratorImpl;-><init>(Lkotlin/collections/AbstractList;)V

    .line 90
    sget-object v3, Lkotlin/collections/AbstractList;->Companion:Lkotlin/collections/AbstractList$Companion;

    move v4, v2

    move-object v5, v1

    invoke-virtual {v5}, Lkotlin/collections/AbstractList;->size()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lkotlin/collections/AbstractList$Companion;->checkPositionIndex$kotlin_stdlib(II)V

    .line 91
    move-object v3, v0

    move v4, v2

    invoke-virtual {v3, v4}, Lkotlin/collections/AbstractList$ListIteratorImpl;->setIndex(I)V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Operation is not supported for read-only collection"

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public hasPrevious()Z
    .locals 2

    .prologue
    .line 94
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lkotlin/collections/AbstractList$ListIteratorImpl;->getIndex()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public nextIndex()I
    .locals 2

    .prologue
    .line 96
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lkotlin/collections/AbstractList$ListIteratorImpl;->getIndex()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 99
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lkotlin/collections/AbstractList$ListIteratorImpl;->hasPrevious()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/NoSuchElementException;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    invoke-direct {v2}, Ljava/util/NoSuchElementException;-><init>()V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 100
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lkotlin/collections/AbstractList$ListIteratorImpl;->this$0:Lkotlin/collections/AbstractList;

    move-object v2, v0

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-virtual {v4}, Lkotlin/collections/AbstractList$ListIteratorImpl;->getIndex()I

    move-result v4

    const/4 v5, -0x1

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Lkotlin/collections/AbstractList$ListIteratorImpl;->setIndex(I)V

    invoke-virtual {v2}, Lkotlin/collections/AbstractList$ListIteratorImpl;->getIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Lkotlin/collections/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public previousIndex()I
    .locals 3

    .prologue
    .line 103
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lkotlin/collections/AbstractList$ListIteratorImpl;->getIndex()I

    move-result v1

    const/4 v2, 0x1

    add-int/lit8 v1, v1, -0x1

    move v0, v1

    return v0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Operation is not supported for read-only collection"

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
