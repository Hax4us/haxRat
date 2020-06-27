.class final Lokhttp3/internal/http2/Http2Stream$FramedDataSource;
.super Ljava/lang/Object;
.source "Http2Stream.java"

# interfaces
.implements Lokio/Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/http2/Http2Stream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FramedDataSource"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field closed:Z

.field finished:Z

.field private final maxByteCount:J

.field private final readBuffer:Lokio/Buffer;

.field private final receiveBuffer:Lokio/Buffer;

.field final synthetic this$0:Lokhttp3/internal/http2/Http2Stream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 300
    const-class v0, Lokhttp3/internal/http2/Http2Stream;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lokhttp3/internal/http2/Http2Stream$FramedDataSource;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lokhttp3/internal/http2/Http2Stream;J)V
    .locals 8

    .prologue
    .line 319
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lokhttp3/internal/http2/Http2Stream$FramedDataSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 302
    move-object v4, v0

    new-instance v5, Lokio/Buffer;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Lokio/Buffer;-><init>()V

    iput-object v5, v4, Lokhttp3/internal/http2/Http2Stream$FramedDataSource;->receiveBuffer:Lokio/Buffer;

    .line 305
    move-object v4, v0

    new-instance v5, Lokio/Buffer;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Lokio/Buffer;-><init>()V

    iput-object v5, v4, Lokhttp3/internal/http2/Http2Stream$FramedDataSource;->readBuffer:Lokio/Buffer;

    .line 320
    move-object v4, v0

    move-wide v5, v2

    iput-wide v5, v4, Lokhttp3/internal/http2/Http2Stream$FramedDataSource;->maxByteCount:J

    .line 321
    return-void
.end method

.method private checkNotClosed()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 424
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lokhttp3/internal/http2/Http2Stream$FramedDataSource;->closed:Z

    if-eqz v1, :cond_0

    .line 425
    new-instance v1, Ljava/io/IOException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "stream closed"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 427
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lokhttp3/internal/http2/Http2Stream$FramedDataSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    iget-object v1, v1, Lokhttp3/internal/http2/Http2Stream;->errorCode:Lokhttp3/internal/http2/ErrorCode;

    if-eqz v1, :cond_1

    .line 428
    new-instance v1, Lokhttp3/internal/http2/StreamResetException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    iget-object v3, v3, Lokhttp3/internal/http2/Http2Stream$FramedDataSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    iget-object v3, v3, Lokhttp3/internal/http2/Http2Stream;->errorCode:Lokhttp3/internal/http2/ErrorCode;

    invoke-direct {v2, v3}, Lokhttp3/internal/http2/StreamResetException;-><init>(Lokhttp3/internal/http2/ErrorCode;)V

    throw v1

    .line 430
    :cond_1
    return-void
.end method

.method private waitUntilReadable()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 360
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lokhttp3/internal/http2/Http2Stream$FramedDataSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    iget-object v2, v2, Lokhttp3/internal/http2/Http2Stream;->readTimeout:Lokhttp3/internal/http2/Http2Stream$StreamTimeout;

    invoke-virtual {v2}, Lokhttp3/internal/http2/Http2Stream$StreamTimeout;->enter()V

    .line 362
    :goto_0
    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lokhttp3/internal/http2/Http2Stream$FramedDataSource;->readBuffer:Lokio/Buffer;

    invoke-virtual {v2}, Lokio/Buffer;->size()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    move-object v2, v0

    iget-boolean v2, v2, Lokhttp3/internal/http2/Http2Stream$FramedDataSource;->finished:Z

    if-nez v2, :cond_0

    move-object v2, v0

    iget-boolean v2, v2, Lokhttp3/internal/http2/Http2Stream$FramedDataSource;->closed:Z

    if-nez v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lokhttp3/internal/http2/Http2Stream$FramedDataSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    iget-object v2, v2, Lokhttp3/internal/http2/Http2Stream;->errorCode:Lokhttp3/internal/http2/ErrorCode;

    if-nez v2, :cond_0

    .line 363
    move-object v2, v0

    iget-object v2, v2, Lokhttp3/internal/http2/Http2Stream$FramedDataSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    invoke-virtual {v2}, Lokhttp3/internal/http2/Http2Stream;->waitForIo()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 366
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lokhttp3/internal/http2/Http2Stream$FramedDataSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    iget-object v2, v2, Lokhttp3/internal/http2/Http2Stream;->readTimeout:Lokhttp3/internal/http2/Http2Stream$StreamTimeout;

    invoke-virtual {v2}, Lokhttp3/internal/http2/Http2Stream$StreamTimeout;->exitAndThrowIfTimedOut()V

    .line 368
    return-void

    .line 366
    :catchall_0
    move-exception v2

    move-object v1, v2

    move-object v2, v0

    iget-object v2, v2, Lokhttp3/internal/http2/Http2Stream$FramedDataSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    iget-object v2, v2, Lokhttp3/internal/http2/Http2Stream;->readTimeout:Lokhttp3/internal/http2/Http2Stream$StreamTimeout;

    invoke-virtual {v2}, Lokhttp3/internal/http2/Http2Stream$StreamTimeout;->exitAndThrowIfTimedOut()V

    move-object v2, v1

    throw v2
