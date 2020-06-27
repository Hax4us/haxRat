.class public final Lkotlin/ranges/LongProgressionIterator;
.super Lkotlin/collections/LongIterator;
.source "ProgressionIterators.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0008\u0000\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0006J\t\u0010\u0008\u001a\u00020\tH\u0096\u0002J\u0008\u0010\r\u001a\u00020\u0003H\u0016R\u000e\u0010\u0007\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u000e"
    }
    d2 = {
        "Lkotlin/ranges/LongProgressionIterator;",
        "Lkotlin/collections/LongIterator;",
        "first",
        "",
        "last",
        "step",
        "(JJJ)V",
        "finalElement",
        "hasNext",
        "",
        "next",
        "getStep",
        "()J",
        "nextLong",
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
.field private final finalElement:J

.field private hasNext:Z

.field private next:J

.field private final step:J


# direct methods
.method public constructor <init>(JJJ)V
    .locals 12

    .prologue
    .line 62
    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-wide/from16 v5, p5

    move-object v7, v0

    invoke-direct {v7}, Lkotlin/collections/LongIterator;-><init>()V

    move-object v7, v0

    move-wide v8, v5

    iput-wide v8, v7, Lkotlin/ranges/LongProgressionIterator;->step:J

    .line 63
    move-object v7, v0

    move-wide v8, v3

    iput-wide v8, v7, Lkotlin/ranges/LongProgressionIterator;->finalElement:J

    .line 64
    move-object v7, v0

    move-object v8, v0

    iget-wide v8, v8, Lkotlin/ranges/LongProgressionIterator;->step:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-lez v8, :cond_1

    move-wide v8, v1

    move-wide v10, v3

    cmp-long v8, v8, v10

    if-gtz v8, :cond_0

    const/4 v8, 0x1

    :goto_0
    iput-boolean v8, v7, Lkotlin/ranges/LongProgressionIterator;->hasNext:Z

    .line 65
    move-object v7, v0

    move-object v8, v0

    iget-boolean v8, v8, Lkotlin/ranges/LongProgressionIterator;->hasNext:Z

    if-eqz v8, :cond_3

    move-wide v8, v1

    :goto_1
    iput-wide v8, v7, Lkotlin/ranges/LongProgressionIterator;->next:J

    return-void

    .line 64
    :cond_0
    const/4 v8, 0x0

    goto :goto_0

    :cond_1
    move-wide v8, v1

    move-wide v10, v3

    cmp-long v8, v8, v10

    if-ltz v8, :cond_2

    const/4 v8, 0x1

    goto :goto_0

    :cond_2
    const/4 v8, 0x0

    goto :goto_0

    .line 65
    :cond_3
    move-object v8, v0

    iget-wide v8, v8, Lkotlin/ranges/LongProgressionIterator;->finalElement:J

    goto :goto_1
.end method


# virtual methods
.method public final getStep()J
    .locals 3

    .prologue
    .line 62
    move-object v0, p0

    move-object v1, v0

    iget-wide v1, v1, Lkotlin/ranges/LongProgressionIterator;->step:J

    move-wide v0, v1

    return-wide v0
.end method

.method public hasNext()Z
    .locals 2

    .prologue
    .line 67
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lkotlin/ranges/LongProgressionIterator;->hasNext:Z

    move v0, v1

    return v0
.end method

.method public nextLong()J
    .locals 9

    .prologue
    .line 70
    move-object v0, p0

    move-object v3, v0

    iget-wide v3, v3, Lkotlin/ranges/LongProgressionIterator;->next:J

    move-wide v1, v3

    .line 71
    move-wide v3, v1

    move-object v5, v0

    iget-wide v5, v5, Lkotlin/ranges/LongProgressionIterator;->finalElement:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    .line 72
    move-object v3, v0

    iget-boolean v3, v3, Lkotlin/ranges/LongProgressionIterator;->hasNext:Z

    if-nez v3, :cond_0

    new-instance v3, Ljava/util/NoSuchElementException;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    invoke-direct {v4}, Ljava/util/NoSuchElementException;-><init>()V

    check-cast v3, Ljava/lang/Throwable;

    throw v3

    .line 73
    :cond_0
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lkotlin/ranges/LongProgressionIterator;->hasNext:Z

    .line 77
    :goto_0
    move-wide v3, v1

    move-wide v0, v3

    return-wide v0

    .line 76
    :cond_1
    move-object v3, v0

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    iget-wide v4, v4, Lkotlin/ranges/LongProgressionIterator;->next:J

    move-object v6, v0

    iget-wide v6, v6, Lkotlin/ranges/LongProgressionIterator;->step:J

    add-long/2addr v4, v6

    iput-wide v4, v3, Lkotlin/ranges/LongProgressionIterator;->next:J

    goto :goto_0
.end method
