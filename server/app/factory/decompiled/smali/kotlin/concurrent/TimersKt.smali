.class public final Lkotlin/concurrent/TimersKt;
.super Ljava/lang/Object;
.source "Timer.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u00004\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u001aJ\u0010\u0000\u001a\u00020\u00012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0019\u0008\u0004\u0010\n\u001a\u0013\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\r0\u000b\u00a2\u0006\u0002\u0008\u000eH\u0087\u0008\u001aL\u0010\u0000\u001a\u00020\u00012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u000f\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\t2\u0019\u0008\u0004\u0010\n\u001a\u0013\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\r0\u000b\u00a2\u0006\u0002\u0008\u000eH\u0087\u0008\u001a\u001a\u0010\u0010\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0001\u001aJ\u0010\u0010\u001a\u00020\u00012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0019\u0008\u0004\u0010\n\u001a\u0013\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\r0\u000b\u00a2\u0006\u0002\u0008\u000eH\u0087\u0008\u001aL\u0010\u0010\u001a\u00020\u00012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u000f\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\t2\u0019\u0008\u0004\u0010\n\u001a\u0013\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\r0\u000b\u00a2\u0006\u0002\u0008\u000eH\u0087\u0008\u001a$\u0010\u0011\u001a\u00020\u000c2\u0019\u0008\u0004\u0010\n\u001a\u0013\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\r0\u000b\u00a2\u0006\u0002\u0008\u000eH\u0087\u0008\u001a0\u0010\u0012\u001a\u00020\u000c*\u00020\u00012\u0006\u0010\u0013\u001a\u00020\u00072\u0019\u0008\u0004\u0010\n\u001a\u0013\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\r0\u000b\u00a2\u0006\u0002\u0008\u000eH\u0087\u0008\u001a8\u0010\u0012\u001a\u00020\u000c*\u00020\u00012\u0006\u0010\u0013\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0019\u0008\u0004\u0010\n\u001a\u0013\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\r0\u000b\u00a2\u0006\u0002\u0008\u000eH\u0087\u0008\u001a0\u0010\u0012\u001a\u00020\u000c*\u00020\u00012\u0006\u0010\u0014\u001a\u00020\t2\u0019\u0008\u0004\u0010\n\u001a\u0013\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\r0\u000b\u00a2\u0006\u0002\u0008\u000eH\u0087\u0008\u001a8\u0010\u0012\u001a\u00020\u000c*\u00020\u00012\u0006\u0010\u0014\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\t2\u0019\u0008\u0004\u0010\n\u001a\u0013\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\r0\u000b\u00a2\u0006\u0002\u0008\u000eH\u0087\u0008\u001a8\u0010\u0015\u001a\u00020\u000c*\u00020\u00012\u0006\u0010\u0013\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0019\u0008\u0004\u0010\n\u001a\u0013\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\r0\u000b\u00a2\u0006\u0002\u0008\u000eH\u0087\u0008\u001a8\u0010\u0015\u001a\u00020\u000c*\u00020\u00012\u0006\u0010\u0014\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\t2\u0019\u0008\u0004\u0010\n\u001a\u0013\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\r0\u000b\u00a2\u0006\u0002\u0008\u000eH\u0087\u0008\u00a8\u0006\u0016"
    }
    d2 = {
        "fixedRateTimer",
        "Ljava/util/Timer;",
        "name",
        "",
        "daemon",
        "",
        "startAt",
        "Ljava/util/Date;",
        "period",
        "",
        "action",
        "Lkotlin/Function1;",
        "Ljava/util/TimerTask;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "initialDelay",
        "timer",
        "timerTask",
        "schedule",
        "time",
        "delay",
        "scheduleAtFixedRate",
        "kotlin-stdlib"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0xa
    }
.end annotation

.annotation build Lkotlin/jvm/JvmName;
    name = "TimersKt"
.end annotation


