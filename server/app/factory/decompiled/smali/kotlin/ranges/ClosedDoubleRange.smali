.class final Lkotlin/ranges/ClosedDoubleRange;
.super Ljava/lang/Object;
.source "Ranges.kt"

# interfaces
.implements Lkotlin/ranges/ClosedFloatingPointRange;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/ranges/ClosedFloatingPointRange",
        "<",
        "Ljava/lang/Double;",
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
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0006\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0000\u0008\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0015\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u00a2\u0006\u0002\u0010\u0005J\u0011\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u0002H\u0096\u0002J\u0013\u0010\u000e\u001a\u00020\u000c2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0096\u0002J\u0008\u0010\u0011\u001a\u00020\u0012H\u0016J\u0008\u0010\u0013\u001a\u00020\u000cH\u0016J\u0018\u0010\u0014\u001a\u00020\u000c2\u0006\u0010\u0015\u001a\u00020\u00022\u0006\u0010\u0016\u001a\u00020\u0002H\u0016J\u0008\u0010\u0017\u001a\u00020\u0018H\u0016R\u000e\u0010\u0006\u001a\u00020\u0002X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0002X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0004\u001a\u00020\u00028VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\tR\u0014\u0010\u0003\u001a\u00020\u00028VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\t\u00a8\u0006\u0019"
    }
    d2 = {
        "Lkotlin/ranges/ClosedDoubleRange;",
        "Lkotlin/ranges/ClosedFloatingPointRange;",
        "",
        "start",
        "endInclusive",
        "(DD)V",
        "_endInclusive",
        "_start",
        "getEndInclusive",
        "()Ljava/lang/Double;",
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
.field private final _endInclusive:D

.field private final _start:D


# direct methods
.method public constructor <init>(DD)V
    .locals 8

    .prologue
    .line 56
    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 60
    move-object v5, v0

    move-wide v6, v1

    iput-wide v6, v5, Lkotlin/ranges/ClosedDoubleRange;->_start:D

    .line 61
    move-object v5, v0

    move-wide v6, v3

    iput-wide v6, v5, Lkotlin/ranges/ClosedDoubleRange;->_endInclusive:D

    return-void
.end method


# virtual methods
.method public contains(D)Z
    .locals 7

    .prologue
    .line 67
    move-object v0, p0

    move-wide v1, p1

    move-wide v3, v1

    move-object v5, v0

    iget-wide v5, v5, Lkotlin/ranges/ClosedDoubleRange;->_start:D

    cmpl-double v3, v3, v5

    if-ltz v3, :cond_0

    move-wide v3, v1

    move-object v5, v0

    iget-wide v5, v5, Lkotlin/ranges/ClosedDoubleRange;->_endInclusive:D

    cmpg-double v3, v3, v5

    if-gtz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    move v0, v3

    return v0

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public bridge synthetic contains(Ljava/lang/Comparable;)Z
    .locals 5

    .prologue
    .line 56
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lkotlin/ranges/ClosedDoubleRange;->contains(D)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 71
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    instance-of v2, v2, Lkotlin/ranges/ClosedDoubleRange;

    if-eqz v2, :cond_2

    move-object v2, v0

    invoke-virtual {v2}, Lkotlin/ranges/ClosedDoubleRange;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lkotlin/ranges/ClosedDoubleRange;

    invoke-virtual {v2}, Lkotlin/ranges/ClosedDoubleRange;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move-object v2, v0

    iget-wide v2, v2, Lkotlin/ranges/ClosedDoubleRange;->_start:D

    move-object v4, v1

    check-cast v4, Lkotlin/ranges/ClosedDoubleRange;

    iget-wide v4, v4, Lkotlin/ranges/ClosedDoubleRange;->_start:D

    cmpg-double v2, v2, v4

    if-nez v2, :cond_2

    move-object v2, v0

    iget-wide v2, v2, Lkotlin/ranges/ClosedDoubleRange;->_endInclusive:D

    move-object v4, v1

    check-cast v4, Lkotlin/ranges/ClosedDoubleRange;

    iget-wide v4, v4, Lkotlin/ranges/ClosedDoubleRange;->_endInclusive:D

    cmpg-double v2, v2, v4

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
    .line 56
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lkotlin/ranges/ClosedDoubleRange;->getEndInclusive()Ljava/lang/Double;

    move-result-object v1

    check-cast v1, Ljava/lang/Comparable;

    move-object v0, v1

    return-object v0
.end method

.method public getEndInclusive()Ljava/lang/Double;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 63
    move-object v0, p0

    move-object v1, v0

    iget-wide v1, v1, Lkotlin/ranges/ClosedDoubleRange;->_endInclusive:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public bridge synthetic getStart()Ljava/lang/Comparable;
    .locals 2

    .prologue
    .line 56
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lkotlin/ranges/ClosedDoubleRange;->getStart()Ljava/lang/Double;

    move-result-object v1

    check-cast v1, Ljava/lang/Comparable;

    move-object v0, v1

    return-object v0
.end method

.method public getStart()Ljava/lang/Double;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 62
    move-object v0, p0

    move-object v1, v0

    iget-wide v1, v1, Lkotlin/ranges/ClosedDoubleRange;->_start:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 76
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lkotlin/ranges/ClosedDoubleRange;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/16 v1, 0x1f

    move-object v2, v0

    iget-wide v2, v2, Lkotlin/ranges/ClosedDoubleRange;->_start:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    mul-int/2addr v1, v2

    move-object v2, v0

    iget-wide v2, v2, Lkotlin/ranges/ClosedDoubleRange;->_endInclusive:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 5

    .prologue
    .line 68
    move-object v0, p0

    move-object v1, v0

    iget-wide v1, v1, Lkotlin/ranges/ClosedDoubleRange;->_start:D

    move-object v3, v0

    iget-wide v3, v3, Lkotlin/ranges/ClosedDoubleRange;->_endInclusive:D

    cmpg-double v1, v1, v3

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public lessThanOrEquals(DD)Z
    .locals 9

    .prologue
    .line 65
    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, v1

    move-wide v7, v3

    cmpg-double v5, v5, v7

    if-gtz v5, :cond_0

    const/4 v5, 0x1

    :goto_0
    move v0, v5

    return v0

    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public bridge synthetic lessThanOrEquals(Ljava/lang/Comparable;Ljava/lang/Comparable;)Z
    .locals 8

    .prologue
    .line 56
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    move-object v6, v2

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v6

    invoke-virtual {v3, v4, v5, v6, v7}, Lkotlin/ranges/ClosedDoubleRange;->lessThanOrEquals(DD)Z

    move-result v3

    move v0, v3

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 79
    move-object v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v0

    iget-wide v2, v2, Lkotlin/ranges/ClosedDoubleRange;->_start:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-wide v2, v2, Lkotlin/ranges/ClosedDoubleRange;->_endInclusive:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method
