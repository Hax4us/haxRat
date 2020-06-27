.class public final Lokio/Throttler;
.super Ljava/lang/Object;
.source "Throttler.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0008\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u0008\u0016\u00a2\u0006\u0002\u0010\u0002B\u000f\u0008\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u001d\u0010\t\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u0004H\u0000\u00a2\u0006\u0002\u0008\u000cJ$\u0010\u0006\u001a\u00020\r2\u0006\u0010\u0006\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0004H\u0007J\u000e\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\u000fJ\u000e\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0010\u001a\u00020\u0011J\u0015\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u0004H\u0000\u00a2\u0006\u0002\u0008\u0013J\u0010\u0010\u0014\u001a\u00020\r2\u0006\u0010\u0015\u001a\u00020\u0004H\u0002J\u000c\u0010\u0016\u001a\u00020\u0004*\u00020\u0004H\u0002J\u000c\u0010\u0017\u001a\u00020\u0004*\u00020\u0004H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "Lokio/Throttler;",
        "",
        "()V",
        "allocatedUntil",
        "",
        "(J)V",
        "bytesPerSecond",
        "maxByteCount",
        "waitByteCount",
        "byteCountOrWaitNanos",
        "now",
        "byteCount",
        "byteCountOrWaitNanos$okio",
        "",
        "sink",
        "Lokio/Sink;",
        "source",
        "Lokio/Source;",
        "take",
        "take$okio",
        "waitNanos",
        "nanosToWait",
        "bytesToNanos",
        "nanosToBytes",
        "okio"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private allocatedUntil:J

.field private bytesPerSecond:J

.field private maxByteCount:J

.field private waitByteCount:J


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 49
    move-object v0, p0

    move-object v1, v0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lokio/Throttler;-><init>(J)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 6

    .prologue
    .line 38
    move-object v0, p0

    move-wide v1, p1

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Lokio/Throttler;->allocatedUntil:J

    .line 46
    move-object v3, v0

    const-wide/16 v4, 0x2000

    iput-wide v4, v3, Lokio/Throttler;->waitByteCount:J

    .line 47
    move-object v3, v0

    const-wide/32 v4, 0x40000

    iput-wide v4, v3, Lokio/Throttler;->maxByteCount:J

    return-void
.end method

.method public static synthetic bytesPerSecond$default(Lokio/Throttler;JJJILjava/lang/Object;)V
    .locals 16

    .prologue
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move/from16 v7, p7

    move-object/from16 v8, p8

    move v9, v7

    const/4 v10, 0x2

    and-int/lit8 v9, v9, 0x2

    if-eqz v9, :cond_0

    .line 55
    move-object v9, v0

    iget-wide v9, v9, Lokio/Throttler;->waitByteCount:J

    move-wide v3, v9

    :cond_0
    move v9, v7

    const/4 v10, 0x4

    and-int/lit8 v9, v9, 0x4

    if-eqz v9, :cond_1

    .line 56
    move-object v9, v0

    iget-wide v9, v9, Lokio/Throttler;->maxByteCount:J

    move-wide v5, v9

    :cond_1
    move-object v9, v0

    move-wide v10, v1

    move-wide v12, v3

    move-wide v14, v5

    invoke-virtual/range {v9 .. v15}, Lokio/Throttler;->bytesPerSecond(JJJ)V

    return-void
.end method

.method private final bytesToNanos(J)J
    .locals 7

    .prologue
    .line 126
    move-object v0, p0

    move-wide v1, p1

    move-wide v3, v1

    const-wide/32 v5, 0x3b9aca00

    mul-long/2addr v3, v5

    move-object v5, v0

    iget-wide v5, v5, Lokio/Throttler;->bytesPerSecond:J

    div-long/2addr v3, v5

    move-wide v0, v3

    return-wide v0
.end method

.method private final nanosToBytes(J)J
    .locals 7

    .prologue
    .line 124
    move-object v0, p0

    move-wide v1, p1

    move-wide v3, v1

    move-object v5, v0

    iget-wide v5, v5, Lokio/Throttler;->bytesPerSecond:J

    mul-long/2addr v3, v5

    const-wide/32 v5, 0x3b9aca00

    div-long/2addr v3, v5

    move-wide v0, v3

    return-wide v0