# direct methods
.method private static final fixedRateTimer(Ljava/lang/String;ZJJLkotlin/jvm/functions/Function1;)Ljava/util/Timer;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZJJ",
            "Lkotlin/jvm/functions/Function1",
            "<-",
            "Ljava/util/TimerTask;",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/util/Timer;"
        }
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .prologue
    .line 123
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-object/from16 v6, p6

    move-object v11, v0

    move v12, v1

    invoke-static {v11, v12}, Lkotlin/concurrent/TimersKt;->timer(Ljava/lang/String;Z)Ljava/util/Timer;

    move-result-object v11

    move-object v8, v11

    .line 124
    move-object v11, v8

    move-object v9, v11

    new-instance v11, Lkotlin/concurrent/TimersKt$timerTask$1;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    move-object v13, v6

    invoke-direct {v12, v13}, Lkotlin/concurrent/TimersKt$timerTask$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v11, Ljava/util/TimerTask;

    move-object v10, v11

    move-object v11, v9

    move-object v12, v10

    move-wide v13, v2

    move-wide v15, v4

    invoke-virtual/range {v11 .. v16}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 125
    move-object v11, v8

    move-object v0, v11

    return-object v0
.end method

.method private static final fixedRateTimer(Ljava/lang/String;ZLjava/util/Date;JLkotlin/jvm/functions/Function1;)Ljava/util/Timer;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Date;",
            "J",
            "Lkotlin/jvm/functions/Function1",
            "<-",
            "Ljava/util/TimerTask;",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/util/Timer;"
        }
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .prologue
    .line 137
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    move-object/from16 v5, p5

    move-object v10, v0

    move v11, v1

    invoke-static {v10, v11}, Lkotlin/concurrent/TimersKt;->timer(Ljava/lang/String;Z)Ljava/util/Timer;

    move-result-object v10

    move-object v7, v10

    .line 138
    move-object v10, v7

    move-object v8, v10

    new-instance v10, Lkotlin/concurrent/TimersKt$timerTask$1;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    move-object v12, v5

    invoke-direct {v11, v12}, Lkotlin/concurrent/TimersKt$timerTask$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v10, Ljava/util/TimerTask;

    move-object v9, v10

    move-object v10, v8

    move-object v11, v9

    move-object v12, v2

    move-wide v13, v3

    invoke-virtual {v10, v11, v12, v13, v14}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;Ljava/util/Date;J)V

    .line 139
    move-object v10, v7

    move-object v0, v10

    return-object v0
.end method

.method static bridge synthetic fixedRateTimer$default(Ljava/lang/String;ZJJLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/util/Timer;
    .locals 18
    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .prologue
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-object/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move v11, v7

    const/4 v12, 0x1

    and-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_0

    .line 122
    const/4 v11, 0x0

    check-cast v11, Ljava/lang/String;

    move-object v0, v11

    :cond_0
    move v11, v7

    const/4 v12, 0x2

    and-int/lit8 v11, v11, 0x2

    if-eqz v11, :cond_1

    const/4 v11, 0x0

    move v1, v11

    :cond_1
    move v11, v7

    const/4 v12, 0x4

    and-int/lit8 v11, v11, 0x4

    if-eqz v11, :cond_2

    const-wide/16 v11, 0x0

    move-wide v2, v11

    .line 155
    :cond_2
    move-object v11, v0

    move v12, v1

    invoke-static {v11, v12}, Lkotlin/concurrent/TimersKt;->timer(Ljava/lang/String;Z)Ljava/util/Timer;

    move-result-object v11

    move-object v8, v11

    .line 156
    move-object v11, v8

    move-object v9, v11

    new-instance v11, Lkotlin/concurrent/TimersKt$timerTask$1;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    move-object v13, v6

    invoke-direct {v12, v13}, Lkotlin/concurrent/TimersKt$timerTask$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v11, Ljava/util/TimerTask;

    move-object v10, v11

    move-object v11, v9

    move-object v12, v10

    move-wide v13, v2

    move-wide v15, v4

    invoke-virtual/range {v11 .. v16}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 157
    move-object v11, v8

    move-object v0, v11

    return-object v0
.end method

.method static bridge synthetic fixedRateTimer$default(Ljava/lang/String;ZLjava/util/Date;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/util/Timer;
    .locals 16
    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .prologue
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move v10, v6

    const/4 v11, 0x1

    and-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_0

    .line 136
    const/4 v10, 0x0

    check-cast v10, Ljava/lang/String;

    move-object v0, v10

    :cond_0
    move v10, v6

    const/4 v11, 0x2

    and-int/lit8 v10, v10, 0x2

    if-eqz v10, :cond_1

    const/4 v10, 0x0

    move v1, v10

    .line 158
    :cond_1
    move-object v10, v0

    move v11, v1

    invoke-static {v10, v11}, Lkotlin/concurrent/TimersKt;->timer(Ljava/lang/String;Z)Ljava/util/Timer;

    move-result-object v10

    move-object v7, v10

    .line 159
    move-object v10, v7

    move-object v8, v10

    new-instance v10, Lkotlin/concurrent/TimersKt$timerTask$1;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    move-object v12, v5

    invoke-direct {v11, v12}, Lkotlin/concurrent/TimersKt$timerTask$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v10, Ljava/util/TimerTask;

    move-object v9, v10

    move-object v10, v8

    move-object v11, v9

    move-object v12, v2

    move-wide v13, v3

    invoke-virtual {v10, v11, v12, v13, v14}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;Ljava/util/Date;J)V

    .line 160
    move-object v10, v7

    move-object v0, v10

    return-object v0
.end method

.method private static final schedule(Ljava/util/Timer;JJLkotlin/jvm/functions/Function1;)Ljava/util/TimerTask;
    .locals 15
    .param p0    # Ljava/util/Timer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Timer;",
            "JJ",
            "Lkotlin/jvm/functions/Function1",
            "<-",
            "Ljava/util/TimerTask;",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/util/TimerTask;"
        }
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .prologue
    .line 40
    move-object v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-object/from16 v5, p5

    new-instance v8, Lkotlin/concurrent/TimersKt$timerTask$1;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move-object v10, v5

    invoke-direct {v9, v10}, Lkotlin/concurrent/TimersKt$timerTask$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v8, Ljava/util/TimerTask;

    move-object v7, v8

    .line 41
    move-object v8, v0

    move-object v9, v7

    move-wide v10, v1

    move-wide v12, v3

    invoke-virtual/range {v8 .. v13}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 42
    move-object v8, v7

    move-object v0, v8

    return-object v0
