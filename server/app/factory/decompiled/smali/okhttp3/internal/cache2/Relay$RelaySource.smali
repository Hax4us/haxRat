.class Lokhttp3/internal/cache2/Relay$RelaySource;
.super Ljava/lang/Object;
.source "Relay.java"

# interfaces
.implements Lokio/Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/cache2/Relay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RelaySource"
.end annotation


# instance fields
.field private fileOperator:Lokhttp3/internal/cache2/FileOperator;

.field private sourcePos:J

.field final synthetic this$0:Lokhttp3/internal/cache2/Relay;

.field private final timeout:Lokio/Timeout;


# direct methods
.method constructor <init>(Lokhttp3/internal/cache2/Relay;)V
    .locals 7

    .prologue
    .line 224
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 225
    move-object v2, v0

    new-instance v3, Lokio/Timeout;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Lokio/Timeout;-><init>()V

    iput-object v3, v2, Lokhttp3/internal/cache2/Relay$RelaySource;->timeout:Lokio/Timeout;

    .line 228
    move-object v2, v0

    new-instance v3, Lokhttp3/internal/cache2/FileOperator;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    iget-object v5, v5, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    iget-object v5, v5, Lokhttp3/internal/cache2/Relay;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v5

    invoke-direct {v4, v5}, Lokhttp3/internal/cache2/FileOperator;-><init>(Ljava/nio/channels/FileChannel;)V

    iput-object v3, v2, Lokhttp3/internal/cache2/Relay$RelaySource;->fileOperator:Lokhttp3/internal/cache2/FileOperator;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 344
    move-object v0, p0

    move-object v4, v0

    iget-object v4, v4, Lokhttp3/internal/cache2/Relay$RelaySource;->fileOperator:Lokhttp3/internal/cache2/FileOperator;

    if-nez v4, :cond_0

    .line 359
    :goto_0
    return-void

    .line 345
    :cond_0
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Lokhttp3/internal/cache2/Relay$RelaySource;->fileOperator:Lokhttp3/internal/cache2/FileOperator;

    .line 347
    const/4 v4, 0x0

    move-object v1, v4

    .line 348
    move-object v4, v0

    iget-object v4, v4, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v2, v5

    monitor-enter v4

    .line 349
    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    iget v5, v5, Lokhttp3/internal/cache2/Relay;->sourceCount:I

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    iput v5, v4, Lokhttp3/internal/cache2/Relay;->sourceCount:I

    .line 350
    move-object v4, v0

    iget-object v4, v4, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    iget v4, v4, Lokhttp3/internal/cache2/Relay;->sourceCount:I

    if-nez v4, :cond_1

    .line 351
    move-object v4, v0

    iget-object v4, v4, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    iget-object v4, v4, Lokhttp3/internal/cache2/Relay;->file:Ljava/io/RandomAccessFile;

    move-object v1, v4

    .line 352
    move-object v4, v0

    iget-object v4, v4, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    const/4 v5, 0x0

    iput-object v5, v4, Lokhttp3/internal/cache2/Relay;->file:Ljava/io/RandomAccessFile;

    .line 354
    :cond_1
    move-object v4, v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 356
    move-object v4, v1

    if-eqz v4, :cond_2

    .line 357
    move-object v4, v1

    invoke-static {v4}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 359
    :cond_2
    goto :goto_0

    .line 354
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