.end method

.method private final waitNanos(J)V
    .locals 14

    .prologue
    .line 129
    move-object v0, p0

    move-wide v1, p1

    move-wide v7, v1

    const-wide/32 v9, 0xf4240

    div-long/2addr v7, v9

    move-wide v3, v7

    .line 130
    move-wide v7, v1

    move-wide v9, v3

    const-wide/32 v11, 0xf4240

    mul-long/2addr v9, v11

    sub-long/2addr v7, v9

    move-wide v5, v7

    .line 131
    move-object v7, v0

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    if-nez v8, :cond_0

    new-instance v8, Lkotlin/TypeCastException;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    const-string v10, "null cannot be cast to non-null type java.lang.Object"

    invoke-direct {v9, v10}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_0
    check-cast v7, Ljava/lang/Object;

    move-wide v8, v3

    move-wide v10, v5

    long-to-int v10, v10

    invoke-virtual {v7, v8, v9, v10}, Ljava/lang/Object;->wait(JI)V

    .line 132
    return-void
.end method


# virtual methods
.method public final byteCountOrWaitNanos$okio(JJ)J
    .locals 24

    .prologue
    .line 94
    move-object/from16 v3, p0

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    move-object/from16 v17, v3

    move-object/from16 v0, v17

    iget-wide v0, v0, Lokio/Throttler;->bytesPerSecond:J

    move-wide/from16 v17, v0

    const-wide/16 v19, 0x0

    cmp-long v17, v17, v19

    if-nez v17, :cond_0

    move-wide/from16 v17, v6

    move-wide/from16 v3, v17

    .line 121
    :goto_0
    return-wide v3

    .line 96
    :cond_0
    move-object/from16 v17, v3

    move-object/from16 v0, v17

    iget-wide v0, v0, Lokio/Throttler;->allocatedUntil:J

    move-wide/from16 v17, v0

    move-wide/from16 v19, v4

    sub-long v17, v17, v19

    move-wide/from16 v10, v17

    const-wide/16 v17, 0x0

    move-wide/from16 v12, v17

    const/16 v17, 0x0

    move/from16 v14, v17

    move-wide/from16 v17, v10

    move-wide/from16 v19, v12

    invoke-static/range {v17 .. v20}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v17

    move-wide/from16 v8, v17

    .line 97
    move-object/from16 v17, v3

    move-object/from16 v0, v17

    iget-wide v0, v0, Lokio/Throttler;->maxByteCount:J

    move-wide/from16 v17, v0

    move-object/from16 v19, v3

    move-wide/from16 v20, v8

    invoke-direct/range {v19 .. v21}, Lokio/Throttler;->nanosToBytes(J)J

    move-result-wide v19

    sub-long v17, v17, v19

    move-wide/from16 v10, v17

    .line 100
    move-wide/from16 v17, v10

    move-wide/from16 v19, v6

    cmp-long v17, v17, v19

    if-ltz v17, :cond_1

    .line 101
    move-object/from16 v17, v3

    move-wide/from16 v18, v4

    move-wide/from16 v20, v8

    add-long v18, v18, v20

    move-object/from16 v20, v3

    move-wide/from16 v21, v6

    invoke-direct/range {v20 .. v22}, Lokio/Throttler;->bytesToNanos(J)J

    move-result-wide v20

    add-long v18, v18, v20

    move-wide/from16 v0, v18

    move-object/from16 v2, v17

    iput-wide v0, v2, Lokio/Throttler;->allocatedUntil:J

    .line 102
    move-wide/from16 v17, v6

    move-wide/from16 v3, v17

    goto :goto_0

    .line 106
    :cond_1
    move-wide/from16 v17, v10

    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-wide v0, v0, Lokio/Throttler;->waitByteCount:J

    move-wide/from16 v19, v0

    cmp-long v17, v17, v19

    if-ltz v17, :cond_2

    .line 107
    move-object/from16 v17, v3

    move-wide/from16 v18, v4

    move-object/from16 v20, v3

    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-wide v0, v0, Lokio/Throttler;->maxByteCount:J

    move-wide/from16 v21, v0

    invoke-direct/range {v20 .. v22}, Lokio/Throttler;->bytesToNanos(J)J

    move-result-wide v20

    add-long v18, v18, v20

    move-wide/from16 v0, v18

    move-object/from16 v2, v17

    iput-wide v0, v2, Lokio/Throttler;->allocatedUntil:J

    .line 108
    move-wide/from16 v17, v10

    move-wide/from16 v3, v17

    goto/16 :goto_0

    .line 112
    :cond_2
    move-object/from16 v17, v3

    move-object/from16 v0, v17

    iget-wide v0, v0, Lokio/Throttler;->waitByteCount:J

    move-wide/from16 v17, v0

    move-wide/from16 v14, v17

    const/16 v17, 0x0

    move/from16 v16, v17

    move-wide/from16 v17, v14

    move-wide/from16 v19, v6

    invoke-static/range {v17 .. v20}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v17

    move-wide/from16 v12, v17

    .line 113
    move-wide/from16 v17, v8

    move-object/from16 v19, v3

    move-wide/from16 v20, v12

    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-wide v0, v0, Lokio/Throttler;->maxByteCount:J

    move-wide/from16 v22, v0

    sub-long v20, v20, v22

    invoke-direct/range {v19 .. v21}, Lokio/Throttler;->bytesToNanos(J)J

    move-result-wide v19

    add-long v17, v17, v19

    move-wide/from16 v14, v17

    .line 116
    move-wide/from16 v17, v14

    const-wide/16 v19, 0x0

    cmp-long v17, v17, v19

    if-nez v17, :cond_3

    .line 117
    move-object/from16 v17, v3

    move-wide/from16 v18, v4

    move-object/from16 v20, v3

    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-wide v0, v0, Lokio/Throttler;->maxByteCount:J

    move-wide/from16 v21, v0

    invoke-direct/range {v20 .. v22}, Lokio/Throttler;->bytesToNanos(J)J

    move-result-wide v20

    add-long v18, v18, v20

    move-wide/from16 v0, v18

    move-object/from16 v2, v17

    iput-wide v0, v2, Lokio/Throttler;->allocatedUntil:J

    .line 118
    move-wide/from16 v17, v12

    move-wide/from16 v3, v17

    goto/16 :goto_0

    .line 121
    :cond_3
    move-wide/from16 v17, v14

    move-wide/from16 v0, v17

    neg-long v0, v0

    move-wide/from16 v17, v0

    move-wide/from16 v3, v17

    goto/16 :goto_0
