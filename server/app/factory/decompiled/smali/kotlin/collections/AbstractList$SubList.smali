.class final Lkotlin/collections/AbstractList$SubList;
.super Lkotlin/collections/AbstractList;
.source "AbstractList.kt"

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/collections/AbstractList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SubList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlin/collections/AbstractList",
        "<TE;>;",
        "Ljava/util/RandomAccess;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\n\u0008\u0002\u0018\u0000*\u0006\u0008\u0001\u0010\u0001 \u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u00022\u00060\u0003j\u0002`\u0004B#\u0012\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\tJ\u0016\u0010\u000e\u001a\u00028\u00012\u0006\u0010\u000f\u001a\u00020\u0007H\u0096\u0002\u00a2\u0006\u0002\u0010\u0010R\u000e\u0010\n\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u0002X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u00020\u00078VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0011"
    }
    d2 = {
        "Lkotlin/collections/AbstractList$SubList;",
        "E",
        "Lkotlin/collections/AbstractList;",
        "Ljava/util/RandomAccess;",
        "Lkotlin/collections/RandomAccess;",
        "list",
        "fromIndex",
        "",
        "toIndex",
        "(Lkotlin/collections/AbstractList;II)V",
        "_size",
        "size",
        "getSize",
        "()I",
        "get",
        "index",
        "(I)Ljava/lang/Object;",
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
.field private _size:I

.field private final fromIndex:I

.field private final list:Lkotlin/collections/AbstractList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/collections/AbstractList",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/collections/AbstractList;II)V
    .locals 8
    .param p1    # Lkotlin/collections/AbstractList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/collections/AbstractList",
            "<+TE;>;II)V"
        }
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v1

    const-string v5, "list"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    move-object v4, v0

    invoke-direct {v4}, Lkotlin/collections/AbstractList;-><init>()V

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lkotlin/collections/AbstractList$SubList;->list:Lkotlin/collections/AbstractList;

    move-object v4, v0

    move v5, v2

    iput v5, v4, Lkotlin/collections/AbstractList$SubList;->fromIndex:I

    .line 42
    sget-object v4, Lkotlin/collections/AbstractList;->Companion:Lkotlin/collections/AbstractList$Companion;

    move-object v5, v0

    iget v5, v5, Lkotlin/collections/AbstractList$SubList;->fromIndex:I

    move v6, v3

    move-object v7, v0

    iget-object v7, v7, Lkotlin/collections/AbstractList$SubList;->list:Lkotlin/collections/AbstractList;

    invoke-virtual {v7}, Lkotlin/collections/AbstractList;->size()I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Lkotlin/collections/AbstractList$Companion;->checkRangeIndexes$kotlin_stdlib(III)V

    .line 43
    move-object v4, v0

    move v5, v3

    move-object v6, v0

    iget v6, v6, Lkotlin/collections/AbstractList$SubList;->fromIndex:I

    sub-int/2addr v5, v6

    iput v5, v4, Lkotlin/collections/AbstractList$SubList;->_size:I

    return-void
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 47
    move-object v0, p0

    move v1, p1

    sget-object v2, Lkotlin/collections/AbstractList;->Companion:Lkotlin/collections/AbstractList$Companion;

    move v3, v1

    move-object v4, v0

    iget v4, v4, Lkotlin/collections/AbstractList$SubList;->_size:I

    invoke-virtual {v2, v3, v4}, Lkotlin/collections/AbstractList$Companion;->checkElementIndex$kotlin_stdlib(II)V

    .line 49
    move-object v2, v0

    iget-object v2, v2, Lkotlin/collections/AbstractList$SubList;->list:Lkotlin/collections/AbstractList;

    move-object v3, v0

    iget v3, v3, Lkotlin/collections/AbstractList$SubList;->fromIndex:I

    move v4, v1

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Lkotlin/collections/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public getSize()I
    .locals 2

    .prologue
    .line 52
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lkotlin/collections/AbstractList$SubList;->_size:I

    move v0, v1

    return v0
.end method
