.class public final Lkotlin/collections/ArraysKt___ArraysJvmKt$asList$6;
.super Lkotlin/collections/AbstractList;
.source "_ArraysJvm.kt"

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/collections/ArraysKt___ArraysJvmKt;->asList([D)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/collections/AbstractList",
        "<",
        "Ljava/lang/Double;",
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
        "\u0000)\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0008*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u00060\u0003j\u0002`\u0004B\u0005\u00a2\u0006\u0002\u0010\u0005J\u0011\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u0002H\u0096\u0002J\u0016\u0010\r\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\u0007H\u0096\u0002\u00a2\u0006\u0002\u0010\u000fJ\u0010\u0010\u0010\u001a\u00020\u00072\u0006\u0010\u000c\u001a\u00020\u0002H\u0016J\u0008\u0010\u0011\u001a\u00020\u000bH\u0016J\u0010\u0010\u0012\u001a\u00020\u00072\u0006\u0010\u000c\u001a\u00020\u0002H\u0016R\u0014\u0010\u0006\u001a\u00020\u00078VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\u0013"
    }
    d2 = {
        "kotlin/collections/ArraysKt___ArraysJvmKt$asList$6",
        "Lkotlin/collections/AbstractList;",
        "",
        "Ljava/util/RandomAccess;",
        "Lkotlin/collections/RandomAccess;",
        "([D)V",
        "size",
        "",
        "getSize",
        "()I",
        "contains",
        "",
        "element",
        "get",
        "index",
        "(I)Ljava/lang/Double;",
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
.field final synthetic receiver$0:[D


# direct methods
.method constructor <init>([D)V
    .locals 4

    .prologue
    .line 117
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lkotlin/collections/ArraysKt___ArraysJvmKt$asList$6;->receiver$0:[D

    move-object v2, v0

    invoke-direct {v2}, Lkotlin/collections/AbstractList;-><init>()V

    return-void
.end method


# virtual methods
.method public contains(D)Z
    .locals 6

    .prologue
    .line 120
    move-object v0, p0

    move-wide v1, p1

    move-object v3, v0

    iget-object v3, v3, Lkotlin/collections/ArraysKt___ArraysJvmKt$asList$6;->receiver$0:[D

    move-wide v4, v1

    invoke-static {v3, v4, v5}, Lkotlin/collections/ArraysKt;->contains([DD)Z

    move-result v3

    move v0, v3

    return v0
.end method

.method public final bridge contains(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 117
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    instance-of v2, v2, Ljava/lang/Double;

    if-eqz v2, :cond_0

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lkotlin/collections/ArraysKt___ArraysJvmKt$asList$6;->contains(D)Z

    move-result v2

    move v0, v2

    :goto_0
    return v0

    :cond_0
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public get(I)Ljava/lang/Double;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 121
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lkotlin/collections/ArraysKt___ArraysJvmKt$asList$6;->receiver$0:[D

    move v3, v1

    aget-wide v2, v2, v3

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 117
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lkotlin/collections/ArraysKt___ArraysJvmKt$asList$6;->get(I)Ljava/lang/Double;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public getSize()I
    .locals 2

    .prologue
    .line 118
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lkotlin/collections/ArraysKt___ArraysJvmKt$asList$6;->receiver$0:[D

    array-length v1, v1

    move v0, v1

    return v0
.end method

.method public indexOf(D)I
    .locals 6

    .prologue
    .line 122
    move-object v0, p0

    move-wide v1, p1

    move-object v3, v0

    iget-object v3, v3, Lkotlin/collections/ArraysKt___ArraysJvmKt$asList$6;->receiver$0:[D

    move-wide v4, v1

    invoke-static {v3, v4, v5}, Lkotlin/collections/ArraysKt;->indexOf([DD)I

    move-result v3

    move v0, v3

    return v0
.end method

.method public final bridge indexOf(Ljava/lang/Object;)I
    .locals 5

    .prologue
    .line 117
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    instance-of v2, v2, Ljava/lang/Double;

    if-eqz v2, :cond_0

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lkotlin/collections/ArraysKt___ArraysJvmKt$asList$6;->indexOf(D)I

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
    .line 119
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lkotlin/collections/ArraysKt___ArraysJvmKt$asList$6;->receiver$0:[D

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

.method public lastIndexOf(D)I
    .locals 6

    .prologue
    .line 123
    move-object v0, p0

    move-wide v1, p1

    move-object v3, v0

    iget-object v3, v3, Lkotlin/collections/ArraysKt___ArraysJvmKt$asList$6;->receiver$0:[D

    move-wide v4, v1

    invoke-static {v3, v4, v5}, Lkotlin/collections/ArraysKt;->lastIndexOf([DD)I

    move-result v3

    move v0, v3

    return v0
.end method

.method public final bridge lastIndexOf(Ljava/lang/Object;)I
    .locals 5

    .prologue
    .line 117
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    instance-of v2, v2, Ljava/lang/Double;

    if-eqz v2, :cond_0

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lkotlin/collections/ArraysKt___ArraysJvmKt$asList$6;->lastIndexOf(D)I

    move-result v2

    move v0, v2

    :goto_0
    return v0

    :cond_0
    const/4 v2, -0x1

    move v0, v2

    goto :goto_0
.end method