.method public read(Lokio/Buffer;J)J
    .locals 30
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 252
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-wide/from16 v5, p2

    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-object v0, v0, Lokhttp3/internal/cache2/Relay$RelaySource;->fileOperator:Lokhttp3/internal/cache2/FileOperator;

    move-object/from16 v22, v0

    if-nez v22, :cond_0

    new-instance v22, Ljava/lang/IllegalStateException;

    move-object/from16 v28, v22

    move-object/from16 v22, v28

    move-object/from16 v23, v28

    const-string v24, "closed"

    invoke-direct/range {v23 .. v24}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 258
    :cond_0
    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-object v0, v0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    move-object/from16 v22, v0

    move-object/from16 v28, v22

    move-object/from16 v22, v28

    move-object/from16 v23, v28

    move-object/from16 v10, v23

    monitor-enter v22

    .line 260
    :goto_0
    move-object/from16 v22, v3

    :try_start_0
    move-object/from16 v0, v22

    iget-wide v0, v0, Lokhttp3/internal/cache2/Relay$RelaySource;->sourcePos:J

    move-wide/from16 v22, v0

    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-object v0, v0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-wide v0, v0, Lokhttp3/internal/cache2/Relay;->upstreamPos:J

    move-wide/from16 v24, v0

    move-wide/from16 v28, v24

    move-wide/from16 v24, v28

    move-wide/from16 v26, v28

    move-wide/from16 v7, v26

    cmp-long v22, v22, v24

    if-nez v22, :cond_3

    .line 262
    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-object v0, v0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-boolean v0, v0, Lokhttp3/internal/cache2/Relay;->complete:Z

    move/from16 v22, v0

    if-eqz v22, :cond_1

    const-wide/16 v22, -0x1

    move-object/from16 v24, v10

    monitor-exit v24

    move-wide/from16 v3, v22

    .line 330
    :goto_1
    return-wide v3

    .line 265
    :cond_1
    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-object v0, v0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lokhttp3/internal/cache2/Relay;->upstreamReader:Ljava/lang/Thread;

    move-object/from16 v22, v0

    if-eqz v22, :cond_2

    .line 266
    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-object v0, v0, Lokhttp3/internal/cache2/Relay$RelaySource;->timeout:Lokio/Timeout;

    move-object/from16 v22, v0

    move-object/from16 v23, v3

    move-object/from16 v0, v23

    iget-object v0, v0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Lokio/Timeout;->waitUntilNotified(Ljava/lang/Object;)V

    .line 267
    goto :goto_0

    .line 271
    :cond_2
    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-object v0, v0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    move-object/from16 v22, v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    iput-object v0, v1, Lokhttp3/internal/cache2/Relay;->upstreamReader:Ljava/lang/Thread;

    .line 272
    const/16 v22, 0x1

    move/from16 v9, v22

    .line 273
    move-object/from16 v22, v10

    monitor-exit v22
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 292
    :goto_2
    move/from16 v22, v9

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_5

    .line 293
    move-wide/from16 v22, v5

    move-wide/from16 v24, v7

    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-wide v0, v0, Lokhttp3/internal/cache2/Relay$RelaySource;->sourcePos:J

    move-wide/from16 v26, v0

    sub-long v24, v24, v26

    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v22

    move-wide/from16 v10, v22

    .line 294
    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-object v0, v0, Lokhttp3/internal/cache2/Relay$RelaySource;->fileOperator:Lokhttp3/internal/cache2/FileOperator;

    move-object/from16 v22, v0

    const-wide/16 v23, 0x20

    move-object/from16 v25, v3

    move-object/from16 v0, v25

    iget-wide v0, v0, Lokhttp3/internal/cache2/Relay$RelaySource;->sourcePos:J

    move-wide/from16 v25, v0

    add-long v23, v23, v25

    move-object/from16 v25, v4

    move-wide/from16 v26, v10

    invoke-virtual/range {v22 .. v27}, Lokhttp3/internal/cache2/FileOperator;->read(JLokio/Buffer;J)V

    .line 295
    move-object/from16 v22, v3

    move-object/from16 v28, v22

    move-object/from16 v22, v28

    move-object/from16 v23, v28

    move-object/from16 v0, v23

    iget-wide v0, v0, Lokhttp3/internal/cache2/Relay$RelaySource;->sourcePos:J

    move-wide/from16 v23, v0

    move-wide/from16 v25, v10

    add-long v23, v23, v25

    move-wide/from16 v0, v23

    move-object/from16 v2, v22

    iput-wide v0, v2, Lokhttp3/internal/cache2/Relay$RelaySource;->sourcePos:J

    .line 296
    move-wide/from16 v22, v10

    move-wide/from16 v3, v22

    goto/16 :goto_1

    .line 276
    :cond_3
    move-wide/from16 v22, v7

    move-object/from16 v24, v3

    :try_start_1
    move-object/from16 v0, v24

    iget-object v0, v0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lokhttp3/internal/cache2/Relay;->buffer:Lokio/Buffer;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lokio/Buffer;->size()J

    move-result-wide v24

    sub-long v22, v22, v24

    move-wide/from16 v11, v22

    .line 279
    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-wide v0, v0, Lokhttp3/internal/cache2/Relay$RelaySource;->sourcePos:J

    move-wide/from16 v22, v0

    move-wide/from16 v24, v11

    cmp-long v22, v22, v24

    if-gez v22, :cond_4

    .line 280
    const/16 v22, 0x2

    move/from16 v9, v22

    .line 281
    move-object/from16 v22, v10

    monitor-exit v22

    goto/16 :goto_2

    .line 285
    :cond_4
    move-wide/from16 v22, v5

    move-wide/from16 v24, v7

    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-wide v0, v0, Lokhttp3/internal/cache2/Relay$RelaySource;->sourcePos:J

    move-wide/from16 v26, v0

    sub-long v24, v24, v26

    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v22

    move-wide/from16 v13, v22

    .line 286
    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-object v0, v0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lokhttp3/internal/cache2/Relay;->buffer:Lokio/Buffer;

    move-object/from16 v22, v0

    move-object/from16 v23, v4

    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-wide v0, v0, Lokhttp3/internal/cache2/Relay$RelaySource;->sourcePos:J

    move-wide/from16 v24, v0

    move-wide/from16 v26, v11

    sub-long v24, v24, v26

    move-wide/from16 v26, v13

    invoke-virtual/range {v22 .. v27}, Lokio/Buffer;->copyTo(Lokio/Buffer;JJ)Lokio/Buffer;

    move-result-object v22

    .line 287
    move-object/from16 v22, v3

    move-object/from16 v28, v22

    move-object/from16 v22, v28

    move-object/from16 v23, v28

    move-object/from16 v0, v23

    iget-wide v0, v0, Lokhttp3/internal/cache2/Relay$RelaySource;->sourcePos:J

    move-wide/from16 v23, v0

    move-wide/from16 v25, v13

    add-long v23, v23, v25

    move-wide/from16 v0, v23

    move-object/from16 v2, v22

    iput-wide v0, v2, Lokhttp3/internal/cache2/Relay$RelaySource;->sourcePos:J

    .line 288
    move-wide/from16 v22, v13

    move-object/from16 v24, v10

    monitor-exit v24

    move-wide/from16 v3, v22

    goto/16 :goto_1

    .line 289
    :catchall_0
    move-exception v22

    move-object/from16 v15, v22

    move-object/from16 v22, v10

    monitor-exit v22
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v22, v15

    throw v22

    .line 302
    :cond_5
    move-object/from16 v22, v3

    :try_start_2
    move-object/from16 v0, v22

    iget-object v0, v0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lokhttp3/internal/cache2/Relay;->upstream:Lokio/Source;

    move-object/from16 v22, v0

    move-object/from16 v23, v3

    move-object/from16 v0, v23

    iget-object v0, v0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lokhttp3/internal/cache2/Relay;->upstreamBuffer:Lokio/Buffer;

    move-object/from16 v23, v0

    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-object v0, v0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-wide v0, v0, Lokhttp3/internal/cache2/Relay;->bufferMaxSize:J

    move-wide/from16 v24, v0

    invoke-interface/range {v22 .. v25}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v22

    move-wide/from16 v10, v22

    .line 305
    move-wide/from16 v22, v10

    const-wide/16 v24, -0x1

    cmp-long v22, v22, v24

    if-nez v22, :cond_6

    .line 306
    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-object v0, v0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    move-object/from16 v22, v0

    move-wide/from16 v23, v7

    invoke-virtual/range {v22 .. v24}, Lokhttp3/internal/cache2/Relay;->commit(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 307
    const-wide/16 v22, -0x1

    move-wide/from16 v12, v22

    .line 332
    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-object v0, v0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    move-object/from16 v22, v0

    move-object/from16 v28, v22

    move-object/from16 v22, v28

    move-object/from16 v23, v28

    move-object/from16 v14, v23

    monitor-enter v22

    .line 333
    move-object/from16 v22, v3

    :try_start_3
    move-object/from16 v0, v22

    iget-object v0, v0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    iput-object v0, v1, Lokhttp3/internal/cache2/Relay;->upstreamReader:Ljava/lang/Thread;

    .line 334
    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-object v0, v0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->notifyAll()V

    .line 335
    move-object/from16 v22, v14

    monitor-exit v22

    .line 307
    move-wide/from16 v22, v12

    move-wide/from16 v3, v22

    goto/16 :goto_1

    .line 335
    :catchall_1
    move-exception v22

    move-object/from16 v16, v22

    move-object/from16 v22, v14

    monitor-exit v22
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object/from16 v22, v16

    throw v22

    .line 311
    :cond_6
    move-wide/from16 v22, v10

    move-wide/from16 v24, v5

    :try_start_4
    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v22

    move-wide/from16 v12, v22

    .line 312
    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-object v0, v0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lokhttp3/internal/cache2/Relay;->upstreamBuffer:Lokio/Buffer;

    move-object/from16 v22, v0

    move-object/from16 v23, v4

    const-wide/16 v24, 0x0

    move-wide/from16 v26, v12

    invoke-virtual/range {v22 .. v27}, Lokio/Buffer;->copyTo(Lokio/Buffer;JJ)Lokio/Buffer;

    move-result-object v22

    .line 313
    move-object/from16 v22, v3

    move-object/from16 v28, v22

    move-object/from16 v22, v28

    move-object/from16 v23, v28

    move-object/from16 v0, v23

    iget-wide v0, v0, Lokhttp3/internal/cache2/Relay$RelaySource;->sourcePos:J

    move-wide/from16 v23, v0

    move-wide/from16 v25, v12

    add-long v23, v23, v25

    move-wide/from16 v0, v23

    move-object/from16 v2, v22

    iput-wide v0, v2, Lokhttp3/internal/cache2/Relay$RelaySource;->sourcePos:J

    .line 316
    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-object v0, v0, Lokhttp3/internal/cache2/Relay$RelaySource;->fileOperator:Lokhttp3/internal/cache2/FileOperator;

    move-object/from16 v22, v0

    const-wide/16 v23, 0x20

    move-wide/from16 v25, v7

    add-long v23, v23, v25

    move-object/from16 v25, v3

    move-object/from16 v0, v25

    iget-object v0, v0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lokhttp3/internal/cache2/Relay;->upstreamBuffer:Lokio/Buffer;

    move-object/from16 v25, v0

    .line 317
    invoke-virtual/range {v25 .. v25}, Lokio/Buffer;->clone()Lokio/Buffer;

    move-result-object v25

    move-wide/from16 v26, v10

    .line 316
    invoke-virtual/range {v22 .. v27}, Lokhttp3/internal/cache2/FileOperator;->write(JLokio/Buffer;J)V

    .line 319
    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-object v0, v0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    move-object/from16 v22, v0

    move-object/from16 v28, v22

    move-object/from16 v22, v28

    move-object/from16 v23, v28

    move-object/from16 v14, v23

    monitor-enter v22
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 321
    move-object/from16 v22, v3

    :try_start_5
    move-object/from16 v0, v22

    iget-object v0, v0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lokhttp3/internal/cache2/Relay;->buffer:Lokio/Buffer;

    move-object/from16 v22, v0

    move-object/from16 v23, v3

    move-object/from16 v0, v23

    iget-object v0, v0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lokhttp3/internal/cache2/Relay;->upstreamBuffer:Lokio/Buffer;

    move-object/from16 v23, v0

    move-wide/from16 v24, v10

    invoke-virtual/range {v22 .. v25}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    .line 322
    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-object v0, v0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lokhttp3/internal/cache2/Relay;->buffer:Lokio/Buffer;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lokio/Buffer;->size()J

    move-result-wide v22

    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-object v0, v0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-wide v0, v0, Lokhttp3/internal/cache2/Relay;->bufferMaxSize:J

    move-wide/from16 v24, v0

    cmp-long v22, v22, v24

    if-lez v22, :cond_7

    .line 323
    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-object v0, v0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lokhttp3/internal/cache2/Relay;->buffer:Lokio/Buffer;

    move-object/from16 v22, v0

    move-object/from16 v23, v3

    move-object/from16 v0, v23

    iget-object v0, v0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lokhttp3/internal/cache2/Relay;->buffer:Lokio/Buffer;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lokio/Buffer;->size()J

    move-result-wide v23

    move-object/from16 v25, v3

    move-object/from16 v0, v25

    iget-object v0, v0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-wide v0, v0, Lokhttp3/internal/cache2/Relay;->bufferMaxSize:J

    move-wide/from16 v25, v0

    sub-long v23, v23, v25

    invoke-virtual/range {v22 .. v24}, Lokio/Buffer;->skip(J)V

    .line 327
    :cond_7
    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-object v0, v0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    move-object/from16 v22, v0

    move-object/from16 v28, v22

    move-object/from16 v22, v28

    move-object/from16 v23, v28

    move-object/from16 v0, v23

    iget-wide v0, v0, Lokhttp3/internal/cache2/Relay;->upstreamPos:J

    move-wide/from16 v23, v0

    move-wide/from16 v25, v10

    add-long v23, v23, v25

    move-wide/from16 v0, v23

    move-object/from16 v2, v22

    iput-wide v0, v2, Lokhttp3/internal/cache2/Relay;->upstreamPos:J

    .line 328
    move-object/from16 v22, v14

    monitor-exit v22
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 330
    move-wide/from16 v22, v12

    move-wide/from16 v14, v22

    .line 332
    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-object v0, v0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    move-object/from16 v22, v0

    move-object/from16 v28, v22

    move-object/from16 v22, v28

    move-object/from16 v23, v28

    move-object/from16 v16, v23

    monitor-enter v22

    .line 333
    move-object/from16 v22, v3

    :try_start_6
    move-object/from16 v0, v22

    iget-object v0, v0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    iput-object v0, v1, Lokhttp3/internal/cache2/Relay;->upstreamReader:Ljava/lang/Thread;

    .line 334
    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-object v0, v0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->notifyAll()V

    .line 335
    move-object/from16 v22, v16

    monitor-exit v22
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 330
    move-wide/from16 v22, v14

    move-wide/from16 v3, v22

    goto/16 :goto_1

    .line 328
    :catchall_2
    move-exception v22

    move-object/from16 v17, v22

    move-object/from16 v22, v14

    :try_start_7
    monitor-exit v22
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-object/from16 v22, v17

    :try_start_8
    throw v22
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 332
    :catchall_3
    move-exception v22

    move-object/from16 v19, v22

    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-object v0, v0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    move-object/from16 v22, v0

    move-object/from16 v28, v22

    move-object/from16 v22, v28

    move-object/from16 v23, v28

    move-object/from16 v20, v23

    monitor-enter v22

    .line 333
    move-object/from16 v22, v3

    :try_start_9
    move-object/from16 v0, v22

    iget-object v0, v0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    iput-object v0, v1, Lokhttp3/internal/cache2/Relay;->upstreamReader:Ljava/lang/Thread;

    .line 334
    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-object v0, v0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->notifyAll()V

    .line 335
    move-object/from16 v22, v20

    monitor-exit v22
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    move-object/from16 v22, v19

    throw v22

    :catchall_4
    move-exception v22

    move-object/from16 v18, v22

    move-object/from16 v22, v16

    :try_start_a
    monitor-exit v22
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    move-object/from16 v22, v18

    throw v22

    :catchall_5
    move-exception v22

    move-object/from16 v21, v22

    move-object/from16 v22, v20

    :try_start_b
    monitor-exit v22
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    move-object/from16 v22, v21

    throw v22
.end method

.method public timeout()Lokio/Timeout;
    .locals 2

    .prologue
    .line 340
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->timeout:Lokio/Timeout;

    move-object v0, v1

    return-object v0
.end method