.end method


# virtual methods
.method public close()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 415
    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lokhttp3/internal/http2/Http2Stream$FramedDataSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    move-object v1, v4

    monitor-enter v3

    .line 416
    move-object v3, v0

    const/4 v4, 0x1

    :try_start_0
    iput-boolean v4, v3, Lokhttp3/internal/http2/Http2Stream$FramedDataSource;->closed:Z

    .line 417
    move-object v3, v0

    iget-object v3, v3, Lokhttp3/internal/http2/Http2Stream$FramedDataSource;->readBuffer:Lokio/Buffer;

    invoke-virtual {v3}, Lokio/Buffer;->clear()V

    .line 418
    move-object v3, v0

    iget-object v3, v3, Lokhttp3/internal/http2/Http2Stream$FramedDataSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 419
    move-object v3, v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 420
    move-object v3, v0

    iget-object v3, v3, Lokhttp3/internal/http2/Http2Stream$FramedDataSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    invoke-virtual {v3}, Lokhttp3/internal/http2/Http2Stream;->cancelStreamIfNecessary()V

    .line 421
    return-void

    .line 419
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
.end method

.method public read(Lokio/Buffer;J)J
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 325
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-wide v9, v2

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-gez v9, :cond_0

    new-instance v9, Ljava/lang/IllegalArgumentException;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    new-instance v11, Ljava/lang/StringBuilder;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "byteCount < 0: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-wide v12, v2

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 328
    :cond_0
    move-object v9, v0

    iget-object v9, v9, Lokhttp3/internal/http2/Http2Stream$FramedDataSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    move-object v6, v10

    monitor-enter v9

    .line 329
    move-object v9, v0

    :try_start_0
    invoke-direct {v9}, Lokhttp3/internal/http2/Http2Stream$FramedDataSource;->waitUntilReadable()V

    .line 330
    move-object v9, v0

    invoke-direct {v9}, Lokhttp3/internal/http2/Http2Stream$FramedDataSource;->checkNotClosed()V

    .line 331
    move-object v9, v0

    iget-object v9, v9, Lokhttp3/internal/http2/Http2Stream$FramedDataSource;->readBuffer:Lokio/Buffer;

    invoke-virtual {v9}, Lokio/Buffer;->size()J

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-nez v9, :cond_1

    const-wide/16 v9, -0x1

    move-object v11, v6

    monitor-exit v11

    move-wide v0, v9

    .line 355
    :goto_0
    return-wide v0

    .line 334
    :cond_1
    move-object v9, v0

    iget-object v9, v9, Lokhttp3/internal/http2/Http2Stream$FramedDataSource;->readBuffer:Lokio/Buffer;

    move-object v10, v1

    move-wide v11, v2

    move-object v13, v0

    iget-object v13, v13, Lokhttp3/internal/http2/Http2Stream$FramedDataSource;->readBuffer:Lokio/Buffer;

    invoke-virtual {v13}, Lokio/Buffer;->size()J

    move-result-wide v13

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v11

    invoke-virtual {v9, v10, v11, v12}, Lokio/Buffer;->read(Lokio/Buffer;J)J

    move-result-wide v9

    move-wide v4, v9

    .line 337
    move-object v9, v0

    iget-object v9, v9, Lokhttp3/internal/http2/Http2Stream$FramedDataSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    iget-wide v10, v10, Lokhttp3/internal/http2/Http2Stream;->unacknowledgedBytesRead:J

    move-wide v12, v4

    add-long/2addr v10, v12

    iput-wide v10, v9, Lokhttp3/internal/http2/Http2Stream;->unacknowledgedBytesRead:J

    .line 338
    move-object v9, v0

    iget-object v9, v9, Lokhttp3/internal/http2/Http2Stream$FramedDataSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    iget-wide v9, v9, Lokhttp3/internal/http2/Http2Stream;->unacknowledgedBytesRead:J

    move-object v11, v0

    iget-object v11, v11, Lokhttp3/internal/http2/Http2Stream$FramedDataSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    iget-object v11, v11, Lokhttp3/internal/http2/Http2Stream;->connection:Lokhttp3/internal/http2/Http2Connection;

    iget-object v11, v11, Lokhttp3/internal/http2/Http2Connection;->okHttpSettings:Lokhttp3/internal/http2/Settings;

    .line 339
    invoke-virtual {v11}, Lokhttp3/internal/http2/Settings;->getInitialWindowSize()I

    move-result v11

    const/4 v12, 0x2

    div-int/lit8 v11, v11, 0x2

    int-to-long v11, v11

    cmp-long v9, v9, v11

    if-ltz v9, :cond_2

    .line 340
    move-object v9, v0

    iget-object v9, v9, Lokhttp3/internal/http2/Http2Stream$FramedDataSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    iget-object v9, v9, Lokhttp3/internal/http2/Http2Stream;->connection:Lokhttp3/internal/http2/Http2Connection;

    move-object v10, v0

    iget-object v10, v10, Lokhttp3/internal/http2/Http2Stream$FramedDataSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    iget v10, v10, Lokhttp3/internal/http2/Http2Stream;->id:I

    move-object v11, v0

    iget-object v11, v11, Lokhttp3/internal/http2/Http2Stream$FramedDataSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    iget-wide v11, v11, Lokhttp3/internal/http2/Http2Stream;->unacknowledgedBytesRead:J

    invoke-virtual {v9, v10, v11, v12}, Lokhttp3/internal/http2/Http2Connection;->writeWindowUpdateLater(IJ)V

    .line 341
    move-object v9, v0

    iget-object v9, v9, Lokhttp3/internal/http2/Http2Stream$FramedDataSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    const-wide/16 v10, 0x0

    iput-wide v10, v9, Lokhttp3/internal/http2/Http2Stream;->unacknowledgedBytesRead:J

    .line 343
    :cond_2
    move-object v9, v6

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 346
    move-object v9, v0

    iget-object v9, v9, Lokhttp3/internal/http2/Http2Stream$FramedDataSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    iget-object v9, v9, Lokhttp3/internal/http2/Http2Stream;->connection:Lokhttp3/internal/http2/Http2Connection;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    move-object v6, v10

    monitor-enter v9

    .line 347
    move-object v9, v0

    :try_start_1
    iget-object v9, v9, Lokhttp3/internal/http2/Http2Stream$FramedDataSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    iget-object v9, v9, Lokhttp3/internal/http2/Http2Stream;->connection:Lokhttp3/internal/http2/Http2Connection;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    iget-wide v10, v10, Lokhttp3/internal/http2/Http2Connection;->unacknowledgedBytesRead:J

    move-wide v12, v4

    add-long/2addr v10, v12

    iput-wide v10, v9, Lokhttp3/internal/http2/Http2Connection;->unacknowledgedBytesRead:J

    .line 348
    move-object v9, v0

    iget-object v9, v9, Lokhttp3/internal/http2/Http2Stream$FramedDataSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    iget-object v9, v9, Lokhttp3/internal/http2/Http2Stream;->connection:Lokhttp3/internal/http2/Http2Connection;

    iget-wide v9, v9, Lokhttp3/internal/http2/Http2Connection;->unacknowledgedBytesRead:J

    move-object v11, v0

    iget-object v11, v11, Lokhttp3/internal/http2/Http2Stream$FramedDataSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    iget-object v11, v11, Lokhttp3/internal/http2/Http2Stream;->connection:Lokhttp3/internal/http2/Http2Connection;

    iget-object v11, v11, Lokhttp3/internal/http2/Http2Connection;->okHttpSettings:Lokhttp3/internal/http2/Settings;

    .line 349
    invoke-virtual {v11}, Lokhttp3/internal/http2/Settings;->getInitialWindowSize()I

    move-result v11

    const/4 v12, 0x2

    div-int/lit8 v11, v11, 0x2

    int-to-long v11, v11

    cmp-long v9, v9, v11

    if-ltz v9, :cond_3

    .line 350
    move-object v9, v0

    iget-object v9, v9, Lokhttp3/internal/http2/Http2Stream$FramedDataSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    iget-object v9, v9, Lokhttp3/internal/http2/Http2Stream;->connection:Lokhttp3/internal/http2/Http2Connection;

    const/4 v10, 0x0

    move-object v11, v0

    iget-object v11, v11, Lokhttp3/internal/http2/Http2Stream$FramedDataSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    iget-object v11, v11, Lokhttp3/internal/http2/Http2Stream;->connection:Lokhttp3/internal/http2/Http2Connection;

    iget-wide v11, v11, Lokhttp3/internal/http2/Http2Connection;->unacknowledgedBytesRead:J

    invoke-virtual {v9, v10, v11, v12}, Lokhttp3/internal/http2/Http2Connection;->writeWindowUpdateLater(IJ)V

    .line 351
    move-object v9, v0

    iget-object v9, v9, Lokhttp3/internal/http2/Http2Stream$FramedDataSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    iget-object v9, v9, Lokhttp3/internal/http2/Http2Stream;->connection:Lokhttp3/internal/http2/Http2Connection;

    const-wide/16 v10, 0x0

    iput-wide v10, v9, Lokhttp3/internal/http2/Http2Connection;->unacknowledgedBytesRead:J

    .line 353
    :cond_3
    move-object v9, v6

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 355
    move-wide v9, v4

    move-wide v0, v9

    goto/16 :goto_0

    .line 343
    :catchall_0
    move-exception v9

    move-object v7, v9

    move-object v9, v6

    :try_start_2
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v9, v7

    throw v9

    .line 353
    :catchall_1
    move-exception v9

    move-object v8, v9

    move-object v9, v6

    :try_start_3
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v9, v8

    throw v9
