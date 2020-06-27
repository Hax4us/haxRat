.class public final Lokio/SegmentPool;
.super Ljava/lang/Object;
.source "SegmentPool.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0010\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u000eH\u0002J\u0010\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0006H\u0007J\u0008\u0010\u0014\u001a\u00020\u0006H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\n\u001a\u00020\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\tR\u001e\u0010\u000c\u001a\u0010\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u000e0\rX\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u000f\u00a8\u0006\u0015"
    }
    d2 = {
        "Lokio/SegmentPool;",
        "",
        "()V",
        "HASH_BUCKET_COUNT",
        "",
        "LOCK",
        "Lokio/Segment;",
        "MAX_SIZE",
        "getMAX_SIZE",
        "()I",
        "byteCount",
        "getByteCount",
        "hashBuckets",
        "",
        "Ljava/util/concurrent/atomic/AtomicReference;",
        "[Ljava/util/concurrent/atomic/AtomicReference;",
        "firstRef",
        "recycle",
        "",
        "segment",
        "take",
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
.field private static final HASH_BUCKET_COUNT:I

.field public static final INSTANCE:Lokio/SegmentPool;

.field private static final LOCK:Lokio/Segment;

# The value of this static final field might be set in the static constructor
.field private static final MAX_SIZE:I = 0x10000

.field private static final hashBuckets:[Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lokio/Segment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .prologue
    .line 40
    new-instance v9, Lokio/SegmentPool;

    move-object/from16 v16, v9

    move-object/from16 v9, v16

    move-object/from16 v10, v16

    invoke-direct {v10}, Lokio/SegmentPool;-><init>()V

    move-object v0, v9

    move-object v9, v0

    sput-object v9, Lokio/SegmentPool;->INSTANCE:Lokio/SegmentPool;

    .line 43
    const/high16 v9, 0x10000

    sput v9, Lokio/SegmentPool;->MAX_SIZE:I

    .line 46
    new-instance v9, Lokio/Segment;

    move-object/from16 v16, v9

    move-object/from16 v9, v16

    move-object/from16 v10, v16

    const/4 v11, 0x0

    new-array v11, v11, [B

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-direct/range {v10 .. v15}, Lokio/Segment;-><init>([BIIZZ)V

    sput-object v9, Lokio/SegmentPool;->LOCK:Lokio/Segment;

    .line 54
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v9

    const/4 v10, 0x2

    mul-int/lit8 v9, v9, 0x2

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    invoke-static {v9}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v9

    sput v9, Lokio/SegmentPool;->HASH_BUCKET_COUNT:I

    .line 64
    sget v9, Lokio/SegmentPool;->HASH_BUCKET_COUNT:I

    move v1, v9

    move v9, v1

    new-array v9, v9, [Ljava/util/concurrent/atomic/AtomicReference;

    move-object v2, v9

    const/4 v9, 0x0

    move v3, v9

    :goto_0
    move v9, v3

    move v10, v1

    if-ge v9, v10, :cond_0

    move-object v9, v2

    move v10, v3

    move v11, v3

    move v4, v11

    move v7, v10

    move-object v6, v9

    const/4 v9, 0x0

    move v5, v9

    .line 65
    new-instance v9, Ljava/util/concurrent/atomic/AtomicReference;

    move-object/from16 v16, v9

    move-object/from16 v9, v16

    move-object/from16 v10, v16

    invoke-direct {v10}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    move-object v8, v9

    move-object v9, v6

    move v10, v7

    move-object v11, v8

    aput-object v11, v9, v10

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    move-object v9, v2

    sput-object v9, Lokio/SegmentPool;->hashBuckets:[Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 40
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final firstRef()Ljava/util/concurrent/atomic/AtomicReference;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lokio/Segment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 121
    move-object v0, p0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    const-string v4, "Thread.currentThread()"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    sget v4, Lokio/SegmentPool;->HASH_BUCKET_COUNT:I

    int-to-long v4, v4

    const-wide/16 v6, 0x1

    sub-long/2addr v4, v6

    and-long/2addr v2, v4

    long-to-int v2, v2

    move v1, v2

    .line 122
    sget-object v2, Lokio/SegmentPool;->hashBuckets:[Ljava/util/concurrent/atomic/AtomicReference;

    move v3, v1

    aget-object v2, v2, v3

    move-object v0, v2

    return-object v0
.end method

.method public static final recycle(Lokio/Segment;)V
    .locals 10
    .param p0    # Lokio/Segment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v6, v0

    const-string v7, "segment"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    move-object v6, v0

    iget-object v6, v6, Lokio/Segment;->next:Lokio/Segment;

    if-nez v6, :cond_0

    move-object v6, v0

    iget-object v6, v6, Lokio/Segment;->prev:Lokio/Segment;

    if-nez v6, :cond_0

    const/4 v6, 0x1

    :goto_0
    move v1, v6

    const/4 v6, 0x0

    move v2, v6

    const/4 v6, 0x0

    move v3, v6

    const/4 v6, 0x0

    move v3, v6

    const/4 v6, 0x0

    move v4, v6

    move v6, v1

    if-nez v6, :cond_1

    const/4 v6, 0x0

    move v5, v6

    const-string v6, "Failed requirement."

    move-object v4, v6

    new-instance v6, Ljava/lang/IllegalArgumentException;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v4

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v6, Ljava/lang/Throwable;

    throw v6

    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    .line 102
    :cond_1
    move-object v6, v0

    iget-boolean v6, v6, Lokio/Segment;->shared:Z

    if-eqz v6, :cond_2

    .line 117
    :goto_1
    return-void

    .line 104
    :cond_2
    sget-object v6, Lokio/SegmentPool;->INSTANCE:Lokio/SegmentPool;

    invoke-direct {v6}, Lokio/SegmentPool;->firstRef()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v6

    move-object v1, v6

    .line 106
    move-object v6, v1

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lokio/Segment;

    move-object v2, v6

    .line 107
    move-object v6, v2

    sget-object v7, Lokio/SegmentPool;->LOCK:Lokio/Segment;

    if-ne v6, v7, :cond_3

    goto :goto_1

    .line 108
    :cond_3
    move-object v6, v2

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    if-eqz v7, :cond_4

    iget v6, v6, Lokio/Segment;->limit:I

    :goto_2
    move v3, v6

    .line 109
    move v6, v3

    sget v7, Lokio/SegmentPool;->MAX_SIZE:I

    if-lt v6, v7, :cond_5

    goto :goto_1

    .line 108
    :cond_4
    const/4 v6, 0x0

    goto :goto_2

    .line 111
    :cond_5
    move-object v6, v0

    move-object v7, v2

    iput-object v7, v6, Lokio/Segment;->next:Lokio/Segment;

    .line 112
    move-object v6, v0

    const/4 v7, 0x0

    iput v7, v6, Lokio/Segment;->pos:I

    .line 113
    move-object v6, v0

    move v7, v3

    const/16 v8, 0x2000

    add-int/lit16 v7, v7, 0x2000

    iput v7, v6, Lokio/Segment;->limit:I

    .line 115
    move-object v6, v1

    move-object v7, v2

    move-object v8, v0

    invoke-virtual {v6, v7, v8}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    move-object v6, v0

    const/4 v7, 0x0

    check-cast v7, Lokio/Segment;

    iput-object v7, v6, Lokio/Segment;->next:Lokio/Segment;

    .line 117
    :cond_6
    goto :goto_1
.end method

.method public static final take()Lokio/Segment;
    .locals 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 76
    sget-object v2, Lokio/SegmentPool;->INSTANCE:Lokio/SegmentPool;

    invoke-direct {v2}, Lokio/SegmentPool;->firstRef()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v2

    move-object v0, v2

    .line 78
    move-object v2, v0

    sget-object v3, Lokio/SegmentPool;->LOCK:Lokio/Segment;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lokio/Segment;

    move-object v1, v2

    .line 79
    nop

    .line 80
    move-object v2, v1

    sget-object v3, Lokio/SegmentPool;->LOCK:Lokio/Segment;

    if-ne v2, v3, :cond_0

    .line 82
    new-instance v2, Lokio/Segment;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lokio/Segment;-><init>()V

    move-object v0, v2

    .line 94
    :goto_0
    return-object v0

    .line 84
    :cond_0
    move-object v2, v1

    if-nez v2, :cond_1

    .line 86
    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 87
    new-instance v2, Lokio/Segment;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lokio/Segment;-><init>()V

    move-object v0, v2

    goto :goto_0

    .line 91
    :cond_1
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Lokio/Segment;->next:Lokio/Segment;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 92
    move-object v2, v1

    const/4 v3, 0x0

    check-cast v3, Lokio/Segment;

    iput-object v3, v2, Lokio/Segment;->next:Lokio/Segment;

    .line 93
    move-object v2, v1

    const/4 v3, 0x0

    iput v3, v2, Lokio/Segment;->limit:I

    .line 94
    move-object v2, v1

    move-object v0, v2

    goto :goto_0
.end method


# virtual methods
.method public final getByteCount()I
    .locals 5

    .prologue
    .line 70
    move-object v0, p0

    move-object v2, v0

    invoke-direct {v2}, Lokio/SegmentPool;->firstRef()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lokio/Segment;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    if-eqz v3, :cond_0

    move-object v1, v2

    .line 71
    move-object v2, v1

    iget v2, v2, Lokio/Segment;->limit:I

    move v0, v2

    :goto_0
    return v0

    .line 70
    :cond_0
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public final getMAX_SIZE()I
    .locals 2

    .prologue
    .line 43
    move-object v0, p0

    sget v1, Lokio/SegmentPool;->MAX_SIZE:I

    move v0, v1

    return v0
.end method
