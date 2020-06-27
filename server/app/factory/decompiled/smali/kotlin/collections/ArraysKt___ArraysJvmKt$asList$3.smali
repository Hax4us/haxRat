.class public final Lkotlin/collections/ArraysKt___ArraysJvmKt$asList$3;
.super Lkotlin/collections/AbstractList;
.source "_ArraysJvm.kt"

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/collections/ArraysKt___ArraysJvmKt;->asList([I)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/collections/AbstractList",
        "<",
        "Ljava/lang/Integer;",
        ">;",
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
        "\u0000!\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0008*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u00060\u0003j\u0002`\u0004B\u0005\u00a2\u0006\u0002\u0010\u0005J\u0011\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0002H\u0096\u0002J\u0016\u0010\u000c\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u0002H\u0096\u0002\u00a2\u0006\u0002\u0010\u000eJ\u0010\u0010\u000f\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u0002H\u0016J\u0008\u0010\u0010\u001a\u00020\nH\u0016J\u0010\u0010\u0011\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u0002H\u0016R\u0014\u0010\u0006\u001a\u00020\u00028VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u0012"
    }
    d2 = {
        "kotlin/collections/ArraysKt___ArraysJvmKt$asList$3",
        "Lkotlin/collections/AbstractList;",
        "",
        "Ljava/util/RandomAccess;",
        "Lkotlin/collections/RandomAccess;",
        "([I)V",
        "size",
        "getSize",
        "()I",
        "contains",
        "",
        "element",
        "get",
        "index",
        "(I)Ljava/lang/Integer;",
        "indexOf",
        "isEmpty",
        "lastIndexOf",
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
.field final synthetic receiver$0:[I


# direct methods
.method constructor <init>([I)V
    .locals 4

    .prologue
    .line 75
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lkotlin/collections/ArraysKt___ArraysJvmKt$asList$3;->receiver$0:[I

    move-object v2, v0

    invoke-direct {v2}, Lkotlin/collections/AbstractList;-><init>()V

    return-void
.end method


# virtual methods
.method public contains(I)Z
    .locals 4

    .prologue
    .line 78
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lkotlin/collections/ArraysKt___ArraysJvmKt$asList$3;->receiver$0:[I

    move v3, v1

    invoke-static {v2, v3}, Lkotlin/collections/ArraysKt;->contains([II)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method public final bridge contains(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 75
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    instance-of v2, v2, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lkotlin/collections/ArraysKt___ArraysJvmKt$asList$3;->contains(I)Z

    move-result v2

    move v0, v2

    :goto_0
    return v0

    :cond_0
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public get(I)Ljava/lang/Integer;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 79
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lkotlin/collections/ArraysKt___ArraysJvmKt$asList$3;->receiver$0:[I

    move v3, v1

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 75
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lkotlin/collections/ArraysKt___ArraysJvmKt$asList$3;->get(I)Ljava/lang/Integer;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public getSize()I
    .locals 2

    .prologue
    .line 76
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lkotlin/collections/ArraysKt___ArraysJvmKt$asList$3;->receiver$0:[I

    array-length v1, v1

    move v0, v1

    return v0
.end method

.method public indexOf(I)I
    .locals 4

    .prologue
    .line 80
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lkotlin/collections/ArraysKt___ArraysJvmKt$asList$3;->receiver$0:[I

    move v3, v1

    invoke-static {v2, v3}, Lkotlin/collections/ArraysKt;->indexOf([II)I

    move-result v2

    move v0, v2

    return v0
.end method

.method public final bridge indexOf(Ljava/lang/Object;)I
    .locals 4

    .prologue
    .line 75
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    instance-of v2, v2, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lkotlin/collections/ArraysKt___ArraysJvmKt$asList$3;->indexOf(I)I

    move-result v2

    move v0, v2

    :goto_0
    return v0

    :cond_0
    const/4 v2, -0x1

    move v0, v2

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 3

    .prologue
    .line 77
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lkotlin/collections/ArraysKt___ArraysJvmKt$asList$3;->receiver$0:[I

    move-object v1, v2

    move-object v2, v1

    array-length v2, v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    return v0

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public lastIndexOf(I)I
    .locals 4

    .prologue
    .line 81
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lkotlin/collections/ArraysKt___ArraysJvmKt$asList$3;->receiver$0:[I

    move v3, v1

    invoke-static {v2, v3}, Lkotlin/collections/ArraysKt;->lastIndexOf([II)I

    move-result v2

    move v0, v2

    return v0
.end method

.method public final bridge lastIndexOf(Ljava/lang/Object;)I
    .locals 4

    .prologue
    .line 75
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    instance-of v2, v2, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lkotlin/collections/ArraysKt___ArraysJvmKt$asList$3;->lastIndexOf(I)I

    move-result v2

    move v0, v2

    :goto_0
    return v0

    :cond_0
    const/4 v2, -0x1

    move v0, v2

    goto :goto_0
.end method
