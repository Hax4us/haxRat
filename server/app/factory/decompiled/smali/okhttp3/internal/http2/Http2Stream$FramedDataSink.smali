.class final Lokhttp3/internal/http2/Http2Stream$FramedDataSink;
.super Ljava/lang/Object;
.source "Http2Stream.java"

# interfaces
.implements Lokio/Sink;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/http2/Http2Stream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "FramedDataSink"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final EMIT_BUFFER_SIZE:J = 0x4000L


# instance fields
.field closed:Z

.field finished:Z

.field private final sendBuffer:Lokio/Buffer;

.field final synthetic this$0:Lokhttp3/internal/http2/Http2Stream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 455
    const-class v0, Lokhttp3/internal/http2/Http2Stream;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lokhttp3/internal/http2/Http2Stream$FramedDataSink;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lokhttp3/internal/http2/Http2Stream;)V
    .locals 6

    .prologue
    .line 455
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lokhttp3/internal/http2/Http2Stream$FramedDataSink;->this$0:Lokhttp3/internal/http2/Http2Stream;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 462
    move-object v2, v0

    new-instance v3, Lokio/Buffer;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Lokio/Buffer;-><init>()V

    iput-object v3, v2, Lokhttp3/internal/http2/Http2Stream$FramedDataSink;->sendBuffer:Lokio/Buffer;

    return-void
.end method