.end method

.method public final bytesPerSecond(J)V
    .locals 12
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    move-object v0, p0

    move-wide v1, p1

    move-object v3, v0

    move-wide v4, v1

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x6

    const/4 v11, 0x0

    invoke-static/range {v3 .. v11}, Lokio/Throttler;->bytesPerSecond$default(Lokio/Throttler;JJJILjava/lang/Object;)V

    return-void
.end method

.method public final bytesPerSecond(JJ)V
    .locals 14
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    move-object v0, p0

    move-wide v1, p1

    move-wide/from16 v3, p3

    move-object v5, v0

    move-wide v6, v1

    move-wide v8, v3

    const-wide/16 v10, 0x0

    const/4 v12, 0x4

    const/4 v13, 0x0

    invoke-static/range {v5 .. v13}, Lokio/Throttler;->bytesPerSecond$default(Lokio/Throttler;JJJILjava/lang/Object;)V

    return-void
.end method

.method public final bytesPerSecond(JJJ)V
    .locals 25
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .prologue
    .line 58
    move-object/from16 v3, p0

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    move-object/from16 v20, v3

    move-object/from16 v10, v20

    const/16 v20, 0x0

    move/from16 v11, v20

    .line 170
    const/16 v20, 0x0

    move/from16 v12, v20

    const/16 v20, 0x0

    move/from16 v13, v20

    move-object/from16 v20, v10

    monitor-enter v20

    nop

    const/16 v20, 0x0

    move/from16 v14, v20

    .line 59
    move-wide/from16 v20, v4

    const-wide/16 v22, 0x0

    cmp-long v20, v20, v22

    if-ltz v20, :cond_0

    const/16 v20, 0x1

    :goto_0
    move/from16 v15, v20

    const/16 v20, 0x0

    move/from16 v16, v20

    const/16 v20, 0x0

    move/from16 v17, v20

    const/16 v20, 0x0

    move/from16 v17, v20

    const/16 v20, 0x0

    move/from16 v18, v20

    move/from16 v20, v15

    if-nez v20, :cond_1

    const/16 v20, 0x0

    move/from16 v19, v20

    :try_start_0
    const-string v20, "Failed requirement."

    move-object/from16 v18, v20

    new-instance v20, Ljava/lang/IllegalArgumentException;

    move-object/from16 v24, v20

    move-object/from16 v20, v24

    move-object/from16 v21, v24

    move-object/from16 v22, v18

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v20, Ljava/lang/Throwable;

    throw v20
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    :catchall_0
    move-exception v20

    move-object/from16 v13, v20

    move-object/from16 v20, v10

    monitor-exit v20

    move-object/from16 v20, v13

    throw v20

    .line 59
    :cond_0
    const/16 v20, 0x0

    goto :goto_0

    .line 60
    :cond_1
    move-wide/from16 v20, v6

    const-wide/16 v22, 0x0

    cmp-long v20, v20, v22

    if-lez v20, :cond_2

    const/16 v20, 0x1

    :goto_1
    move/from16 v15, v20

    const/16 v20, 0x0

    move/from16 v16, v20

    const/16 v20, 0x0

    move/from16 v17, v20

    const/16 v20, 0x0

    move/from16 v17, v20

    const/16 v20, 0x0

    move/from16 v18, v20

    move/from16 v20, v15

    if-nez v20, :cond_3

    const/16 v20, 0x0

    move/from16 v19, v20

    :try_start_1
    const-string v20, "Failed requirement."

    move-object/from16 v18, v20

    new-instance v20, Ljava/lang/IllegalArgumentException;

    move-object/from16 v24, v20

    move-object/from16 v20, v24

    move-object/from16 v21, v24

    move-object/from16 v22, v18

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v20, Ljava/lang/Throwable;

    throw v20

    :cond_2
    const/16 v20, 0x0

    goto :goto_1

    .line 61
    :cond_3
    move-wide/from16 v20, v8

    move-wide/from16 v22, v6

    cmp-long v20, v20, v22

    if-ltz v20, :cond_4

    const/16 v20, 0x1

    :goto_2
    move/from16 v15, v20

    const/16 v20, 0x0

    move/from16 v16, v20

    const/16 v20, 0x0

    move/from16 v17, v20

    const/16 v20, 0x0

    move/from16 v17, v20

    const/16 v20, 0x0

    move/from16 v18, v20

    move/from16 v20, v15

    if-nez v20, :cond_5

    const/16 v20, 0x0

    move/from16 v19, v20

    const-string v20, "Failed requirement."

    move-object/from16 v18, v20

    new-instance v20, Ljava/lang/IllegalArgumentException;

    move-object/from16 v24, v20

    move-object/from16 v20, v24

    move-object/from16 v21, v24

    move-object/from16 v22, v18

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v20, Ljava/lang/Throwable;

    throw v20

    :cond_4
    const/16 v20, 0x0

    goto :goto_2

    .line 63
    :cond_5
    move-object/from16 v20, v3

    move-wide/from16 v21, v4

    move-wide/from16 v0, v21

    move-object/from16 v2, v20

    iput-wide v0, v2, Lokio/Throttler;->bytesPerSecond:J

    .line 64
    move-object/from16 v20, v3

    move-wide/from16 v21, v6

    move-wide/from16 v0, v21

    move-object/from16 v2, v20

    iput-wide v0, v2, Lokio/Throttler;->waitByteCount:J

    .line 65
    move-object/from16 v20, v3

    move-wide/from16 v21, v8

    move-wide/from16 v0, v21

    move-object/from16 v2, v20

    iput-wide v0, v2, Lokio/Throttler;->maxByteCount:J

    .line 66
    move-object/from16 v20, v3

    move-object/from16 v24, v20

    move-object/from16 v20, v24

    move-object/from16 v21, v24

    if-nez v21, :cond_6

    new-instance v21, Lkotlin/TypeCastException;

    move-object/from16 v24, v21

    move-object/from16 v21, v24

    move-object/from16 v22, v24

    const-string v23, "null cannot be cast to non-null type java.lang.Object"

    invoke-direct/range {v22 .. v23}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v21

    :cond_6
    check-cast v20, Ljava/lang/Object;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->notifyAll()V

    .line 67
    sget-object v20, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v13, v20

    move-object/from16 v20, v10

    monitor-exit v20

    .line 68
    return-void
