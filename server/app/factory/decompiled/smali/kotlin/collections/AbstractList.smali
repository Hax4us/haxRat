.class public abstract Lkotlin/collections/AbstractList;
.super Lkotlin/collections/AbstractCollection;
.source "AbstractList.kt"

# interfaces
.implements Ljava/util/List;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/collections/AbstractList$SubList;,
        Lkotlin/collections/AbstractList$IteratorImpl;,
        Lkotlin/collections/AbstractList$ListIteratorImpl;,
        Lkotlin/collections/AbstractList$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlin/collections/AbstractCollection",
        "<TE;>;",
        "Ljava/util/List",
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
        "\u00008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0008\n\u0002\u0010(\n\u0002\u0008\u0002\n\u0002\u0010*\n\u0002\u0008\u0008\u0008\'\u0018\u0000 \u001c*\u0006\u0008\u0000\u0010\u0001 \u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u00022\u0008\u0012\u0004\u0012\u0002H\u00010\u0003:\u0004\u001c\u001d\u001e\u001fB\u0007\u0008\u0004\u00a2\u0006\u0002\u0010\u0004J\u0013\u0010\t\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u0096\u0002J\u0016\u0010\r\u001a\u00028\u00002\u0006\u0010\u000e\u001a\u00020\u0006H\u00a6\u0002\u00a2\u0006\u0002\u0010\u000fJ\u0008\u0010\u0010\u001a\u00020\u0006H\u0016J\u0015\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010\u0013J\u000f\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0015H\u0096\u0002J\u0015\u0010\u0016\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010\u0013J\u000e\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0018H\u0016J\u0016\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00182\u0006\u0010\u000e\u001a\u00020\u0006H\u0016J\u001e\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00032\u0006\u0010\u001a\u001a\u00020\u00062\u0006\u0010\u001b\u001a\u00020\u0006H\u0016R\u0012\u0010\u0005\u001a\u00020\u0006X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006 "
    }
    d2 = {
        "Lkotlin/collections/AbstractList;",
        "E",
        "Lkotlin/collections/AbstractCollection;",
        "",
        "()V",
        "size",
        "",
        "getSize",
        "()I",
        "equals",
        "",
        "other",
        "",
        "get",
        "index",
        "(I)Ljava/lang/Object;",
        "hashCode",
        "indexOf",
        "element",
        "(Ljava/lang/Object;)I",
        "iterator",
        "",
        "lastIndexOf",
        "listIterator",
        "",
        "subList",
        "fromIndex",
        "toIndex",
        "Companion",
        "IteratorImpl",
        "ListIteratorImpl",
        "SubList",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xa
    }
.end annotation

.annotation build Lkotlin/SinceKotlin;
    version = "1.1"
.end annotation


