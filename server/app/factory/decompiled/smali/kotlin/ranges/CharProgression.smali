.class public Lkotlin/ranges/CharProgression;
.super Ljava/lang/Object;
.source "Progressions.kt"

# interfaces
.implements Ljava/lang/Iterable;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/ranges/CharProgression$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Ljava/lang/Character;",
        ">;",
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
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u001c\n\u0002\u0010\u000c\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0016\u0018\u0000 \u00192\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0019B\u001f\u0008\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\u0013\u0010\u000f\u001a\u00020\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0096\u0002J\u0008\u0010\u0013\u001a\u00020\u0006H\u0016J\u0008\u0010\u0014\u001a\u00020\u0010H\u0016J\t\u0010\u0015\u001a\u00020\u0016H\u0096\u0002J\u0008\u0010\u0017\u001a\u00020\u0018H\u0016R\u0011\u0010\u0008\u001a\u00020\u0002\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u000b\u001a\u00020\u0002\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\nR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u001a"
    }
    d2 = {
        "Lkotlin/ranges/CharProgression;",
        "",
        "",
        "start",
        "endInclusive",
        "step",
        "",
        "(CCI)V",
        "first",
        "getFirst",
        "()C",
        "last",
        "getLast",
        "getStep",
        "()I",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "isEmpty",
        "iterator",
        "Lkotlin/collections/CharIterator;",
        "toString",
        "",
        "Companion",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xa
    }
.end annotation


# static fields
.field public static final Companion:Lkotlin/ranges/CharProgression$Companion;


# instance fields
.field private final first:C

.field private final last:C

.field private final step:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lkotlin/ranges/CharProgression$Companion;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lkotlin/ranges/CharProgression$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlin/ranges/CharProgression;->Companion:Lkotlin/ranges/CharProgression$Companion;

    return-void
.end method

.method public constructor <init>(CCI)V
    .locals 9

    .prologue
    .line 16
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 23
    move v4, v3

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const-string v6, "Step must be non-zero"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v4, Ljava/lang/Throwable;

    throw v4

    .line 29
    :cond_0
    move-object v4, v0

    move v5, v1

    iput-char v5, v4, Lkotlin/ranges/CharProgression;->first:C

    .line 34
    move-object v4, v0

    move v5, v1

    move v6, v2

    move v7, v3

    invoke-static {v5, v6, v7}, Lkotlin/internal/ProgressionUtilKt;->getProgressionLastElement(III)I

    move-result v5

    int-to-char v5, v5

    iput-char v5, v4, Lkotlin/ranges/CharProgression;->last:C

    .line 39
    move-object v4, v0

    move v5, v3

    iput v5, v4, Lkotlin/ranges/CharProgression;->step:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 47
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    instance-of v2, v2, Lkotlin/ranges/CharProgression;

    if-eqz v2, :cond_2

    move-object v2, v0

    invoke-virtual {v2}, Lkotlin/ranges/CharProgression;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lkotlin/ranges/CharProgression;

    invoke-virtual {v2}, Lkotlin/ranges/CharProgression;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move-object v2, v0

    iget-char v2, v2, Lkotlin/ranges/CharProgression;->first:C

    move-object v3, v1

    check-cast v3, Lkotlin/ranges/CharProgression;

    iget-char v3, v3, Lkotlin/ranges/CharProgression;->first:C

    if-ne v2, v3, :cond_2

    move-object v2, v0

    iget-char v2, v2, Lkotlin/ranges/CharProgression;->last:C

    move-object v3, v1

    check-cast v3, Lkotlin/ranges/CharProgression;

    iget-char v3, v3, Lkotlin/ranges/CharProgression;->last:C

    if-ne v2, v3, :cond_2

    move-object v2, v0

    iget v2, v2, Lkotlin/ranges/CharProgression;->step:I

    move-object v3, v1

    check-cast v3, Lkotlin/ranges/CharProgression;

    iget v3, v3, Lkotlin/ranges/CharProgression;->step:I

    if-ne v2, v3, :cond_2

    :cond_1
    const/4 v2, 0x1

    .line 48
    :goto_0
    move v0, v2

    return v0

    .line 47
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public final getFirst()C
    .locals 2

    .prologue
    .line 29
    move-object v0, p0

    move-object v1, v0

    iget-char v1, v1, Lkotlin/ranges/CharProgression;->first:C

    move v0, v1

    return v0
.end method

.method public final getLast()C
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    move-object v1, v0

    iget-char v1, v1, Lkotlin/ranges/CharProgression;->last:C

    move v0, v1

    return v0
.end method

.method public final getStep()I
    .locals 2

    .prologue
    .line 39
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lkotlin/ranges/CharProgression;->step:I

    move v0, v1

    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 51
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lkotlin/ranges/CharProgression;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/16 v1, 0x1f

    const/16 v2, 0x1f

    move-object v3, v0

    iget-char v3, v3, Lkotlin/ranges/CharProgression;->first:C

    mul-int/2addr v2, v3

    move-object v3, v0

    iget-char v3, v3, Lkotlin/ranges/CharProgression;->last:C

    add-int/2addr v2, v3

    mul-int/2addr v1, v2

    move-object v2, v0

    iget v2, v2, Lkotlin/ranges/CharProgression;->step:I

    add-int/2addr v1, v2

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 3

    .prologue
    .line 44
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lkotlin/ranges/CharProgression;->step:I

    if-lez v1, :cond_1

    move-object v1, v0

    iget-char v1, v1, Lkotlin/ranges/CharProgression;->first:C

    move-object v2, v0

    iget-char v2, v2, Lkotlin/ranges/CharProgression;->last:C

    if-le v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move-object v1, v0

    iget-char v1, v1, Lkotlin/ranges/CharProgression;->first:C

    move-object v2, v0

    iget-char v2, v2, Lkotlin/ranges/CharProgression;->last:C

    if-ge v1, v2, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 2

    .prologue
    .line 15
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lkotlin/ranges/CharProgression;->iterator()Lkotlin/collections/CharIterator;

    move-result-object v1

    check-cast v1, Ljava/util/Iterator;

    move-object v0, v1

    return-object v0
.end method

.method public iterator()Lkotlin/collections/CharIterator;
    .locals 7
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 41
    move-object v0, p0

    new-instance v1, Lkotlin/ranges/CharProgressionIterator;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    move-object v3, v0

    iget-char v3, v3, Lkotlin/ranges/CharProgression;->first:C

    move-object v4, v0

    iget-char v4, v4, Lkotlin/ranges/CharProgression;->last:C

    move-object v5, v0

    iget v5, v5, Lkotlin/ranges/CharProgression;->step:I

    invoke-direct {v2, v3, v4, v5}, Lkotlin/ranges/CharProgressionIterator;-><init>(CCI)V

    check-cast v1, Lkotlin/collections/CharIterator;

    move-object v0, v1

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 53
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lkotlin/ranges/CharProgression;->step:I

    if-lez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v0

    iget-char v2, v2, Lkotlin/ranges/CharProgression;->first:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-char v2, v2, Lkotlin/ranges/CharProgression;->last:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " step "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lkotlin/ranges/CharProgression;->step:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    move-object v0, v1

    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v0

    iget-char v2, v2, Lkotlin/ranges/CharProgression;->first:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " downTo "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-char v2, v2, Lkotlin/ranges/CharProgression;->last:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " step "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lkotlin/ranges/CharProgression;->step:I

    neg-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
