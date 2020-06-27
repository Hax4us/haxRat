.class public final Lokhttp3/internal/http2/Http2Stream;
.super Ljava/lang/Object;
.source "Http2Stream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/http2/Http2Stream$StreamTimeout;,
        Lokhttp3/internal/http2/Http2Stream$FramedDataSink;,
        Lokhttp3/internal/http2/Http2Stream$FramedDataSource;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field bytesLeftInWriteWindow:J

.field final connection:Lokhttp3/internal/http2/Http2Connection;

.field errorCode:Lokhttp3/internal/http2/ErrorCode;

.field final id:I

.field final readTimeout:Lokhttp3/internal/http2/Http2Stream$StreamTimeout;

.field private final requestHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/http2/Header;",
            ">;"
        }
    .end annotation
.end field

.field private responseHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/http2/Header;",
            ">;"
        }
    .end annotation
.end field

.field final sink:Lokhttp3/internal/http2/Http2Stream$FramedDataSink;

.field private final source:Lokhttp3/internal/http2/Http2Stream$FramedDataSource;

.field unacknowledgedBytesRead:J

.field final writeTimeout:Lokhttp3/internal/http2/Http2Stream$StreamTimeout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lokhttp3/internal/http2/Http2Stream;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lokhttp3/internal/http2/Http2Stream;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(ILokhttp3/internal/http2/Http2Connection;ZZLjava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lokhttp3/internal/http2/Http2Connection;",
            "ZZ",
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/http2/Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 73
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object v6, v0

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 41
    move-object v6, v0

    const-wide/16 v7, 0x0

    iput-wide v7, v6, Lokhttp3/internal/http2/Http2Stream;->unacknowledgedBytesRead:J

    .line 62
    move-object v6, v0

    new-instance v7, Lokhttp3/internal/http2/Http2Stream$StreamTimeout;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v0

    invoke-direct {v8, v9}, Lokhttp3/internal/http2/Http2Stream$StreamTimeout;-><init>(Lokhttp3/internal/http2/Http2Stream;)V

    iput-object v7, v6, Lokhttp3/internal/http2/Http2Stream;->readTimeout:Lokhttp3/internal/http2/Http2Stream$StreamTimeout;

    .line 63
    move-object v6, v0

    new-instance v7, Lokhttp3/internal/http2/Http2Stream$StreamTimeout;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v0

    invoke-direct {v8, v9}, Lokhttp3/internal/http2/Http2Stream$StreamTimeout;-><init>(Lokhttp3/internal/http2/Http2Stream;)V

    iput-object v7, v6, Lokhttp3/internal/http2/Http2Stream;->writeTimeout:Lokhttp3/internal/http2/Http2Stream$StreamTimeout;

    .line 70
    move-object v6, v0

    const/4 v7, 0x0

    iput-object v7, v6, Lokhttp3/internal/http2/Http2Stream;->errorCode:Lokhttp3/internal/http2/ErrorCode;

    .line 74
    move-object v6, v2

    if-nez v6, :cond_0

    new-instance v6, Ljava/lang/NullPointerException;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    const-string v8, "connection == null"

    invoke-direct {v7, v8}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 75
    :cond_0
    move-object v6, v5

    if-nez v6, :cond_1

    new-instance v6, Ljava/lang/NullPointerException;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    const-string v8, "requestHeaders == null"

    invoke-direct {v7, v8}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 76
    :cond_1
    move-object v6, v0

    move v7, v1

    iput v7, v6, Lokhttp3/internal/http2/Http2Stream;->id:I

    .line 77
    move-object v6, v0

    move-object v7, v2

    iput-object v7, v6, Lokhttp3/internal/http2/Http2Stream;->connection:Lokhttp3/internal/http2/Http2Connection;

    .line 78
    move-object v6, v0

    move-object v7, v2

    iget-object v7, v7, Lokhttp3/internal/http2/Http2Connection;->peerSettings:Lokhttp3/internal/http2/Settings;

    .line 79
    invoke-virtual {v7}, Lokhttp3/internal/http2/Settings;->getInitialWindowSize()I

    move-result v7

    int-to-long v7, v7

    iput-wide v7, v6, Lokhttp3/internal/http2/Http2Stream;->bytesLeftInWriteWindow:J

    .line 80
    move-object v6, v0

    new-instance v7, Lokhttp3/internal/http2/Http2Stream$FramedDataSource;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v0

    move-object v10, v2

    iget-object v10, v10, Lokhttp3/internal/http2/Http2Connection;->okHttpSettings:Lokhttp3/internal/http2/Settings;

    .line 81
    invoke-virtual {v10}, Lokhttp3/internal/http2/Settings;->getInitialWindowSize()I

    move-result v10

    int-to-long v10, v10

    invoke-direct {v8, v9, v10, v11}, Lokhttp3/internal/http2/Http2Stream$FramedDataSource;-><init>(Lokhttp3/internal/http2/Http2Stream;J)V

    iput-object v7, v6, Lokhttp3/internal/http2/Http2Stream;->source:Lokhttp3/internal/http2/Http2Stream$FramedDataSource;

    .line 82
    move-object v6, v0

    new-instance v7, Lokhttp3/internal/http2/Http2Stream$FramedDataSink;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v0

    invoke-direct {v8, v9}, Lokhttp3/internal/http2/Http2Stream$FramedDataSink;-><init>(Lokhttp3/internal/http2/Http2Stream;)V

    iput-object v7, v6, Lokhttp3/internal/http2/Http2Stream;->sink:Lokhttp3/internal/http2/Http2Stream$FramedDataSink;

    .line 83
    move-object v6, v0

    iget-object v6, v6, Lokhttp3/internal/http2/Http2Stream;->source:Lokhttp3/internal/http2/Http2Stream$FramedDataSource;

    move v7, v4

    iput-boolean v7, v6, Lokhttp3/internal/http2/Http2Stream$FramedDataSource;->finished:Z

    .line 84
    move-object v6, v0

    iget-object v6, v6, Lokhttp3/internal/http2/Http2Stream;->sink:Lokhttp3/internal/http2/Http2Stream$FramedDataSink;

    move v7, v3

    iput-boolean v7, v6, Lokhttp3/internal/http2/Http2Stream$FramedDataSink;->finished:Z

    .line 85
    move-object v6, v0

    move-object v7, v5

    iput-object v7, v6, Lokhttp3/internal/http2/Http2Stream;->requestHeaders:Ljava/util/List;

    .line 86
    return-void
.end method

.method private closeInternal(Lokhttp3/internal/http2/ErrorCode;)Z
    .locals 7

    .prologue
    .line 235
    move-object v0, p0

    move-object v1, p1

    sget-boolean v4, Lokhttp3/internal/http2/Http2Stream;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    move-object v4, v0

    invoke-static {v4}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 236
    :cond_0
    move-object v4, v0

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    move-object v2, v5

    monitor-enter v4

    .line 237
    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Lokhttp3/internal/http2/Http2Stream;->errorCode:Lokhttp3/internal/http2/ErrorCode;

    if-eqz v4, :cond_1

    .line 238
    const/4 v4, 0x0

    move-object v5, v2

    monitor-exit v5

    move v0, v4

    .line 247
    :goto_0
    return v0

    .line 240
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Lokhttp3/internal/http2/Http2Stream;->source:Lokhttp3/internal/http2/Http2Stream$FramedDataSource;

    iget-boolean v4, v4, Lokhttp3/internal/http2/Http2Stream$FramedDataSource;->finished:Z

    if-eqz v4, :cond_2

    move-object v4, v0

    iget-object v4, v4, Lokhttp3/internal/http2/Http2Stream;->sink:Lokhttp3/internal/http2/Http2Stream$FramedDataSink;

    iget-boolean v4, v4, Lokhttp3/internal/http2/Http2Stream$FramedDataSink;->finished:Z

    if-eqz v4, :cond_2

    .line 241
    const/4 v4, 0x0

    move-object v5, v2

    monitor-exit v5

    move v0, v4

    goto :goto_0

    .line 243
    :cond_2
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lokhttp3/internal/http2/Http2Stream;->errorCode:Lokhttp3/internal/http2/ErrorCode;

    .line 244
    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    .line 245
    move-object v4, v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 246
    move-object v4, v0

    iget-object v4, v4, Lokhttp3/internal/http2/Http2Stream;->connection:Lokhttp3/internal/http2/Http2Connection;

    move-object v5, v0

    iget v5, v5, Lokhttp3/internal/http2/Http2Stream;->id:I

    invoke-virtual {v4, v5}, Lokhttp3/internal/http2/Http2Connection;->removeStream(I)Lokhttp3/internal/http2/Http2Stream;

    move-result-object v4

    .line 247
    const/4 v4, 0x1

    move v0, v4

    goto :goto_0

    .line 245
    :catchall_0
    move-exception v4

    move-object v3, v4

    move-object v4, v2

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v4, v3

    throw v4
.end method


# virtual methods
.method addBytesToWriteWindow(J)V
    .locals 9

    .prologue
    .line 551
    move-object v0, p0

    move-wide v1, p1

    move-object v3, v0

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    iget-wide v4, v4, Lokhttp3/internal/http2/Http2Stream;->bytesLeftInWriteWindow:J

    move-wide v6, v1

    add-long/2addr v4, v6

    iput-wide v4, v3, Lokhttp3/internal/http2/Http2Stream;->bytesLeftInWriteWindow:J

    .line 552
    move-wide v3, v1

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 553
    :cond_0
    return-void
.end method

.method cancelStreamIfNecessary()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 434
    move-object v0, p0

    sget-boolean v5, Lokhttp3/internal/http2/Http2Stream;->$assertionsDisabled:Z

    if-nez v5, :cond_0

    move-object v5, v0

    invoke-static {v5}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/AssertionError;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 437
    :cond_0
    move-object v5, v0

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    move-object v3, v6

    monitor-enter v5

    .line 438
    move-object v5, v0

    :try_start_0
    iget-object v5, v5, Lokhttp3/internal/http2/Http2Stream;->source:Lokhttp3/internal/http2/Http2Stream$FramedDataSource;

    iget-boolean v5, v5, Lokhttp3/internal/http2/Http2Stream$FramedDataSource;->finished:Z

    if-nez v5, :cond_3

    move-object v5, v0

    iget-object v5, v5, Lokhttp3/internal/http2/Http2Stream;->source:Lokhttp3/internal/http2/Http2Stream$FramedDataSource;

    iget-boolean v5, v5, Lokhttp3/internal/http2/Http2Stream$FramedDataSource;->closed:Z

    if-eqz v5, :cond_3

    move-object v5, v0

    iget-object v5, v5, Lokhttp3/internal/http2/Http2Stream;->sink:Lokhttp3/internal/http2/Http2Stream$FramedDataSink;

    iget-boolean v5, v5, Lokhttp3/internal/http2/Http2Stream$FramedDataSink;->finished:Z

    if-nez v5, :cond_1

    move-object v5, v0

    iget-object v5, v5, Lokhttp3/internal/http2/Http2Stream;->sink:Lokhttp3/internal/http2/Http2Stream$FramedDataSink;

    iget-boolean v5, v5, Lokhttp3/internal/http2/Http2Stream$FramedDataSink;->closed:Z

    if-eqz v5, :cond_3

    :cond_1
    const/4 v5, 0x1

    :goto_0
    move v2, v5

    .line 439
    move-object v5, v0

    invoke-virtual {v5}, Lokhttp3/internal/http2/Http2Stream;->isOpen()Z

    move-result v5

    move v1, v5

    .line 440
    move-object v5, v3

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 441
    move v5, v2

    if-eqz v5, :cond_4

    .line 446
    move-object v5, v0

    sget-object v6, Lokhttp3/internal/http2/ErrorCode;->CANCEL:Lokhttp3/internal/http2/ErrorCode;

    invoke-virtual {v5, v6}, Lokhttp3/internal/http2/Http2Stream;->close(Lokhttp3/internal/http2/ErrorCode;)V

    .line 450
    :cond_2
    :goto_1
    return-void

    .line 438
    :cond_3
    const/4 v5, 0x0

    goto :goto_0

    .line 440
    :catchall_0
    move-exception v5

    move-object v4, v5

    move-object v5, v3

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v5, v4

    throw v5

    .line 447
    :cond_4
    move v5, v1

    if-nez v5, :cond_2

    .line 448
    move-object v5, v0

    iget-object v5, v5, Lokhttp3/internal/http2/Http2Stream;->connection:Lokhttp3/internal/http2/Http2Connection;

    move-object v6, v0

    iget v6, v6, Lokhttp3/internal/http2/Http2Stream;->id:I

    invoke-virtual {v5, v6}, Lokhttp3/internal/http2/Http2Connection;->removeStream(I)Lokhttp3/internal/http2/Http2Stream;

    move-result-object v5

    goto :goto_1
.end method

.method checkOutNotClosed()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 556
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/internal/http2/Http2Stream;->sink:Lokhttp3/internal/http2/Http2Stream$FramedDataSink;

    iget-boolean v1, v1, Lokhttp3/internal/http2/Http2Stream$FramedDataSink;->closed:Z

    if-eqz v1, :cond_0

    .line 557
    new-instance v1, Ljava/io/IOException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "stream closed"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 558
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lokhttp3/internal/http2/Http2Stream;->sink:Lokhttp3/internal/http2/Http2Stream$FramedDataSink;

    iget-boolean v1, v1, Lokhttp3/internal/http2/Http2Stream$FramedDataSink;->finished:Z

    if-eqz v1, :cond_1

    .line 559
    new-instance v1, Ljava/io/IOException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "stream finished"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 560
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Lokhttp3/internal/http2/Http2Stream;->errorCode:Lokhttp3/internal/http2/ErrorCode;

    if-eqz v1, :cond_2

    .line 561
    new-instance v1, Lokhttp3/internal/http2/StreamResetException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    iget-object v3, v3, Lokhttp3/internal/http2/Http2Stream;->errorCode:Lokhttp3/internal/http2/ErrorCode;

    invoke-direct {v2, v3}, Lokhttp3/internal/http2/StreamResetException;-><init>(Lokhttp3/internal/http2/ErrorCode;)V

    throw v1

    .line 563
    :cond_2
    return-void
.end method

.method public close(Lokhttp3/internal/http2/ErrorCode;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 216
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lokhttp3/internal/http2/Http2Stream;->closeInternal(Lokhttp3/internal/http2/ErrorCode;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 220
    :goto_0
    return-void

    .line 219
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lokhttp3/internal/http2/Http2Stream;->connection:Lokhttp3/internal/http2/Http2Connection;

    move-object v3, v0

    iget v3, v3, Lokhttp3/internal/http2/Http2Stream;->id:I

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lokhttp3/internal/http2/Http2Connection;->writeSynReset(ILokhttp3/internal/http2/ErrorCode;)V

    .line 220
    goto :goto_0
.end method

.method public closeLater(Lokhttp3/internal/http2/ErrorCode;)V
    .locals 5

    .prologue
    .line 227
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lokhttp3/internal/http2/Http2Stream;->closeInternal(Lokhttp3/internal/http2/ErrorCode;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 231
    :goto_0
    return-void

    .line 230
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lokhttp3/internal/http2/Http2Stream;->connection:Lokhttp3/internal/http2/Http2Connection;

    move-object v3, v0

    iget v3, v3, Lokhttp3/internal/http2/Http2Stream;->id:I

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lokhttp3/internal/http2/Http2Connection;->writeSynResetLater(ILokhttp3/internal/http2/ErrorCode;)V

    .line 231
    goto :goto_0
.end method

.method public getConnection()Lokhttp3/internal/http2/Http2Connection;
    .locals 2

    .prologue
    .line 122
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/internal/http2/Http2Stream;->connection:Lokhttp3/internal/http2/Http2Connection;

    move-object v0, v1

    return-object v0
.end method

.method public declared-synchronized getErrorCode()Lokhttp3/internal/http2/ErrorCode;
    .locals 3

    .prologue
    .line 151
    move-object v0, p0

    move-object v2, p0

    monitor-enter v2

    move-object v1, v0

    :try_start_0
    iget-object v1, v1, Lokhttp3/internal/http2/Http2Stream;->errorCode:Lokhttp3/internal/http2/ErrorCode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    monitor-exit v2

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public getId()I
    .locals 2

    .prologue
    .line 89
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lokhttp3/internal/http2/Http2Stream;->id:I

    move v0, v1

    return v0
.end method

.method public getRequestHeaders()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/http2/Header;",
            ">;"
        }
    .end annotation

    .prologue
    .line 126
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/internal/http2/Http2Stream;->requestHeaders:Ljava/util/List;

    move-object v0, v1

    return-object v0
.end method

.method public declared-synchronized getResponseHeaders()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/http2/Header;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 134
    move-object v0, p0

    move-object v5, p0

    monitor-enter v5

    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lokhttp3/internal/http2/Http2Stream;->readTimeout:Lokhttp3/internal/http2/Http2Stream$StreamTimeout;

    invoke-virtual {v2}, Lokhttp3/internal/http2/Http2Stream$StreamTimeout;->enter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 136
    :goto_0
    move-object v2, v0

    :try_start_1
    iget-object v2, v2, Lokhttp3/internal/http2/Http2Stream;->responseHeaders:Ljava/util/List;

    if-nez v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lokhttp3/internal/http2/Http2Stream;->errorCode:Lokhttp3/internal/http2/ErrorCode;

    if-nez v2, :cond_0

    .line 137
    move-object v2, v0

    invoke-virtual {v2}, Lokhttp3/internal/http2/Http2Stream;->waitForIo()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 140
    :cond_0
    move-object v2, v0

    :try_start_2
    iget-object v2, v2, Lokhttp3/internal/http2/Http2Stream;->readTimeout:Lokhttp3/internal/http2/Http2Stream$StreamTimeout;

    invoke-virtual {v2}, Lokhttp3/internal/http2/Http2Stream$StreamTimeout;->exitAndThrowIfTimedOut()V

    .line 142
    move-object v2, v0

    iget-object v2, v2, Lokhttp3/internal/http2/Http2Stream;->responseHeaders:Ljava/util/List;

    if-eqz v2, :cond_1

    move-object v2, v0

    iget-object v2, v2, Lokhttp3/internal/http2/Http2Stream;->responseHeaders:Ljava/util/List;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v0, v2

    monitor-exit v5

    return-object v0

    .line 140
    :catchall_0
    move-exception v2

    move-object v1, v2

    move-object v2, v0

    :try_start_3
    iget-object v2, v2, Lokhttp3/internal/http2/Http2Stream;->readTimeout:Lokhttp3/internal/http2/Http2Stream$StreamTimeout;

    invoke-virtual {v2}, Lokhttp3/internal/http2/Http2Stream$StreamTimeout;->exitAndThrowIfTimedOut()V

    move-object v2, v1

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 134
    :catchall_1
    move-exception v0

    monitor-exit v5

    throw v0

    .line 143
    :cond_1
    :try_start_4
    new-instance v2, Lokhttp3/internal/http2/StreamResetException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    iget-object v4, v4, Lokhttp3/internal/http2/Http2Stream;->errorCode:Lokhttp3/internal/http2/ErrorCode;

    invoke-direct {v3, v4}, Lokhttp3/internal/http2/StreamResetException;-><init>(Lokhttp3/internal/http2/ErrorCode;)V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
.end method

.method public getSink()Lokio/Sink;
    .locals 7

    .prologue
    .line 203
    move-object v0, p0

    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v1, v4

    monitor-enter v3

    .line 204
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Lokhttp3/internal/http2/Http2Stream;->responseHeaders:Ljava/util/List;

    if-nez v3, :cond_0

    move-object v3, v0

    invoke-virtual {v3}, Lokhttp3/internal/http2/Http2Stream;->isLocallyInitiated()Z

    move-result v3

    if-nez v3, :cond_0

    .line 205
    new-instance v3, Ljava/lang/IllegalStateException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "reply before requesting the sink"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 207
    :catchall_0
    move-exception v3

    move-object v2, v3

    move-object v3, v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v2

    throw v3

    :cond_0
    move-object v3, v1

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 208
    move-object v3, v0

    iget-object v3, v3, Lokhttp3/internal/http2/Http2Stream;->sink:Lokhttp3/internal/http2/Http2Stream$FramedDataSink;

    move-object v0, v3

    return-object v0
.end method

.method public getSource()Lokio/Source;
    .locals 2

    .prologue
    .line 193
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/internal/http2/Http2Stream;->source:Lokhttp3/internal/http2/Http2Stream$FramedDataSource;

    move-object v0, v1

    return-object v0
.end method

.method public isLocallyInitiated()Z
    .locals 4

    .prologue
    .line 117
    move-object v0, p0

    move-object v2, v0

    iget v2, v2, Lokhttp3/internal/http2/Http2Stream;->id:I

    const/4 v3, 0x1

    and-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v1, v2

    .line 118
    move-object v2, v0

    iget-object v2, v2, Lokhttp3/internal/http2/Http2Stream;->connection:Lokhttp3/internal/http2/Http2Connection;

    iget-boolean v2, v2, Lokhttp3/internal/http2/Http2Connection;->client:Z

    move v3, v1

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    :goto_1
    move v0, v2

    return v0

    .line 117
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 118
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public declared-synchronized isOpen()Z
    .locals 3

    .prologue
    .line 104
    move-object v0, p0

    move-object v2, p0

    monitor-enter v2

    move-object v1, v0

    :try_start_0
    iget-object v1, v1, Lokhttp3/internal/http2/Http2Stream;->errorCode:Lokhttp3/internal/http2/ErrorCode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 105
    const/4 v1, 0x0

    move v0, v1

    .line 112
    :goto_0
    monitor-exit v2

    return v0

    .line 107
    :cond_0
    move-object v1, v0

    :try_start_1
    iget-object v1, v1, Lokhttp3/internal/http2/Http2Stream;->source:Lokhttp3/internal/http2/Http2Stream$FramedDataSource;

    iget-boolean v1, v1, Lokhttp3/internal/http2/Http2Stream$FramedDataSource;->finished:Z

    if-nez v1, :cond_1

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/internal/http2/Http2Stream;->source:Lokhttp3/internal/http2/Http2Stream$FramedDataSource;

    iget-boolean v1, v1, Lokhttp3/internal/http2/Http2Stream$FramedDataSource;->closed:Z

    if-eqz v1, :cond_3

    :cond_1
    move-object v1, v0

    iget-object v1, v1, Lokhttp3/internal/http2/Http2Stream;->sink:Lokhttp3/internal/http2/Http2Stream$FramedDataSink;

    iget-boolean v1, v1, Lokhttp3/internal/http2/Http2Stream$FramedDataSink;->finished:Z

    if-nez v1, :cond_2

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/internal/http2/Http2Stream;->sink:Lokhttp3/internal/http2/Http2Stream$FramedDataSink;

    iget-boolean v1, v1, Lokhttp3/internal/http2/Http2Stream$FramedDataSink;->closed:Z

    if-eqz v1, :cond_3

    :cond_2
    move-object v1, v0

    iget-object v1, v1, Lokhttp3/internal/http2/Http2Stream;->responseHeaders:Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_3

    .line 110
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0

    .line 112
    :cond_3
    const/4 v1, 0x1

    move v0, v1

    goto :goto_0

    .line 104
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public readTimeout()Lokio/Timeout;
    .locals 2

    .prologue
    .line 184
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/internal/http2/Http2Stream;->readTimeout:Lokhttp3/internal/http2/Http2Stream$StreamTimeout;

    move-object v0, v1

    return-object v0
.end method

.method receiveData(Lokio/BufferedSource;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 271
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    sget-boolean v3, Lokhttp3/internal/http2/Http2Stream;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    move-object v3, v0

    invoke-static {v3}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 272
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lokhttp3/internal/http2/Http2Stream;->source:Lokhttp3/internal/http2/Http2Stream$FramedDataSource;

    move-object v4, v1

    move v5, v2

    int-to-long v5, v5

    invoke-virtual {v3, v4, v5, v6}, Lokhttp3/internal/http2/Http2Stream$FramedDataSource;->receive(Lokio/BufferedSource;J)V

    .line 273
    return-void
.end method

.method receiveFin()V
    .locals 7

    .prologue
    .line 276
    move-object v0, p0

    sget-boolean v4, Lokhttp3/internal/http2/Http2Stream;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    move-object v4, v0

    invoke-static {v4}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 278
    :cond_0
    move-object v4, v0

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    move-object v2, v5

    monitor-enter v4

    .line 279
    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Lokhttp3/internal/http2/Http2Stream;->source:Lokhttp3/internal/http2/Http2Stream$FramedDataSource;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lokhttp3/internal/http2/Http2Stream$FramedDataSource;->finished:Z

    .line 280
    move-object v4, v0

    invoke-virtual {v4}, Lokhttp3/internal/http2/Http2Stream;->isOpen()Z

    move-result v4

    move v1, v4

    .line 281
    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    .line 282
    move-object v4, v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 283
    move v4, v1

    if-nez v4, :cond_1

    .line 284
    move-object v4, v0

    iget-object v4, v4, Lokhttp3/internal/http2/Http2Stream;->connection:Lokhttp3/internal/http2/Http2Connection;

    move-object v5, v0

    iget v5, v5, Lokhttp3/internal/http2/Http2Stream;->id:I

    invoke-virtual {v4, v5}, Lokhttp3/internal/http2/Http2Connection;->removeStream(I)Lokhttp3/internal/http2/Http2Stream;

    move-result-object v4

    .line 286
    :cond_1
    return-void

    .line 282
    :catchall_0
    move-exception v4

    move-object v3, v4

    move-object v4, v2

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v4, v3

    throw v4
.end method

.method receiveHeaders(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/http2/Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 251
    move-object v0, p0

    move-object v1, p1

    sget-boolean v6, Lokhttp3/internal/http2/Http2Stream;->$assertionsDisabled:Z

    if-nez v6, :cond_0

    move-object v6, v0

    invoke-static {v6}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    new-instance v6, Ljava/lang/AssertionError;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 252
    :cond_0
    const/4 v6, 0x1

    move v2, v6

    .line 253
    move-object v6, v0

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    move-object v3, v7

    monitor-enter v6

    .line 254
    move-object v6, v0

    :try_start_0
    iget-object v6, v6, Lokhttp3/internal/http2/Http2Stream;->responseHeaders:Ljava/util/List;

    if-nez v6, :cond_2

    .line 255
    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Lokhttp3/internal/http2/Http2Stream;->responseHeaders:Ljava/util/List;

    .line 256
    move-object v6, v0

    invoke-virtual {v6}, Lokhttp3/internal/http2/Http2Stream;->isOpen()Z

    move-result v6

    move v2, v6

    .line 257
    move-object v6, v0

    invoke-virtual {v6}, Ljava/lang/Object;->notifyAll()V

    .line 264
    :goto_0
    move-object v6, v3

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 265
    move v6, v2

    if-nez v6, :cond_1

    .line 266
    move-object v6, v0

    iget-object v6, v6, Lokhttp3/internal/http2/Http2Stream;->connection:Lokhttp3/internal/http2/Http2Connection;

    move-object v7, v0

    iget v7, v7, Lokhttp3/internal/http2/Http2Stream;->id:I

    invoke-virtual {v6, v7}, Lokhttp3/internal/http2/Http2Connection;->removeStream(I)Lokhttp3/internal/http2/Http2Stream;

    move-result-object v6

    .line 268
    :cond_1
    return-void

    .line 259
    :cond_2
    :try_start_1
    new-instance v6, Ljava/util/ArrayList;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v6

    .line 260
    move-object v6, v4

    move-object v7, v0

    iget-object v7, v7, Lokhttp3/internal/http2/Http2Stream;->responseHeaders:Ljava/util/List;

    invoke-interface {v6, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v6

    .line 261
    move-object v6, v4

    move-object v7, v1

    invoke-interface {v6, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v6

    .line 262
    move-object v6, v0

    move-object v7, v4

    iput-object v7, v6, Lokhttp3/internal/http2/Http2Stream;->responseHeaders:Ljava/util/List;

    goto :goto_0

    .line 264
    :catchall_0
    move-exception v6

    move-object v5, v6

    move-object v6, v3

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v6, v5

    throw v6
.end method

.method declared-synchronized receiveRstStream(Lokhttp3/internal/http2/ErrorCode;)V
    .locals 5

    .prologue
    .line 289
    move-object v0, p0

    move-object v1, p1

    move-object v4, p0

    monitor-enter v4

    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lokhttp3/internal/http2/Http2Stream;->errorCode:Lokhttp3/internal/http2/ErrorCode;

    if-nez v2, :cond_0

    .line 290
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lokhttp3/internal/http2/Http2Stream;->errorCode:Lokhttp3/internal/http2/ErrorCode;

    .line 291
    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 293
    :cond_0
    monitor-exit v4

    return-void

    .line 289
    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0
.end method

.method public reply(Ljava/util/List;Z)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/http2/Header;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 161
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    sget-boolean v6, Lokhttp3/internal/http2/Http2Stream;->$assertionsDisabled:Z

    if-nez v6, :cond_0

    move-object v6, v0

    invoke-static {v6}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    new-instance v6, Ljava/lang/AssertionError;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 162
    :cond_0
    const/4 v6, 0x0

    move v3, v6

    .line 163
    move-object v6, v0

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v4, v7

    monitor-enter v6

    .line 164
    move-object v6, v1

    if-nez v6, :cond_1

    .line 165
    :try_start_0
    new-instance v6, Ljava/lang/NullPointerException;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const-string v8, "responseHeaders == null"

    invoke-direct {v7, v8}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 175
    :catchall_0
    move-exception v6

    move-object v5, v6

    move-object v6, v4

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v6, v5

    throw v6

    .line 167
    :cond_1
    move-object v6, v0

    :try_start_1
    iget-object v6, v6, Lokhttp3/internal/http2/Http2Stream;->responseHeaders:Ljava/util/List;

    if-eqz v6, :cond_2

    .line 168
    new-instance v6, Ljava/lang/IllegalStateException;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const-string v8, "reply already sent"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 170
    :cond_2
    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Lokhttp3/internal/http2/Http2Stream;->responseHeaders:Ljava/util/List;

    .line 171
    move v6, v2

    if-nez v6, :cond_3

    .line 172
    move-object v6, v0

    iget-object v6, v6, Lokhttp3/internal/http2/Http2Stream;->sink:Lokhttp3/internal/http2/Http2Stream$FramedDataSink;

    const/4 v7, 0x1

    iput-boolean v7, v6, Lokhttp3/internal/http2/Http2Stream$FramedDataSink;->finished:Z

    .line 173
    const/4 v6, 0x1

    move v3, v6

    .line 175
    :cond_3
    move-object v6, v4

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 176
    move-object v6, v0

    iget-object v6, v6, Lokhttp3/internal/http2/Http2Stream;->connection:Lokhttp3/internal/http2/Http2Connection;

    move-object v7, v0

    iget v7, v7, Lokhttp3/internal/http2/Http2Stream;->id:I

    move v8, v3

    move-object v9, v1

    invoke-virtual {v6, v7, v8, v9}, Lokhttp3/internal/http2/Http2Connection;->writeSynReply(IZLjava/util/List;)V

    .line 178
    move v6, v3

    if-eqz v6, :cond_4

    .line 179
    move-object v6, v0

    iget-object v6, v6, Lokhttp3/internal/http2/Http2Stream;->connection:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v6}, Lokhttp3/internal/http2/Http2Connection;->flush()V

    .line 181
    :cond_4
    return-void
.end method

.method waitForIo()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    .prologue
    .line 571
    move-object v0, p0

    move-object v2, v0

    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 575
    return-void

    .line 572
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 573
    new-instance v2, Ljava/io/InterruptedIOException;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/io/InterruptedIOException;-><init>()V

    throw v2
.end method

.method public writeTimeout()Lokio/Timeout;
    .locals 2

    .prologue
    .line 188
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/internal/http2/Http2Stream;->writeTimeout:Lokhttp3/internal/http2/Http2Stream$StreamTimeout;

    move-object v0, v1

    return-object v0
.end method
