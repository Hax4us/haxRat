.class public final Lokio/AsyncTimeout$Companion;
.super Ljava/lang/Object;
.source "AsyncTimeout.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokio/AsyncTimeout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000f\u0010\n\u001a\u0004\u0018\u00010\tH\u0000\u00a2\u0006\u0002\u0008\u000bJ\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\tH\u0002J \u0010\u000f\u001a\u00020\u00102\u0006\u0010\u000e\u001a\u00020\t2\u0006\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\rH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lokio/AsyncTimeout$Companion;",
        "",
        "()V",
        "IDLE_TIMEOUT_MILLIS",
        "",
        "IDLE_TIMEOUT_NANOS",
        "TIMEOUT_WRITE_SIZE",
        "",
        "head",
        "Lokio/AsyncTimeout;",
        "awaitTimeout",
        "awaitTimeout$okio",
        "cancelScheduledTimeout",
        "",
        "node",
        "scheduleTimeout",
        "",
        "timeoutNanos",
        "hasDeadline",
        "okio"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 205
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 3

    .prologue
    .line 205
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Lokio/AsyncTimeout$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$cancelScheduledTimeout(Lokio/AsyncTimeout$Companion;Lokio/AsyncTimeout;)Z
    .locals 4

    .prologue
    .line 205
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lokio/AsyncTimeout$Companion;->cancelScheduledTimeout(Lokio/AsyncTimeout;)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method public static final synthetic access$scheduleTimeout(Lokio/AsyncTimeout$Companion;Lokio/AsyncTimeout;JZ)V
    .locals 10

    .prologue
    .line 205
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move-object v5, v0

    move-object v6, v1

    move-wide v7, v2

    move v9, v4

    invoke-direct {v5, v6, v7, v8, v9}, Lokio/AsyncTimeout$Companion;->scheduleTimeout(Lokio/AsyncTimeout;JZ)V

    return-void
.end method

