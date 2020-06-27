.class Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;
.super Lokhttp3/internal/NamedRunnable;
.source "Http2Connection.java"

# interfaces
.implements Lokhttp3/internal/http2/Http2Reader$Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/http2/Http2Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ReaderRunnable"
.end annotation


# instance fields
.field final reader:Lokhttp3/internal/http2/Http2Reader;

.field final synthetic this$0:Lokhttp3/internal/http2/Http2Connection;


# direct methods
.method constructor <init>(Lokhttp3/internal/http2/Http2Connection;Lokhttp3/internal/http2/Http2Reader;)V
    .locals 10

    .prologue
    .line 556
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    .line 557
    move-object v3, v0

    const-string v4, "OkHttp %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v1

    iget-object v8, v8, Lokhttp3/internal/http2/Http2Connection;->hostname:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-direct {v3, v4, v5}, Lokhttp3/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 558
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->reader:Lokhttp3/internal/http2/Http2Reader;

    .line 559
    return-void
.end method

.method private applyAndAckSettings(Lokhttp3/internal/http2/Settings;)V
    .locals 12

    .prologue
    .line 695
    move-object v0, p0

    move-object v1, p1

    sget-object v2, Lokhttp3/internal/http2/Http2Connection;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable$3;

    move-object v11, v3

    move-object v3, v11

    move-object v4, v11

    move-object v5, v0

    const-string v6, "OkHttp %s ACK Settings"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x0

    move-object v10, v0

    iget-object v10, v10, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    iget-object v10, v10, Lokhttp3/internal/http2/Http2Connection;->hostname:Ljava/lang/String;

    aput-object v10, v8, v9

    move-object v8, v1

    invoke-direct {v4, v5, v6, v7, v8}, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable$3;-><init>(Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;Ljava/lang/String;[Ljava/lang/Object;Lokhttp3/internal/http2/Settings;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 703
    return-void
.end method


# virtual methods
.method public ackSettings()V
    .locals 0

    .prologue
    .line 707
    return-void
.end method

.method public alternateService(ILjava/lang/String;Lokio/ByteString;Ljava/lang/String;IJ)V
    .locals 0

    .prologue
    .line 770
    return-void
.end method

.method public data(ZILokio/BufferedSource;I)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 586
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v6, v0

    iget-object v6, v6, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    move v7, v2

    invoke-virtual {v6, v7}, Lokhttp3/internal/http2/Http2Connection;->pushedStream(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 587
    move-object v6, v0

    iget-object v6, v6, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    move v7, v2

    move-object v8, v3

    move v9, v4

    move v10, v1

    invoke-virtual {v6, v7, v8, v9, v10}, Lokhttp3/internal/http2/Http2Connection;->pushDataLater(ILokio/BufferedSource;IZ)V

    .line 600
    :goto_0
    return-void

    .line 590
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    move v7, v2

    invoke-virtual {v6, v7}, Lokhttp3/internal/http2/Http2Connection;->getStream(I)Lokhttp3/internal/http2/Http2Stream;

    move-result-object v6

    move-object v5, v6

    .line 591
    move-object v6, v5

    if-nez v6, :cond_1

    .line 592
    move-object v6, v0

    iget-object v6, v6, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    move v7, v2

    sget-object v8, Lokhttp3/internal/http2/ErrorCode;->PROTOCOL_ERROR:Lokhttp3/internal/http2/ErrorCode;

    invoke-virtual {v6, v7, v8}, Lokhttp3/internal/http2/Http2Connection;->writeSynResetLater(ILokhttp3/internal/http2/ErrorCode;)V

    .line 593
    move-object v6, v3

    move v7, v4

    int-to-long v7, v7

    invoke-interface {v6, v7, v8}, Lokio/BufferedSource;->skip(J)V

    .line 594
    goto :goto_0

    .line 596
    :cond_1
    move-object v6, v5

    move-object v7, v3

    move v8, v4

    invoke-virtual {v6, v7, v8}, Lokhttp3/internal/http2/Http2Stream;->receiveData(Lokio/BufferedSource;I)V

    .line 597
    move v6, v1

    if-eqz v6, :cond_2

    .line 598
    move-object v6, v5

    invoke-virtual {v6}, Lokhttp3/internal/http2/Http2Stream;->receiveFin()V

    .line 600
    :cond_2
    goto :goto_0
.end method

.method protected execute()V
    .locals 9

    .prologue
    .line 562
    move-object v0, p0

    sget-object v6, Lokhttp3/internal/http2/ErrorCode;->INTERNAL_ERROR:Lokhttp3/internal/http2/ErrorCode;

    move-object v1, v6

    .line 563
    sget-object v6, Lokhttp3/internal/http2/ErrorCode;->INTERNAL_ERROR:Lokhttp3/internal/http2/ErrorCode;

    move-object v2, v6

    .line 565
    move-object v6, v0

    :try_start_0
    iget-object v6, v6, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    iget-boolean v6, v6, Lokhttp3/internal/http2/Http2Connection;->client:Z

    if-nez v6, :cond_0

    .line 566
    move-object v6, v0

    iget-object v6, v6, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->reader:Lokhttp3/internal/http2/Http2Reader;

    invoke-virtual {v6}, Lokhttp3/internal/http2/Http2Reader;->readConnectionPreface()V

    .line 568
    :cond_0
    :goto_0
    move-object v6, v0

    iget-object v6, v6, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->reader:Lokhttp3/internal/http2/Http2Reader;

    move-object v7, v0

    invoke-virtual {v6, v7}, Lokhttp3/internal/http2/Http2Reader;->nextFrame(Lokhttp3/internal/http2/Http2Reader$Handler;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_0

    .line 570
    :cond_1
    sget-object v6, Lokhttp3/internal/http2/ErrorCode;->NO_ERROR:Lokhttp3/internal/http2/ErrorCode;

    move-object v1, v6

    .line 571
    sget-object v6, Lokhttp3/internal/http2/ErrorCode;->CANCEL:Lokhttp3/internal/http2/ErrorCode;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v6

    .line 577
    move-object v6, v0

    :try_start_1
    iget-object v6, v6, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    move-object v7, v1

    move-object v8, v2

    invoke-virtual {v6, v7, v8}, Lokhttp3/internal/http2/Http2Connection;->close(Lokhttp3/internal/http2/ErrorCode;Lokhttp3/internal/http2/ErrorCode;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 580
    :goto_1
    move-object v6, v0

    iget-object v6, v6, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->reader:Lokhttp3/internal/http2/Http2Reader;

    invoke-static {v6}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 582
    :goto_2
    return-void

    .line 578
    :catch_0
    move-exception v6

    move-object v3, v6

    goto :goto_1

    .line 572
    :catch_1
    move-exception v6

    move-object v3, v6

    .line 573
    :try_start_2
    sget-object v6, Lokhttp3/internal/http2/ErrorCode;->PROTOCOL_ERROR:Lokhttp3/internal/http2/ErrorCode;

    move-object v1, v6

    .line 574
    sget-object v6, Lokhttp3/internal/http2/ErrorCode;->PROTOCOL_ERROR:Lokhttp3/internal/http2/ErrorCode;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v2, v6

    .line 577
    move-object v6, v0

    :try_start_3
    iget-object v6, v6, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    move-object v7, v1

    move-object v8, v2

    invoke-virtual {v6, v7, v8}, Lokhttp3/internal/http2/Http2Connection;->close(Lokhttp3/internal/http2/ErrorCode;Lokhttp3/internal/http2/ErrorCode;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 580
    :goto_3
    move-object v6, v0

    iget-object v6, v6, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->reader:Lokhttp3/internal/http2/Http2Reader;

    invoke-static {v6}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 581
    goto :goto_2

    .line 578
    :catch_2
    move-exception v6

    move-object v3, v6

    goto :goto_3

    .line 576
    :catchall_0
    move-exception v6

    move-object v4, v6

    .line 577
    move-object v6, v0

    :try_start_4
    iget-object v6, v6, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    move-object v7, v1

    move-object v8, v2

    invoke-virtual {v6, v7, v8}, Lokhttp3/internal/http2/Http2Connection;->close(Lokhttp3/internal/http2/ErrorCode;Lokhttp3/internal/http2/ErrorCode;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 580
    :goto_4
    move-object v6, v0

    iget-object v6, v6, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->reader:Lokhttp3/internal/http2/Http2Reader;

    invoke-static {v6}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    move-object v6, v4

    throw v6

    .line 578
    :catch_3
    move-exception v6

    move-object v5, v6

    goto :goto_4
.end method

.method public goAway(ILokhttp3/internal/http2/ErrorCode;Lokio/ByteString;)V
    .locals 12

    .prologue
    .line 722
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v9, v3

    invoke-virtual {v9}, Lokio/ByteString;->size()I

    move-result v9

    if-lez v9, :cond_0

    .line 727
    :cond_0
    move-object v9, v0

    iget-object v9, v9, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    move-object v11, v9

    move-object v9, v11

    move-object v10, v11

    move-object v5, v10

    monitor-enter v9

    .line 728
    move-object v9, v0

    :try_start_0
    iget-object v9, v9, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    iget-object v9, v9, Lokhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v9

    move-object v10, v0

    iget-object v10, v10, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    iget-object v10, v10, Lokhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->size()I

    move-result v10

    new-array v10, v10, [Lokhttp3/internal/http2/Http2Stream;

    invoke-interface {v9, v10}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Lokhttp3/internal/http2/Http2Stream;

    move-object v4, v9

    .line 729
    move-object v9, v0

    iget-object v9, v9, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    const/4 v10, 0x1

    iput-boolean v10, v9, Lokhttp3/internal/http2/Http2Connection;->shutdown:Z

    .line 730
    move-object v9, v5

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 733
    move-object v9, v4

    move-object v5, v9

    move-object v9, v5

    array-length v9, v9

    move v6, v9

    const/4 v9, 0x0

    move v7, v9

    :goto_0
    move v9, v7

    move v10, v6

    if-ge v9, v10, :cond_2

    move-object v9, v5

    move v10, v7

    aget-object v9, v9, v10

    move-object v8, v9

    .line 734
    move-object v9, v8

    invoke-virtual {v9}, Lokhttp3/internal/http2/Http2Stream;->getId()I

    move-result v9

    move v10, v1

    if-le v9, v10, :cond_1

    move-object v9, v8

    invoke-virtual {v9}, Lokhttp3/internal/http2/Http2Stream;->isLocallyInitiated()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 735
    move-object v9, v8

    sget-object v10, Lokhttp3/internal/http2/ErrorCode;->REFUSED_STREAM:Lokhttp3/internal/http2/ErrorCode;

    invoke-virtual {v9, v10}, Lokhttp3/internal/http2/Http2Stream;->receiveRstStream(Lokhttp3/internal/http2/ErrorCode;)V

    .line 736
    move-object v9, v0

    iget-object v9, v9, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    move-object v10, v8

    invoke-virtual {v10}, Lokhttp3/internal/http2/Http2Stream;->getId()I

    move-result v10

    invoke-virtual {v9, v10}, Lokhttp3/internal/http2/Http2Connection;->removeStream(I)Lokhttp3/internal/http2/Http2Stream;

    move-result-object v9

    .line 733
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 730
    :catchall_0
    move-exception v9

    move-object v6, v9

    move-object v9, v5

    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v9, v6

    throw v9

    .line 739
    :cond_2
    return-void
.end method

.method public headers(ZIILjava/util/List;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZII",
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/http2/Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 604
    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object v10, v1

    iget-object v10, v10, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    move v11, v3

    invoke-virtual {v10, v11}, Lokhttp3/internal/http2/Http2Connection;->pushedStream(I)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 605
    move-object v10, v1

    iget-object v10, v10, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    move v11, v3

    move-object v12, v5

    move v13, v2

    invoke-virtual {v10, v11, v12, v13}, Lokhttp3/internal/http2/Http2Connection;->pushHeadersLater(ILjava/util/List;Z)V

    .line 647
    :goto_0
    return-void

    .line 609
    :cond_0
    move-object v10, v1

    iget-object v10, v10, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    move-object/from16 v19, v10

    move-object/from16 v10, v19

    move-object/from16 v11, v19

    move-object v7, v11

    monitor-enter v10

    .line 611
    move-object v10, v1

    :try_start_0
    iget-object v10, v10, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    iget-boolean v10, v10, Lokhttp3/internal/http2/Http2Connection;->shutdown:Z

    if-eqz v10, :cond_1

    move-object v10, v7

    monitor-exit v10

    goto :goto_0

    .line 613
    :cond_1
    move-object v10, v1

    iget-object v10, v10, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    move v11, v3

    invoke-virtual {v10, v11}, Lokhttp3/internal/http2/Http2Connection;->getStream(I)Lokhttp3/internal/http2/Http2Stream;

    move-result-object v10

    move-object v6, v10

    .line 615
    move-object v10, v6

    if-nez v10, :cond_4

    .line 617
    move v10, v3

    move-object v11, v1

    iget-object v11, v11, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    iget v11, v11, Lokhttp3/internal/http2/Http2Connection;->lastGoodStreamId:I

    if-gt v10, v11, :cond_2

    move-object v10, v7

    monitor-exit v10

    goto :goto_0

    .line 620
    :cond_2
    move v10, v3

    const/4 v11, 0x2

    rem-int/lit8 v10, v10, 0x2

    move-object v11, v1

    iget-object v11, v11, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    iget v11, v11, Lokhttp3/internal/http2/Http2Connection;->nextStreamId:I

    const/4 v12, 0x2

    rem-int/lit8 v11, v11, 0x2

    if-ne v10, v11, :cond_3

    move-object v10, v7

    monitor-exit v10

    goto :goto_0

    .line 623
    :cond_3
    new-instance v10, Lokhttp3/internal/http2/Http2Stream;

    move-object/from16 v19, v10

    move-object/from16 v10, v19

    move-object/from16 v11, v19

    move v12, v3

    move-object v13, v1

    iget-object v13, v13, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    const/4 v14, 0x0

    move v15, v2

    move-object/from16 v16, v5

    invoke-direct/range {v11 .. v16}, Lokhttp3/internal/http2/Http2Stream;-><init>(ILokhttp3/internal/http2/Http2Connection;ZZLjava/util/List;)V

    move-object v8, v10

    .line 625
    move-object v10, v1

    iget-object v10, v10, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    move v11, v3

    iput v11, v10, Lokhttp3/internal/http2/Http2Connection;->lastGoodStreamId:I

    .line 626
    move-object v10, v1

    iget-object v10, v10, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    iget-object v10, v10, Lokhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    move v11, v3

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v12, v8

    invoke-interface {v10, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 627
    sget-object v10, Lokhttp3/internal/http2/Http2Connection;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v11, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable$1;

    move-object/from16 v19, v11

    move-object/from16 v11, v19

    move-object/from16 v12, v19

    move-object v13, v1

    const-string v14, "OkHttp %s stream %d"

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    move-object/from16 v19, v15

    move-object/from16 v15, v19

    move-object/from16 v16, v19

    const/16 v17, 0x0

    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget-object v0, v0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lokhttp3/internal/http2/Http2Connection;->hostname:Ljava/lang/String;

    move-object/from16 v18, v0

    aput-object v18, v16, v17

    move-object/from16 v19, v15

    move-object/from16 v15, v19

    move-object/from16 v16, v19

    const/16 v17, 0x1

    move/from16 v18, v3

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    move-object/from16 v16, v8

    invoke-direct/range {v12 .. v16}, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable$1;-><init>(Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;Ljava/lang/String;[Ljava/lang/Object;Lokhttp3/internal/http2/Http2Stream;)V

    invoke-interface {v10, v11}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 640
    move-object v10, v7

    monitor-exit v10

    goto/16 :goto_0

    .line 642
    :cond_4
    move-object v10, v7

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 645
    move-object v10, v6

    move-object v11, v5

    invoke-virtual {v10, v11}, Lokhttp3/internal/http2/Http2Stream;->receiveHeaders(Ljava/util/List;)V

    .line 646
    move v10, v2

    if-eqz v10, :cond_5

    move-object v10, v6

    invoke-virtual {v10}, Lokhttp3/internal/http2/Http2Stream;->receiveFin()V

    .line 647
    :cond_5
    goto/16 :goto_0

    .line 642
    :catchall_0
    move-exception v10

    move-object v9, v10

    move-object v10, v7

    :try_start_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v10, v9

    throw v10
.end method

.method public ping(ZII)V
    .locals 10

    .prologue
    .line 710
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, v1

    if-eqz v5, :cond_1

    .line 711
    move-object v5, v0

    iget-object v5, v5, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    move v6, v2

    invoke-virtual {v5, v6}, Lokhttp3/internal/http2/Http2Connection;->removePing(I)Lokhttp3/internal/http2/Ping;

    move-result-object v5

    move-object v4, v5

    .line 712
    move-object v5, v4

    if-eqz v5, :cond_0

    .line 713
    move-object v5, v4

    invoke-virtual {v5}, Lokhttp3/internal/http2/Ping;->receive()V

    .line 719
    :cond_0
    :goto_0
    return-void

    .line 717
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    const/4 v6, 0x1

    move v7, v2

    move v8, v3

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v7, v8, v9}, Lokhttp3/internal/http2/Http2Connection;->writePingLater(ZIILokhttp3/internal/http2/Ping;)V

    goto :goto_0
.end method

.method public priority(IIIZ)V
    .locals 0

    .prologue
    .line 760
    return-void
.end method

.method public pushPromise(IILjava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/http2/Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 764
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, v0

    iget-object v4, v4, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    move v5, v2

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Lokhttp3/internal/http2/Http2Connection;->pushRequestLater(ILjava/util/List;)V

    .line 765
    return-void
.end method

.method public rstStream(ILokhttp3/internal/http2/ErrorCode;)V
    .locals 7

    .prologue
    .line 650
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, v0

    iget-object v4, v4, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    move v5, v1

    invoke-virtual {v4, v5}, Lokhttp3/internal/http2/Http2Connection;->pushedStream(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 651
    move-object v4, v0

    iget-object v4, v4, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    move v5, v1

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Lokhttp3/internal/http2/Http2Connection;->pushResetLater(ILokhttp3/internal/http2/ErrorCode;)V

    .line 658
    :goto_0
    return-void

    .line 654
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    move v5, v1

    invoke-virtual {v4, v5}, Lokhttp3/internal/http2/Http2Connection;->removeStream(I)Lokhttp3/internal/http2/Http2Stream;

    move-result-object v4

    move-object v3, v4

    .line 655
    move-object v4, v3

    if-eqz v4, :cond_1

    .line 656
    move-object v4, v3

    move-object v5, v2

    invoke-virtual {v4, v5}, Lokhttp3/internal/http2/Http2Stream;->receiveRstStream(Lokhttp3/internal/http2/ErrorCode;)V

    .line 658
    :cond_1
    goto :goto_0
.end method

.method public settings(ZLokhttp3/internal/http2/Settings;)V
    .locals 23

    .prologue
    .line 661
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    const-wide/16 v13, 0x0

    move-wide v4, v13

    .line 662
    const/4 v13, 0x0

    move-object v6, v13

    .line 663
    move-object v13, v1

    iget-object v13, v13, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    move-object/from16 v22, v13

    move-object/from16 v13, v22

    move-object/from16 v14, v22

    move-object v7, v14

    monitor-enter v13

    .line 664
    move-object v13, v1

    :try_start_0
    iget-object v13, v13, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    iget-object v13, v13, Lokhttp3/internal/http2/Http2Connection;->peerSettings:Lokhttp3/internal/http2/Settings;

    invoke-virtual {v13}, Lokhttp3/internal/http2/Settings;->getInitialWindowSize()I

    move-result v13

    move v8, v13

    .line 665
    move v13, v2

    if-eqz v13, :cond_0

    move-object v13, v1

    iget-object v13, v13, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    iget-object v13, v13, Lokhttp3/internal/http2/Http2Connection;->peerSettings:Lokhttp3/internal/http2/Settings;

    invoke-virtual {v13}, Lokhttp3/internal/http2/Settings;->clear()V

    .line 666
    :cond_0
    move-object v13, v1

    iget-object v13, v13, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    iget-object v13, v13, Lokhttp3/internal/http2/Http2Connection;->peerSettings:Lokhttp3/internal/http2/Settings;

    move-object v14, v3

    invoke-virtual {v13, v14}, Lokhttp3/internal/http2/Settings;->merge(Lokhttp3/internal/http2/Settings;)V

    .line 667
    move-object v13, v1

    move-object v14, v3

    invoke-direct {v13, v14}, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->applyAndAckSettings(Lokhttp3/internal/http2/Settings;)V

    .line 668
    move-object v13, v1

    iget-object v13, v13, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    iget-object v13, v13, Lokhttp3/internal/http2/Http2Connection;->peerSettings:Lokhttp3/internal/http2/Settings;

    invoke-virtual {v13}, Lokhttp3/internal/http2/Settings;->getInitialWindowSize()I

    move-result v13

    move v9, v13

    .line 669
    move v13, v9

    const/4 v14, -0x1

    if-eq v13, v14, :cond_2

    move v13, v9

    move v14, v8

    if-eq v13, v14, :cond_2

    .line 670
    move v13, v9

    move v14, v8

    sub-int/2addr v13, v14

    int-to-long v13, v13

    move-wide v4, v13

    .line 671
    move-object v13, v1

    iget-object v13, v13, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    iget-boolean v13, v13, Lokhttp3/internal/http2/Http2Connection;->receivedInitialPeerSettings:Z

    if-nez v13, :cond_1

    .line 672
    move-object v13, v1

    iget-object v13, v13, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    move-wide v14, v4

    invoke-virtual {v13, v14, v15}, Lokhttp3/internal/http2/Http2Connection;->addBytesToWriteWindow(J)V

    .line 673
    move-object v13, v1

    iget-object v13, v13, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    const/4 v14, 0x1

    iput-boolean v14, v13, Lokhttp3/internal/http2/Http2Connection;->receivedInitialPeerSettings:Z

    .line 675
    :cond_1
    move-object v13, v1

    iget-object v13, v13, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    iget-object v13, v13, Lokhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    invoke-interface {v13}, Ljava/util/Map;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_2

    .line 676
    move-object v13, v1

    iget-object v13, v13, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    iget-object v13, v13, Lokhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    invoke-interface {v13}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v13

    move-object v14, v1

    iget-object v14, v14, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    iget-object v14, v14, Lokhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    invoke-interface {v14}, Ljava/util/Map;->size()I

    move-result v14

    new-array v14, v14, [Lokhttp3/internal/http2/Http2Stream;

    invoke-interface {v13, v14}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Lokhttp3/internal/http2/Http2Stream;

    move-object v6, v13

    .line 679
    :cond_2
    sget-object v13, Lokhttp3/internal/http2/Http2Connection;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v14, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable$2;

    move-object/from16 v22, v14

    move-object/from16 v14, v22

    move-object/from16 v15, v22

    move-object/from16 v16, v1

    const-string v17, "OkHttp %s settings"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    move-object/from16 v22, v18

    move-object/from16 v18, v22

    move-object/from16 v19, v22

    const/16 v20, 0x0

    move-object/from16 v21, v1

    move-object/from16 v0, v21

    iget-object v0, v0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lokhttp3/internal/http2/Http2Connection;->hostname:Ljava/lang/String;

    move-object/from16 v21, v0

    aput-object v21, v19, v20

    invoke-direct/range {v15 .. v18}, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable$2;-><init>(Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v13, v14}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 684
    move-object v13, v7

    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 685
    move-object v13, v6

    if-eqz v13, :cond_3

    move-wide v13, v4

    const-wide/16 v15, 0x0

    cmp-long v13, v13, v15

    if-eqz v13, :cond_3

    .line 686
    move-object v13, v6

    move-object v7, v13

    move-object v13, v7

    array-length v13, v13

    move v8, v13

    const/4 v13, 0x0

    move v9, v13

    :goto_0
    move v13, v9

    move v14, v8

    if-ge v13, v14, :cond_3

    move-object v13, v7

    move v14, v9

    aget-object v13, v13, v14

    move-object v10, v13

    .line 687
    move-object v13, v10

    move-object/from16 v22, v13

    move-object/from16 v13, v22

    move-object/from16 v14, v22

    move-object v11, v14

    monitor-enter v13

    .line 688
    move-object v13, v10

    move-wide v14, v4

    :try_start_1
    invoke-virtual {v13, v14, v15}, Lokhttp3/internal/http2/Http2Stream;->addBytesToWriteWindow(J)V

    .line 689
    move-object v13, v11

    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 686
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 684
    :catchall_0
    move-exception v13

    move-object v10, v13

    move-object v13, v7

    :try_start_2
    monitor-exit v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v13, v10

    throw v13

    .line 689
    :catchall_1
    move-exception v13

    move-object v12, v13

    move-object v13, v11

    :try_start_3
    monitor-exit v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v13, v12

    throw v13

    .line 692
    :cond_3
    return-void
.end method

.method public windowUpdate(IJ)V
    .locals 13

    .prologue
    .line 742
    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move v7, v1

    if-nez v7, :cond_1

    .line 743
    move-object v7, v0

    iget-object v7, v7, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v4, v8

    monitor-enter v7

    .line 744
    move-object v7, v0

    :try_start_0
    iget-object v7, v7, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    iget-wide v8, v8, Lokhttp3/internal/http2/Http2Connection;->bytesLeftInWriteWindow:J

    move-wide v10, v2

    add-long/2addr v8, v10

    iput-wide v8, v7, Lokhttp3/internal/http2/Http2Connection;->bytesLeftInWriteWindow:J

    .line 745
    move-object v7, v0

    iget-object v7, v7, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v7}, Ljava/lang/Object;->notifyAll()V

    .line 746
    move-object v7, v4

    monitor-exit v7

    .line 755
    :cond_0
    :goto_0
    return-void

    .line 746
    :catchall_0
    move-exception v7

    move-object v5, v7

    move-object v7, v4

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v7, v5

    throw v7

    .line 748
    :cond_1
    move-object v7, v0

    iget-object v7, v7, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    move v8, v1

    invoke-virtual {v7, v8}, Lokhttp3/internal/http2/Http2Connection;->getStream(I)Lokhttp3/internal/http2/Http2Stream;

    move-result-object v7

    move-object v4, v7

    .line 749
    move-object v7, v4

    if-eqz v7, :cond_0

    .line 750
    move-object v7, v4

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v5, v8

    monitor-enter v7

    .line 751
    move-object v7, v4

    move-wide v8, v2

    :try_start_1
    invoke-virtual {v7, v8, v9}, Lokhttp3/internal/http2/Http2Stream;->addBytesToWriteWindow(J)V

    .line 752
    move-object v7, v5

    monitor-exit v7

    goto :goto_0

    :catchall_1
    move-exception v7

    move-object v6, v7

    move-object v7, v5

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v7, v6

    throw v7
.end method