.end method

.method private static final schedule(Ljava/util/Timer;JLkotlin/jvm/functions/Function1;)Ljava/util/TimerTask;
    .locals 11
    .param p0    # Ljava/util/Timer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Timer;",
            "J",
            "Lkotlin/jvm/functions/Function1",
            "<-",
            "Ljava/util/TimerTask;",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/util/TimerTask;"
        }
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .prologue
    .line 18
    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    new-instance v6, Lkotlin/concurrent/TimersKt$timerTask$1;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v3

    invoke-direct {v7, v8}, Lkotlin/concurrent/TimersKt$timerTask$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Ljava/util/TimerTask;

    move-object v5, v6

    .line 19
    move-object v6, v0

    move-object v7, v5

    move-wide v8, v1

    invoke-virtual {v6, v7, v8, v9}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 20
    move-object v6, v5

    move-object v0, v6

    return-object v0
.end method

.method private static final schedule(Ljava/util/Timer;Ljava/util/Date;JLkotlin/jvm/functions/Function1;)Ljava/util/TimerTask;
    .locals 13
    .param p0    # Ljava/util/Timer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Timer;",
            "Ljava/util/Date;",
            "J",
            "Lkotlin/jvm/functions/Function1",
            "<-",
            "Ljava/util/TimerTask;",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/util/TimerTask;"
        }
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .prologue
    .line 51
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object/from16 v4, p4

    new-instance v7, Lkotlin/concurrent/TimersKt$timerTask$1;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v4

    invoke-direct {v8, v9}, Lkotlin/concurrent/TimersKt$timerTask$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Ljava/util/TimerTask;

    move-object v6, v7

    .line 52
    move-object v7, v0

    move-object v8, v6

    move-object v9, v1

    move-wide v10, v2

    invoke-virtual {v7, v8, v9, v10, v11}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;Ljava/util/Date;J)V

    .line 53
    move-object v7, v6

    move-object v0, v7

    return-object v0
.end method

.method private static final schedule(Ljava/util/Timer;Ljava/util/Date;Lkotlin/jvm/functions/Function1;)Ljava/util/TimerTask;
    .locals 9
    .param p0    # Ljava/util/Timer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Timer;",
            "Ljava/util/Date;",
            "Lkotlin/jvm/functions/Function1",
            "<-",
            "Ljava/util/TimerTask;",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/util/TimerTask;"
        }
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .prologue
    .line 28
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    new-instance v5, Lkotlin/concurrent/TimersKt$timerTask$1;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v2

    invoke-direct {v6, v7}, Lkotlin/concurrent/TimersKt$timerTask$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v5, Ljava/util/TimerTask;

    move-object v4, v5

    .line 29
    move-object v5, v0

    move-object v6, v4

    move-object v7, v1

    invoke-virtual {v5, v6, v7}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;Ljava/util/Date;)V

    .line 30
    move-object v5, v4

    move-object v0, v5

    return-object v0
