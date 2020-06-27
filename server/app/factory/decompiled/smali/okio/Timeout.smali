.class public Lokio/Timeout;
.super Ljava/lang/Object;
.source "Timeout.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokio/Timeout$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0016\u0018\u0000 \u00172\u00020\u0001:\u0001\u0017B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0008\u001a\u00020\u0000H\u0016J\u0008\u0010\t\u001a\u00020\u0000H\u0016J\u0016\u0010\n\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u000c\u001a\u00020\rJ\u0008\u0010\u0003\u001a\u00020\u0004H\u0016J\u0010\u0010\u0003\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0004H\u0016J\u0008\u0010\u0005\u001a\u00020\u0006H\u0016J\u001f\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00002\u000c\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u0012H\u0086\u0008J\u0008\u0010\u0013\u001a\u00020\u000fH\u0016J\u0018\u0010\u0014\u001a\u00020\u00002\u0006\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u000c\u001a\u00020\rH\u0016J\u0008\u0010\u0007\u001a\u00020\u0004H\u0016J\u000e\u0010\u0015\u001a\u00020\u000f2\u0006\u0010\u0016\u001a\u00020\u0001R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "Lokio/Timeout;",
        "",
        "()V",
        "deadlineNanoTime",
        "",
        "hasDeadline",
        "",
        "timeoutNanos",
        "clearDeadline",
        "clearTimeout",
        "deadline",
        "duration",
        "unit",
        "Ljava/util/concurrent/TimeUnit;",
        "intersectWith",
        "",
        "other",
        "block",
        "Lkotlin/Function0;",
        "throwIfReached",
        "timeout",
        "waitUntilNotified",
        "monitor",
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
.field public static final Companion:Lokio/Timeout$Companion;

.field public static final NONE:Lokio/Timeout;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private deadlineNanoTime:J

.field private hasDeadline:Z

.field private timeoutNanos:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    new-instance v0, Lokio/Timeout$Companion;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lokio/Timeout$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lokio/Timeout;->Companion:Lokio/Timeout$Companion;

    .line 218
    new-instance v0, Lokio/Timeout$Companion$NONE$1;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    invoke-direct {v1}, Lokio/Timeout$Companion$NONE$1;-><init>()V

    check-cast v0, Lokio/Timeout;

    sput-object v0, Lokio/Timeout;->NONE:Lokio/Timeout;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 22
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clearDeadline()Lokio/Timeout;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 85
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lokio/Timeout;->hasDeadline:Z

    .line 86
    move-object v1, v0

    move-object v0, v1

    return-object v0
.end method

.method public clearTimeout()Lokio/Timeout;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 79
    move-object v0, p0

    move-object v1, v0

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lokio/Timeout;->timeoutNanos:J

    .line 80
    move-object v1, v0

    move-object v0, v1

    return-object v0
.end method

