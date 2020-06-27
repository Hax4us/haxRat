.class public final Lkotlin/text/MatchGroup;
.super Ljava/lang/Object;
.source "Regex.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u000c\u001a\u00020\u0005H\u00c6\u0003J\u001d\u0010\r\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0011\u001a\u00020\u0012H\u00d6\u0001J\t\u0010\u0013\u001a\u00020\u0003H\u00d6\u0001R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u0014"
    }
    d2 = {
        "Lkotlin/text/MatchGroup;",
        "",
        "value",
        "",
        "range",
        "Lkotlin/ranges/IntRange;",
        "(Ljava/lang/String;Lkotlin/ranges/IntRange;)V",
        "getRange",
        "()Lkotlin/ranges/IntRange;",
        "getValue",
        "()Ljava/lang/String;",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
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
.field private final range:Lkotlin/ranges/IntRange;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final value:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lkotlin/ranges/IntRange;)V
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/ranges/IntRange;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v1

    const-string v4, "value"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v2

    const-string v4, "range"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lkotlin/text/MatchGroup;->value:Ljava/lang/String;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lkotlin/text/MatchGroup;->range:Lkotlin/ranges/IntRange;

    return-void
.end method

.method public static bridge synthetic copy$default(Lkotlin/text/MatchGroup;Ljava/lang/String;Lkotlin/ranges/IntRange;ILjava/lang/Object;)Lkotlin/text/MatchGroup;
    .locals 8
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, v3

    const/4 v6, 0x1

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_0

    move-object v5, v0

    iget-object v5, v5, Lkotlin/text/MatchGroup;->value:Ljava/lang/String;

    move-object v1, v5

    :cond_0
    move v5, v3

    const/4 v6, 0x2

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_1

    move-object v5, v0

    iget-object v5, v5, Lkotlin/text/MatchGroup;->range:Lkotlin/ranges/IntRange;

    move-object v2, v5

    :cond_1
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-virtual {v5, v6, v7}, Lkotlin/text/MatchGroup;->copy(Ljava/lang/String;Lkotlin/ranges/IntRange;)Lkotlin/text/MatchGroup;

    move-result-object v5

    move-object v0, v5

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lkotlin/text/MatchGroup;->value:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public final component2()Lkotlin/ranges/IntRange;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lkotlin/text/MatchGroup;->range:Lkotlin/ranges/IntRange;

    move-object v0, v1

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Lkotlin/ranges/IntRange;)Lkotlin/text/MatchGroup;
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/ranges/IntRange;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v1

    const-string v4, "value"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v2

    const-string v4, "range"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lkotlin/text/MatchGroup;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Lkotlin/text/MatchGroup;-><init>(Ljava/lang/String;Lkotlin/ranges/IntRange;)V

    move-object v0, v3

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    if-eq v3, v4, :cond_0

    move-object v3, v1

    instance-of v3, v3, Lkotlin/text/MatchGroup;

    if-eqz v3, :cond_1

    move-object v3, v1

    check-cast v3, Lkotlin/text/MatchGroup;

    move-object v2, v3

    move-object v3, v0

    iget-object v3, v3, Lkotlin/text/MatchGroup;->value:Ljava/lang/String;

    move-object v4, v2

    iget-object v4, v4, Lkotlin/text/MatchGroup;->value:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Lkotlin/text/MatchGroup;->range:Lkotlin/ranges/IntRange;

    move-object v4, v2

    iget-object v4, v4, Lkotlin/text/MatchGroup;->range:Lkotlin/ranges/IntRange;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/4 v3, 0x1

    move v0, v3

    :goto_0
    return v0

    :cond_1
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method

.method public final getRange()Lkotlin/ranges/IntRange;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 79
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lkotlin/text/MatchGroup;->range:Lkotlin/ranges/IntRange;

    move-object v0, v1

    return-object v0
.end method

.method public final getValue()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 79
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lkotlin/text/MatchGroup;->value:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lkotlin/text/MatchGroup;->value:Ljava/lang/String;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    const/16 v2, 0x1f

    mul-int/lit8 v1, v1, 0x1f

    move-object v2, v0

    iget-object v2, v2, Lkotlin/text/MatchGroup;->range:Lkotlin/ranges/IntRange;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v1, v2

    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    move-object v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MatchGroup(value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lkotlin/text/MatchGroup;->value:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", range="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lkotlin/text/MatchGroup;->range:Lkotlin/ranges/IntRange;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method
