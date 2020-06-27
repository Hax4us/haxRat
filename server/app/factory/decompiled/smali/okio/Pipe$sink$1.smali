.class public final Lokio/Pipe$sink$1;
.super Ljava/lang/Object;
.source "Pipe.kt"

# interfaces
.implements Lokio/Sink;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokio/Pipe;-><init>(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0004\u001a\u00020\u0005H\u0016J\u0008\u0010\u0006\u001a\u00020\u0005H\u0016J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0018\u0010\u0007\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "okio/Pipe$sink$1",
        "Lokio/Sink;",
        "timeout",
        "Lokio/Timeout;",
        "close",
        "",
        "flush",
        "write",
        "source",
        "Lokio/Buffer;",
        "byteCount",
        "",
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
.field final synthetic this$0:Lokio/Pipe;

.field private final timeout:Lokio/Timeout;


# direct methods
.method constructor <init>(Lokio/Pipe;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 47
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lokio/Pipe$sink$1;->this$0:Lokio/Pipe;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 48
    move-object v2, v0

    new-instance v3, Lokio/Timeout;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Lokio/Timeout;-><init>()V

    iput-object v3, v2, Lokio/Pipe$sink$1;->timeout:Lokio/Timeout;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 25

    .prologue
    .line 99
    move-object/from16 v1, p0

    const/16 v17, 0x0

    check-cast v17, Lokio/Sink;

    move-object/from16 v2, v17

    .line 100
    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lokio/Pipe$sink$1;->this$0:Lokio/Pipe;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lokio/Pipe;->getBuffer$okio()Lokio/Buffer;

    move-result-object v17

    move-object/from16 v3, v17

    const/16 v17, 0x0

    move/from16 v4, v17

    .line 283
    const/16 v17, 0x0

    move/from16 v5, v17

    const/16 v17, 0x0

    move/from16 v6, v17

    move-object/from16 v17, v3

    monitor-enter v17

    nop

    const/16 v17, 0x0

    move/from16 v7, v17

    .line 101
    move-object/from16 v17, v1

    :try_start_0
    move-object/from16 v0, v17

    iget-object v0, v0, Lokio/Pipe$sink$1;->this$0:Lokio/Pipe;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lokio/Pipe;->getSinkClosed$okio()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v17

    if-eqz v17, :cond_0

    move-object/from16 v17, v3

    monitor-exit v17

    .line 114
    :goto_0
    return-void

    .line 103
    :cond_0
    move-object/from16 v17, v1

    :try_start_1
    move-object/from16 v0, v17

    iget-object v0, v0, Lokio/Pipe$sink$1;->this$0:Lokio/Pipe;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lokio/Pipe;->getFoldedSink$okio()Lokio/Sink;

    move-result-object v17

    move-object/from16 v23, v17

    move-object/from16 v17, v23

    move-object/from16 v18, v23

    if-eqz v18, :cond_3

    move-object/from16 v8, v17

    const/16 v17, 0x0

    move/from16 v9, v17

    const/16 v17, 0x0

    move/from16 v10, v17

    move-object/from16 v17, v8

    move-object/from16 v11, v17

    const/16 v17, 0x0

    move/from16 v12, v17

    .line 104
    move-object/from16 v17, v11

    move-object/from16 v2, v17

    .line 111
    :goto_1
    sget-object v17, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v6, v17

    move-object/from16 v17, v3

    monitor-exit v17

    .line 113
    move-object/from16 v17, v2

    move-object/from16 v23, v17

    move-object/from16 v17, v23

    move-object/from16 v18, v23

    if-eqz v18, :cond_b

    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget-object v0, v0, Lokio/Pipe$sink$1;->this$0:Lokio/Pipe;

    move-object/from16 v18, v0

    move-object/from16 v23, v17

    move-object/from16 v24, v18

    move-object/from16 v17, v24

    move-object/from16 v18, v23

    move-object/from16 v4, v18

    move-object/from16 v3, v17

    const/16 v17, 0x0

    move/from16 v5, v17

    .line 284
    move-object/from16 v17, v4

    invoke-interface/range {v17 .. v17}, Lokio/Sink;->timeout()Lokio/Timeout;

    move-result-object v17

    move-object/from16 v6, v17

    move-object/from16 v17, v3

    invoke-virtual/range {v17 .. v17}, Lokio/Pipe;->sink()Lokio/Sink;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lokio/Sink;->timeout()Lokio/Timeout;

    move-result-object v17

    move-object/from16 v7, v17

    const/16 v17, 0x0

    move/from16 v8, v17

    .line 285
    move-object/from16 v17, v6

    invoke-virtual/range {v17 .. v17}, Lokio/Timeout;->timeoutNanos()J

    move-result-wide v17

    move-wide/from16 v9, v17

    .line 286
    move-object/from16 v17, v6

    sget-object v18, Lokio/Timeout;->Companion:Lokio/Timeout$Companion;

    move-object/from16 v19, v7

    invoke-virtual/range {v19 .. v19}, Lokio/Timeout;->timeoutNanos()J

    move-result-wide v19

    move-object/from16 v21, v6

    invoke-virtual/range {v21 .. v21}, Lokio/Timeout;->timeoutNanos()J

    move-result-wide v21

    invoke-virtual/range {v18 .. v22}, Lokio/Timeout$Companion;->minTimeout(JJ)J

    move-result-wide v18

    sget-object v20, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v17 .. v20}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    move-result-object v17

    .line 288
    move-object/from16 v17, v6

    invoke-virtual/range {v17 .. v17}, Lokio/Timeout;->hasDeadline()Z

    move-result v17

    if-eqz v17, :cond_7

    .line 289
    move-object/from16 v17, v6

    invoke-virtual/range {v17 .. v17}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v17

    move-wide/from16 v11, v17

    .line 290
    move-object/from16 v17, v7

    invoke-virtual/range {v17 .. v17}, Lokio/Timeout;->hasDeadline()Z

    move-result v17

    if-eqz v17, :cond_1

    .line 291
    move-object/from16 v17, v6

    move-object/from16 v18, v6

    invoke-virtual/range {v18 .. v18}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v18

    move-object/from16 v20, v7

    invoke-virtual/range {v20 .. v20}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v20

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v18

    invoke-virtual/range {v17 .. v19}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    move-result-object v17

    .line 293
    :cond_1
    nop

    .line 294
    const/16 v17, 0x0

    move/from16 v13, v17

    .line 284
    move-object/from16 v17, v4

    move-object/from16 v14, v17

    const/16 v17, 0x0

    move/from16 v15, v17

    .line 113
    move-object/from16 v17, v14

    :try_start_2
    invoke-interface/range {v17 .. v17}, Lokio/Sink;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    nop

    .line 296
    move-object/from16 v17, v6

    move-wide/from16 v18, v9

    sget-object v20, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v17 .. v20}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    move-result-object v17

    .line 297
    move-object/from16 v17, v7

    invoke-virtual/range {v17 .. v17}, Lokio/Timeout;->hasDeadline()Z

    move-result v17

    if-eqz v17, :cond_2

    .line 298
    move-object/from16 v17, v6

    move-wide/from16 v18, v11

    invoke-virtual/range {v17 .. v19}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    move-result-object v17

    .line 313
    :cond_2
    :goto_2
    nop

    .line 315
    nop

    .line 114
    :goto_3
    goto/16 :goto_0

    .line 108
    :cond_3
    move-object/from16 v17, v1

    :try_start_3
    move-object/from16 v0, v17

    iget-object v0, v0, Lokio/Pipe$sink$1;->this$0:Lokio/Pipe;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lokio/Pipe;->getSourceClosed$okio()Z

    move-result v17

    if-eqz v17, :cond_4

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lokio/Pipe$sink$1;->this$0:Lokio/Pipe;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lokio/Pipe;->getBuffer$okio()Lokio/Buffer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lokio/Buffer;->size()J

    move-result-wide v17

    const-wide/16 v19, 0x0

    cmp-long v17, v17, v19

    if-lez v17, :cond_4

    new-instance v17, Ljava/io/IOException;

    move-object/from16 v23, v17

    move-object/from16 v17, v23

    move-object/from16 v18, v23

    const-string v19, "source is closed"

    invoke-direct/range {v18 .. v19}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    check-cast v17, Ljava/lang/Throwable;

    throw v17
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 111
    :catchall_0
    move-exception v17

    move-object/from16 v6, v17

    move-object/from16 v17, v3

    monitor-exit v17

    move-object/from16 v17, v6

    throw v17

    .line 109
    :cond_4
    move-object/from16 v17, v1

    :try_start_4
    move-object/from16 v0, v17

    iget-object v0, v0, Lokio/Pipe$sink$1;->this$0:Lokio/Pipe;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lokio/Pipe;->setSinkClosed$okio(Z)V

    .line 110
    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lokio/Pipe$sink$1;->this$0:Lokio/Pipe;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lokio/Pipe;->getBuffer$okio()Lokio/Buffer;

    move-result-object v17

    move-object/from16 v23, v17

    move-object/from16 v17, v23

    move-object/from16 v18, v23

    if-nez v18, :cond_5

    new-instance v18, Lkotlin/TypeCastException;

    move-object/from16 v23, v18

    move-object/from16 v18, v23

    move-object/from16 v19, v23

    const-string v20, "null cannot be cast to non-null type java.lang.Object"

    invoke-direct/range {v19 .. v20}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v18

    :cond_5
    check-cast v17, Ljava/lang/Object;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->notifyAll()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1

    .line 300
    :catchall_1
    move-exception v17

    move-object/from16 v13, v17

    .line 296
    move-object/from16 v17, v6

    move-wide/from16 v18, v9

    sget-object v20, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v17 .. v20}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    move-result-object v17

    .line 297
    move-object/from16 v17, v7

    invoke-virtual/range {v17 .. v17}, Lokio/Timeout;->hasDeadline()Z

    move-result v17

    if-eqz v17, :cond_6

    .line 298
    move-object/from16 v17, v6

    move-wide/from16 v18, v11

    invoke-virtual/range {v17 .. v19}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    move-result-object v17

    :cond_6
    move-object/from16 v17, v13

    throw v17

    .line 302
    :cond_7
    move-object/from16 v17, v7

    invoke-virtual/range {v17 .. v17}, Lokio/Timeout;->hasDeadline()Z

    move-result v17

    if-eqz v17, :cond_8

    .line 303
    move-object/from16 v17, v6

    move-object/from16 v18, v7

    invoke-virtual/range {v18 .. v18}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v18

    invoke-virtual/range {v17 .. v19}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    move-result-object v17

    .line 305
    :cond_8
    nop

    .line 306
    const/16 v17, 0x0

    move/from16 v16, v17

    .line 284
    move-object/from16 v17, v4

    move-object/from16 v14, v17

    const/16 v17, 0x0

    move/from16 v15, v17

    .line 113
    move-object/from16 v17, v14

    :try_start_5
    invoke-interface/range {v17 .. v17}, Lokio/Sink;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    nop

    .line 308
    move-object/from16 v17, v6

    move-wide/from16 v18, v9

    sget-object v20, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v17 .. v20}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    move-result-object v17

    .line 309
    move-object/from16 v17, v7

    invoke-virtual/range {v17 .. v17}, Lokio/Timeout;->hasDeadline()Z

    move-result v17

    if-eqz v17, :cond_9

    .line 310
    move-object/from16 v17, v6

    invoke-virtual/range {v17 .. v17}, Lokio/Timeout;->clearDeadline()Lokio/Timeout;

    move-result-object v17

    .line 312
    :cond_9
    goto/16 :goto_2

    :catchall_2
    move-exception v17

    move-object/from16 v14, v17

    .line 308
    move-object/from16 v17, v6

    move-wide/from16 v18, v9

    sget-object v20, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v17 .. v20}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    move-result-object v17

    .line 309
    move-object/from16 v17, v7

    invoke-virtual/range {v17 .. v17}, Lokio/Timeout;->hasDeadline()Z

    move-result v17

    if-eqz v17, :cond_a

    .line 310
    move-object/from16 v17, v6

    invoke-virtual/range {v17 .. v17}, Lokio/Timeout;->clearDeadline()Lokio/Timeout;

    move-result-object v17

    :cond_a
    move-object/from16 v17, v14

    throw v17

    :cond_b
    goto/16 :goto_3