.method private emitDataFrame(Z)V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 485
    move-object v0, p0

    move/from16 v1, p1

    move-object v8, v0

    iget-object v8, v8, Lokhttp3/internal/http2/Http2Stream$FramedDataSink;->this$0:Lokhttp3/internal/http2/Http2Stream;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move-object v4, v9

    monitor-enter v8

    .line 486
    move-object v8, v0

    :try_start_0
    iget-object v8, v8, Lokhttp3/internal/http2/Http2Stream$FramedDataSink;->this$0:Lokhttp3/internal/http2/Http2Stream;

    iget-object v8, v8, Lokhttp3/internal/http2/Http2Stream;->writeTimeout:Lokhttp3/internal/http2/Http2Stream$StreamTimeout;

    invoke-virtual {v8}, Lokhttp3/internal/http2/Http2Stream$StreamTimeout;->enter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 488
    :goto_0
    move-object v8, v0

    :try_start_1
    iget-object v8, v8, Lokhttp3/internal/http2/Http2Stream$FramedDataSink;->this$0:Lokhttp3/internal/http2/Http2Stream;

    iget-wide v8, v8, Lokhttp3/internal/http2/Http2Stream;->bytesLeftInWriteWindow:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-gtz v8, :cond_0

    move-object v8, v0

    iget-boolean v8, v8, Lokhttp3/internal/http2/Http2Stream$FramedDataSink;->finished:Z

    if-nez v8, :cond_0

    move-object v8, v0

    iget-boolean v8, v8, Lokhttp3/internal/http2/Http2Stream$FramedDataSink;->closed:Z

    if-nez v8, :cond_0

    move-object v8, v0

    iget-object v8, v8, Lokhttp3/internal/http2/Http2Stream$FramedDataSink;->this$0:Lokhttp3/internal/http2/Http2Stream;

    iget-object v8, v8, Lokhttp3/internal/http2/Http2Stream;->errorCode:Lokhttp3/internal/http2/ErrorCode;

    if-nez v8, :cond_0

    .line 489
    move-object v8, v0

    iget-object v8, v8, Lokhttp3/internal/http2/Http2Stream$FramedDataSink;->this$0:Lokhttp3/internal/http2/Http2Stream;

    invoke-virtual {v8}, Lokhttp3/internal/http2/Http2Stream;->waitForIo()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 492
    :cond_0
    move-object v8, v0

    :try_start_2
    iget-object v8, v8, Lokhttp3/internal/http2/Http2Stream$FramedDataSink;->this$0:Lokhttp3/internal/http2/Http2Stream;

    iget-object v8, v8, Lokhttp3/internal/http2/Http2Stream;->writeTimeout:Lokhttp3/internal/http2/Http2Stream$StreamTimeout;

    invoke-virtual {v8}, Lokhttp3/internal/http2/Http2Stream$StreamTimeout;->exitAndThrowIfTimedOut()V

    .line 495
    move-object v8, v0

    iget-object v8, v8, Lokhttp3/internal/http2/Http2Stream$FramedDataSink;->this$0:Lokhttp3/internal/http2/Http2Stream;

    invoke-virtual {v8}, Lokhttp3/internal/http2/Http2Stream;->checkOutNotClosed()V

    .line 496
    move-object v8, v0

    iget-object v8, v8, Lokhttp3/internal/http2/Http2Stream$FramedDataSink;->this$0:Lokhttp3/internal/http2/Http2Stream;

    iget-wide v8, v8, Lokhttp3/internal/http2/Http2Stream;->bytesLeftInWriteWindow:J

    move-object v10, v0

    iget-object v10, v10, Lokhttp3/internal/http2/Http2Stream$FramedDataSink;->sendBuffer:Lokio/Buffer;

    invoke-virtual {v10}, Lokio/Buffer;->size()J

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    move-wide v2, v8

    .line 497
    move-object v8, v0

    iget-object v8, v8, Lokhttp3/internal/http2/Http2Stream$FramedDataSink;->this$0:Lokhttp3/internal/http2/Http2Stream;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    iget-wide v9, v9, Lokhttp3/internal/http2/Http2Stream;->bytesLeftInWriteWindow:J

    move-wide v11, v2

    sub-long/2addr v9, v11

    iput-wide v9, v8, Lokhttp3/internal/http2/Http2Stream;->bytesLeftInWriteWindow:J

    .line 498
    move-object v8, v4

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 500
    move-object v8, v0

    iget-object v8, v8, Lokhttp3/internal/http2/Http2Stream$FramedDataSink;->this$0:Lokhttp3/internal/http2/Http2Stream;

    iget-object v8, v8, Lokhttp3/internal/http2/Http2Stream;->writeTimeout:Lokhttp3/internal/http2/Http2Stream$StreamTimeout;

    invoke-virtual {v8}, Lokhttp3/internal/http2/Http2Stream$StreamTimeout;->enter()V

    .line 502
    move-object v8, v0

    :try_start_3
    iget-object v8, v8, Lokhttp3/internal/http2/Http2Stream$FramedDataSink;->this$0:Lokhttp3/internal/http2/Http2Stream;

    iget-object v8, v8, Lokhttp3/internal/http2/Http2Stream;->connection:Lokhttp3/internal/http2/Http2Connection;

    move-object v9, v0

    iget-object v9, v9, Lokhttp3/internal/http2/Http2Stream$FramedDataSink;->this$0:Lokhttp3/internal/http2/Http2Stream;

    iget v9, v9, Lokhttp3/internal/http2/Http2Stream;->id:I

    move v10, v1

    if-eqz v10, :cond_1

    move-wide v10, v2

    move-object v12, v0

    iget-object v12, v12, Lokhttp3/internal/http2/Http2Stream$FramedDataSink;->sendBuffer:Lokio/Buffer;

    invoke-virtual {v12}, Lokio/Buffer;->size()J

    move-result-wide v12

    cmp-long v10, v10, v12

    if-nez v10, :cond_1

    const/4 v10, 0x1

    :goto_1
    move-object v11, v0

    iget-object v11, v11, Lokhttp3/internal/http2/Http2Stream$FramedDataSink;->sendBuffer:Lokio/Buffer;

    move-wide v12, v2

    invoke-virtual/range {v8 .. v13}, Lokhttp3/internal/http2/Http2Connection;->writeData(IZLokio/Buffer;J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 504
    move-object v8, v0

    iget-object v8, v8, Lokhttp3/internal/http2/Http2Stream$FramedDataSink;->this$0:Lokhttp3/internal/http2/Http2Stream;

    iget-object v8, v8, Lokhttp3/internal/http2/Http2Stream;->writeTimeout:Lokhttp3/internal/http2/Http2Stream$StreamTimeout;

    invoke-virtual {v8}, Lokhttp3/internal/http2/Http2Stream$StreamTimeout;->exitAndThrowIfTimedOut()V

    .line 506
    return-void

    .line 492
    :catchall_0
    move-exception v8

    move-object v5, v8

    move-object v8, v0

    :try_start_4
    iget-object v8, v8, Lokhttp3/internal/http2/Http2Stream$FramedDataSink;->this$0:Lokhttp3/internal/http2/Http2Stream;

    iget-object v8, v8, Lokhttp3/internal/http2/Http2Stream;->writeTimeout:Lokhttp3/internal/http2/Http2Stream$StreamTimeout;

    invoke-virtual {v8}, Lokhttp3/internal/http2/Http2Stream$StreamTimeout;->exitAndThrowIfTimedOut()V

    move-object v8, v5

    throw v8

    .line 498
    :catchall_1
    move-exception v8

    move-object v6, v8

    move-object v8, v4

    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object v8, v6

    throw v8

    .line 502
    :cond_1
    const/4 v10, 0x0

    goto :goto_1

    .line 504
    :catchall_2
    move-exception v8

    move-object v7, v8

    move-object v8, v0

    iget-object v8, v8, Lokhttp3/internal/http2/Http2Stream$FramedDataSink;->this$0:Lokhttp3/internal/http2/Http2Stream;

    iget-object v8, v8, Lokhttp3/internal/http2/Http2Stream;->writeTimeout:Lokhttp3/internal/http2/Http2Stream$StreamTimeout;

    invoke-virtual {v8}, Lokhttp3/internal/http2/Http2Stream$StreamTimeout;->exitAndThrowIfTimedOut()V

    move-object v8, v7

    throw v8
.end method


# virtual methods
.method public close()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 524
    move-object v0, p0

    sget-boolean v4, Lokhttp3/internal/http2/Http2Stream$FramedDataSink;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Lokhttp3/internal/http2/Http2Stream$FramedDataSink;->this$0:Lokhttp3/internal/http2/Http2Stream;

    invoke-static {v4}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 525
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lokhttp3/internal/http2/Http2Stream$FramedDataSink;->this$0:Lokhttp3/internal/http2/Http2Stream;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v1, v5

    monitor-enter v4

    .line 526
    move-object v4, v0

    :try_start_0
    iget-boolean v4, v4, Lokhttp3/internal/http2/Http2Stream$FramedDataSink;->closed:Z

    if-eqz v4, :cond_1

    move-object v4, v1

    monitor-exit v4

    .line 544
    :goto_0
    return-void

    .line 527
    :cond_1
    move-object v4, v1

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 528
    move-object v4, v0

    iget-object v4, v4, Lokhttp3/internal/http2/Http2Stream$FramedDataSink;->this$0:Lokhttp3/internal/http2/Http2Stream;

    iget-object v4, v4, Lokhttp3/internal/http2/Http2Stream;->sink:Lokhttp3/internal/http2/Http2Stream$FramedDataSink;

    iget-boolean v4, v4, Lokhttp3/internal/http2/Http2Stream$FramedDataSink;->finished:Z

    if-nez v4, :cond_3

    .line 530
    move-object v4, v0

    iget-object v4, v4, Lokhttp3/internal/http2/Http2Stream$FramedDataSink;->sendBuffer:Lokio/Buffer;

    invoke-virtual {v4}, Lokio/Buffer;->size()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_2

    .line 531
    :goto_1
    move-object v4, v0

    iget-object v4, v4, Lokhttp3/internal/http2/Http2Stream$FramedDataSink;->sendBuffer:Lokio/Buffer;

    invoke-virtual {v4}, Lokio/Buffer;->size()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_3

    .line 532
    move-object v4, v0

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Lokhttp3/internal/http2/Http2Stream$FramedDataSink;->emitDataFrame(Z)V

    goto :goto_1

    .line 527
    :catchall_0
    move-exception v4

    move-object v2, v4

    move-object v4, v1

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v4, v2

    throw v4

    .line 536
    :cond_2
    move-object v4, v0

    iget-object v4, v4, Lokhttp3/internal/http2/Http2Stream$FramedDataSink;->this$0:Lokhttp3/internal/http2/Http2Stream;

    iget-object v4, v4, Lokhttp3/internal/http2/Http2Stream;->connection:Lokhttp3/internal/http2/Http2Connection;

    move-object v5, v0

    iget-object v5, v5, Lokhttp3/internal/http2/Http2Stream$FramedDataSink;->this$0:Lokhttp3/internal/http2/Http2Stream;

    iget v5, v5, Lokhttp3/internal/http2/Http2Stream;->id:I

    const/4 v6, 0x1

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    invoke-virtual/range {v4 .. v9}, Lokhttp3/internal/http2/Http2Connection;->writeData(IZLokio/Buffer;J)V

    .line 539
    :cond_3
    move-object v4, v0

    iget-object v4, v4, Lokhttp3/internal/http2/Http2Stream$FramedDataSink;->this$0:Lokhttp3/internal/http2/Http2Stream;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v1, v5

    monitor-enter v4

    .line 540
    move-object v4, v0

    const/4 v5, 0x1

    :try_start_2
    iput-boolean v5, v4, Lokhttp3/internal/http2/Http2Stream$FramedDataSink;->closed:Z

    .line 541
    move-object v4, v1

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 542
    move-object v4, v0

    iget-object v4, v4, Lokhttp3/internal/http2/Http2Stream$FramedDataSink;->this$0:Lokhttp3/internal/http2/Http2Stream;

    iget-object v4, v4, Lokhttp3/internal/http2/Http2Stream;->connection:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v4}, Lokhttp3/internal/http2/Http2Connection;->flush()V

    .line 543
    move-object v4, v0

    iget-object v4, v4, Lokhttp3/internal/http2/Http2Stream$FramedDataSink;->this$0:Lokhttp3/internal/http2/Http2Stream;

    invoke-virtual {v4}, Lokhttp3/internal/http2/Http2Stream;->cancelStreamIfNecessary()V

    .line 544
    goto :goto_0

    .line 541
    :catchall_1
    move-exception v4

    move-object v3, v4

    move-object v4, v1

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v4, v3

    throw v4
