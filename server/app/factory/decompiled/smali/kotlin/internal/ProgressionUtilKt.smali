.class public final Lkotlin/internal/ProgressionUtilKt;
.super Ljava/lang/Object;
.source "progressionUtil.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0006\u001a \u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u0001H\u0002\u001a \u0010\u0000\u001a\u00020\u00052\u0006\u0010\u0002\u001a\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0005H\u0002\u001a \u0010\u0006\u001a\u00020\u00012\u0006\u0010\u0007\u001a\u00020\u00012\u0006\u0010\u0008\u001a\u00020\u00012\u0006\u0010\t\u001a\u00020\u0001H\u0001\u001a \u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u0005H\u0001\u001a\u0018\u0010\n\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0001H\u0002\u001a\u0018\u0010\n\u001a\u00020\u00052\u0006\u0010\u0002\u001a\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u0005H\u0002\u00a8\u0006\u000b"
    }
    d2 = {
        "differenceModulo",
        "",
        "a",
        "b",
        "c",
        "",
        "getProgressionLastElement",
        "start",
        "end",
        "step",
        "mod",
        "kotlin-stdlib"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0xa
    }
.end annotation


# direct methods
.method private static final differenceModulo(III)I
    .locals 6

    .prologue
    .line 21
    move v0, p0

    move v1, p1

    move v2, p2

    move v3, v0

    move v4, v2

    invoke-static {v3, v4}, Lkotlin/internal/ProgressionUtilKt;->mod(II)I

    move-result v3

    move v4, v1

    move v5, v2

    invoke-static {v4, v5}, Lkotlin/internal/ProgressionUtilKt;->mod(II)I

    move-result v4

    sub-int/2addr v3, v4

    move v4, v2

    invoke-static {v3, v4}, Lkotlin/internal/ProgressionUtilKt;->mod(II)I

    move-result v3

    move v0, v3

    return v0
.end method

.method private static final differenceModulo(JJJ)J
    .locals 12

    .prologue
    .line 25
    move-wide v0, p0

    move-wide v2, p2

    move-wide/from16 v4, p4

    move-wide v6, v0

    move-wide v8, v4

    invoke-static {v6, v7, v8, v9}, Lkotlin/internal/ProgressionUtilKt;->mod(JJ)J

    move-result-wide v6

    move-wide v8, v2

    move-wide v10, v4

    invoke-static {v8, v9, v10, v11}, Lkotlin/internal/ProgressionUtilKt;->mod(JJ)J

    move-result-wide v8

    sub-long/2addr v6, v8

    move-wide v8, v4

    invoke-static {v6, v7, v8, v9}, Lkotlin/internal/ProgressionUtilKt;->mod(JJ)J

    move-result-wide v6

    move-wide v0, v6

    return-wide v0
.end method

.method public static final getProgressionLastElement(III)I
    .locals 8
    .annotation build Lkotlin/PublishedApi;
    .end annotation

    .prologue
    .line 45
    move v0, p0

    move v1, p1

    move v2, p2

    move v3, v2

    if-lez v3, :cond_1

    move v3, v0

    move v4, v1

    if-lt v3, v4, :cond_0

    move v3, v1

    :goto_0
    move v0, v3

    return v0

    :cond_0
    move v3, v1

    move v4, v1

    move v5, v0

    move v6, v2

    invoke-static {v4, v5, v6}, Lkotlin/internal/ProgressionUtilKt;->differenceModulo(III)I

    move-result v4

    sub-int/2addr v3, v4

    goto :goto_0

    .line 47
    :cond_1
    move v3, v2

    if-gez v3, :cond_3

    move v3, v0

    move v4, v1

    if-gt v3, v4, :cond_2

    move v3, v1

    goto :goto_0

    :cond_2
    move v3, v1

    move v4, v0

    move v5, v1

    move v6, v2

    neg-int v6, v6

    invoke-static {v4, v5, v6}, Lkotlin/internal/ProgressionUtilKt;->differenceModulo(III)I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_0

    .line 48
    :cond_3
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const-string v5, "Step is zero."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Throwable;

    throw v3
.end method

.method public static final getProgressionLastElement(JJJ)J
    .locals 15
    .annotation build Lkotlin/PublishedApi;
    .end annotation

    .prologue
    .line 68
    move-wide v0, p0

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-wide v6, v4

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_1

    move-wide v6, v0

    move-wide v8, v2

    cmp-long v6, v6, v8

    if-ltz v6, :cond_0

    move-wide v6, v2

    :goto_0
    move-wide v0, v6

    return-wide v0

    :cond_0
    move-wide v6, v2

    move-wide v8, v2

    move-wide v10, v0

    move-wide v12, v4

    invoke-static/range {v8 .. v13}, Lkotlin/internal/ProgressionUtilKt;->differenceModulo(JJJ)J

    move-result-wide v8

    sub-long/2addr v6, v8

    goto :goto_0

    .line 70
    :cond_1
    move-wide v6, v4

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-gez v6, :cond_3

    move-wide v6, v0

    move-wide v8, v2

    cmp-long v6, v6, v8

    if-gtz v6, :cond_2

    move-wide v6, v2

    goto :goto_0

    :cond_2
    move-wide v6, v2

    move-wide v8, v0

    move-wide v10, v2

    move-wide v12, v4

    neg-long v12, v12

    invoke-static/range {v8 .. v13}, Lkotlin/internal/ProgressionUtilKt;->differenceModulo(JJJ)J

    move-result-wide v8

    add-long/2addr v6, v8

    goto :goto_0

    .line 71
    :cond_3
    new-instance v6, Ljava/lang/IllegalArgumentException;

    move-object v14, v6

    move-object v6, v14

    move-object v7, v14

    const-string v8, "Step is zero."

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v6, Ljava/lang/Throwable;

    throw v6
.end method

.method private static final mod(II)I
    .locals 5

    .prologue
    .line 10
    move v0, p0

    move v1, p1

    move v3, v0

    move v4, v1

    rem-int/2addr v3, v4

    move v2, v3

    .line 11
    move v3, v2

    if-ltz v3, :cond_0

    move v3, v2

    :goto_0
    move v0, v3

    return v0

    :cond_0
    move v3, v2

    move v4, v1

    add-int/2addr v3, v4

    goto :goto_0
.end method

.method private static final mod(JJ)J
    .locals 10

    .prologue
    .line 15
    move-wide v0, p0

    move-wide v2, p2

    move-wide v6, v0

    move-wide v8, v2

    rem-long/2addr v6, v8

    move-wide v4, v6

    .line 16
    move-wide v6, v4

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-ltz v6, :cond_0

    move-wide v6, v4

    :goto_0
    move-wide v0, v6

    return-wide v0

    :cond_0
    move-wide v6, v4

    move-wide v8, v2

    add-long/2addr v6, v8

    goto :goto_0
.end method