.end method

.method private static final scheduleAtFixedRate(Ljava/util/Timer;JJLkotlin/jvm/functions/Function1;)Ljava/util/TimerTask;
    .locals 15
    .param p0    # Ljava/util/Timer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Timer;",
            "JJ",
            "Lkotlin/jvm/functions/Function1",
            "<-",
            "Ljava/util/TimerTask;",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/util/TimerTask;"
        }
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .prologue
    .line 63
    move-object v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-object/from16 v5, p5

    new-instance v8, Lkotlin/concurrent/TimersKt$timerTask$1;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move-object v10, v5

    invoke-direct {v9, v10}, Lkotlin/concurrent/TimersKt$timerTask$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v8, Ljava/util/TimerTask;

    move-object v7, v8

    .line 64
    move-object v8, v0

    move-object v9, v7

    move-wide v10, v1

    move-wide v12, v3

    invoke-virtual/range {v8 .. v13}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 65
    move-object v8, v7

    move-object v0, v8

    return-object v0
.end method

.method private static final scheduleAtFixedRate(Ljava/util/Timer;Ljava/util/Date;JLkotlin/jvm/functions/Function1;)Ljava/util/TimerTask;
    .locals 13
    .param p0    # Ljava/util/Timer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Timer;",
            "Ljava/util/Date;",
            "J",
            "Lkotlin/jvm/functions/Function1",
            "<-",
            "Ljava/util/TimerTask;",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/util/TimerTask;"
        }
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .prologue
    .line 74
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object/from16 v4, p4

    new-instance v7, Lkotlin/concurrent/TimersKt$timerTask$1;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v4

    invoke-direct {v8, v9}, Lkotlin/concurrent/TimersKt$timerTask$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Ljava/util/TimerTask;

    move-object v6, v7

    .line 75
    move-object v7, v0

    move-object v8, v6

    move-object v9, v1

    move-wide v10, v2

    invoke-virtual {v7, v8, v9, v10, v11}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;Ljava/util/Date;J)V

    .line 76
    move-object v7, v6

    move-object v0, v7

    return-object v0
.end method

.method public static final timer(Ljava/lang/String;Z)Ljava/util/Timer;
    .locals 7
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lkotlin/PublishedApi;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 82
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    if-nez v2, :cond_0

    new-instance v2, Ljava/util/Timer;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move v4, v1

    invoke-direct {v3, v4}, Ljava/util/Timer;-><init>(Z)V

    :goto_0
    move-object v0, v2

    return-object v0

    :cond_0
    new-instance v2, Ljava/util/Timer;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move v5, v1

    invoke-direct {v3, v4, v5}, Ljava/util/Timer;-><init>(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private static final timer(Ljava/lang/String;ZJJLkotlin/jvm/functions/Function1;)Ljava/util/Timer;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZJJ",
            "Lkotlin/jvm/functions/Function1",
            "<-",
            "Ljava/util/TimerTask;",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/util/Timer;"
        }
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .prologue
    .line 94
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-object/from16 v6, p6

    move-object v11, v0

    move v12, v1

    invoke-static {v11, v12}, Lkotlin/concurrent/TimersKt;->timer(Ljava/lang/String;Z)Ljava/util/Timer;

    move-result-object v11

    move-object v8, v11

    .line 95
    move-object v11, v8

    move-object v9, v11

    new-instance v11, Lkotlin/concurrent/TimersKt$timerTask$1;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    move-object v13, v6

    invoke-direct {v12, v13}, Lkotlin/concurrent/TimersKt$timerTask$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v11, Ljava/util/TimerTask;

    move-object v10, v11

    move-object v11, v9

    move-object v12, v10

    move-wide v13, v2

    move-wide v15, v4

    invoke-virtual/range {v11 .. v16}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 96
    move-object v11, v8

    move-object v0, v11

    return-object v0
.end method

