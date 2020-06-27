.class final Lokhttp3/internal/ws/WebSocketWriter;
.super Ljava/lang/Object;
.source "WebSocketWriter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/ws/WebSocketWriter$FrameSink;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field activeWriter:Z

.field final buffer:Lokio/Buffer;

.field final frameSink:Lokhttp3/internal/ws/WebSocketWriter$FrameSink;

.field final isClient:Z

.field final maskBuffer:[B

.field final maskKey:[B

.field final random:Ljava/util/Random;

.field final sink:Lokio/BufferedSink;

.field writerClosed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-class v0, Lokhttp3/internal/ws/WebSocketWriter;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lokhttp3/internal/ws/WebSocketWriter;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(ZLokio/BufferedSink;Ljava/util/Random;)V
    .locals 9

    .prologue
    .line 64
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 56
    move-object v4, v0

    new-instance v5, Lokio/Buffer;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Lokio/Buffer;-><init>()V

    iput-object v5, v4, Lokhttp3/internal/ws/WebSocketWriter;->buffer:Lokio/Buffer;

    .line 57
    move-object v4, v0

    new-instance v5, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v0

    invoke-direct {v6, v7}, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;-><init>(Lokhttp3/internal/ws/WebSocketWriter;)V

    iput-object v5, v4, Lokhttp3/internal/ws/WebSocketWriter;->frameSink:Lokhttp3/internal/ws/WebSocketWriter$FrameSink;

    .line 65
    move-object v4, v2

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/NullPointerException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const-string v6, "sink == null"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 66
    :cond_0
    move-object v4, v3

    if-nez v4, :cond_1

    new-instance v4, Ljava/lang/NullPointerException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const-string v6, "random == null"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 67
    :cond_1
    move-object v4, v0

    move v5, v1

    iput-boolean v5, v4, Lokhttp3/internal/ws/WebSocketWriter;->isClient:Z

    .line 68
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lokhttp3/internal/ws/WebSocketWriter;->sink:Lokio/BufferedSink;

    .line 69
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lokhttp3/internal/ws/WebSocketWriter;->random:Ljava/util/Random;

    .line 72
    move-object v4, v0

    move v5, v1

    if-eqz v5, :cond_2

    const/4 v5, 0x4

    new-array v5, v5, [B

    :goto_0
    iput-object v5, v4, Lokhttp3/internal/ws/WebSocketWriter;->maskKey:[B

    .line 73
    move-object v4, v0

    move v5, v1

    if-eqz v5, :cond_3

    const/16 v5, 0x2000

    new-array v5, v5, [B

    :goto_1
    iput-object v5, v4, Lokhttp3/internal/ws/WebSocketWriter;->maskBuffer:[B

    .line 74
    return-void

    .line 72
    :cond_2
    const/4 v5, 0x0

    goto :goto_0

    .line 73
    :cond_3
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private writeControlFrameSynchronized(ILokio/ByteString;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 121
    move-object v0, p0

    move v1, p1

    move-object/from16 v2, p2

    sget-boolean v7, Lokhttp3/internal/ws/WebSocketWriter;->$assertionsDisabled:Z

    if-nez v7, :cond_0

    move-object v7, v0

    invoke-static {v7}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    new-instance v7, Ljava/lang/AssertionError;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 123
    :cond_0
    move-object v7, v0

    iget-boolean v7, v7, Lokhttp3/internal/ws/WebSocketWriter;->writerClosed:Z

    if-eqz v7, :cond_1

    new-instance v7, Ljava/io/IOException;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    const-string v9, "closed"

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 125
    :cond_1
    move-object v7, v2

    invoke-virtual {v7}, Lokio/ByteString;->size()I

    move-result v7

    move v3, v7

    .line 126
    move v7, v3

    int-to-long v7, v7

    const-wide/16 v9, 0x7d

    cmp-long v7, v7, v9

    if-lez v7, :cond_2

    .line 127
    new-instance v7, Ljava/lang/IllegalArgumentException;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    const-string v9, "Payload size must be less than or equal to 125"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 131
    :cond_2
    const/16 v7, 0x80

    move v8, v1

    or-int/2addr v7, v8

    move v4, v7

    .line 132
    move-object v7, v0

    iget-object v7, v7, Lokhttp3/internal/ws/WebSocketWriter;->sink:Lokio/BufferedSink;

    move v8, v4

    invoke-interface {v7, v8}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    move-result-object v7

    .line 134
    move v7, v3

    move v5, v7

    .line 135
    move-object v7, v0

    iget-boolean v7, v7, Lokhttp3/internal/ws/WebSocketWriter;->isClient:Z

    if-eqz v7, :cond_3

    .line 136
    move v7, v5

    const/16 v8, 0x80

    or-int/lit16 v7, v7, 0x80

    move v5, v7

    .line 137
    move-object v7, v0

    iget-object v7, v7, Lokhttp3/internal/ws/WebSocketWriter;->sink:Lokio/BufferedSink;

    move v8, v5

    invoke-interface {v7, v8}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    move-result-object v7

    .line 139
    move-object v7, v0

    iget-object v7, v7, Lokhttp3/internal/ws/WebSocketWriter;->random:Ljava/util/Random;

    move-object v8, v0

    iget-object v8, v8, Lokhttp3/internal/ws/WebSocketWriter;->maskKey:[B

    invoke-virtual {v7, v8}, Ljava/util/Random;->nextBytes([B)V

    .line 140
    move-object v7, v0

    iget-object v7, v7, Lokhttp3/internal/ws/WebSocketWriter;->sink:Lokio/BufferedSink;

    move-object v8, v0

    iget-object v8, v8, Lokhttp3/internal/ws/WebSocketWriter;->maskKey:[B

    invoke-interface {v7, v8}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;

    move-result-object v7

    .line 142
    move-object v7, v2

    invoke-virtual {v7}, Lokio/ByteString;->toByteArray()[B

    move-result-object v7

    move-object v6, v7

    .line 143
    move-object v7, v6

    move-object v8, v6

    array-length v8, v8

    int-to-long v8, v8

    move-object v10, v0

    iget-object v10, v10, Lokhttp3/internal/ws/WebSocketWriter;->maskKey:[B

    const-wide/16 v11, 0x0

    invoke-static/range {v7 .. v12}, Lokhttp3/internal/ws/WebSocketProtocol;->toggleMask([BJ[BJ)V

    .line 144
    move-object v7, v0

    iget-object v7, v7, Lokhttp3/internal/ws/WebSocketWriter;->sink:Lokio/BufferedSink;

    move-object v8, v6

    invoke-interface {v7, v8}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;

    move-result-object v7

    .line 150
    :goto_0
    move-object v7, v0

    iget-object v7, v7, Lokhttp3/internal/ws/WebSocketWriter;->sink:Lokio/BufferedSink;

    invoke-interface {v7}, Lokio/BufferedSink;->flush()V

    .line 151
    return-void

    .line 146
    :cond_3
    move-object v7, v0

    iget-object v7, v7, Lokhttp3/internal/ws/WebSocketWriter;->sink:Lokio/BufferedSink;

    move v8, v5

    invoke-interface {v7, v8}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    move-result-object v7

    .line 147
    move-object v7, v0

    iget-object v7, v7, Lokhttp3/internal/ws/WebSocketWriter;->sink:Lokio/BufferedSink;

    move-object v8, v2

    invoke-interface {v7, v8}, Lokio/BufferedSink;->write(Lokio/ByteString;)Lokio/BufferedSink;

    move-result-object v7

    goto :goto_0
.end method


# virtual methods
.method newMessageSink(IJ)Lokio/Sink;
    .locals 8

    .prologue
    .line 158
    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-object v4, v0

    iget-boolean v4, v4, Lokhttp3/internal/ws/WebSocketWriter;->activeWriter:Z

    if-eqz v4, :cond_0

    .line 159
    new-instance v4, Ljava/lang/IllegalStateException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string v6, "Another message writer is active. Did you call close()?"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 161
    :cond_0
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Lokhttp3/internal/ws/WebSocketWriter;->activeWriter:Z

    .line 164
    move-object v4, v0

    iget-object v4, v4, Lokhttp3/internal/ws/WebSocketWriter;->frameSink:Lokhttp3/internal/ws/WebSocketWriter$FrameSink;

    move v5, v1

    iput v5, v4, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;->formatOpcode:I

    .line 165
    move-object v4, v0

    iget-object v4, v4, Lokhttp3/internal/ws/WebSocketWriter;->frameSink:Lokhttp3/internal/ws/WebSocketWriter$FrameSink;

    move-wide v5, v2

    iput-wide v5, v4, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;->contentLength:J

    .line 166
    move-object v4, v0

    iget-object v4, v4, Lokhttp3/internal/ws/WebSocketWriter;->frameSink:Lokhttp3/internal/ws/WebSocketWriter$FrameSink;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;->isFirstFrame:Z

    .line 167
    move-object v4, v0

    iget-object v4, v4, Lokhttp3/internal/ws/WebSocketWriter;->frameSink:Lokhttp3/internal/ws/WebSocketWriter$FrameSink;

    const/4 v5, 0x0

    iput-boolean v5, v4, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;->closed:Z

    .line 169
    move-object v4, v0

    iget-object v4, v4, Lokhttp3/internal/ws/WebSocketWriter;->frameSink:Lokhttp3/internal/ws/WebSocketWriter$FrameSink;

    move-object v0, v4

    return-object v0
.end method

.method writeClose(ILokio/ByteString;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 98
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    sget-object v7, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    move-object v3, v7

    .line 99
    move v7, v1

    if-nez v7, :cond_0

    move-object v7, v2

    if-eqz v7, :cond_3

    .line 100
    :cond_0
    move v7, v1

    if-eqz v7, :cond_1

    .line 101
    move v7, v1

    invoke-static {v7}, Lokhttp3/internal/ws/WebSocketProtocol;->validateCloseCode(I)V

    .line 103
    :cond_1
    new-instance v7, Lokio/Buffer;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Lokio/Buffer;-><init>()V

    move-object v4, v7

    .line 104
    move-object v7, v4

    move v8, v1

    invoke-virtual {v7, v8}, Lokio/Buffer;->writeShort(I)Lokio/Buffer;

    move-result-object v7

    .line 105
    move-object v7, v2

    if-eqz v7, :cond_2

    .line 106
    move-object v7, v4

    move-object v8, v2

    invoke-virtual {v7, v8}, Lokio/Buffer;->write(Lokio/ByteString;)Lokio/Buffer;

    move-result-object v7

    .line 108
    :cond_2
    move-object v7, v4

    invoke-virtual {v7}, Lokio/Buffer;->readByteString()Lokio/ByteString;

    move-result-object v7

    move-object v3, v7

    .line 111
    :cond_3
    move-object v7, v0

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v4, v8

    monitor-enter v7

    .line 113
    move-object v7, v0

    const/16 v8, 0x8

    move-object v9, v3

    :try_start_0
    invoke-direct {v7, v8, v9}, Lokhttp3/internal/ws/WebSocketWriter;->writeControlFrameSynchronized(ILokio/ByteString;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    move-object v7, v0

    const/4 v8, 0x1

    :try_start_1
    iput-boolean v8, v7, Lokhttp3/internal/ws/WebSocketWriter;->writerClosed:Z

    .line 117
    move-object v7, v4

    monitor-exit v7

    .line 118
    return-void

    .line 115
    :catchall_0
    move-exception v7

    move-object v5, v7

    move-object v7, v0

    const/4 v8, 0x1

    iput-boolean v8, v7, Lokhttp3/internal/ws/WebSocketWriter;->writerClosed:Z

    move-object v7, v5

    throw v7

    .line 117
    :catchall_1
    move-exception v7

    move-object v6, v7

    move-object v7, v4

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v7, v6

    throw v7
.end method

.method writeMessageFrameSynchronized(IJZZ)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 174
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-wide/from16 v2, p2

    move/from16 v4, p4

    move/from16 v5, p5

    sget-boolean v12, Lokhttp3/internal/ws/WebSocketWriter;->$assertionsDisabled:Z

    if-nez v12, :cond_0

    move-object v12, v0

    invoke-static {v12}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    new-instance v12, Ljava/lang/AssertionError;

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    invoke-direct {v13}, Ljava/lang/AssertionError;-><init>()V

    throw v12

    .line 176
    :cond_0
    move-object v12, v0

    iget-boolean v12, v12, Lokhttp3/internal/ws/WebSocketWriter;->writerClosed:Z

    if-eqz v12, :cond_1

    new-instance v12, Ljava/io/IOException;

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    const-string v14, "closed"

    invoke-direct {v13, v14}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 178
    :cond_1
    move v12, v4

    if-eqz v12, :cond_4

    move v12, v1

    :goto_0
    move v6, v12

    .line 179
    move v12, v5

    if-eqz v12, :cond_2

    .line 180
    move v12, v6

    const/16 v13, 0x80

    or-int/lit16 v12, v12, 0x80

    move v6, v12

    .line 182
    :cond_2
    move-object v12, v0

    iget-object v12, v12, Lokhttp3/internal/ws/WebSocketWriter;->sink:Lokio/BufferedSink;

    move v13, v6

    invoke-interface {v12, v13}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    move-result-object v12

    .line 184
    const/4 v12, 0x0

    move v7, v12

    .line 185
    move-object v12, v0

    iget-boolean v12, v12, Lokhttp3/internal/ws/WebSocketWriter;->isClient:Z

    if-eqz v12, :cond_3

    .line 186
    move v12, v7

    const/16 v13, 0x80

    or-int/lit16 v12, v12, 0x80

    move v7, v12

    .line 188
    :cond_3
    move-wide v12, v2

    const-wide/16 v14, 0x7d

    cmp-long v12, v12, v14

    if-gtz v12, :cond_5

    .line 189
    move v12, v7

    move-wide v13, v2

    long-to-int v13, v13

    or-int/2addr v12, v13

    move v7, v12

    .line 190
    move-object v12, v0

    iget-object v12, v12, Lokhttp3/internal/ws/WebSocketWriter;->sink:Lokio/BufferedSink;

    move v13, v7

    invoke-interface {v12, v13}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    move-result-object v12

    .line 201
    :goto_1
    move-object v12, v0

    iget-boolean v12, v12, Lokhttp3/internal/ws/WebSocketWriter;->isClient:Z

    if-eqz v12, :cond_9

    .line 202
    move-object v12, v0

    iget-object v12, v12, Lokhttp3/internal/ws/WebSocketWriter;->random:Ljava/util/Random;

    move-object v13, v0

    iget-object v13, v13, Lokhttp3/internal/ws/WebSocketWriter;->maskKey:[B

    invoke-virtual {v12, v13}, Ljava/util/Random;->nextBytes([B)V

    .line 203
    move-object v12, v0

    iget-object v12, v12, Lokhttp3/internal/ws/WebSocketWriter;->sink:Lokio/BufferedSink;

    move-object v13, v0

    iget-object v13, v13, Lokhttp3/internal/ws/WebSocketWriter;->maskKey:[B

    invoke-interface {v12, v13}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;

    move-result-object v12

    .line 205
    const-wide/16 v12, 0x0

    move-wide v8, v12

    :goto_2
    move-wide v12, v8

    move-wide v14, v2

    cmp-long v12, v12, v14

    if-gez v12, :cond_8

    .line 206
    move-wide v12, v2

    move-object v14, v0

    iget-object v14, v14, Lokhttp3/internal/ws/WebSocketWriter;->maskBuffer:[B

    array-length v14, v14

    int-to-long v14, v14

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    long-to-int v12, v12

    move v10, v12

    .line 207
    move-object v12, v0

    iget-object v12, v12, Lokhttp3/internal/ws/WebSocketWriter;->buffer:Lokio/Buffer;

    move-object v13, v0

    iget-object v13, v13, Lokhttp3/internal/ws/WebSocketWriter;->maskBuffer:[B

    const/4 v14, 0x0

    move v15, v10

    invoke-virtual {v12, v13, v14, v15}, Lokio/Buffer;->read([BII)I

    move-result v12

    move v11, v12

    .line 208
    move v12, v11

    const/4 v13, -0x1

    if-ne v12, v13, :cond_7

    new-instance v12, Ljava/lang/AssertionError;

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    invoke-direct {v13}, Ljava/lang/AssertionError;-><init>()V

    throw v12

    .line 178
    :cond_4
    const/4 v12, 0x0

    goto :goto_0

    .line 191
    :cond_5
    move-wide v12, v2

    const-wide/32 v14, 0xffff

    cmp-long v12, v12, v14

    if-gtz v12, :cond_6

    .line 192
    move v12, v7

    const/16 v13, 0x7e

    or-int/lit8 v12, v12, 0x7e

    move v7, v12

    .line 193
    move-object v12, v0

    iget-object v12, v12, Lokhttp3/internal/ws/WebSocketWriter;->sink:Lokio/BufferedSink;

    move v13, v7

    invoke-interface {v12, v13}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    move-result-object v12

    .line 194
    move-object v12, v0

    iget-object v12, v12, Lokhttp3/internal/ws/WebSocketWriter;->sink:Lokio/BufferedSink;

    move-wide v13, v2

    long-to-int v13, v13

    invoke-interface {v12, v13}, Lokio/BufferedSink;->writeShort(I)Lokio/BufferedSink;

    move-result-object v12

    goto :goto_1

    .line 196
    :cond_6
    move v12, v7

    const/16 v13, 0x7f

    or-int/lit8 v12, v12, 0x7f

    move v7, v12

    .line 197
    move-object v12, v0

    iget-object v12, v12, Lokhttp3/internal/ws/WebSocketWriter;->sink:Lokio/BufferedSink;

    move v13, v7

    invoke-interface {v12, v13}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    move-result-object v12

    .line 198
    move-object v12, v0

    iget-object v12, v12, Lokhttp3/internal/ws/WebSocketWriter;->sink:Lokio/BufferedSink;

    move-wide v13, v2

    invoke-interface {v12, v13, v14}, Lokio/BufferedSink;->writeLong(J)Lokio/BufferedSink;

    move-result-object v12

    goto/16 :goto_1

    .line 209
    :cond_7
    move-object v12, v0

    iget-object v12, v12, Lokhttp3/internal/ws/WebSocketWriter;->maskBuffer:[B

    move v13, v11

    int-to-long v13, v13

    move-object v15, v0

    iget-object v15, v15, Lokhttp3/internal/ws/WebSocketWriter;->maskKey:[B

    move-wide/from16 v16, v8

    invoke-static/range {v12 .. v17}, Lokhttp3/internal/ws/WebSocketProtocol;->toggleMask([BJ[BJ)V

    .line 210
    move-object v12, v0

    iget-object v12, v12, Lokhttp3/internal/ws/WebSocketWriter;->sink:Lokio/BufferedSink;

    move-object v13, v0

    iget-object v13, v13, Lokhttp3/internal/ws/WebSocketWriter;->maskBuffer:[B

    const/4 v14, 0x0

    move v15, v11

    invoke-interface {v12, v13, v14, v15}, Lokio/BufferedSink;->write([BII)Lokio/BufferedSink;

    move-result-object v12

    .line 211
    move-wide v12, v8

    move v14, v11

    int-to-long v14, v14

    add-long/2addr v12, v14

    move-wide v8, v12

    .line 212
    goto/16 :goto_2

    .line 217
    :cond_8
    :goto_3
    move-object v12, v0

    iget-object v12, v12, Lokhttp3/internal/ws/WebSocketWriter;->sink:Lokio/BufferedSink;

    invoke-interface {v12}, Lokio/BufferedSink;->emit()Lokio/BufferedSink;

    move-result-object v12

    .line 218
    return-void

    .line 214
    :cond_9
    move-object v12, v0

    iget-object v12, v12, Lokhttp3/internal/ws/WebSocketWriter;->sink:Lokio/BufferedSink;

    move-object v13, v0

    iget-object v13, v13, Lokhttp3/internal/ws/WebSocketWriter;->buffer:Lokio/Buffer;

    move-wide v14, v2

    invoke-interface {v12, v13, v14, v15}, Lokio/BufferedSink;->write(Lokio/Buffer;J)V

    goto :goto_3
.end method

.method writePing(Lokio/ByteString;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 78
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v2, v5

    monitor-enter v4

    .line 79
    move-object v4, v0

    const/16 v5, 0x9

    move-object v6, v1

    :try_start_0
    invoke-direct {v4, v5, v6}, Lokhttp3/internal/ws/WebSocketWriter;->writeControlFrameSynchronized(ILokio/ByteString;)V

    .line 80
    move-object v4, v2

    monitor-exit v4

    .line 81
    return-void

    .line 80
    :catchall_0
    move-exception v4

    move-object v3, v4

    move-object v4, v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v3

    throw v4
.end method

.method writePong(Lokio/ByteString;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 85
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v2, v5

    monitor-enter v4

    .line 86
    move-object v4, v0

    const/16 v5, 0xa

    move-object v6, v1

    :try_start_0
    invoke-direct {v4, v5, v6}, Lokhttp3/internal/ws/WebSocketWriter;->writeControlFrameSynchronized(ILokio/ByteString;)V

    .line 87
    move-object v4, v2

    monitor-exit v4

    .line 88
    return-void

    .line 87
    :catchall_0
    move-exception v4

    move-object v3, v4

    move-object v4, v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v3

    throw v4
.end method