.end method

.method public flush()V
    .locals 25

    .prologue
    .line 81
    move-object/from16 v1, p0

    const/16 v17, 0x0

    check-cast v17, Lokio/Sink;

    move-object/from16 v2, v17

    .line 82
    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lokio/Pipe$sink$1;->this$0:Lokio/Pipe;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lokio/Pipe;->getBuffer$okio()Lokio/Buffer;

    move-result-object v17

    move-object/from16 v3, v17

    const/16 v17, 0x0

    move/from16 v4, v17

    .line 250
    const/16 v17, 0x0

    move/from16 v5, v17

    const/16 v17, 0x0

    move/from16 v6, v17

    move-object/from16 v17, v3

    monitor-enter v17

    nop

    const/16 v17, 0x0

    move/from16 v7, v17

    .line 83
    move-object/from16 v17, v1

    :try_start_0
    move-object/from16 v0, v17

    iget-object v0, v0, Lokio/Pipe$sink$1;->this$0:Lokio/Pipe;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lokio/Pipe;->getSinkClosed$okio()Z

    move-result v17

    if-nez v17, :cond_0

    const/16 v17, 0x1

    :goto_0
    move/from16 v8, v17

    const/16 v17, 0x0

    move/from16 v9, v17

    const/16 v17, 0x0

    move/from16 v10, v17

    move/from16 v17, v8

    if-nez v17, :cond_1

    const/16 v17, 0x0

    move/from16 v11, v17

    const-string v17, "closed"

    move-object/from16 v10, v17

    new-instance v17, Ljava/lang/IllegalStateException;

    move-object/from16 v23, v17

    move-object/from16 v17, v23

    move-object/from16 v18, v23

    move-object/from16 v19, v10

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v17, Ljava/lang/Throwable;

    throw v17
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    :catchall_0
    move-exception v17

    move-object/from16 v6, v17

    move-object/from16 v17, v3

    monitor-exit v17

    move-object/from16 v17, v6

    throw v17

    .line 83
    :cond_0
    const/16 v17, 0x0

    goto :goto_0

    .line 85
    :cond_1
    move-object/from16 v17, v1

    :try_start_1
    move-object/from16 v0, v17

    iget-object v0, v0, Lokio/Pipe$sink$1;->this$0:Lokio/Pipe;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lokio/Pipe;->getFoldedSink$okio()Lokio/Sink;

    move-result-object v17

    move-object/from16 v23, v17

    move-object/from16 v17, v23

    move-object/from16 v18, v23

    if-eqz v18, :cond_5

    move-object/from16 v8, v17

    const/16 v17, 0x0

    move/from16 v9, v17

    const/16 v17, 0x0

    move/from16 v10, v17

    move-object/from16 v17, v8

    move-object/from16 v11, v17

    const/16 v17, 0x0

    move/from16 v12, v17

    .line 86
    move-object/from16 v17, v11

    move-object/from16 v2, v17

    .line 93
    :cond_2
    sget-object v17, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v6, v17

    move-object/from16 v17, v3

    monitor-exit v17

    .line 95
    move-object/from16 v17, v2

    move-object/from16 v23, v17

    move-object/from16 v17, v23

    move-object/from16 v18, v23

    if-eqz v18, :cond_b

    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget-object v0, v0, Lokio/Pipe$sink$1;->this$0:Lokio/Pipe;

    move-object/from16 v18, v0

    move-object/from16 v23, v17

    move-object/from16 v24, v18

    move-object/from16 v17, v24

    move-object/from16 v18, v23

    move-object/from16 v4, v18

    move-object/from16 v3, v17

    const/16 v17, 0x0

    move/from16 v5, v17

    .line 251
    move-object/from16 v17, v4

    invoke-interface/range {v17 .. v17}, Lokio/Sink;->timeout()Lokio/Timeout;

    move-result-object v17

    move-object/from16 v6, v17

    move-object/from16 v17, v3

    invoke-virtual/range {v17 .. v17}, Lokio/Pipe;->sink()Lokio/Sink;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lokio/Sink;->timeout()Lokio/Timeout;

    move-result-object v17

    move-object/from16 v7, v17

    const/16 v17, 0x0

    move/from16 v8, v17

    .line 252
    move-object/from16 v17, v6

    invoke-virtual/range {v17 .. v17}, Lokio/Timeout;->timeoutNanos()J

    move-result-wide v17

    move-wide/from16 v9, v17

    .line 253
    move-object/from16 v17, v6

    sget-object v18, Lokio/Timeout;->Companion:Lokio/Timeout$Companion;

    move-object/from16 v19, v7

    invoke-virtual/range {v19 .. v19}, Lokio/Timeout;->timeoutNanos()J

    move-result-wide v19

    move-object/from16 v21, v6

    invoke-virtual/range {v21 .. v21}, Lokio/Timeout;->timeoutNanos()J

    move-result-wide v21

    invoke-virtual/range {v18 .. v22}, Lokio/Timeout$Companion;->minTimeout(JJ)J

    move-result-wide v18

    sget-object v20, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v17 .. v20}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    move-result-object v17

    .line 255
    move-object/from16 v17, v6

    invoke-virtual/range {v17 .. v17}, Lokio/Timeout;->hasDeadline()Z

    move-result v17

    if-eqz v17, :cond_7

    .line 256
    move-object/from16 v17, v6

    invoke-virtual/range {v17 .. v17}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v17

    move-wide/from16 v11, v17

    .line 257
    move-object/from16 v17, v7

    invoke-virtual/range {v17 .. v17}, Lokio/Timeout;->hasDeadline()Z

    move-result v17

    if-eqz v17, :cond_3

    .line 258
    move-object/from16 v17, v6

    move-object/from16 v18, v6

    invoke-virtual/range {v18 .. v18}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v18

    move-object/from16 v20, v7

    invoke-virtual/range {v20 .. v20}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v20

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v18

    invoke-virtual/range {v17 .. v19}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    move-result-object v17

    .line 260
    :cond_3
    nop

    .line 261
    const/16 v17, 0x0

    move/from16 v13, v17

    .line 251
    move-object/from16 v17, v4

    move-object/from16 v14, v17

    const/16 v17, 0x0

    move/from16 v15, v17

    .line 95
    move-object/from16 v17, v14

    :try_start_2
    invoke-interface/range {v17 .. v17}, Lokio/Sink;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    nop

    .line 263
    move-object/from16 v17, v6

    move-wide/from16 v18, v9

    sget-object v20, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v17 .. v20}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    move-result-object v17

    .line 264
    move-object/from16 v17, v7

    invoke-virtual/range {v17 .. v17}, Lokio/Timeout;->hasDeadline()Z

    move-result v17

    if-eqz v17, :cond_4

    .line 265
    move-object/from16 v17, v6

    move-wide/from16 v18, v11

    invoke-virtual/range {v17 .. v19}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    move-result-object v17

    .line 280
    :cond_4
    :goto_1
    nop

    .line 282
    nop

    .line 96
    :goto_2
    return-void

    .line 90
    :cond_5
    move-object/from16 v17, v1

    :try_start_3
    move-object/from16 v0, v17

    iget-object v0, v0, Lokio/Pipe$sink$1;->this$0:Lokio/Pipe;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lokio/Pipe;->getSourceClosed$okio()Z

    move-result v17

    if-eqz v17, :cond_2

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lokio/Pipe$sink$1;->this$0:Lokio/Pipe;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lokio/Pipe;->getBuffer$okio()Lokio/Buffer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lokio/Buffer;->size()J

    move-result-wide v17

    const-wide/16 v19, 0x0

    cmp-long v17, v17, v19

    if-lez v17, :cond_2

    .line 91
    new-instance v17, Ljava/io/IOException;

    move-object/from16 v23, v17

    move-object/from16 v17, v23

    move-object/from16 v18, v23

    const-string v19, "source is closed"

    invoke-direct/range {v18 .. v19}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    check-cast v17, Ljava/lang/Throwable;

    throw v17
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 267
    :catchall_1
    move-exception v17

    move-object/from16 v13, v17

    .line 263
    move-object/from16 v17, v6

    move-wide/from16 v18, v9

    sget-object v20, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v17 .. v20}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    move-result-object v17

    .line 264
    move-object/from16 v17, v7

    invoke-virtual/range {v17 .. v17}, Lokio/Timeout;->hasDeadline()Z

    move-result v17

    if-eqz v17, :cond_6

    .line 265
    move-object/from16 v17, v6

    move-wide/from16 v18, v11

    invoke-virtual/range {v17 .. v19}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    move-result-object v17

    :cond_6
    move-object/from16 v17, v13

    throw v17

    .line 269
    :cond_7
    move-object/from16 v17, v7

    invoke-virtual/range {v17 .. v17}, Lokio/Timeout;->hasDeadline()Z

    move-result v17

    if-eqz v17, :cond_8

    .line 270
    move-object/from16 v17, v6

    move-object/from16 v18, v7

    invoke-virtual/range {v18 .. v18}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v18

    invoke-virtual/range {v17 .. v19}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    move-result-object v17

    .line 272
    :cond_8
    nop

    .line 273
    const/16 v17, 0x0

    move/from16 v16, v17

    .line 251
    move-object/from16 v17, v4

    move-object/from16 v14, v17

    const/16 v17, 0x0

    move/from16 v15, v17

    .line 95
    move-object/from16 v17, v14

    :try_start_4
    invoke-interface/range {v17 .. v17}, Lokio/Sink;->flush()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    nop

    .line 275
    move-object/from16 v17, v6

    move-wide/from16 v18, v9

    sget-object v20, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v17 .. v20}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    move-result-object v17

    .line 276
    move-object/from16 v17, v7

    invoke-virtual/range {v17 .. v17}, Lokio/Timeout;->hasDeadline()Z

    move-result v17

    if-eqz v17, :cond_9

    .line 277
    move-object/from16 v17, v6

    invoke-virtual/range {v17 .. v17}, Lokio/Timeout;->clearDeadline()Lokio/Timeout;

    move-result-object v17

    .line 279
    :cond_9
    goto/16 :goto_1

    :catchall_2
    move-exception v17

    move-object/from16 v14, v17

    .line 275
    move-object/from16 v17, v6

    move-wide/from16 v18, v9

    sget-object v20, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v17 .. v20}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    move-result-object v17

    .line 276
    move-object/from16 v17, v7

    invoke-virtual/range {v17 .. v17}, Lokio/Timeout;->hasDeadline()Z

    move-result v17

    if-eqz v17, :cond_a

    .line 277
    move-object/from16 v17, v6

    invoke-virtual/range {v17 .. v17}, Lokio/Timeout;->clearDeadline()Lokio/Timeout;

    move-result-object v17

    :cond_a
    move-object/from16 v17, v14

    throw v17

    :cond_b
    goto/16 :goto_2