.method public final deadline(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;
    .locals 15
    .param p3    # Ljava/util/concurrent/TimeUnit;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    move-object v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, p3

    move-object v8, v3

    const-string v9, "unit"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    move-wide v8, v1

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-lez v8, :cond_0

    const/4 v8, 0x1

    :goto_0
    move v4, v8

    const/4 v8, 0x0

    move v5, v8

    const/4 v8, 0x0

    move v6, v8

    move v8, v4

    if-nez v8, :cond_1

    const/4 v8, 0x0

    move v7, v8

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "duration <= 0: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide v9, v1

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v6, v8

    new-instance v8, Ljava/lang/IllegalArgumentException;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move-object v10, v6

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v8, Ljava/lang/Throwable;

    throw v8

    :cond_0
    const/4 v8, 0x0

    goto :goto_0

    .line 74
    :cond_1
    move-object v8, v0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    move-object v11, v3

    move-wide v12, v1

    invoke-virtual {v11, v12, v13}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v11

    add-long/2addr v9, v11

    invoke-virtual {v8, v9, v10}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    move-result-object v8

    move-object v0, v8

    return-object v0
.end method

.method public deadlineNanoTime()J
    .locals 9

    .prologue
    .line 56
    move-object v0, p0

    move-object v5, v0

    iget-boolean v5, v5, Lokio/Timeout;->hasDeadline:Z

    move v1, v5

    const/4 v5, 0x0

    move v2, v5

    const/4 v5, 0x0

    move v3, v5

    move v5, v1

    if-nez v5, :cond_0

    const/4 v5, 0x0

    move v4, v5

    const-string v5, "No deadline"

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

    .line 57
    :cond_0
    move-object v5, v0

    iget-wide v5, v5, Lokio/Timeout;->deadlineNanoTime:J

    move-wide v0, v5

    return-wide v0
.end method

.method public deadlineNanoTime(J)Lokio/Timeout;
    .locals 6
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 66
    move-object v0, p0

    move-wide v1, p1

    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lokio/Timeout;->hasDeadline:Z

    .line 67
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Lokio/Timeout;->deadlineNanoTime:J

    .line 68
    move-object v3, v0

    move-object v0, v3

    return-object v0
.end method

.method public hasDeadline()Z
    .locals 2

    .prologue
    .line 48
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lokio/Timeout;->hasDeadline:Z

    move v0, v1

    return v0
.end method

.method public final intersectWith(Lokio/Timeout;Lkotlin/jvm/functions/Function0;)V
    .locals 15
    .param p1    # Lokio/Timeout;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokio/Timeout;",
            "Lkotlin/jvm/functions/Function0",
            "<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .prologue
    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v9, 0x0

    move v3, v9

    move-object v9, v1

    const-string v10, "other"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v9, v2

    const-string v10, "block"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    move-object v9, v0

    invoke-virtual {v9}, Lokio/Timeout;->timeoutNanos()J

    move-result-wide v9

    move-wide v4, v9

    .line 187
    move-object v9, v0

    sget-object v10, Lokio/Timeout;->Companion:Lokio/Timeout$Companion;

    move-object v11, v1

    invoke-virtual {v11}, Lokio/Timeout;->timeoutNanos()J

    move-result-wide v11

    move-object v13, v0

    invoke-virtual {v13}, Lokio/Timeout;->timeoutNanos()J

    move-result-wide v13

    invoke-virtual {v10, v11, v12, v13, v14}, Lokio/Timeout$Companion;->minTimeout(JJ)J

    move-result-wide v10

    sget-object v12, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v9, v10, v11, v12}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    move-result-object v9

    .line 189
    move-object v9, v0

    invoke-virtual {v9}, Lokio/Timeout;->hasDeadline()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 190
    move-object v9, v0

    invoke-virtual {v9}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v9

    move-wide v6, v9

    .line 191
    move-object v9, v1

    invoke-virtual {v9}, Lokio/Timeout;->hasDeadline()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 192
    move-object v9, v0

    move-object v10, v0

    invoke-virtual {v10}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v10

    move-object v12, v1

    invoke-virtual {v12}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v12

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    move-result-object v9

    .line 194
    :cond_0
    nop

    .line 195
    move-object v9, v2

    :try_start_0
    invoke-interface {v9}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    const/4 v9, 0x1

    invoke-static {v9}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 197
    move-object v9, v0

    move-wide v10, v4

    sget-object v12, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v9, v10, v11, v12}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    move-result-object v9

    .line 198
    move-object v9, v1

    invoke-virtual {v9}, Lokio/Timeout;->hasDeadline()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 199
    move-object v9, v0

    move-wide v10, v6

    invoke-virtual {v9, v10, v11}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    move-result-object v9

    :cond_1
    const/4 v9, 0x1

    invoke-static {v9}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 213
    :goto_0
    return-void

    .line 201
    :catchall_0
    move-exception v9

    move-object v8, v9

    const/4 v9, 0x1

    invoke-static {v9}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 197
    move-object v9, v0

    move-wide v10, v4

    sget-object v12, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v9, v10, v11, v12}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    move-result-object v9

    .line 198
    move-object v9, v1

    invoke-virtual {v9}, Lokio/Timeout;->hasDeadline()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 199
    move-object v9, v0

    move-wide v10, v6

    invoke-virtual {v9, v10, v11}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    move-result-object v9

    :cond_2
    const/4 v9, 0x1

    invoke-static {v9}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    move-object v9, v8

    throw v9

    .line 203
    :cond_3
    move-object v9, v1

    invoke-virtual {v9}, Lokio/Timeout;->hasDeadline()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 204
    move-object v9, v0

    move-object v10, v1

    invoke-virtual {v10}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    move-result-object v9

    .line 206
    :cond_4
    nop

    .line 207
    move-object v9, v2

    :try_start_1
    invoke-interface {v9}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v9

    const/4 v9, 0x1

    invoke-static {v9}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 209
    move-object v9, v0

    move-wide v10, v4

    sget-object v12, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v9, v10, v11, v12}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    move-result-object v9

    .line 210
    move-object v9, v1

    invoke-virtual {v9}, Lokio/Timeout;->hasDeadline()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 211
    move-object v9, v0

    invoke-virtual {v9}, Lokio/Timeout;->clearDeadline()Lokio/Timeout;

    move-result-object v9

    :cond_5
    const/4 v9, 0x1

    invoke-static {v9}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 213
    goto :goto_0

    :catchall_1
    move-exception v9

    move-object v6, v9

    const/4 v9, 0x1

    invoke-static {v9}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 209
    move-object v9, v0

    move-wide v10, v4

    sget-object v12, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v9, v10, v11, v12}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    move-result-object v9

    .line 210
    move-object v9, v1

    invoke-virtual {v9}, Lokio/Timeout;->hasDeadline()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 211
    move-object v9, v0

    invoke-virtual {v9}, Lokio/Timeout;->clearDeadline()Lokio/Timeout;

    move-result-object v9

    :cond_6
    const/4 v9, 0x1

    invoke-static {v9}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    move-object v9, v6

    throw v9
