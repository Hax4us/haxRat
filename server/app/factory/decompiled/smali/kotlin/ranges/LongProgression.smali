.class public Lkotlin/ranges/LongProgression;
.super Ljava/lang/Object;
.source "Progressions.kt"

# interfaces
.implements Ljava/lang/Iterable;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/ranges/LongProgression$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Ljava/lang/Long;",
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
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u001c\n\u0002\u0010\t\n\u0002\u0008\u000b\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0016\u0018\u0000 \u00182\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0018B\u001f\u0008\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u00a2\u0006\u0002\u0010\u0006J\u0013\u0010\r\u001a\u00020\u000e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0096\u0002J\u0008\u0010\u0011\u001a\u00020\u0012H\u0016J\u0008\u0010\u0013\u001a\u00020\u000eH\u0016J\t\u0010\u0014\u001a\u00020\u0015H\u0096\u0002J\u0008\u0010\u0016\u001a\u00020\u0017H\u0016R\u0011\u0010\u0007\u001a\u00020\u0002\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\n\u001a\u00020\u0002\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\tR\u0011\u0010\u0005\u001a\u00020\u0002\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\t\u00a8\u0006\u0019"
    }
    d2 = {
        "Lkotlin/ranges/LongProgression;",
        "",
        "",
        "start",
        "endInclusive",
        "step",
        "(JJJ)V",
        "first",
        "getFirst",
        "()J",
        "last",
        "getLast",
        "getStep",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "isEmpty",
        "iterator",
        "Lkotlin/collections/LongIterator;",
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
.field public static final Companion:Lkotlin/ranges/LongProgression$Companion;


# instance fields
.field private final first:J

.field private final last:J

.field private final step:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lkotlin/ranges/LongProgression$Companion;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lkotlin/ranges/LongProgression$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlin/ranges/LongProgression;->Companion:Lkotlin/ranges/LongProgression$Companion;

    return-void
.end method

.method public constructor <init>(JJJ)V
    .locals 15

    .prologue
    .line 124
    move-object v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-object v7, v0

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 131
    move-wide v7, v5

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-nez v7, :cond_0

    new-instance v7, Ljava/lang/IllegalArgumentException;

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    const-string v9, "Step must be non-zero"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v7, Ljava/lang/Throwable;

    throw v7

    .line 137
    :cond_0
    move-object v7, v0

    move-wide v8, v1

    iput-wide v8, v7, Lkotlin/ranges/LongProgression;->first:J

    .line 142
    move-object v7, v0

    move-wide v8, v1

    move-wide v10, v3

    move-wide v12, v5

    invoke-static/range {v8 .. v13}, Lkotlin/internal/ProgressionUtilKt;->getProgressionLastElement(JJJ)J

    move-result-wide v8

    iput-wide v8, v7, Lkotlin/ranges/LongProgression;->last:J

    .line 147
    move-object v7, v0

    move-wide v8, v5

    iput-wide v8, v7, Lkotlin/ranges/LongProgression;->step:J

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 155
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    instance-of v2, v2, Lkotlin/ranges/LongProgression;

    if-eqz v2, :cond_2

    move-object v2, v0

    invoke-virtual {v2}, Lkotlin/ranges/LongProgression;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lkotlin/ranges/LongProgression;

    invoke-virtual {v2}, Lkotlin/ranges/LongProgression;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move-object v2, v0

    iget-wide v2, v2, Lkotlin/ranges/LongProgression;->first:J

    move-object v4, v1

    check-cast v4, Lkotlin/ranges/LongProgression;

    iget-wide v4, v4, Lkotlin/ranges/LongProgression;->first:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    move-object v2, v0

    iget-wide v2, v2, Lkotlin/ranges/LongProgression;->last:J

    move-object v4, v1

    check-cast v4, Lkotlin/ranges/LongProgression;

    iget-wide v4, v4, Lkotlin/ranges/LongProgression;->last:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    move-object v2, v0

    iget-wide v2, v2, Lkotlin/ranges/LongProgression;->step:J

    move-object v4, v1

    check-cast v4, Lkotlin/ranges/LongProgression;

    iget-wide v4, v4, Lkotlin/ranges/LongProgression;->step:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    :cond_1
    const/4 v2, 0x1

    .line 156
    :goto_0
    move v0, v2

    return v0

    .line 155
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public final getFirst()J
    .locals 3

    .prologue
    .line 137
    move-object v0, p0

    move-object v1, v0

    iget-wide v1, v1, Lkotlin/ranges/LongProgression;->first:J

    move-wide v0, v1

    return-wide v0
.end method

.method public final getLast()J
    .locals 3

    .prologue
    .line 142
    move-object v0, p0

    move-object v1, v0

    iget-wide v1, v1, Lkotlin/ranges/LongProgression;->last:J

    move-wide v0, v1

    return-wide v0
.end method

.method public final getStep()J
    .locals 3

    .prologue
    .line 147
    move-object v0, p0

    move-object v1, v0

    iget-wide v1, v1, Lkotlin/ranges/LongProgression;->step:J

    move-wide v0, v1

    return-wide v0
.end method

.method public hashCode()I
    .locals 10

    .prologue
    .line 159
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lkotlin/ranges/LongProgression;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/16 v1, 0x1f

    int-to-long v1, v1

    const/16 v3, 0x1f

    int-to-long v3, v3

    move-object v5, v0

    iget-wide v5, v5, Lkotlin/ranges/LongProgression;->first:J

    move-object v7, v0

    iget-wide v7, v7, Lkotlin/ranges/LongProgression;->first:J

    const/16 v9, 0x20

    ushr-long/2addr v7, v9

    xor-long/2addr v5, v7

    mul-long/2addr v3, v5

    move-object v5, v0

    iget-wide v5, v5, Lkotlin/ranges/LongProgression;->last:J

    move-object v7, v0

    iget-wide v7, v7, Lkotlin/ranges/LongProgression;->last:J

    const/16 v9, 0x20

    ushr-long/2addr v7, v9

    xor-long/2addr v5, v7

    add-long/2addr v3, v5

    mul-long/2addr v1, v3

    move-object v3, v0

    iget-wide v3, v3, Lkotlin/ranges/LongProgression;->step:J

    move-object v5, v0

    iget-wide v5, v5, Lkotlin/ranges/LongProgression;->step:J

    const/16 v7, 0x20

    ushr-long/2addr v5, v7

    xor-long/2addr v3, v5

    add-long/2addr v1, v3

    long-to-int v1, v1

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 5

    .prologue
    .line 152
    move-object v0, p0

    move-object v1, v0

    iget-wide v1, v1, Lkotlin/ranges/LongProgression;->step:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    move-object v1, v0

    iget-wide v1, v1, Lkotlin/ranges/LongProgression;->first:J

    move-object v3, v0

    iget-wide v3, v3, Lkotlin/ranges/LongProgression;->last:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move-object v1, v0

    iget-wide v1, v1, Lkotlin/ranges/LongProgression;->first:J

    move-object v3, v0

    iget-wide v3, v3, Lkotlin/ranges/LongProgression;->last:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 2

    .prologue
    .line 123
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lkotlin/ranges/LongProgression;->iterator()Lkotlin/collections/LongIterator;

    move-result-object v1

    check-cast v1, Ljava/util/Iterator;

    move-object v0, v1

    return-object v0
.end method

.method public iterator()Lkotlin/collections/LongIterator;
    .locals 10
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 149
    move-object v0, p0

    new-instance v1, Lkotlin/ranges/LongProgressionIterator;

    move-object v9, v1

    move-object v1, v9

    move-object v2, v9

    move-object v3, v0

    iget-wide v3, v3, Lkotlin/ranges/LongProgression;->first:J

    move-object v5, v0

    iget-wide v5, v5, Lkotlin/ranges/LongProgression;->last:J

    move-object v7, v0

    iget-wide v7, v7, Lkotlin/ranges/LongProgression;->step:J

    invoke-direct/range {v2 .. v8}, Lkotlin/ranges/LongProgressionIterator;-><init>(JJJ)V

    check-cast v1, Lkotlin/collections/LongIterator;

    move-object v0, v1

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 161
    move-object v0, p0

    move-object v1, v0

    iget-wide v1, v1, Lkotlin/ranges/LongProgression;->step:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v0

    iget-wide v2, v2, Lkotlin/ranges/LongProgression;->first:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-wide v2, v2, Lkotlin/ranges/LongProgression;->last:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " step "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-wide v2, v2, Lkotlin/ranges/LongProgression;->step:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    move-object v0, v1

    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v0

    iget-wide v2, v2, Lkotlin/ranges/LongProgression;->first:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " downTo "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-wide v2, v2, Lkotlin/ranges/LongProgression;->last:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " step "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-wide v2, v2, Lkotlin/ranges/LongProgression;->step:J

    neg-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
