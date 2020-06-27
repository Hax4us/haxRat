.class public final Lokio/Segment;
.super Ljava/lang/Object;
.source "Segment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokio/Segment$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u000b\u0008\u0000\u0018\u0000 \u00192\u00020\u0001:\u0001\u0019B\u0007\u0008\u0016\u00a2\u0006\u0002\u0010\u0002B/\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\t\u00a2\u0006\u0002\u0010\u000bJ\u0006\u0010\u000e\u001a\u00020\u000fJ\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0000J\u000e\u0010\u0011\u001a\u00020\u00002\u0006\u0010\u0012\u001a\u00020\u0000J\u0006\u0010\u0013\u001a\u00020\u0000J\u000e\u0010\u0014\u001a\u00020\u00002\u0006\u0010\u0015\u001a\u00020\u0006J\u0006\u0010\u0016\u001a\u00020\u0000J\u0016\u0010\u0017\u001a\u00020\u000f2\u0006\u0010\u0018\u001a\u00020\u00002\u0006\u0010\u0015\u001a\u00020\u0006R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u00020\u00068\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000c\u001a\u0004\u0018\u00010\u00008\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u00020\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u00020\u00068\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\u0004\u0018\u00010\u00008\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0008\u001a\u00020\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001a"
    }
    d2 = {
        "Lokio/Segment;",
        "",
        "()V",
        "data",
        "",
        "pos",
        "",
        "limit",
        "shared",
        "",
        "owner",
        "([BIIZZ)V",
        "next",
        "prev",
        "compact",
        "",
        "pop",
        "push",
        "segment",
        "sharedCopy",
        "split",
        "byteCount",
        "unsharedCopy",
        "writeTo",
        "sink",
        "Companion",
        "okio"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final Companion:Lokio/Segment$Companion;

.field public static final SHARE_MINIMUM:I = 0x400

.field public static final SIZE:I = 0x2000


# instance fields
.field public final data:[B
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public limit:I
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public next:Lokio/Segment;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public owner:Z
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public pos:I
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public prev:Lokio/Segment;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public shared:Z
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lokio/Segment$Companion;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lokio/Segment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lokio/Segment;->Companion:Lokio/Segment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 57
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    move-object v1, v0

    const/16 v2, 0x2000

    new-array v2, v2, [B

    iput-object v2, v1, Lokio/Segment;->data:[B

    .line 58
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lokio/Segment;->owner:Z

    .line 59
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lokio/Segment;->shared:Z

    return-void
.end method

.method public constructor <init>([BIIZZ)V
    .locals 8
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, v1

    const-string v7, "data"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    move-object v6, v0

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Lokio/Segment;->data:[B

    .line 64
    move-object v6, v0

    move v7, v2

    iput v7, v6, Lokio/Segment;->pos:I

    .line 65
    move-object v6, v0

    move v7, v3

    iput v7, v6, Lokio/Segment;->limit:I

    .line 66
    move-object v6, v0

    move v7, v4

    iput-boolean v7, v6, Lokio/Segment;->shared:Z

    .line 67
    move-object v6, v0

    move v7, v5

    iput-boolean v7, v6, Lokio/Segment;->owner:Z

    return-void
.end method


# virtual methods
.method public final compact()V
    .locals 9

    .prologue
    .line 142
    move-object v0, p0

    move-object v5, v0

    iget-object v5, v5, Lokio/Segment;->prev:Lokio/Segment;

    move-object v6, v0

    check-cast v6, Lokio/Segment;

    if-eq v5, v6, :cond_0

    const/4 v5, 0x1

    :goto_0
    move v1, v5

    const/4 v5, 0x0

    move v2, v5

    const/4 v5, 0x0

    move v3, v5

    move v5, v1

    if-nez v5, :cond_1

    const/4 v5, 0x0

    move v4, v5

    const-string v5, "cannot compact"

    move-object v3, v5

    new-instance v5, Ljava/lang/IllegalStateException;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v3

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v5, Ljava/lang/Throwable;

    throw v5

    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 143
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Lokio/Segment;->prev:Lokio/Segment;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    if-nez v6, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    iget-boolean v5, v5, Lokio/Segment;->owner:Z

    if-nez v5, :cond_3

    .line 150
    :goto_1
    return-void

    .line 144
    :cond_3
    move-object v5, v0

    iget v5, v5, Lokio/Segment;->limit:I

    move-object v6, v0

    iget v6, v6, Lokio/Segment;->pos:I

    sub-int/2addr v5, v6

    move v1, v5

    .line 145
    const/16 v5, 0x2000

    move-object v6, v0

    iget-object v6, v6, Lokio/Segment;->prev:Lokio/Segment;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    if-nez v7, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_4
    iget v6, v6, Lokio/Segment;->limit:I

    rsub-int v5, v6, 0x2000

    move-object v6, v0

    iget-object v6, v6, Lokio/Segment;->prev:Lokio/Segment;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    if-nez v7, :cond_5

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_5
    iget-boolean v6, v6, Lokio/Segment;->shared:Z

    if-eqz v6, :cond_6

    const/4 v6, 0x0

    :goto_2
    add-int/2addr v5, v6

    move v2, v5

    .line 146
    move v5, v1

    move v6, v2

    if-le v5, v6, :cond_8

    goto :goto_1

    .line 145
    :cond_6
    move-object v6, v0

    iget-object v6, v6, Lokio/Segment;->prev:Lokio/Segment;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    if-nez v7, :cond_7

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_7
    iget v6, v6, Lokio/Segment;->pos:I

    goto :goto_2

    .line 147
    :cond_8
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lokio/Segment;->prev:Lokio/Segment;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    if-nez v7, :cond_9

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_9
    move v7, v1

    invoke-virtual {v5, v6, v7}, Lokio/Segment;->writeTo(Lokio/Segment;I)V

    .line 148
    move-object v5, v0

    invoke-virtual {v5}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v5

    .line 149
    move-object v5, v0

    invoke-static {v5}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    .line 150
    goto :goto_1
.end method

.method public final pop()Lokio/Segment;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 88
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lokio/Segment;->next:Lokio/Segment;

    move-object v3, v0

    check-cast v3, Lokio/Segment;

    if-eq v2, v3, :cond_2

    move-object v2, v0

    iget-object v2, v2, Lokio/Segment;->next:Lokio/Segment;

    :goto_0
    move-object v1, v2

    .line 89
    move-object v2, v0

    iget-object v2, v2, Lokio/Segment;->prev:Lokio/Segment;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    if-nez v3, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lokio/Segment;->next:Lokio/Segment;

    iput-object v3, v2, Lokio/Segment;->next:Lokio/Segment;

    .line 90
    move-object v2, v0

    iget-object v2, v2, Lokio/Segment;->next:Lokio/Segment;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    if-nez v3, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lokio/Segment;->prev:Lokio/Segment;

    iput-object v3, v2, Lokio/Segment;->prev:Lokio/Segment;

    .line 91
    move-object v2, v0

    const/4 v3, 0x0

    check-cast v3, Lokio/Segment;

    iput-object v3, v2, Lokio/Segment;->next:Lokio/Segment;

    .line 92
    move-object v2, v0

    const/4 v3, 0x0

    check-cast v3, Lokio/Segment;

    iput-object v3, v2, Lokio/Segment;->prev:Lokio/Segment;

    .line 93
    move-object v2, v1

    move-object v0, v2

    return-object v0

    .line 88
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public final push(Lokio/Segment;)Lokio/Segment;
    .locals 5
    .param p1    # Lokio/Segment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    const-string v3, "segment"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    move-object v2, v1

    move-object v3, v0

    check-cast v3, Lokio/Segment;

    iput-object v3, v2, Lokio/Segment;->prev:Lokio/Segment;

    .line 101
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lokio/Segment;->next:Lokio/Segment;

    iput-object v3, v2, Lokio/Segment;->next:Lokio/Segment;

    .line 102
    move-object v2, v0

    iget-object v2, v2, Lokio/Segment;->next:Lokio/Segment;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    if-nez v3, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    move-object v3, v1

    iput-object v3, v2, Lokio/Segment;->prev:Lokio/Segment;

    .line 103
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lokio/Segment;->next:Lokio/Segment;

    .line 104
    move-object v2, v1

    move-object v0, v2

    return-object v0
.end method

.method public final sharedCopy()Lokio/Segment;
    .locals 9
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 76
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lokio/Segment;->shared:Z

    .line 77
    new-instance v1, Lokio/Segment;

    move-object v8, v1

    move-object v1, v8

    move-object v2, v8

    move-object v3, v0

    iget-object v3, v3, Lokio/Segment;->data:[B

    move-object v4, v0

    iget v4, v4, Lokio/Segment;->pos:I

    move-object v5, v0

    iget v5, v5, Lokio/Segment;->limit:I

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Lokio/Segment;-><init>([BIIZZ)V

    move-object v0, v1

    return-object v0
.end method

.method public final split(I)Lokio/Segment;
    .locals 14
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 116
    move-object v0, p0

    move v1, p1

    move v6, v1

    if-lez v6, :cond_0

    move v6, v1

    move-object v7, v0

    iget v7, v7, Lokio/Segment;->limit:I

    move-object v8, v0

    iget v8, v8, Lokio/Segment;->pos:I

    sub-int/2addr v7, v8

    if-gt v6, v7, :cond_0

    const/4 v6, 0x1

    :goto_0
    move v2, v6

    const/4 v6, 0x0

    move v3, v6

    const/4 v6, 0x0

    move v4, v6

    move v6, v2

    if-nez v6, :cond_1

    const/4 v6, 0x0

    move v5, v6

    const-string v6, "byteCount out of range"

    move-object v4, v6

    new-instance v6, Ljava/lang/IllegalArgumentException;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    move-object v8, v4

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v6, Ljava/lang/Throwable;

    throw v6

    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    .line 117
    :cond_1
    const/4 v6, 0x0

    move-object v2, v6

    .line 124
    move v6, v1

    const/16 v7, 0x400

    if-lt v6, v7, :cond_3

    .line 125
    move-object v6, v0

    invoke-virtual {v6}, Lokio/Segment;->sharedCopy()Lokio/Segment;

    move-result-object v6

    move-object v2, v6

    .line 129
    :goto_1
    move-object v6, v2

    move-object v7, v2

    iget v7, v7, Lokio/Segment;->pos:I

    move v8, v1

    add-int/2addr v7, v8

    iput v7, v6, Lokio/Segment;->limit:I

    .line 132
    move-object v6, v0

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    iget v7, v7, Lokio/Segment;->pos:I

    move v8, v1

    add-int/2addr v7, v8

    iput v7, v6, Lokio/Segment;->pos:I

    .line 133
    move-object v6, v0

    iget-object v6, v6, Lokio/Segment;->prev:Lokio/Segment;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    if-nez v7, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    move-object v7, v2

    invoke-virtual {v6, v7}, Lokio/Segment;->push(Lokio/Segment;)Lokio/Segment;

    move-result-object v6

    .line 134
    move-object v6, v2

    move-object v0, v6

    return-object v0

    .line 127
    :cond_3
    invoke-static {}, Lokio/SegmentPool;->take()Lokio/Segment;

    move-result-object v6

    move-object v2, v6

    .line 128
    move-object v6, v0

    iget-object v6, v6, Lokio/Segment;->data:[B

    move-object v7, v2

    iget-object v7, v7, Lokio/Segment;->data:[B

    const/4 v8, 0x0

    move-object v9, v0

    iget v9, v9, Lokio/Segment;->pos:I

    move-object v10, v0

    iget v10, v10, Lokio/Segment;->pos:I

    move v11, v1

    add-int/2addr v10, v11

    const/4 v11, 0x2

    const/4 v12, 0x0

    invoke-static/range {v6 .. v12}, Lkotlin/collections/ArraysKt;->copyInto$default([B[BIIIILjava/lang/Object;)[B

    move-result-object v6

    goto :goto_1
.end method

.method public final unsharedCopy()Lokio/Segment;
    .locals 19
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 81
    move-object/from16 v0, p0

    move-object v11, v0

    iget-object v11, v11, Lokio/Segment;->data:[B

    move-object v1, v11

    const/4 v11, 0x0

    move v2, v11

    move-object v11, v1

    move-object v12, v1

    array-length v12, v12

    invoke-static {v11, v12}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v11

    move-object/from16 v18, v11

    move-object/from16 v11, v18

    move-object/from16 v12, v18

    const-string v13, "java.util.Arrays.copyOf(this, size)"

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v5, v11

    move-object v11, v5

    move-object v12, v0

    iget v12, v12, Lokio/Segment;->pos:I

    move-object v13, v0

    iget v13, v13, Lokio/Segment;->limit:I

    const/4 v14, 0x0

    const/4 v15, 0x1

    move v6, v15

    move v7, v14

    move v8, v13

    move v9, v12

    move-object v10, v11

    new-instance v11, Lokio/Segment;

    move-object/from16 v18, v11

    move-object/from16 v11, v18

    move-object/from16 v12, v18

    move-object v13, v10

    move v14, v9

    move v15, v8

    move/from16 v16, v7

    move/from16 v17, v6

    invoke-direct/range {v12 .. v17}, Lokio/Segment;-><init>([BIIZZ)V

    move-object v0, v11

    return-object v0
.end method

.method public final writeTo(Lokio/Segment;I)V
    .locals 15
    .param p1    # Lokio/Segment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object v7, v1

    const-string v8, "sink"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    move-object v7, v1

    iget-boolean v7, v7, Lokio/Segment;->owner:Z

    move v3, v7

    const/4 v7, 0x0

    move v4, v7

    const/4 v7, 0x0

    move v5, v7

    move v7, v3

    if-nez v7, :cond_0

    const/4 v7, 0x0

    move v6, v7

    const-string v7, "only owner can write"

    move-object v5, v7

    new-instance v7, Ljava/lang/IllegalStateException;

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    move-object v9, v5

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v7, Ljava/lang/Throwable;

    throw v7

    .line 155
    :cond_0
    move-object v7, v1

    iget v7, v7, Lokio/Segment;->limit:I

    move v8, v2

    add-int/2addr v7, v8

    const/16 v8, 0x2000

    if-le v7, v8, :cond_3

    .line 157
    move-object v7, v1

    iget-boolean v7, v7, Lokio/Segment;->shared:Z

    if-eqz v7, :cond_1

    new-instance v7, Ljava/lang/IllegalArgumentException;

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    invoke-direct {v8}, Ljava/lang/IllegalArgumentException;-><init>()V

    check-cast v7, Ljava/lang/Throwable;

    throw v7

    .line 158
    :cond_1
    move-object v7, v1

    iget v7, v7, Lokio/Segment;->limit:I

    move v8, v2

    add-int/2addr v7, v8

    move-object v8, v1

    iget v8, v8, Lokio/Segment;->pos:I

    sub-int/2addr v7, v8

    const/16 v8, 0x2000

    if-le v7, v8, :cond_2

    new-instance v7, Ljava/lang/IllegalArgumentException;

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    invoke-direct {v8}, Ljava/lang/IllegalArgumentException;-><init>()V

    check-cast v7, Ljava/lang/Throwable;

    throw v7

    .line 159
    :cond_2
    move-object v7, v1

    iget-object v7, v7, Lokio/Segment;->data:[B

    move-object v8, v1

    iget-object v8, v8, Lokio/Segment;->data:[B

    const/4 v9, 0x0

    move-object v10, v1

    iget v10, v10, Lokio/Segment;->pos:I

    move-object v11, v1

    iget v11, v11, Lokio/Segment;->limit:I

    const/4 v12, 0x2

    const/4 v13, 0x0

    invoke-static/range {v7 .. v13}, Lkotlin/collections/ArraysKt;->copyInto$default([B[BIIIILjava/lang/Object;)[B

    move-result-object v7

    .line 160
    move-object v7, v1

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    iget v8, v8, Lokio/Segment;->limit:I

    move-object v9, v1

    iget v9, v9, Lokio/Segment;->pos:I

    sub-int/2addr v8, v9

    iput v8, v7, Lokio/Segment;->limit:I

    .line 161
    move-object v7, v1

    const/4 v8, 0x0

    iput v8, v7, Lokio/Segment;->pos:I

    .line 164
    :cond_3
    move-object v7, v0

    iget-object v7, v7, Lokio/Segment;->data:[B

    move-object v8, v1

    iget-object v8, v8, Lokio/Segment;->data:[B

    move-object v9, v1

    iget v9, v9, Lokio/Segment;->limit:I

    move-object v10, v0

    iget v10, v10, Lokio/Segment;->pos:I

    .line 165
    move-object v11, v0

    iget v11, v11, Lokio/Segment;->pos:I

    move v12, v2

    add-int/2addr v11, v12

    .line 164
    invoke-static {v7, v8, v9, v10, v11}, Lkotlin/collections/ArraysKt;->copyInto([B[BIII)[B

    move-result-object v7

    .line 166
    move-object v7, v1

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    iget v8, v8, Lokio/Segment;->limit:I

    move v9, v2

    add-int/2addr v8, v9

    iput v8, v7, Lokio/Segment;->limit:I

    .line 167
    move-object v7, v0

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    iget v8, v8, Lokio/Segment;->pos:I

    move v9, v2

    add-int/2addr v8, v9

    iput v8, v7, Lokio/Segment;->pos:I

    .line 168
    return-void
.end method