.end method

.method public throwIfReached()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 96
    move-object v0, p0

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 98
    new-instance v1, Ljava/io/InterruptedIOException;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const-string v3, "interrupted"

    invoke-direct {v2, v3}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 101
    :cond_0
    move-object v1, v0

    iget-boolean v1, v1, Lokio/Timeout;->hasDeadline:Z

    if-eqz v1, :cond_1

    move-object v1, v0

    iget-wide v1, v1, Lokio/Timeout;->deadlineNanoTime:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_1

    .line 102
    new-instance v1, Ljava/io/InterruptedIOException;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const-string v3, "deadline reached"

    invoke-direct {v2, v3}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 104
    :cond_1
    return-void
.end method

.method public timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;
    .locals 13
    .param p3    # Ljava/util/concurrent/TimeUnit;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    move-object v0, p0

    move-wide v1, p1

    move-object/from16 v3, p3

    move-object v8, v3

    const-string v9, "unit"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    move-wide v8, v1

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-ltz v8, :cond_0

    const/4 v8, 0x1

    :goto_0
    move v4, v8

    const/4 v8, 0x0

    move v5, v8

    const/4 v8, 0x0

    move v6, v8

    move v8, v4

    if-nez v8, :cond_1

    const/4 v8, 0x0

    move v7, v8

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "timeout < 0: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide v9, v1

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v6, v8

    new-instance v8, Ljava/lang/IllegalArgumentException;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v10, v6

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v8, Ljava/lang/Throwable;

    throw v8

    :cond_0
    const/4 v8, 0x0

    goto :goto_0

    .line 40
    :cond_1
    move-object v8, v0

    move-object v9, v3

    move-wide v10, v1

    invoke-virtual {v9, v10, v11}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v9

    iput-wide v9, v8, Lokio/Timeout;->timeoutNanos:J

    .line 41
    move-object v8, v0

    move-object v0, v8

    return-object v0
.end method