.end method

.method public flush()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 509
    move-object v0, p0

    sget-boolean v3, Lokhttp3/internal/http2/Http2Stream$FramedDataSink;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lokhttp3/internal/http2/Http2Stream$FramedDataSink;->this$0:Lokhttp3/internal/http2/Http2Stream;

    invoke-static {v3}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 510
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lokhttp3/internal/http2/Http2Stream$FramedDataSink;->this$0:Lokhttp3/internal/http2/Http2Stream;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v1, v4

    monitor-enter v3

    .line 511
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Lokhttp3/internal/http2/Http2Stream$FramedDataSink;->this$0:Lokhttp3/internal/http2/Http2Stream;

    invoke-virtual {v3}, Lokhttp3/internal/http2/Http2Stream;->checkOutNotClosed()V

    .line 512
    move-object v3, v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 513
    :goto_0
    move-object v3, v0

    iget-object v3, v3, Lokhttp3/internal/http2/Http2Stream$FramedDataSink;->sendBuffer:Lokio/Buffer;

    invoke-virtual {v3}, Lokio/Buffer;->size()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_1

    .line 514
    move-object v3, v0

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lokhttp3/internal/http2/Http2Stream$FramedDataSink;->emitDataFrame(Z)V

    .line 515
    move-object v3, v0

    iget-object v3, v3, Lokhttp3/internal/http2/Http2Stream$FramedDataSink;->this$0:Lokhttp3/internal/http2/Http2Stream;

    iget-object v3, v3, Lokhttp3/internal/http2/Http2Stream;->connection:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v3}, Lokhttp3/internal/http2/Http2Connection;->flush()V

    goto :goto_0

    .line 512
    :catchall_0
    move-exception v3

    move-object v2, v3

    move-object v3, v1

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v3, v2

    throw v3

    .line 517
    :cond_1
    return-void