.end method

.method public final sink(Lokio/Sink;)Lokio/Sink;
    .locals 8
    .param p1    # Lokio/Sink;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    const-string v3, "sink"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    new-instance v2, Lokio/Throttler$sink$1;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    move-object v5, v1

    move-object v6, v1

    invoke-direct {v3, v4, v5, v6}, Lokio/Throttler$sink$1;-><init>(Lokio/Throttler;Lokio/Sink;Lokio/Sink;)V

    check-cast v2, Lokio/Sink;

    move-object v0, v2

    return-object v0
.end method

.method public final source(Lokio/Source;)Lokio/Source;
    .locals 8
    .param p1    # Lokio/Source;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    const-string v3, "source"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    new-instance v2, Lokio/Throttler$source$1;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    move-object v5, v1

    move-object v6, v1

    invoke-direct {v3, v4, v5, v6}, Lokio/Throttler$source$1;-><init>(Lokio/Throttler;Lokio/Source;Lokio/Source;)V

    check-cast v2, Lokio/Source;

    move-object v0, v2

    return-object v0
.end method

.method public final take$okio(J)J
    .locals 20

    .prologue
    .line 75
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide v14, v1

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-lez v14, :cond_0

    const/4 v14, 0x1

    :goto_0
    move v3, v14

    const/4 v14, 0x0

    move v4, v14

    const/4 v14, 0x0

    move v5, v14

    const/4 v14, 0x0

    move v5, v14

    const/4 v14, 0x0

    move v6, v14

    move v14, v3

    if-nez v14, :cond_1

    const/4 v14, 0x0

    move v7, v14

    const-string v14, "Failed requirement."

    move-object v6, v14

    new-instance v14, Ljava/lang/IllegalArgumentException;

    move-object/from16 v19, v14

    move-object/from16 v14, v19

    move-object/from16 v15, v19

    move-object/from16 v16, v6

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v14, Ljava/lang/Throwable;

    throw v14

    :cond_0
    const/4 v14, 0x0

    goto :goto_0

    .line 77
    :cond_1
    move-object v14, v0

    move-object v3, v14

    const/4 v14, 0x0

    move v4, v14

    .line 171
    const/4 v14, 0x0

    move v5, v14

    const/4 v14, 0x0

    move v6, v14

    move-object v14, v3

    monitor-enter v14

    nop

    const/4 v14, 0x0

    move v7, v14

    .line 78
    :goto_1
    nop

    .line 79
    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v14

    move-wide v8, v14

    .line 80
    move-object v14, v0

    move-wide v15, v8

    move-wide/from16 v17, v1

    invoke-virtual/range {v14 .. v18}, Lokio/Throttler;->byteCountOrWaitNanos$okio(JJ)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v14

    move-wide v10, v14

    .line 81
    move-wide v14, v10

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-ltz v14, :cond_2

    move-wide v14, v10

    move-wide v12, v14

    move-object v14, v3

    monitor-exit v14

    move-wide v14, v12

    move-wide v0, v14

    return-wide v0

    .line 82
    :cond_2
    move-object v14, v0

    move-wide v15, v10

    neg-long v15, v15

    :try_start_1
    invoke-direct/range {v14 .. v16}, Lokio/Throttler;->waitNanos(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    goto :goto_1

    :catchall_0
    move-exception v14

    move-object v6, v14

    move-object v14, v3

    monitor-exit v14

    move-object v14, v6

    throw v14
.end method
