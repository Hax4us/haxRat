.class final Lokhttp3/internal/ws/WebSocketWriter$FrameSink;
.super Ljava/lang/Object;
.source "WebSocketWriter.java"

# interfaces
.implements Lokio/Sink;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/ws/WebSocketWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "FrameSink"
.end annotation


# instance fields
.field closed:Z

.field contentLength:J

.field formatOpcode:I

.field isFirstFrame:Z

.field final synthetic this$0:Lokhttp3/internal/ws/WebSocketWriter;


# direct methods
.method constructor <init>(Lokhttp3/internal/ws/WebSocketWriter;)V
    .locals 4

    .prologue
    .line 220
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;->this$0:Lokhttp3/internal/ws/WebSocketWriter;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 260
    move-object v0, p0

    move-object v3, v0

    iget-boolean v3, v3, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;->closed:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/io/IOException;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    const-string v5, "closed"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 262
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;->this$0:Lokhttp3/internal/ws/WebSocketWriter;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    move-object v1, v4

    monitor-enter v3

    .line 263
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;->this$0:Lokhttp3/internal/ws/WebSocketWriter;

    move-object v4, v0

    iget v4, v4, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;->formatOpcode:I

    move-object v5, v0

    iget-object v5, v5, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;->this$0:Lokhttp3/internal/ws/WebSocketWriter;

    iget-object v5, v5, Lokhttp3/internal/ws/WebSocketWriter;->buffer:Lokio/Buffer;

    invoke-virtual {v5}, Lokio/Buffer;->size()J

    move-result-wide v5

    move-object v7, v0

    iget-boolean v7, v7, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;->isFirstFrame:Z

    const/4 v8, 0x1

    invoke-virtual/range {v3 .. v8}, Lokhttp3/internal/ws/WebSocketWriter;->writeMessageFrameSynchronized(IJZZ)V

    .line 264
    move-object v3, v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 265
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;->closed:Z

    .line 266
    move-object v3, v0

    iget-object v3, v3, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;->this$0:Lokhttp3/internal/ws/WebSocketWriter;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lokhttp3/internal/ws/WebSocketWriter;->activeWriter:Z

    .line 267
    return-void

    .line 264
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

.method public flush()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 246
    move-object v0, p0

    move-object v3, v0

    iget-boolean v3, v3, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;->closed:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/io/IOException;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    const-string v5, "closed"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 248
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;->this$0:Lokhttp3/internal/ws/WebSocketWriter;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    move-object v1, v4

    monitor-enter v3

    .line 249
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;->this$0:Lokhttp3/internal/ws/WebSocketWriter;

    move-object v4, v0

    iget v4, v4, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;->formatOpcode:I

    move-object v5, v0

    iget-object v5, v5, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;->this$0:Lokhttp3/internal/ws/WebSocketWriter;

    iget-object v5, v5, Lokhttp3/internal/ws/WebSocketWriter;->buffer:Lokio/Buffer;

    invoke-virtual {v5}, Lokio/Buffer;->size()J

    move-result-wide v5

    move-object v7, v0

    iget-boolean v7, v7, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;->isFirstFrame:Z

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Lokhttp3/internal/ws/WebSocketWriter;->writeMessageFrameSynchronized(IJZZ)V

    .line 250
    move-object v3, v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 251
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;->isFirstFrame:Z

    .line 252
    return-void

    .line 250
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

.method public timeout()Lokio/Timeout;
    .locals 2

    .prologue
    .line 255
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;->this$0:Lokhttp3/internal/ws/WebSocketWriter;

    iget-object v1, v1, Lokhttp3/internal/ws/WebSocketWriter;->sink:Lokio/BufferedSink;

    invoke-interface {v1}, Lokio/BufferedSink;->timeout()Lokio/Timeout;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public write(Lokio/Buffer;J)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 227
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-object v9, v0

    iget-boolean v9, v9, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;->closed:Z

    if-eqz v9, :cond_0

    new-instance v9, Ljava/io/IOException;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    const-string v11, "closed"

    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 229
    :cond_0
    move-object v9, v0

    iget-object v9, v9, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;->this$0:Lokhttp3/internal/ws/WebSocketWriter;

    iget-object v9, v9, Lokhttp3/internal/ws/WebSocketWriter;->buffer:Lokio/Buffer;

    move-object v10, v1

    move-wide v11, v2

    invoke-virtual {v9, v10, v11, v12}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    .line 232
    move-object v9, v0

    iget-boolean v9, v9, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;->isFirstFrame:Z

    if-eqz v9, :cond_2

    move-object v9, v0

    iget-wide v9, v9, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;->contentLength:J

    const-wide/16 v11, -0x1

    cmp-long v9, v9, v11

    if-eqz v9, :cond_2

    move-object v9, v0

    iget-object v9, v9, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;->this$0:Lokhttp3/internal/ws/WebSocketWriter;

    iget-object v9, v9, Lokhttp3/internal/ws/WebSocketWriter;->buffer:Lokio/Buffer;

    .line 234
    invoke-virtual {v9}, Lokio/Buffer;->size()J

    move-result-wide v9

    move-object v11, v0

    iget-wide v11, v11, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;->contentLength:J

    const-wide/16 v13, 0x2000

    sub-long/2addr v11, v13

    cmp-long v9, v9, v11

    if-lez v9, :cond_2

    const/4 v9, 0x1

    :goto_0
    move v4, v9

    .line 236
    move-object v9, v0

    iget-object v9, v9, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;->this$0:Lokhttp3/internal/ws/WebSocketWriter;

    iget-object v9, v9, Lokhttp3/internal/ws/WebSocketWriter;->buffer:Lokio/Buffer;

    invoke-virtual {v9}, Lokio/Buffer;->completeSegmentByteCount()J

    move-result-wide v9

    move-wide v5, v9

    .line 237
    move-wide v9, v5

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-lez v9, :cond_1

    move v9, v4

    if-nez v9, :cond_1

    .line 238
    move-object v9, v0

    iget-object v9, v9, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;->this$0:Lokhttp3/internal/ws/WebSocketWriter;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    move-object v7, v10

    monitor-enter v9

    .line 239
    move-object v9, v0

    :try_start_0
    iget-object v9, v9, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;->this$0:Lokhttp3/internal/ws/WebSocketWriter;

    move-object v10, v0

    iget v10, v10, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;->formatOpcode:I

    move-wide v11, v5

    move-object v13, v0

    iget-boolean v13, v13, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;->isFirstFrame:Z

    const/4 v14, 0x0

    invoke-virtual/range {v9 .. v14}, Lokhttp3/internal/ws/WebSocketWriter;->writeMessageFrameSynchronized(IJZZ)V

    .line 240
    move-object v9, v7

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 241
    move-object v9, v0

    const/4 v10, 0x0

    iput-boolean v10, v9, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;->isFirstFrame:Z

    .line 243
    :cond_1
    return-void

    .line 234
    :cond_2
    const/4 v9, 0x0

    goto :goto_0

    .line 240
    :catchall_0
    move-exception v9

    move-object v8, v9

    move-object v9, v7

    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v9, v8

    throw v9
.end method