.end method

.method public timeout()Lokio/Timeout;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 116
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokio/Pipe$sink$1;->timeout:Lokio/Timeout;

    move-object v0, v1

    return-object v0
.end method

.method public write(Lokio/Buffer;J)V
    .locals 33
    .param p1    # Lokio/Buffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    move-object/from16 v25, v2

    const-string v26, "source"

    invoke-static/range {v25 .. v26}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    move-wide/from16 v25, v3

    move-wide/from16 v23, v25

    .line 52
    const/16 v25, 0x0

    check-cast v25, Lokio/Sink;

    move-object/from16 v5, v25

    .line 53
    move-object/from16 v25, v1

    move-object/from16 v0, v25

    iget-object v0, v0, Lokio/Pipe$sink$1;->this$0:Lokio/Pipe;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lokio/Pipe;->getBuffer$okio()Lokio/Buffer;

    move-result-object v25

    move-object/from16 v6, v25

    const/16 v25, 0x0

    move/from16 v7, v25

    .line 217
    const/16 v25, 0x0

    move/from16 v8, v25

    const/16 v25, 0x0

    move/from16 v9, v25

    move-object/from16 v25, v6

    monitor-enter v25

    nop

    const/16 v25, 0x0

    move/from16 v10, v25

    .line 54
    move-object/from16 v25, v1

    :try_start_0
    move-object/from16 v0, v25

    iget-object v0, v0, Lokio/Pipe$sink$1;->this$0:Lokio/Pipe;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lokio/Pipe;->getSinkClosed$okio()Z

    move-result v25

    if-nez v25, :cond_0

    const/16 v25, 0x1

    :goto_0
    move/from16 v11, v25

    const/16 v25, 0x0

    move/from16 v12, v25

    const/16 v25, 0x0

    move/from16 v13, v25

    move/from16 v25, v11

    if-nez v25, :cond_2

    const/16 v25, 0x0

    move/from16 v14, v25

    const-string v25, "closed"

    move-object/from16 v13, v25

    new-instance v25, Ljava/lang/IllegalStateException;

    move-object/from16 v31, v25

    move-object/from16 v25, v31

    move-object/from16 v26, v31

    move-object/from16 v27, v13

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v25, Ljava/lang/Throwable;

    throw v25
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    :catchall_0
    move-exception v25

    move-object/from16 v9, v25

    move-object/from16 v25, v6

    monitor-exit v25

    move-object/from16 v25, v9

    throw v25

    .line 54
    :cond_0
    const/16 v25, 0x0

    goto :goto_0

    .line 64
    :cond_1
    move-object/from16 v25, v1

    :try_start_1
    move-object/from16 v0, v25

    iget-object v0, v0, Lokio/Pipe$sink$1;->this$0:Lokio/Pipe;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lokio/Pipe;->getMaxBufferSize$okio()J

    move-result-wide v25

    move-object/from16 v27, v1

    move-object/from16 v0, v27

    iget-object v0, v0, Lokio/Pipe$sink$1;->this$0:Lokio/Pipe;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lokio/Pipe;->getBuffer$okio()Lokio/Buffer;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lokio/Buffer;->size()J

    move-result-wide v27

    sub-long v25, v25, v27

    move-wide/from16 v16, v25

    .line 65
    move-wide/from16 v25, v16

    const-wide/16 v27, 0x0

    cmp-long v25, v25, v27

    if-nez v25, :cond_7

    .line 66
    move-object/from16 v25, v1

    move-object/from16 v0, v25

    iget-object v0, v0, Lokio/Pipe$sink$1;->timeout:Lokio/Timeout;

    move-object/from16 v25, v0

    move-object/from16 v26, v1

    move-object/from16 v0, v26

    iget-object v0, v0, Lokio/Pipe$sink$1;->this$0:Lokio/Pipe;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lokio/Pipe;->getBuffer$okio()Lokio/Buffer;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Lokio/Timeout;->waitUntilNotified(Ljava/lang/Object;)V

    .line 56
    :cond_2
    :goto_1
    move-wide/from16 v25, v23

    const-wide/16 v27, 0x0

    cmp-long v25, v25, v27

    if-lez v25, :cond_3

    .line 57
    move-object/from16 v25, v1

    move-object/from16 v0, v25

    iget-object v0, v0, Lokio/Pipe$sink$1;->this$0:Lokio/Pipe;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lokio/Pipe;->getFoldedSink$okio()Lokio/Sink;

    move-result-object v25

    move-object/from16 v31, v25

    move-object/from16 v25, v31

    move-object/from16 v26, v31

    if-eqz v26, :cond_6

    move-object/from16 v11, v25

    const/16 v25, 0x0

    move/from16 v12, v25

    const/16 v25, 0x0

    move/from16 v13, v25

    move-object/from16 v25, v11

    move-object/from16 v14, v25

    const/16 v25, 0x0

    move/from16 v15, v25

    .line 58
    move-object/from16 v25, v14

    move-object/from16 v5, v25

    .line 75
    :cond_3
    sget-object v25, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v9, v25

    move-object/from16 v25, v6

    monitor-exit v25

    .line 77
    move-object/from16 v25, v5

    move-object/from16 v31, v25

    move-object/from16 v25, v31

    move-object/from16 v26, v31

    if-eqz v26, :cond_e

    move-object/from16 v26, v1

    move-object/from16 v0, v26

    iget-object v0, v0, Lokio/Pipe$sink$1;->this$0:Lokio/Pipe;

    move-object/from16 v26, v0

    move-object/from16 v31, v25

    move-object/from16 v32, v26

    move-object/from16 v25, v32

    move-object/from16 v26, v31

    move-object/from16 v7, v26

    move-object/from16 v6, v25

    const/16 v25, 0x0

    move/from16 v8, v25

    .line 218
    move-object/from16 v25, v7

    invoke-interface/range {v25 .. v25}, Lokio/Sink;->timeout()Lokio/Timeout;

    move-result-object v25

    move-object/from16 v9, v25

    move-object/from16 v25, v6

    invoke-virtual/range {v25 .. v25}, Lokio/Pipe;->sink()Lokio/Sink;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Lokio/Sink;->timeout()Lokio/Timeout;

    move-result-object v25

    move-object/from16 v10, v25

    const/16 v25, 0x0

    move/from16 v11, v25

    .line 219
    move-object/from16 v25, v9

    invoke-virtual/range {v25 .. v25}, Lokio/Timeout;->timeoutNanos()J

    move-result-wide v25

    move-wide/from16 v12, v25

    .line 220
    move-object/from16 v25, v9

    sget-object v26, Lokio/Timeout;->Companion:Lokio/Timeout$Companion;

    move-object/from16 v27, v10

    invoke-virtual/range {v27 .. v27}, Lokio/Timeout;->timeoutNanos()J

    move-result-wide v27

    move-object/from16 v29, v9

    invoke-virtual/range {v29 .. v29}, Lokio/Timeout;->timeoutNanos()J

    move-result-wide v29

    invoke-virtual/range {v26 .. v30}, Lokio/Timeout$Companion;->minTimeout(JJ)J

    move-result-wide v26

    sget-object v28, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v25 .. v28}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    move-result-object v25

    .line 222
    move-object/from16 v25, v9

    invoke-virtual/range {v25 .. v25}, Lokio/Timeout;->hasDeadline()Z

    move-result v25

    if-eqz v25, :cond_a

    .line 223
    move-object/from16 v25, v9

    invoke-virtual/range {v25 .. v25}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v25

    move-wide/from16 v14, v25

    .line 224
    move-object/from16 v25, v10

    invoke-virtual/range {v25 .. v25}, Lokio/Timeout;->hasDeadline()Z

    move-result v25

    if-eqz v25, :cond_4

    .line 225
    move-object/from16 v25, v9

    move-object/from16 v26, v9

    invoke-virtual/range {v26 .. v26}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v26

    move-object/from16 v28, v10

    invoke-virtual/range {v28 .. v28}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v28

    invoke-static/range {v26 .. v29}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v26

    invoke-virtual/range {v25 .. v27}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    move-result-object v25

    .line 227
    :cond_4
    nop

    .line 228
    const/16 v25, 0x0

    move/from16 v16, v25

    .line 218
    move-object/from16 v25, v7

    move-object/from16 v17, v25

    const/16 v25, 0x0

    move/from16 v18, v25

    .line 77
    move-object/from16 v25, v17

    move-object/from16 v26, v2

    move-wide/from16 v27, v23

    :try_start_2
    invoke-interface/range {v25 .. v28}, Lokio/Sink;->write(Lokio/Buffer;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    nop

    .line 230
    move-object/from16 v25, v9

    move-wide/from16 v26, v12

    sget-object v28, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v25 .. v28}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    move-result-object v25

    .line 231
    move-object/from16 v25, v10

    invoke-virtual/range {v25 .. v25}, Lokio/Timeout;->hasDeadline()Z

    move-result v25

    if-eqz v25, :cond_5

    .line 232
    move-object/from16 v25, v9

    move-wide/from16 v26, v14

    invoke-virtual/range {v25 .. v27}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    move-result-object v25

    .line 247
    :cond_5
    :goto_2
    nop

    .line 249
    nop

    .line 78
    :goto_3
    return-void

    .line 62
    :cond_6
    move-object/from16 v25, v1

    :try_start_3
    move-object/from16 v0, v25

    iget-object v0, v0, Lokio/Pipe$sink$1;->this$0:Lokio/Pipe;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lokio/Pipe;->getSourceClosed$okio()Z

    move-result v25

    if-eqz v25, :cond_1

    new-instance v25, Ljava/io/IOException;

    move-object/from16 v31, v25

    move-object/from16 v25, v31

    move-object/from16 v26, v31

    const-string v27, "source is closed"

    invoke-direct/range {v26 .. v27}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    check-cast v25, Ljava/lang/Throwable;

    throw v25

    .line 70
    :cond_7
    move-wide/from16 v25, v23

    move-wide/from16 v18, v25

    const/16 v25, 0x0

    move/from16 v20, v25

    move-wide/from16 v25, v16

    move-wide/from16 v27, v18

    invoke-static/range {v25 .. v28}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v25

    move-wide/from16 v21, v25

    .line 71
    move-object/from16 v25, v1

    move-object/from16 v0, v25

    iget-object v0, v0, Lokio/Pipe$sink$1;->this$0:Lokio/Pipe;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lokio/Pipe;->getBuffer$okio()Lokio/Buffer;

    move-result-object v25

    move-object/from16 v26, v2

    move-wide/from16 v27, v21

    invoke-virtual/range {v25 .. v28}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    .line 72
    move-wide/from16 v25, v23

    move-wide/from16 v27, v21

    sub-long v25, v25, v27

    move-wide/from16 v23, v25

    .line 73
    move-object/from16 v25, v1

    move-object/from16 v0, v25

    iget-object v0, v0, Lokio/Pipe$sink$1;->this$0:Lokio/Pipe;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lokio/Pipe;->getBuffer$okio()Lokio/Buffer;

    move-result-object v25

    move-object/from16 v31, v25

    move-object/from16 v25, v31

    move-object/from16 v26, v31

    if-nez v26, :cond_8

    new-instance v26, Lkotlin/TypeCastException;

    move-object/from16 v31, v26

    move-object/from16 v26, v31

    move-object/from16 v27, v31

    const-string v28, "null cannot be cast to non-null type java.lang.Object"

    invoke-direct/range {v27 .. v28}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v26

    :cond_8
    check-cast v25, Ljava/lang/Object;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Object;->notifyAll()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 56
    goto/16 :goto_1

    .line 234
    :catchall_1
    move-exception v25

    move-object/from16 v16, v25

    .line 230
    move-object/from16 v25, v9

    move-wide/from16 v26, v12

    sget-object v28, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v25 .. v28}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    move-result-object v25

    .line 231
    move-object/from16 v25, v10

    invoke-virtual/range {v25 .. v25}, Lokio/Timeout;->hasDeadline()Z

    move-result v25

    if-eqz v25, :cond_9

    .line 232
    move-object/from16 v25, v9

    move-wide/from16 v26, v14

    invoke-virtual/range {v25 .. v27}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    move-result-object v25

    :cond_9
    move-object/from16 v25, v16

    throw v25

    .line 236
    :cond_a
    move-object/from16 v25, v10

    invoke-virtual/range {v25 .. v25}, Lokio/Timeout;->hasDeadline()Z

    move-result v25

    if-eqz v25, :cond_b

    .line 237
    move-object/from16 v25, v9

    move-object/from16 v26, v10

    invoke-virtual/range {v26 .. v26}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v26

    invoke-virtual/range {v25 .. v27}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    move-result-object v25

    .line 239
    :cond_b
    nop

    .line 240
    const/16 v25, 0x0

    move/from16 v19, v25

    .line 218
    move-object/from16 v25, v7

    move-object/from16 v17, v25

    const/16 v25, 0x0

    move/from16 v18, v25

    .line 77
    move-object/from16 v25, v17

    move-object/from16 v26, v2

    move-wide/from16 v27, v23

    :try_start_4
    invoke-interface/range {v25 .. v28}, Lokio/Sink;->write(Lokio/Buffer;J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    nop

    .line 242
    move-object/from16 v25, v9

    move-wide/from16 v26, v12

    sget-object v28, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v25 .. v28}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    move-result-object v25

    .line 243
    move-object/from16 v25, v10

    invoke-virtual/range {v25 .. v25}, Lokio/Timeout;->hasDeadline()Z

    move-result v25

    if-eqz v25, :cond_c

    .line 244
    move-object/from16 v25, v9

    invoke-virtual/range {v25 .. v25}, Lokio/Timeout;->clearDeadline()Lokio/Timeout;

    move-result-object v25

    .line 246
    :cond_c
    goto/16 :goto_2

    :catchall_2
    move-exception v25

    move-object/from16 v20, v25

    .line 242
    move-object/from16 v25, v9

    move-wide/from16 v26, v12

    sget-object v28, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v25 .. v28}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    move-result-object v25

    .line 243
    move-object/from16 v25, v10

    invoke-virtual/range {v25 .. v25}, Lokio/Timeout;->hasDeadline()Z

    move-result v25

    if-eqz v25, :cond_d

    .line 244
    move-object/from16 v25, v9

    invoke-virtual/range {v25 .. v25}, Lokio/Timeout;->clearDeadline()Lokio/Timeout;

    move-result-object v25

    :cond_d
    move-object/from16 v25, v20

    throw v25

    :cond_e
    goto/16 :goto_3
.end method
