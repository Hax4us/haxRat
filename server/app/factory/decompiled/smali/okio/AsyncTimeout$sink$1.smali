.class public final Lokio/AsyncTimeout$sink$1;
.super Ljava/lang/Object;
.source "AsyncTimeout.kt"

# interfaces
.implements Lokio/Sink;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokio/AsyncTimeout;->sink(Lokio/Sink;)Lokio/Sink;
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
        "\u0000-\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0008\u0010\u0004\u001a\u00020\u0003H\u0016J\u0008\u0010\u0005\u001a\u00020\u0006H\u0016J\u0008\u0010\u0007\u001a\u00020\u0008H\u0016J\u0018\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0016\u00a8\u0006\u000e"
    }
    d2 = {
        "okio/AsyncTimeout$sink$1",
        "Lokio/Sink;",
        "close",
        "",
        "flush",
        "timeout",
        "Lokio/AsyncTimeout;",
        "toString",
        "",
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
.field final synthetic $sink:Lokio/Sink;

.field final synthetic this$0:Lokio/AsyncTimeout;


# direct methods
.method constructor <init>(Lokio/AsyncTimeout;Lokio/Sink;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokio/Sink;",
            ")V"
        }
    .end annotation

    .prologue
    .line 83
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lokio/AsyncTimeout$sink$1;->this$0:Lokio/AsyncTimeout;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lokio/AsyncTimeout$sink$1;->$sink:Lokio/Sink;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 9

    .prologue
    .line 113
    move-object v0, p0

    move-object v7, v0

    iget-object v7, v7, Lokio/AsyncTimeout$sink$1;->this$0:Lokio/AsyncTimeout;

    move-object v1, v7

    const/4 v7, 0x0

    move v2, v7

    .line 354
    const/4 v7, 0x0

    move v3, v7

    .line 355
    move-object v7, v1

    invoke-virtual {v7}, Lokio/AsyncTimeout;->enter()V

    .line 356
    nop

    .line 357
    const/4 v7, 0x0

    move v4, v7

    .line 113
    move-object v7, v0

    :try_start_0
    iget-object v7, v7, Lokio/AsyncTimeout$sink$1;->$sink:Lokio/Sink;

    invoke-interface {v7}, Lokio/Sink;->close()V

    sget-object v7, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v7

    .line 358
    const/4 v7, 0x1

    move v3, v7

    .line 359
    move-object v7, v4

    move-object v5, v7

    .line 363
    move-object v7, v1

    invoke-virtual {v7}, Lokio/AsyncTimeout;->exit()Z

    move-result v7

    move v6, v7

    .line 364
    move v7, v6

    if-eqz v7, :cond_2

    move-object v7, v1

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lokio/AsyncTimeout;->access$newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v7

    check-cast v7, Ljava/lang/Throwable;

    throw v7

    .line 365
    :catch_0
    move-exception v7

    move-object v4, v7

    .line 366
    move-object v7, v1

    :try_start_1
    invoke-virtual {v7}, Lokio/AsyncTimeout;->exit()Z

    move-result v7

    if-nez v7, :cond_0

    move-object v7, v4

    check-cast v7, Ljava/lang/Throwable;

    :goto_0
    throw v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v7

    move-object v4, v7

    .line 363
    move-object v7, v1

    invoke-virtual {v7}, Lokio/AsyncTimeout;->exit()Z

    move-result v7

    move v5, v7

    .line 364
    move v7, v5

    if-eqz v7, :cond_1

    move v7, v3

    if-eqz v7, :cond_1

    move-object v7, v1

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lokio/AsyncTimeout;->access$newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v7

    check-cast v7, Ljava/lang/Throwable;

    throw v7

    .line 366
    :cond_0
    move-object v7, v1

    move-object v8, v4

    :try_start_2
    invoke-virtual {v7, v8}, Lokio/AsyncTimeout;->access$newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v7

    check-cast v7, Ljava/lang/Throwable;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 364
    :cond_1
    move-object v7, v4

    throw v7

    .line 114
    :cond_2
    return-void
.end method

.method public flush()V
    .locals 9

    .prologue
    .line 109
    move-object v0, p0

    move-object v7, v0

    iget-object v7, v7, Lokio/AsyncTimeout$sink$1;->this$0:Lokio/AsyncTimeout;

    move-object v1, v7

    const/4 v7, 0x0

    move v2, v7

    .line 341
    const/4 v7, 0x0

    move v3, v7

    .line 342
    move-object v7, v1

    invoke-virtual {v7}, Lokio/AsyncTimeout;->enter()V

    .line 343
    nop

    .line 344
    const/4 v7, 0x0

    move v4, v7

    .line 109
    move-object v7, v0

    :try_start_0
    iget-object v7, v7, Lokio/AsyncTimeout$sink$1;->$sink:Lokio/Sink;

    invoke-interface {v7}, Lokio/Sink;->flush()V

    sget-object v7, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v7

    .line 345
    const/4 v7, 0x1

    move v3, v7

    .line 346
    move-object v7, v4

    move-object v5, v7

    .line 350
    move-object v7, v1

    invoke-virtual {v7}, Lokio/AsyncTimeout;->exit()Z

    move-result v7

    move v6, v7

    .line 351
    move v7, v6

    if-eqz v7, :cond_2

    move-object v7, v1

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lokio/AsyncTimeout;->access$newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v7

    check-cast v7, Ljava/lang/Throwable;

    throw v7

    .line 352
    :catch_0
    move-exception v7

    move-object v4, v7

    .line 353
    move-object v7, v1

    :try_start_1
    invoke-virtual {v7}, Lokio/AsyncTimeout;->exit()Z

    move-result v7

    if-nez v7, :cond_0

    move-object v7, v4

    check-cast v7, Ljava/lang/Throwable;

    :goto_0
    throw v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v7

    move-object v4, v7

    .line 350
    move-object v7, v1

    invoke-virtual {v7}, Lokio/AsyncTimeout;->exit()Z

    move-result v7

    move v5, v7

    .line 351
    move v7, v5

    if-eqz v7, :cond_1

    move v7, v3

    if-eqz v7, :cond_1

    move-object v7, v1

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lokio/AsyncTimeout;->access$newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v7

    check-cast v7, Ljava/lang/Throwable;

    throw v7

    .line 353
    :cond_0
    move-object v7, v1

    move-object v8, v4

    :try_start_2
    invoke-virtual {v7, v8}, Lokio/AsyncTimeout;->access$newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v7

    check-cast v7, Ljava/lang/Throwable;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 351
    :cond_1
    move-object v7, v4

    throw v7

    .line 110
    :cond_2
    return-void
.end method

.method public timeout()Lokio/AsyncTimeout;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 116
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokio/AsyncTimeout$sink$1;->this$0:Lokio/AsyncTimeout;

    move-object v0, v1

    return-object v0
.end method

.method public bridge synthetic timeout()Lokio/Timeout;
    .locals 2

    .prologue
    .line 83
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lokio/AsyncTimeout$sink$1;->timeout()Lokio/AsyncTimeout;

    move-result-object v1

    check-cast v1, Lokio/Timeout;

    move-object v0, v1

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 118
    move-object v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AsyncTimeout.sink("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lokio/AsyncTimeout$sink$1;->$sink:Lokio/Sink;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public write(Lokio/Buffer;J)V
    .locals 24
    .param p1    # Lokio/Buffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-wide/from16 v4, p2

    move-object/from16 v17, v3

    const-string v18, "source"

    invoke-static/range {v17 .. v18}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    move-object/from16 v17, v3

    invoke-virtual/range {v17 .. v17}, Lokio/Buffer;->size()J

    move-result-wide v17

    const-wide/16 v19, 0x0

    move-wide/from16 v21, v4

    invoke-static/range {v17 .. v22}, Lokio/-Util;->checkOffsetAndCount(JJJ)V

    .line 87
    move-wide/from16 v17, v4

    move-wide/from16 v6, v17

    .line 88
    :goto_0
    move-wide/from16 v17, v6

    const-wide/16 v19, 0x0

    cmp-long v17, v17, v19

    if-lez v17, :cond_7

    .line 90
    const-wide/16 v17, 0x0

    move-wide/from16 v15, v17

    .line 91
    move-object/from16 v17, v3

    move-object/from16 v0, v17

    iget-object v0, v0, Lokio/Buffer;->head:Lokio/Segment;

    move-object/from16 v17, v0

    move-object/from16 v23, v17

    move-object/from16 v17, v23

    move-object/from16 v18, v23

    if-nez v18, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    move-object/from16 v8, v17

    .line 92
    :goto_1
    move-wide/from16 v17, v15

    const/high16 v19, 0x10000

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v19, v0

    cmp-long v17, v17, v19

    if-gez v17, :cond_1

    .line 93
    move-object/from16 v17, v8

    move-object/from16 v0, v17

    iget v0, v0, Lokio/Segment;->limit:I

    move/from16 v17, v0

    move-object/from16 v18, v8

    move-object/from16 v0, v18

    iget v0, v0, Lokio/Segment;->pos:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move/from16 v9, v17

    .line 94
    move-wide/from16 v17, v15

    move/from16 v19, v9

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v19, v0

    add-long v17, v17, v19

    move-wide/from16 v15, v17

    .line 95
    move-wide/from16 v17, v15

    move-wide/from16 v19, v6

    cmp-long v17, v17, v19

    if-ltz v17, :cond_2

    .line 96
    move-wide/from16 v17, v6

    move-wide/from16 v15, v17

    .line 103
    :cond_1
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lokio/AsyncTimeout$sink$1;->this$0:Lokio/AsyncTimeout;

    move-object/from16 v17, v0

    move-object/from16 v9, v17

    const/16 v17, 0x0

    move/from16 v10, v17

    .line 328
    const/16 v17, 0x0

    move/from16 v11, v17

    .line 329
    move-object/from16 v17, v9

    invoke-virtual/range {v17 .. v17}, Lokio/AsyncTimeout;->enter()V

    .line 330
    nop

    .line 331
    const/16 v17, 0x0

    move/from16 v12, v17

    .line 103
    move-object/from16 v17, v2

    :try_start_0
    move-object/from16 v0, v17

    iget-object v0, v0, Lokio/AsyncTimeout$sink$1;->$sink:Lokio/Sink;

    move-object/from16 v17, v0

    move-object/from16 v18, v3

    move-wide/from16 v19, v15

    invoke-interface/range {v17 .. v20}, Lokio/Sink;->write(Lokio/Buffer;J)V

    sget-object v17, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v13, v17

    .line 332
    const/16 v17, 0x1

    move/from16 v11, v17

    .line 333
    move-object/from16 v17, v13

    move-object/from16 v14, v17

    .line 337
    move-object/from16 v17, v9

    invoke-virtual/range {v17 .. v17}, Lokio/AsyncTimeout;->exit()Z

    move-result v17

    move/from16 v12, v17

    .line 338
    move/from16 v17, v12

    if-eqz v17, :cond_6

    move-object/from16 v17, v9

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lokio/AsyncTimeout;->access$newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v17

    check-cast v17, Ljava/lang/Throwable;

    throw v17

    .line 99
    :cond_2
    move-object/from16 v17, v8

    move-object/from16 v0, v17

    iget-object v0, v0, Lokio/Segment;->next:Lokio/Segment;

    move-object/from16 v17, v0

    move-object/from16 v23, v17

    move-object/from16 v17, v23

    move-object/from16 v18, v23

    if-nez v18, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    move-object/from16 v8, v17

    .line 92
    goto/16 :goto_1

    .line 339
    :catch_0
    move-exception v17

    move-object/from16 v13, v17

    .line 340
    move-object/from16 v17, v9

    :try_start_1
    invoke-virtual/range {v17 .. v17}, Lokio/AsyncTimeout;->exit()Z

    move-result v17

    if-nez v17, :cond_4

    move-object/from16 v17, v13

    check-cast v17, Ljava/lang/Throwable;

    :goto_2
    throw v17
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v17

    move-object/from16 v13, v17

    .line 337
    move-object/from16 v17, v9

    invoke-virtual/range {v17 .. v17}, Lokio/AsyncTimeout;->exit()Z

    move-result v17

    move/from16 v14, v17

    .line 338
    move/from16 v17, v14

    if-eqz v17, :cond_5

    move/from16 v17, v11

    if-eqz v17, :cond_5

    move-object/from16 v17, v9

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lokio/AsyncTimeout;->access$newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v17

    check-cast v17, Ljava/lang/Throwable;

    throw v17

    .line 340
    :cond_4
    move-object/from16 v17, v9

    move-object/from16 v18, v13

    :try_start_2
    invoke-virtual/range {v17 .. v18}, Lokio/AsyncTimeout;->access$newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v17

    check-cast v17, Ljava/lang/Throwable;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 338
    :cond_5
    move-object/from16 v17, v13

    throw v17

    .line 104
    :cond_6
    move-wide/from16 v17, v6

    move-wide/from16 v19, v15

    sub-long v17, v17, v19

    move-wide/from16 v6, v17

    .line 88
    goto/16 :goto_0

    .line 106
    :cond_7
    return-void
.end method
