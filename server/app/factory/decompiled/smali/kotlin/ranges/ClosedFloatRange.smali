.class final Lkotlin/ranges/ClosedFloatRange;
.super Ljava/lang/Object;
.source "RangesJVM.kt"

# interfaces
.implements Lkotlin/ranges/ClosedFloatingPointRange;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/ranges/ClosedFloatingPointRange",
        "<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0000\u0008\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0015\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u00a2\u0006\u0002\u0010\u0005J\u0011\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u0002H\u0096\u0002J\u0013\u0010\u000e\u001a\u00020\u000c2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0096\u0002J\u0008\u0010\u0011\u001a\u00020\u0012H\u0016J\u0008\u0010\u0013\u001a\u00020\u000cH\u0016J\u0018\u0010\u0014\u001a\u00020\u000c2\u0006\u0010\u0015\u001a\u00020\u00022\u0006\u0010\u0016\u001a\u00020\u0002H\u0016J\u0008\u0010\u0017\u001a\u00020\u0018H\u0016R\u000e\u0010\u0006\u001a\u00020\u0002X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0002X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0004\u001a\u00020\u00028VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\tR\u0014\u0010\u0003\u001a\u00020\u00028VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\t\u00a8\u0006\u0019"
    }
    d2 = {
        "Lkotlin/ranges/ClosedFloatRange;",
        "Lkotlin/ranges/ClosedFloatingPointRange;",
        "",
        "start",
        "endInclusive",
        "(FF)V",
        "_endInclusive",
        "_start",
        "getEndInclusive",
        "()Ljava/lang/Float;",
        "getStart",
        "contains",
        "",
        "value",
        "equals",
        "other",
        "",
        "hashCode",
        "",
        "isEmpty",
        "lessThanOrEquals",
        "a",
        "b",
        "toString",
        "",
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
.field private final _endInclusive:F

.field private final _start:F


# direct methods
.method public constructor <init>(FF)V
    .locals 5

    .prologue
    .line 18
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 22
    move-object v3, v0

    move v4, v1

    iput v4, v3, Lkotlin/ranges/ClosedFloatRange;->_start:F

    .line 23
    move-object v3, v0

    move v4, v2

    iput v4, v3, Lkotlin/ranges/ClosedFloatRange;->_endInclusive:F

    return-void
.end method


# virtual methods
.method public contains(F)Z
    .locals 4

    .prologue
    .line 29
    move-object v0, p0

    move v1, p1

    move v2, v1

    move-object v3, v0

    iget v3, v3, Lkotlin/ranges/ClosedFloatRange;->_start:F

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_0

    move v2, v1

    move-object v3, v0

    iget v3, v3, Lkotlin/ranges/ClosedFloatRange;->_endInclusive:F

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    return v0

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public bridge synthetic contains(Ljava/lang/Comparable;)Z
    .locals 4

    .prologue
    .line 18
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v3

    invoke-virtual {v2, v3}, Lkotlin/ranges/ClosedFloatRange;->contains(F)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 33
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    instance-of v2, v2, Lkotlin/ranges/ClosedFloatRange;

    if-eqz v2, :cond_2

    move-object v2, v0

    invoke-virtual {v2}, Lkotlin/ranges/ClosedFloatRange;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lkotlin/ranges/ClosedFloatRange;

    invoke-virtual {v2}, Lkotlin/ranges/ClosedFloatRange;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move-object v2, v0

    iget v2, v2, Lkotlin/ranges/ClosedFloatRange;->_start:F

    move-object v3, v1

    check-cast v3, Lkotlin/ranges/ClosedFloatRange;

    iget v3, v3, Lkotlin/ranges/ClosedFloatRange;->_start:F

    cmpg-float v2, v2, v3

    if-nez v2, :cond_2

    move-object v2, v0

    iget v2, v2, Lkotlin/ranges/ClosedFloatRange;->_endInclusive:F

    move-object v3, v1

    check-cast v3, Lkotlin/ranges/ClosedFloatRange;

    iget v3, v3, Lkotlin/ranges/ClosedFloatRange;->_endInclusive:F

    cmpg-float v2, v2, v3

    if-nez v2, :cond_2

    :cond_1
    const/4 v2, 0x1

    :goto_0
    move v0, v2

    return v0

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public bridge synthetic getEndInclusive()Ljava/lang/Comparable;
    .locals 2

    .prologue
    .line 18
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lkotlin/ranges/ClosedFloatRange;->getEndInclusive()Ljava/lang/Float;

    move-result-object v1

    check-cast v1, Ljava/lang/Comparable;

    move-object v0, v1

    return-object v0
.end method

.method public getEndInclusive()Ljava/lang/Float;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 25
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lkotlin/ranges/ClosedFloatRange;->_endInclusive:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public bridge synthetic getStart()Ljava/lang/Comparable;
    .locals 2

    .prologue
    .line 18
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lkotlin/ranges/ClosedFloatRange;->getStart()Ljava/lang/Float;

    move-result-object v1

    check-cast v1, Ljava/lang/Comparable;

    move-object v0, v1

    return-object v0
.end method

.method public getStart()Ljava/lang/Float;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 24
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lkotlin/ranges/ClosedFloatRange;->_start:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 38
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lkotlin/ranges/ClosedFloatRange;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/16 v1, 0x1f

    move-object v2, v0

    iget v2, v2, Lkotlin/ranges/ClosedFloatRange;->_start:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    mul-int/2addr v1, v2

    move-object v2, v0

    iget v2, v2, Lkotlin/ranges/ClosedFloatRange;->_endInclusive:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 3

    .prologue
    .line 30
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lkotlin/ranges/ClosedFloatRange;->_start:F

    move-object v2, v0

    iget v2, v2, Lkotlin/ranges/ClosedFloatRange;->_endInclusive:F

    cmpg-float v1, v1, v2

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public lessThanOrEquals(FF)Z
    .locals 5

    .prologue
    .line 27
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, v1

    move v4, v2

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    move v0, v3

    return v0

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public bridge synthetic lessThanOrEquals(Ljava/lang/Comparable;Ljava/lang/Comparable;)Z
    .locals 6

    .prologue
    .line 18
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v4

    move-object v5, v2

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->floatValue()F

    move-result v5

    invoke-virtual {v3, v4, v5}, Lkotlin/ranges/ClosedFloatRange;->lessThanOrEquals(FF)Z

    move-result v3

    move v0, v3

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 41
    move-object v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v0

    iget v2, v2, Lkotlin/ranges/ClosedFloatRange;->_start:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lkotlin/ranges/ClosedFloatRange;->_endInclusive:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method