# static fields
.field public static final Companion:Lkotlin/collections/AbstractList$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lkotlin/collections/AbstractList$Companion;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lkotlin/collections/AbstractList$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlin/collections/AbstractList;->Companion:Lkotlin/collections/AbstractList$Companion;

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 22
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lkotlin/collections/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    new-instance v3, Ljava/lang/UnsupportedOperationException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "Operation is not supported for read-only collection"

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    new-instance v3, Ljava/lang/UnsupportedOperationException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "Operation is not supported for read-only collection"

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 61
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    move-object v3, v0

    check-cast v3, Lkotlin/collections/AbstractList;

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    move v0, v2

    .line 64
    :goto_0
    return v0

    .line 62
    :cond_0
    move-object v2, v1

    instance-of v2, v2, Ljava/util/List;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    move v0, v2

    goto :goto_0

    .line 64
    :cond_1
    sget-object v2, Lkotlin/collections/AbstractList;->Companion:Lkotlin/collections/AbstractList$Companion;

    move-object v3, v0

    check-cast v3, Ljava/util/Collection;

    move-object v4, v1

    check-cast v4, Ljava/util/Collection;

    invoke-virtual {v2, v3, v4}, Lkotlin/collections/AbstractList$Companion;->orderedEquals$kotlin_stdlib(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v2

    move v0, v2

    goto :goto_0
.end method

.method public abstract get(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation
.end method

.method public abstract getSize()I
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 70
    move-object v0, p0

    sget-object v1, Lkotlin/collections/AbstractList;->Companion:Lkotlin/collections/AbstractList$Companion;

    move-object v2, v0

    check-cast v2, Ljava/util/Collection;

    invoke-virtual {v1, v2}, Lkotlin/collections/AbstractList$Companion;->orderedHashCode$kotlin_stdlib(Ljava/util/Collection;)I

    move-result v1

    move v0, v1

    return v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 11

    .prologue
    .line 28
    move-object v0, p0

    move-object v1, p1

    move-object v9, v0

    move-object v2, v9

    .line 150
    const/4 v9, 0x0

    move v3, v9

    .line 151
    move-object v9, v2

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-object v4, v9

    :goto_0
    move-object v9, v4

    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    move-object v9, v4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    move-object v5, v9

    .line 152
    move-object v9, v5

    move-object v6, v9

    .line 28
    move-object v9, v6

    move-object v10, v1

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 153
    move v9, v3

    .line 28
    :goto_1
    move v0, v9

    return v0

    .line 154
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 151
    goto :goto_0

    .line 156
    :cond_1
    const/4 v9, -0x1

    goto :goto_1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 26
    move-object v0, p0

    new-instance v1, Lkotlin/collections/AbstractList$IteratorImpl;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lkotlin/collections/AbstractList$IteratorImpl;-><init>(Lkotlin/collections/AbstractList;)V

    check-cast v1, Ljava/util/Iterator;

    move-object v0, v1

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 9

    .prologue
    .line 30
    move-object v0, p0

    move-object v1, p1

    move-object v7, v0

    move-object v2, v7

    .line 157
    move-object v7, v2

    move-object v8, v2

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    invoke-interface {v7, v8}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v7

    move-object v3, v7

    .line 158
    :goto_0
    move-object v7, v3

    invoke-interface {v7}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 159
    move-object v7, v3

    invoke-interface {v7}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v7

    move-object v4, v7

    .line 30
    move-object v7, v4

    move-object v8, v1

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 160
    move-object v7, v3

    invoke-interface {v7}, Ljava/util/ListIterator;->nextIndex()I

    move-result v7

    .line 30
    :goto_1
    move v0, v7

    return v0

    .line 158
    :cond_0
    goto :goto_0

    .line 163
    :cond_1
    const/4 v7, -0x1

    goto :goto_1
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator",
            "<TE;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 32
    move-object v0, p0

    new-instance v1, Lkotlin/collections/AbstractList$ListIteratorImpl;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    move-object v3, v0

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lkotlin/collections/AbstractList$ListIteratorImpl;-><init>(Lkotlin/collections/AbstractList;I)V

    check-cast v1, Ljava/util/ListIterator;

    move-object v0, v1

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator",
            "<TE;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 34
    move-object v0, p0

    move v1, p1

    new-instance v2, Lkotlin/collections/AbstractList$ListIteratorImpl;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move v5, v1

    invoke-direct {v3, v4, v5}, Lkotlin/collections/AbstractList$ListIteratorImpl;-><init>(Lkotlin/collections/AbstractList;I)V

    check-cast v2, Ljava/util/ListIterator;

    move-object v0, v2

    return-object v0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    move-object v0, p0

    move v1, p1

    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Operation is not supported for read-only collection"

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    new-instance v3, Ljava/lang/UnsupportedOperationException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "Operation is not supported for read-only collection"

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public subList(II)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 36
    move-object v0, p0

    move v1, p1

    move v2, p2

    new-instance v3, Lkotlin/collections/AbstractList$SubList;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    move v6, v1

    move v7, v2

    invoke-direct {v4, v5, v6, v7}, Lkotlin/collections/AbstractList$SubList;-><init>(Lkotlin/collections/AbstractList;II)V

    check-cast v3, Ljava/util/List;

    move-object v0, v3

    return-object v0
.end method