.end method

.method receive(Lokio/BufferedSource;J)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 371
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    sget-boolean v11, Lokhttp3/internal/http2/Http2Stream$FramedDataSource;->$assertionsDisabled:Z

    if-nez v11, :cond_2

    move-object v11, v0

    iget-object v11, v11, Lokhttp3/internal/http2/Http2Stream$FramedDataSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    invoke-static {v11}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    new-instance v11, Ljava/lang/AssertionError;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    invoke-direct {v12}, Ljava/lang/AssertionError;-><init>()V

    throw v11

    .line 397
    :cond_0
    move-wide v11, v2

    move-wide v13, v6

    sub-long/2addr v11, v13

    move-wide v2, v11

    .line 400
    move-object v11, v0

    iget-object v11, v11, Lokhttp3/internal/http2/Http2Stream$FramedDataSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    move-object v8, v12

    monitor-enter v11

    .line 401
    move-object v11, v0

    :try_start_0
    iget-object v11, v11, Lokhttp3/internal/http2/Http2Stream$FramedDataSource;->readBuffer:Lokio/Buffer;

    invoke-virtual {v11}, Lokio/Buffer;->size()J

    move-result-wide v11

    const-wide/16 v13, 0x0

    cmp-long v11, v11, v13

    if-nez v11, :cond_6

    const/4 v11, 0x1

    :goto_0
    move v9, v11

    .line 402
    move-object v11, v0

    iget-object v11, v11, Lokhttp3/internal/http2/Http2Stream$FramedDataSource;->readBuffer:Lokio/Buffer;

    move-object v12, v0

    iget-object v12, v12, Lokhttp3/internal/http2/Http2Stream$FramedDataSource;->receiveBuffer:Lokio/Buffer;

    invoke-virtual {v11, v12}, Lokio/Buffer;->writeAll(Lokio/Source;)J

    move-result-wide v11

    .line 403
    move v11, v9

    if-eqz v11, :cond_1

    .line 404
    move-object v11, v0

    iget-object v11, v11, Lokhttp3/internal/http2/Http2Stream$FramedDataSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    invoke-virtual {v11}, Ljava/lang/Object;->notifyAll()V

    .line 406
    :cond_1
    move-object v11, v8

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 373
    :cond_2
    move-wide v11, v2

    const-wide/16 v13, 0x0

    cmp-long v11, v11, v13

    if-lez v11, :cond_7

    .line 376
    move-object v11, v0

    iget-object v11, v11, Lokhttp3/internal/http2/Http2Stream$FramedDataSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    move-object v6, v12

    monitor-enter v11

    .line 377
    move-object v11, v0

    :try_start_1
    iget-boolean v11, v11, Lokhttp3/internal/http2/Http2Stream$FramedDataSource;->finished:Z

    move v4, v11

    .line 378
    move-wide v11, v2

    move-object v13, v0

    iget-object v13, v13, Lokhttp3/internal/http2/Http2Stream$FramedDataSource;->readBuffer:Lokio/Buffer;

    invoke-virtual {v13}, Lokio/Buffer;->size()J

    move-result-wide v13

    add-long/2addr v11, v13

    move-object v13, v0

    iget-wide v13, v13, Lokhttp3/internal/http2/Http2Stream$FramedDataSource;->maxByteCount:J

    cmp-long v11, v11, v13

    if-lez v11, :cond_3

    const/4 v11, 0x1

    :goto_1
    move v5, v11

    .line 379
    move-object v11, v6

    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 382
    move v11, v5

    if-eqz v11, :cond_4

    .line 383
    move-object v11, v1

    move-wide v12, v2

    invoke-interface {v11, v12, v13}, Lokio/BufferedSource;->skip(J)V

    .line 384
    move-object v11, v0

    iget-object v11, v11, Lokhttp3/internal/http2/Http2Stream$FramedDataSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    sget-object v12, Lokhttp3/internal/http2/ErrorCode;->FLOW_CONTROL_ERROR:Lokhttp3/internal/http2/ErrorCode;

    invoke-virtual {v11, v12}, Lokhttp3/internal/http2/Http2Stream;->closeLater(Lokhttp3/internal/http2/ErrorCode;)V

    .line 408
    :goto_2
    return-void

    .line 378
    :cond_3
    const/4 v11, 0x0

    goto :goto_1

    .line 379
    :catchall_0
    move-exception v11

    move-object v7, v11

    move-object v11, v6

    :try_start_2
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v11, v7

    throw v11

    .line 389
    :cond_4
    move v11, v4

    if-eqz v11, :cond_5

    .line 390
    move-object v11, v1

    move-wide v12, v2

    invoke-interface {v11, v12, v13}, Lokio/BufferedSource;->skip(J)V

    .line 391
    goto :goto_2

    .line 395
    :cond_5
    move-object v11, v1

    move-object v12, v0

    iget-object v12, v12, Lokhttp3/internal/http2/Http2Stream$FramedDataSource;->receiveBuffer:Lokio/Buffer;

    move-wide v13, v2

    invoke-interface {v11, v12, v13, v14}, Lokio/BufferedSource;->read(Lokio/Buffer;J)J

    move-result-wide v11

    move-wide v6, v11

    .line 396
    move-wide v11, v6

    const-wide/16 v13, -0x1

    cmp-long v11, v11, v13

    if-nez v11, :cond_0

    new-instance v11, Ljava/io/EOFException;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    invoke-direct {v12}, Ljava/io/EOFException;-><init>()V

    throw v11

    .line 401
    :cond_6
    const/4 v11, 0x0

    goto :goto_0

    .line 406
    :catchall_1
    move-exception v11

    move-object v10, v11

    move-object v11, v8

    :try_start_3
    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v11, v10

    throw v11

    .line 408
    :cond_7
    goto :goto_2
.end method

.method public timeout()Lokio/Timeout;
    .locals 2

    .prologue
    .line 411
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/internal/http2/Http2Stream$FramedDataSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    iget-object v1, v1, Lokhttp3/internal/http2/Http2Stream;->readTimeout:Lokhttp3/internal/http2/Http2Stream$StreamTimeout;

    move-object v0, v1

    return-object v0
.end method