.end method

.method public timeout()Lokio/Timeout;
    .locals 2

    .prologue
    .line 520
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/internal/http2/Http2Stream$FramedDataSink;->this$0:Lokhttp3/internal/http2/Http2Stream;

    iget-object v1, v1, Lokhttp3/internal/http2/Http2Stream;->writeTimeout:Lokhttp3/internal/http2/Http2Stream$StreamTimeout;

    move-object v0, v1

    return-object v0
.end method

.method public write(Lokio/Buffer;J)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 472
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    sget-boolean v4, Lokhttp3/internal/http2/Http2Stream$FramedDataSink;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Lokhttp3/internal/http2/Http2Stream$FramedDataSink;->this$0:Lokhttp3/internal/http2/Http2Stream;

    invoke-static {v4}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 473
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lokhttp3/internal/http2/Http2Stream$FramedDataSink;->sendBuffer:Lokio/Buffer;

    move-object v5, v1

    move-wide v6, v2

    invoke-virtual {v4, v5, v6, v7}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    .line 474
    :goto_0
    move-object v4, v0

    iget-object v4, v4, Lokhttp3/internal/http2/Http2Stream$FramedDataSink;->sendBuffer:Lokio/Buffer;

    invoke-virtual {v4}, Lokio/Buffer;->size()J

    move-result-wide v4

    const-wide/16 v6, 0x4000

    cmp-long v4, v4, v6

    if-ltz v4, :cond_1

    .line 475
    move-object v4, v0

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lokhttp3/internal/http2/Http2Stream$FramedDataSink;->emitDataFrame(Z)V

    goto :goto_0

    .line 477
    :cond_1
    return-void
.end method
