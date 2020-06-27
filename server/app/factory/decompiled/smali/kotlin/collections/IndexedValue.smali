.class public final Lkotlin/collections/IndexedValue;
.super Ljava/lang/Object;
.source "IndexedValue.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000c\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u0000*\u0006\u0008\u0000\u0010\u0001 \u00012\u00020\u0002B\u0015\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00028\u0000\u00a2\u0006\u0002\u0010\u0006J\t\u0010\u000c\u001a\u00020\u0004H\u00c6\u0003J\u000e\u0010\r\u001a\u00028\u0000H\u00c6\u0003\u00a2\u0006\u0002\u0010\nJ(\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00002\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0005\u001a\u00028\u0000H\u00c6\u0001\u00a2\u0006\u0002\u0010\u000fJ\u0013\u0010\u0010\u001a\u00020\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0002H\u00d6\u0003J\t\u0010\u0013\u001a\u00020\u0004H\u00d6\u0001J\t\u0010\u0014\u001a\u00020\u0015H\u00d6\u0001R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0013\u0010\u0005\u001a\u00028\u0000\u00a2\u0006\n\n\u0002\u0010\u000b\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u0016"
    }
    d2 = {
        "Lkotlin/collections/IndexedValue;",
        "T",
        "",
        "index",
        "",
        "value",
        "(ILjava/lang/Object;)V",
        "getIndex",
        "()I",
        "getValue",
        "()Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "component1",
        "component2",
        "copy",
        "(ILjava/lang/Object;)Lkotlin/collections/IndexedValue;",
        "equals",
        "",
        "other",
        "hashCode",
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
.field private final index:I

.field private final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .prologue
    .line 14
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object v3, v0

    move v4, v1

    iput v4, v3, Lkotlin/collections/IndexedValue;->index:I

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lkotlin/collections/IndexedValue;->value:Ljava/lang/Object;

    return-void
.end method

.method public static bridge synthetic copy$default(Lkotlin/collections/IndexedValue;ILjava/lang/Object;ILjava/lang/Object;)Lkotlin/collections/IndexedValue;
    .locals 8
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, v3

    const/4 v6, 0x1

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_0

    move-object v5, v0

    iget v5, v5, Lkotlin/collections/IndexedValue;->index:I

    move v1, v5

    :cond_0
    move v5, v3

    const/4 v6, 0x2

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_1

    move-object v5, v0

    iget-object v5, v5, Lkotlin/collections/IndexedValue;->value:Ljava/lang/Object;

    move-object v2, v5

    :cond_1
    move-object v5, v0

    move v6, v1

    move-object v7, v2

    invoke-virtual {v5, v6, v7}, Lkotlin/collections/IndexedValue;->copy(ILjava/lang/Object;)Lkotlin/collections/IndexedValue;

    move-result-object v5

    move-object v0, v5

    return-object v0
.end method


# virtual methods
.method public final component1()I
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lkotlin/collections/IndexedValue;->index:I

    move v0, v1

    return v0
.end method

.method public final component2()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lkotlin/collections/IndexedValue;->value:Ljava/lang/Object;

    move-object v0, v1

    return-object v0
.end method

.method public final copy(ILjava/lang/Object;)Lkotlin/collections/IndexedValue;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)",
            "Lkotlin/collections/IndexedValue",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    new-instance v3, Lkotlin/collections/IndexedValue;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Lkotlin/collections/IndexedValue;-><init>(ILjava/lang/Object;)V

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

    instance-of v3, v3, Lkotlin/collections/IndexedValue;

    if-eqz v3, :cond_2

    move-object v3, v1

    check-cast v3, Lkotlin/collections/IndexedValue;

    move-object v2, v3

    move-object v3, v0

    iget v3, v3, Lkotlin/collections/IndexedValue;->index:I

    move-object v4, v2

    iget v4, v4, Lkotlin/collections/IndexedValue;->index:I

    if-ne v3, v4, :cond_1

    const/4 v3, 0x1

    :goto_0
    if-eqz v3, :cond_2

    move-object v3, v0

    iget-object v3, v3, Lkotlin/collections/IndexedValue;->value:Ljava/lang/Object;

    move-object v4, v2

    iget-object v4, v4, Lkotlin/collections/IndexedValue;->value:Ljava/lang/Object;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    const/4 v3, 0x1

    move v0, v3

    :goto_1
    return v0

    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    move v0, v3

    goto :goto_1
.end method

.method public final getIndex()I
    .locals 2

    .prologue
    .line 14
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lkotlin/collections/IndexedValue;->index:I

    move v0, v1

    return v0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 14
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lkotlin/collections/IndexedValue;->value:Ljava/lang/Object;

    move-object v0, v1

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lkotlin/collections/IndexedValue;->index:I

    const/16 v2, 0x1f

    mul-int/lit8 v1, v1, 0x1f

    move-object v2, v0

    iget-object v2, v2, Lkotlin/collections/IndexedValue;->value:Ljava/lang/Object;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v1, v2

    move v0, v1

    return v0

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    move-object v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IndexedValue(index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lkotlin/collections/IndexedValue;->index:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lkotlin/collections/IndexedValue;->value:Ljava/lang/Object;

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