.method public timeoutNanos()J
    .locals 3

    .prologue
    .line 45
    move-object v0, p0

    move-object v1, v0

    iget-wide v1, v1, Lokio/Timeout;->timeoutNanos:J

    move-wide v0, v1

    return-wide v0
.end method

.method public final waitUntilNotified(Ljava/lang/Object;)V
    .locals 25
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    .prologue
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object v15, v3

    const-string v16, "monitor"

    invoke-static/range {v15 .. v16}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    nop

    .line 144
    move-object v15, v2

    :try_start_0
    invoke-virtual {v15}, Lokio/Timeout;->hasDeadline()Z

    move-result v15

    move v4, v15

    .line 145
    move-object v15, v2

    invoke-virtual {v15}, Lokio/Timeout;->timeoutNanos()J

    move-result-wide v15

    move-wide v5, v15

    .line 147
    move v15, v4

    if-nez v15, :cond_0

    move-wide v15, v5

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-nez v15, :cond_0

    .line 148
    move-object v15, v3

    invoke-virtual {v15}, Ljava/lang/Object;->wait()V

    .line 178
    :goto_0
    return-void

    .line 153
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v15

    move-wide v7, v15

    .line 154
    move v15, v4

    if-eqz v15, :cond_2

    move-wide v15, v5

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_2

    .line 155
    move-object v15, v2

    invoke-virtual {v15}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v15

    move-wide/from16 v17, v7

    sub-long v15, v15, v17

    move-wide v11, v15

    .line 156
    const/4 v15, 0x0

    move v13, v15

    move-wide v15, v5

    move-wide/from16 v17, v11

    invoke-static/range {v15 .. v18}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v15

    .line 157
    :goto_1
    move-wide v9, v15

    .line 164
    const-wide/16 v15, 0x0

    move-wide v11, v15

    .line 165
    move-wide v15, v9

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-lez v15, :cond_1

    .line 166
    move-wide v15, v9

    const-wide/32 v17, 0xf4240

    div-long v15, v15, v17

    move-wide v13, v15

    .line 167
    move-object v15, v3

    move-wide/from16 v16, v13

    move-wide/from16 v18, v9

    move-wide/from16 v20, v13

    const-wide/32 v22, 0xf4240

    mul-long v20, v20, v22

    sub-long v18, v18, v20

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v18, v0

    invoke-virtual/range {v15 .. v18}, Ljava/lang/Object;->wait(JI)V

    .line 168
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v15

    move-wide/from16 v17, v7

    sub-long v15, v15, v17

    move-wide v11, v15

    .line 172
    :cond_1
    move-wide v15, v11

    move-wide/from16 v17, v9

    cmp-long v15, v15, v17

    if-ltz v15, :cond_4

    .line 173
    new-instance v15, Ljava/io/InterruptedIOException;

    move-object/from16 v24, v15

    move-object/from16 v15, v24

    move-object/from16 v16, v24

    const-string v17, "timeout"

    invoke-direct/range {v16 .. v17}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    check-cast v15, Ljava/lang/Throwable;

    throw v15
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    :catch_0
    move-exception v15

    move-object v4, v15

    .line 176
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Thread;->interrupt()V

    .line 177
    new-instance v15, Ljava/io/InterruptedIOException;

    move-object/from16 v24, v15

    move-object/from16 v15, v24

    move-object/from16 v16, v24

    const-string v17, "interrupted"

    invoke-direct/range {v16 .. v17}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    check-cast v15, Ljava/lang/Throwable;

    throw v15

    .line 157
    :cond_2
    move v15, v4

    if-eqz v15, :cond_3

    .line 158
    move-object v15, v2

    :try_start_1
    invoke-virtual {v15}, Lokio/Timeout;->deadlineNanoTime()J
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v15

    move-wide/from16 v17, v7

    sub-long v15, v15, v17

    goto :goto_1

    .line 160
    :cond_3
    move-wide v15, v5

    goto :goto_1

    .line 178
    :cond_4
    goto/16 :goto_0
.end method