.method private static final timer(Ljava/lang/String;ZLjava/util/Date;JLkotlin/jvm/functions/Function1;)Ljava/util/Timer;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Date;",
            "J",
            "Lkotlin/jvm/functions/Function1",
            "<-",
            "Ljava/util/TimerTask;",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/util/Timer;"
        }
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .prologue
    .line 108
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    move-object/from16 v5, p5

    move-object v10, v0

    move v11, v1

    invoke-static {v10, v11}, Lkotlin/concurrent/TimersKt;->timer(Ljava/lang/String;Z)Ljava/util/Timer;

    move-result-object v10

    move-object v7, v10

    .line 109
    move-object v10, v7

    move-object v8, v10

    new-instance v10, Lkotlin/concurrent/TimersKt$timerTask$1;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    move-object v12, v5

    invoke-direct {v11, v12}, Lkotlin/concurrent/TimersKt$timerTask$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v10, Ljava/util/TimerTask;

    move-object v9, v10

    move-object v10, v8

    move-object v11, v9

    move-object v12, v2

    move-wide v13, v3

    invoke-virtual {v10, v11, v12, v13, v14}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;Ljava/util/Date;J)V

    .line 110
    move-object v10, v7

    move-object v0, v10

    return-object v0
.end method

.method static bridge synthetic timer$default(Ljava/lang/String;ZJJLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/util/Timer;
    .locals 18
    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .prologue
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-object/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move v11, v7

    const/4 v12, 0x1

    and-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_0

    .line 93
    const/4 v11, 0x0

    check-cast v11, Ljava/lang/String;

    move-object v0, v11

    :cond_0
    move v11, v7

    const/4 v12, 0x2

    and-int/lit8 v11, v11, 0x2

    if-eqz v11, :cond_1

    const/4 v11, 0x0

    move v1, v11

    :cond_1
    move v11, v7

    const/4 v12, 0x4

    and-int/lit8 v11, v11, 0x4

    if-eqz v11, :cond_2

    const-wide/16 v11, 0x0

    move-wide v2, v11

    .line 149
    :cond_2
    move-object v11, v0

    move v12, v1

    invoke-static {v11, v12}, Lkotlin/concurrent/TimersKt;->timer(Ljava/lang/String;Z)Ljava/util/Timer;

    move-result-object v11

    move-object v8, v11

    .line 150
    move-object v11, v8

    move-object v9, v11

    new-instance v11, Lkotlin/concurrent/TimersKt$timerTask$1;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    move-object v13, v6

    invoke-direct {v12, v13}, Lkotlin/concurrent/TimersKt$timerTask$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v11, Ljava/util/TimerTask;

    move-object v10, v11

    move-object v11, v9

    move-object v12, v10

    move-wide v13, v2

    move-wide v15, v4

    invoke-virtual/range {v11 .. v16}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 151
    move-object v11, v8

    move-object v0, v11

    return-object v0
.end method

.method static bridge synthetic timer$default(Ljava/lang/String;ZLjava/util/Date;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/util/Timer;
    .locals 16
    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .prologue
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move v10, v6

    const/4 v11, 0x1

    and-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_0

    .line 107
    const/4 v10, 0x0

    check-cast v10, Ljava/lang/String;

    move-object v0, v10

    :cond_0
    move v10, v6

    const/4 v11, 0x2

    and-int/lit8 v10, v10, 0x2

    if-eqz v10, :cond_1

    const/4 v10, 0x0

    move v1, v10

    .line 152
    :cond_1
    move-object v10, v0

    move v11, v1

    invoke-static {v10, v11}, Lkotlin/concurrent/TimersKt;->timer(Ljava/lang/String;Z)Ljava/util/Timer;

    move-result-object v10

    move-object v7, v10

    .line 153
    move-object v10, v7

    move-object v8, v10

    new-instance v10, Lkotlin/concurrent/TimersKt$timerTask$1;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    move-object v12, v5

    invoke-direct {v11, v12}, Lkotlin/concurrent/TimersKt$timerTask$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v10, Ljava/util/TimerTask;

    move-object v9, v10

    move-object v10, v8

    move-object v11, v9

    move-object v12, v2

    move-wide v13, v3

    invoke-virtual {v10, v11, v12, v13, v14}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;Ljava/util/Date;J)V

    .line 154
    move-object v10, v7

    move-object v0, v10

    return-object v0
.end method

.method private static final timerTask(Lkotlin/jvm/functions/Function1;)Ljava/util/TimerTask;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1",
            "<-",
            "Ljava/util/TimerTask;",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/util/TimerTask;"
        }
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .prologue
    .line 146
    move-object v0, p0

    new-instance v2, Lkotlin/concurrent/TimersKt$timerTask$1;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Lkotlin/concurrent/TimersKt$timerTask$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v2, Ljava/util/TimerTask;

    .line 148
    move-object v0, v2

    return-object v0
.end method