.method private final cancelScheduledTimeout(Lokio/AsyncTimeout;)Z
    .locals 12

    .prologue
    .line 268
    move-object v0, p0

    move-object v1, p1

    const-class v10, Lokio/AsyncTimeout;

    move-object v2, v10

    const/4 v10, 0x0

    move v3, v10

    .line 329
    const/4 v10, 0x0

    move v4, v10

    const/4 v10, 0x0

    move v5, v10

    move-object v10, v2

    monitor-enter v10

    nop

    const/4 v10, 0x0

    move v6, v10

    .line 270
    :try_start_0
    invoke-static {}, Lokio/AsyncTimeout;->access$getHead$cp()Lokio/AsyncTimeout;

    move-result-object v10

    move-object v7, v10

    .line 271
    :goto_0
    move-object v10, v7

    if-eqz v10, :cond_1

    .line 272
    move-object v10, v7

    invoke-static {v10}, Lokio/AsyncTimeout;->access$getNext$p(Lokio/AsyncTimeout;)Lokio/AsyncTimeout;

    move-result-object v10

    move-object v11, v1

    if-ne v10, v11, :cond_0

    .line 273
    move-object v10, v7

    move-object v11, v1

    invoke-static {v11}, Lokio/AsyncTimeout;->access$getNext$p(Lokio/AsyncTimeout;)Lokio/AsyncTimeout;

    move-result-object v11

    invoke-static {v10, v11}, Lokio/AsyncTimeout;->access$setNext$p(Lokio/AsyncTimeout;Lokio/AsyncTimeout;)V

    .line 274
    move-object v10, v1

    const/4 v11, 0x0

    check-cast v11, Lokio/AsyncTimeout;

    invoke-static {v10, v11}, Lokio/AsyncTimeout;->access$setNext$p(Lokio/AsyncTimeout;Lokio/AsyncTimeout;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 275
    const/4 v10, 0x0

    move v9, v10

    move-object v10, v2

    monitor-exit v10

    move v10, v9

    move v0, v10

    .line 281
    :goto_1
    return v0

    .line 277
    :cond_0
    move-object v10, v7

    :try_start_1
    invoke-static {v10}, Lokio/AsyncTimeout;->access$getNext$p(Lokio/AsyncTimeout;)Lokio/AsyncTimeout;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v10

    move-object v7, v10

    .line 271
    goto :goto_0

    .line 281
    :cond_1
    const/4 v10, 0x1

    move v8, v10

    move-object v10, v2

    monitor-exit v10

    move v10, v8

    move v0, v10

    goto :goto_1

    :catchall_0
    move-exception v10

    move-object v5, v10

    move-object v10, v2

    monitor-exit v10

    move-object v10, v5

    throw v10
.end method

.method private final scheduleTimeout(Lokio/AsyncTimeout;JZ)V
    .locals 33

    .prologue
    .line 228
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-wide/from16 v4, p2

    move/from16 v6, p4

    const-class v25, Lokio/AsyncTimeout;

    move-object/from16 v7, v25

    const/16 v25, 0x0

    move/from16 v8, v25

    .line 328
    const/16 v25, 0x0

    move/from16 v9, v25

    const/16 v25, 0x0

    move/from16 v10, v25

    move-object/from16 v25, v7

    monitor-enter v25

    nop

    const/16 v25, 0x0

    move/from16 v11, v25

    .line 230
    :try_start_0
    invoke-static {}, Lokio/AsyncTimeout;->access$getHead$cp()Lokio/AsyncTimeout;

    move-result-object v25

    if-nez v25, :cond_0

    .line 231
    new-instance v25, Lokio/AsyncTimeout;

    move-object/from16 v32, v25

    move-object/from16 v25, v32

    move-object/from16 v26, v32

    invoke-direct/range {v26 .. v26}, Lokio/AsyncTimeout;-><init>()V

    invoke-static/range {v25 .. v25}, Lokio/AsyncTimeout;->access$setHead$cp(Lokio/AsyncTimeout;)V

    .line 232
    new-instance v25, Lokio/AsyncTimeout$Watchdog;

    move-object/from16 v32, v25

    move-object/from16 v25, v32

    move-object/from16 v26, v32

    invoke-direct/range {v26 .. v26}, Lokio/AsyncTimeout$Watchdog;-><init>()V

    invoke-virtual/range {v25 .. v25}, Lokio/AsyncTimeout$Watchdog;->start()V

    .line 235
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v25

    move-wide/from16 v12, v25

    .line 236
    move-wide/from16 v25, v4

    const-wide/16 v27, 0x0

    cmp-long v25, v25, v27

    if-eqz v25, :cond_5

    move/from16 v25, v6

    if-eqz v25, :cond_5

    .line 239
    move-object/from16 v25, v3

    move-wide/from16 v26, v12

    move-wide/from16 v28, v4

    move-wide/from16 v14, v28

    move-object/from16 v28, v3

    invoke-virtual/range {v28 .. v28}, Lokio/AsyncTimeout;->deadlineNanoTime()J

    move-result-wide v28

    move-wide/from16 v30, v12

    sub-long v28, v28, v30

    move-wide/from16 v16, v28

    move-wide/from16 v18, v26

    move-object/from16 v20, v25

    const/16 v25, 0x0

    move/from16 v21, v25

    move-wide/from16 v25, v14

    move-wide/from16 v27, v16

    invoke-static/range {v25 .. v28}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v25

    move-wide/from16 v22, v25

    move-object/from16 v25, v20

    move-wide/from16 v26, v18

    move-wide/from16 v28, v22

    add-long v26, v26, v28

    invoke-static/range {v25 .. v27}, Lokio/AsyncTimeout;->access$setTimeoutAt$p(Lokio/AsyncTimeout;J)V

    .line 249
    :goto_0
    move-object/from16 v25, v3

    move-wide/from16 v26, v12

    invoke-static/range {v25 .. v27}, Lokio/AsyncTimeout;->access$remainingNanos(Lokio/AsyncTimeout;J)J

    move-result-wide v25

    move-wide/from16 v14, v25

    .line 250
    invoke-static {}, Lokio/AsyncTimeout;->access$getHead$cp()Lokio/AsyncTimeout;

    move-result-object v25

    move-object/from16 v32, v25

    move-object/from16 v25, v32

    move-object/from16 v26, v32

    if-nez v26, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    move-object/from16 v24, v25

    .line 251
    :goto_1
    nop

    .line 252
    move-object/from16 v25, v24

    invoke-static/range {v25 .. v25}, Lokio/AsyncTimeout;->access$getNext$p(Lokio/AsyncTimeout;)Lokio/AsyncTimeout;

    move-result-object v25

    if-eqz v25, :cond_3

    move-wide/from16 v25, v14

    move-object/from16 v27, v24

    invoke-static/range {v27 .. v27}, Lokio/AsyncTimeout;->access$getNext$p(Lokio/AsyncTimeout;)Lokio/AsyncTimeout;

    move-result-object v27

    move-object/from16 v32, v27

    move-object/from16 v27, v32

    move-object/from16 v28, v32

    if-nez v28, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    move-wide/from16 v28, v12

    invoke-static/range {v27 .. v29}, Lokio/AsyncTimeout;->access$remainingNanos(Lokio/AsyncTimeout;J)J

    move-result-wide v27

    cmp-long v25, v25, v27

    if-gez v25, :cond_8

    .line 253
    :cond_3
    move-object/from16 v25, v3

    move-object/from16 v26, v24

    invoke-static/range {v26 .. v26}, Lokio/AsyncTimeout;->access$getNext$p(Lokio/AsyncTimeout;)Lokio/AsyncTimeout;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lokio/AsyncTimeout;->access$setNext$p(Lokio/AsyncTimeout;Lokio/AsyncTimeout;)V

    .line 254
    move-object/from16 v25, v24

    move-object/from16 v26, v3

    invoke-static/range {v25 .. v26}, Lokio/AsyncTimeout;->access$setNext$p(Lokio/AsyncTimeout;Lokio/AsyncTimeout;)V

    .line 255
    move-object/from16 v25, v24

    invoke-static {}, Lokio/AsyncTimeout;->access$getHead$cp()Lokio/AsyncTimeout;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_4

    .line 257
    const-class v25, Lokio/AsyncTimeout;

    check-cast v25, Ljava/lang/Object;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Object;->notify()V

    .line 263
    :cond_4
    nop

    sget-object v25, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v10, v25

    move-object/from16 v25, v7

    monitor-exit v25

    .line 264
    return-void

    .line 240
    :cond_5
    move-wide/from16 v25, v4

    const-wide/16 v27, 0x0

    cmp-long v25, v25, v27

    if-eqz v25, :cond_6

    .line 241
    move-object/from16 v25, v3

    move-wide/from16 v26, v12

    move-wide/from16 v28, v4

    add-long v26, v26, v28

    :try_start_1
    invoke-static/range {v25 .. v27}, Lokio/AsyncTimeout;->access$setTimeoutAt$p(Lokio/AsyncTimeout;J)V

    goto/16 :goto_0

    .line 242
    :cond_6
    move/from16 v25, v6

    if-eqz v25, :cond_7

    .line 243
    move-object/from16 v25, v3

    move-object/from16 v26, v3

    invoke-virtual/range {v26 .. v26}, Lokio/AsyncTimeout;->deadlineNanoTime()J

    move-result-wide v26

    invoke-static/range {v25 .. v27}, Lokio/AsyncTimeout;->access$setTimeoutAt$p(Lokio/AsyncTimeout;J)V

    goto/16 :goto_0

    .line 245
    :cond_7
    new-instance v25, Ljava/lang/AssertionError;

    move-object/from16 v32, v25

    move-object/from16 v25, v32

    move-object/from16 v26, v32

    invoke-direct/range {v26 .. v26}, Ljava/lang/AssertionError;-><init>()V

    check-cast v25, Ljava/lang/Throwable;

    throw v25
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 263
    :catchall_0
    move-exception v25

    move-object/from16 v10, v25

    move-object/from16 v25, v7

    monitor-exit v25

    move-object/from16 v25, v10

    throw v25

    .line 261
    :cond_8
    move-object/from16 v25, v24

    :try_start_2
    invoke-static/range {v25 .. v25}, Lokio/AsyncTimeout;->access$getNext$p(Lokio/AsyncTimeout;)Lokio/AsyncTimeout;

    move-result-object v25

    move-object/from16 v32, v25

    move-object/from16 v25, v32

    move-object/from16 v26, v32

    if-nez v26, :cond_9

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_9
    move-object/from16 v24, v25

    .line 251
    goto/16 :goto_1
.end method


# virtual methods
.method public final awaitTimeout$okio()Lokio/AsyncTimeout;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 295
    move-object v0, p0

    invoke-static {}, Lokio/AsyncTimeout;->access$getHead$cp()Lokio/AsyncTimeout;

    move-result-object v6

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    if-nez v7, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-static {v6}, Lokio/AsyncTimeout;->access$getNext$p(Lokio/AsyncTimeout;)Lokio/AsyncTimeout;

    move-result-object v6

    move-object v1, v6

    .line 298
    move-object v6, v1

    if-nez v6, :cond_3

    .line 299
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    move-wide v2, v6

    .line 300
    const-class v6, Lokio/AsyncTimeout;

    check-cast v6, Ljava/lang/Object;

    invoke-static {}, Lokio/AsyncTimeout;->access$getIDLE_TIMEOUT_MILLIS$cp()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/Object;->wait(J)V

    .line 301
    invoke-static {}, Lokio/AsyncTimeout;->access$getHead$cp()Lokio/AsyncTimeout;

    move-result-object v6

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    if-nez v7, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-static {v6}, Lokio/AsyncTimeout;->access$getNext$p(Lokio/AsyncTimeout;)Lokio/AsyncTimeout;

    move-result-object v6

    if-nez v6, :cond_2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    move-wide v8, v2

    sub-long/2addr v6, v8

    invoke-static {}, Lokio/AsyncTimeout;->access$getIDLE_TIMEOUT_NANOS$cp()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-ltz v6, :cond_2

    .line 302
    invoke-static {}, Lokio/AsyncTimeout;->access$getHead$cp()Lokio/AsyncTimeout;

    move-result-object v6

    .line 301
    :goto_0
    move-object v0, v6

    .line 323
    :goto_1
    return-object v0

    .line 304
    :cond_2
    const/4 v6, 0x0

    goto :goto_0

    .line 308
    :cond_3
    move-object v6, v1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    invoke-static {v6, v7, v8}, Lokio/AsyncTimeout;->access$remainingNanos(Lokio/AsyncTimeout;J)J

    move-result-wide v6

    move-wide v2, v6

    .line 311
    move-wide v6, v2

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_4

    .line 314
    move-wide v6, v2

    const-wide/32 v8, 0xf4240

    div-long/2addr v6, v8

    move-wide v4, v6

    .line 315
    move-wide v6, v2

    move-wide v8, v4

    const-wide/32 v10, 0xf4240

    mul-long/2addr v8, v10

    sub-long/2addr v6, v8

    move-wide v2, v6

    .line 316
    const-class v6, Lokio/AsyncTimeout;

    check-cast v6, Ljava/lang/Object;

    move-wide v7, v4

    move-wide v9, v2

    long-to-int v9, v9

    invoke-virtual {v6, v7, v8, v9}, Ljava/lang/Object;->wait(JI)V

    .line 317
    const/4 v6, 0x0

    move-object v0, v6

    goto :goto_1

    .line 321
    :cond_4
    invoke-static {}, Lokio/AsyncTimeout;->access$getHead$cp()Lokio/AsyncTimeout;

    move-result-object v6

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    if-nez v7, :cond_5

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_5
    move-object v7, v1

    invoke-static {v7}, Lokio/AsyncTimeout;->access$getNext$p(Lokio/AsyncTimeout;)Lokio/AsyncTimeout;

    move-result-object v7

    invoke-static {v6, v7}, Lokio/AsyncTimeout;->access$setNext$p(Lokio/AsyncTimeout;Lokio/AsyncTimeout;)V

    .line 322
    move-object v6, v1

    const/4 v7, 0x0

    check-cast v7, Lokio/AsyncTimeout;

    invoke-static {v6, v7}, Lokio/AsyncTimeout;->access$setNext$p(Lokio/AsyncTimeout;Lokio/AsyncTimeout;)V

    .line 323
    move-object v6, v1

    move-object v0, v6

    goto :goto_1
.end method
