.class public final Lkotlin/ranges/LongRange;
.super Lkotlin/ranges/LongProgression;
.source "Ranges.kt"

# interfaces
.implements Lkotlin/ranges/ClosedRange;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/ranges/LongRange$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/ranges/LongProgression;",
        "Lkotlin/ranges/ClosedRange",
        "<",
        "Ljava/lang/Long;",
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
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0018\u0000 \u00152\u00020\u00012\u0008\u0012\u0004\u0012\u00020\u00030\u0002:\u0001\u0015B\u0015\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0006J\u0011\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u0003H\u0096\u0002J\u0013\u0010\r\u001a\u00020\u000b2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0096\u0002J\u0008\u0010\u0010\u001a\u00020\u0011H\u0016J\u0008\u0010\u0012\u001a\u00020\u000bH\u0016J\u0008\u0010\u0013\u001a\u00020\u0014H\u0016R\u0014\u0010\u0005\u001a\u00020\u00038VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008R\u0014\u0010\u0004\u001a\u00020\u00038VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\u0008\u00a8\u0006\u0016"
    }
    d2 = {
        "Lkotlin/ranges/LongRange;",
        "Lkotlin/ranges/LongProgression;",
        "Lkotlin/ranges/ClosedRange;",
        "",
        "start",
        "endInclusive",
        "(JJ)V",
        "getEndInclusive",
        "()Ljava/lang/Long;",
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
.field public static final Companion:Lkotlin/ranges/LongRange$Companion;

.field private static final EMPTY:Lkotlin/ranges/LongRange;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    new-instance v0, Lkotlin/ranges/LongRange$Companion;

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lkotlin/ranges/LongRange$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlin/ranges/LongRange;->Companion:Lkotlin/ranges/LongRange$Companion;

    .line 84
    new-instance v0, Lkotlin/ranges/LongRange;

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    const-wide/16 v2, 0x1

    const-wide/16 v4, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lkotlin/ranges/LongRange;-><init>(JJ)V

    sput-object v0, Lkotlin/ranges/LongRange;->EMPTY:Lkotlin/ranges/LongRange;

    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 12

    .prologue
    .line 65
    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, v0

    move-wide v6, v1

    move-wide v8, v3

    const-wide/16 v10, 0x1

    invoke-direct/range {v5 .. v11}, Lkotlin/ranges/LongProgression;-><init>(JJJ)V

    return-void
.end method

.method public static final synthetic access$getEMPTY$cp()Lkotlin/ranges/LongRange;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 65
    sget-object v0, Lkotlin/ranges/LongRange;->EMPTY:Lkotlin/ranges/LongRange;

    return-object v0
.end method


# virtual methods
.method public contains(J)Z
    .locals 7

    .prologue
    .line 69
    move-object v0, p0

    move-wide v1, p1

    move-object v3, v0

    invoke-virtual {v3}, Lkotlin/ranges/LongRange;->getFirst()J

    move-result-wide v3

    move-wide v5, v1

    cmp-long v3, v3, v5

    if-gtz v3, :cond_0

    move-wide v3, v1

    move-object v5, v0

    invoke-virtual {v5}, Lkotlin/ranges/LongRange;->getLast()J

    move-result-wide v5

    cmp-long v3, v3, v5

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
    .line 65
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lkotlin/ranges/LongRange;->contains(J)Z

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
    .line 74
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    instance-of v2, v2, Lkotlin/ranges/LongRange;

    if-eqz v2, :cond_2

    move-object v2, v0

    invoke-virtual {v2}, Lkotlin/ranges/LongRange;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lkotlin/ranges/LongRange;

    invoke-virtual {v2}, Lkotlin/ranges/LongRange;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Lkotlin/ranges/LongRange;->getFirst()J

    move-result-wide v2

    move-object v4, v1

    check-cast v4, Lkotlin/ranges/LongRange;

    invoke-virtual {v4}, Lkotlin/ranges/LongRange;->getFirst()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    move-object v2, v0

    invoke-virtual {v2}, Lkotlin/ranges/LongRange;->getLast()J

    move-result-wide v2

    move-object v4, v1

    check-cast v4, Lkotlin/ranges/LongRange;

    invoke-virtual {v4}, Lkotlin/ranges/LongRange;->getLast()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    :cond_1
    const/4 v2, 0x1

    .line 75
    :goto_0
    move v0, v2

    return v0

    .line 74
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public bridge synthetic getEndInclusive()Ljava/lang/Comparable;
    .locals 2

    .prologue
    .line 65
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lkotlin/ranges/LongRange;->getEndInclusive()Ljava/lang/Long;

    move-result-object v1

    check-cast v1, Ljava/lang/Comparable;

    move-object v0, v1

    return-object v0
.end method

.method public getEndInclusive()Ljava/lang/Long;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 67
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lkotlin/ranges/LongRange;->getLast()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public bridge synthetic getStart()Ljava/lang/Comparable;
    .locals 2

    .prologue
    .line 65
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lkotlin/ranges/LongRange;->getStart()Ljava/lang/Long;

    move-result-object v1

    check-cast v1, Ljava/lang/Comparable;

    move-object v0, v1

    return-object v0
.end method

.method public getStart()Ljava/lang/Long;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 66
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lkotlin/ranges/LongRange;->getFirst()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public hashCode()I
    .locals 8

    .prologue
    .line 78
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lkotlin/ranges/LongRange;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/16 v1, 0x1f

    int-to-long v1, v1

    move-object v3, v0

    invoke-virtual {v3}, Lkotlin/ranges/LongRange;->getFirst()J

    move-result-wide v3

    move-object v5, v0

    invoke-virtual {v5}, Lkotlin/ranges/LongRange;->getFirst()J

    move-result-wide v5

    const/16 v7, 0x20

    ushr-long/2addr v5, v7

    xor-long/2addr v3, v5

    mul-long/2addr v1, v3

    move-object v3, v0

    invoke-virtual {v3}, Lkotlin/ranges/LongRange;->getLast()J

    move-result-wide v3

    move-object v5, v0

    invoke-virtual {v5}, Lkotlin/ranges/LongRange;->getLast()J

    move-result-wide v5

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
    .line 71
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lkotlin/ranges/LongRange;->getFirst()J

    move-result-wide v1

    move-object v3, v0

    invoke-virtual {v3}, Lkotlin/ranges/LongRange;->getLast()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 80
    move-object v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v0

    invoke-virtual {v2}, Lkotlin/ranges/LongRange;->getFirst()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v2}, Lkotlin/ranges/LongRange;->getLast()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method
