.class final Lokhttp3/internal/ws/WebSocketReader;
.super Ljava/lang/Object;
.source "WebSocketReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/ws/WebSocketReader$FrameCallback;
    }
.end annotation


# instance fields
.field closed:Z

.field frameBytesRead:J

.field final frameCallback:Lokhttp3/internal/ws/WebSocketReader$FrameCallback;

.field frameLength:J

.field final isClient:Z

.field isControlFrame:Z

.field isFinalFrame:Z

.field isMasked:Z

.field final maskBuffer:[B

.field final maskKey:[B

.field opcode:I

.field final source:Lokio/BufferedSource;


# direct methods
.method constructor <init>(ZLokio/BufferedSource;Lokhttp3/internal/ws/WebSocketReader$FrameCallback;)V
    .locals 8

    .prologue
    .line 78
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 75
    move-object v4, v0

    const/4 v5, 0x4

    new-array v5, v5, [B

    iput-object v5, v4, Lokhttp3/internal/ws/WebSocketReader;->maskKey:[B

    .line 76
    move-object v4, v0

    const/16 v5, 0x2000

    new-array v5, v5, [B

    iput-object v5, v4, Lokhttp3/internal/ws/WebSocketReader;->maskBuffer:[B

    .line 79
    move-object v4, v2

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/NullPointerException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string v6, "source == null"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 80
    :cond_0
    move-object v4, v3

    if-nez v4, :cond_1

    new-instance v4, Ljava/lang/NullPointerException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string v6, "frameCallback == null"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 81
    :cond_1
    move-object v4, v0

    move v5, v1

    iput-boolean v5, v4, Lokhttp3/internal/ws/WebSocketReader;->isClient:Z

    .line 82
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lokhttp3/internal/ws/WebSocketReader;->source:Lokio/BufferedSource;

    .line 83
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lokhttp3/internal/ws/WebSocketReader;->frameCallback:Lokhttp3/internal/ws/WebSocketReader$FrameCallback;

    .line 84
    return-void
.end method

.method private readControlFrame()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 169
    move-object v0, p0

    new-instance v7, Lokio/Buffer;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    invoke-direct {v8}, Lokio/Buffer;-><init>()V

    move-object v1, v7

    .line 170
    move-object v7, v0

    iget-wide v7, v7, Lokhttp3/internal/ws/WebSocketReader;->frameBytesRead:J

    move-object v9, v0

    iget-wide v9, v9, Lokhttp3/internal/ws/WebSocketReader;->frameLength:J

    cmp-long v7, v7, v9

    if-gez v7, :cond_0

    .line 171
    move-object v7, v0

    iget-boolean v7, v7, Lokhttp3/internal/ws/WebSocketReader;->isClient:Z

    if-eqz v7, :cond_2

    .line 172
    move-object v7, v0

    iget-object v7, v7, Lokhttp3/internal/ws/WebSocketReader;->source:Lokio/BufferedSource;

    move-object v8, v1

    move-object v9, v0

    iget-wide v9, v9, Lokhttp3/internal/ws/WebSocketReader;->frameLength:J

    invoke-interface {v7, v8, v9, v10}, Lokio/BufferedSource;->readFully(Lokio/Buffer;J)V

    .line 185
    :cond_0
    move-object v7, v0

    iget v7, v7, Lokhttp3/internal/ws/WebSocketReader;->opcode:I

    packed-switch v7, :pswitch_data_0

    .line 208
    new-instance v7, Ljava/net/ProtocolException;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown control opcode: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v0

    iget v10, v10, Lokhttp3/internal/ws/WebSocketReader;->opcode:I

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 178
    :cond_1
    move-object v7, v0

    iget-object v7, v7, Lokhttp3/internal/ws/WebSocketReader;->maskBuffer:[B

    move v8, v3

    int-to-long v8, v8

    move-object v10, v0

    iget-object v10, v10, Lokhttp3/internal/ws/WebSocketReader;->maskKey:[B

    move-object v11, v0

    iget-wide v11, v11, Lokhttp3/internal/ws/WebSocketReader;->frameBytesRead:J

    invoke-static/range {v7 .. v12}, Lokhttp3/internal/ws/WebSocketProtocol;->toggleMask([BJ[BJ)V

    .line 179
    move-object v7, v1

    move-object v8, v0

    iget-object v8, v8, Lokhttp3/internal/ws/WebSocketReader;->maskBuffer:[B

    const/4 v9, 0x0

    move v10, v3

    invoke-virtual {v7, v8, v9, v10}, Lokio/Buffer;->write([BII)Lokio/Buffer;

    move-result-object v7

    .line 180
    move-object v7, v0

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    iget-wide v8, v8, Lokhttp3/internal/ws/WebSocketReader;->frameBytesRead:J

    move v10, v3

    int-to-long v10, v10

    add-long/2addr v8, v10

    iput-wide v8, v7, Lokhttp3/internal/ws/WebSocketReader;->frameBytesRead:J

    .line 174
    :cond_2
    move-object v7, v0

    iget-wide v7, v7, Lokhttp3/internal/ws/WebSocketReader;->frameBytesRead:J

    move-object v9, v0

    iget-wide v9, v9, Lokhttp3/internal/ws/WebSocketReader;->frameLength:J

    cmp-long v7, v7, v9

    if-gez v7, :cond_0

    .line 175
    move-object v7, v0

    iget-wide v7, v7, Lokhttp3/internal/ws/WebSocketReader;->frameLength:J

    move-object v9, v0

    iget-wide v9, v9, Lokhttp3/internal/ws/WebSocketReader;->frameBytesRead:J

    sub-long/2addr v7, v9

    move-object v9, v0

    iget-object v9, v9, Lokhttp3/internal/ws/WebSocketReader;->maskBuffer:[B

    array-length v9, v9

    int-to-long v9, v9

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    long-to-int v7, v7

    move v2, v7

    .line 176
    move-object v7, v0

    iget-object v7, v7, Lokhttp3/internal/ws/WebSocketReader;->source:Lokio/BufferedSource;

    move-object v8, v0

    iget-object v8, v8, Lokhttp3/internal/ws/WebSocketReader;->maskBuffer:[B

    const/4 v9, 0x0

    move v10, v2

    invoke-interface {v7, v8, v9, v10}, Lokio/BufferedSource;->read([BII)I

    move-result v7

    move v3, v7

    .line 177
    move v7, v3

    const/4 v8, -0x1

    if-ne v7, v8, :cond_1

    new-instance v7, Ljava/io/EOFException;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    invoke-direct {v8}, Ljava/io/EOFException;-><init>()V

    throw v7

    .line 187
    :pswitch_0
    move-object v7, v0

    iget-object v7, v7, Lokhttp3/internal/ws/WebSocketReader;->frameCallback:Lokhttp3/internal/ws/WebSocketReader$FrameCallback;

    move-object v8, v1

    invoke-virtual {v8}, Lokio/Buffer;->readByteString()Lokio/ByteString;

    move-result-object v8

    invoke-interface {v7, v8}, Lokhttp3/internal/ws/WebSocketReader$FrameCallback;->onReadPing(Lokio/ByteString;)V

    .line 210
    :goto_0
    return-void

    .line 190
    :pswitch_1
    move-object v7, v0

    iget-object v7, v7, Lokhttp3/internal/ws/WebSocketReader;->frameCallback:Lokhttp3/internal/ws/WebSocketReader$FrameCallback;

    move-object v8, v1

    invoke-virtual {v8}, Lokio/Buffer;->readByteString()Lokio/ByteString;

    move-result-object v8

    invoke-interface {v7, v8}, Lokhttp3/internal/ws/WebSocketReader$FrameCallback;->onReadPong(Lokio/ByteString;)V

    .line 191
    goto :goto_0

    .line 193
    :pswitch_2
    const/16 v7, 0x3ed

    move v2, v7

    .line 194
    const-string v7, ""

    move-object v3, v7

    .line 195
    move-object v7, v1

    invoke-virtual {v7}, Lokio/Buffer;->size()J

    move-result-wide v7

    move-wide v4, v7

    .line 196
    move-wide v7, v4

    const-wide/16 v9, 0x1

    cmp-long v7, v7, v9

    if-nez v7, :cond_3

    .line 197
    new-instance v7, Ljava/net/ProtocolException;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    const-string v9, "Malformed close payload length of 1."

    invoke-direct {v8, v9}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 198
    :cond_3
    move-wide v7, v4

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-eqz v7, :cond_4

    .line 199
    move-object v7, v1

    invoke-virtual {v7}, Lokio/Buffer;->readShort()S

    move-result v7

    move v2, v7

    .line 200
    move-object v7, v1

    invoke-virtual {v7}, Lokio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object v7

    move-object v3, v7

    .line 201
    move v7, v2

    invoke-static {v7}, Lokhttp3/internal/ws/WebSocketProtocol;->closeCodeExceptionMessage(I)Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    .line 202
    move-object v7, v6

    if-eqz v7, :cond_4

    new-instance v7, Ljava/net/ProtocolException;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    move-object v9, v6

    invoke-direct {v8, v9}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 204
    :cond_4
    move-object v7, v0

    iget-object v7, v7, Lokhttp3/internal/ws/WebSocketReader;->frameCallback:Lokhttp3/internal/ws/WebSocketReader$FrameCallback;

    move v8, v2

    move-object v9, v3

    invoke-interface {v7, v8, v9}, Lokhttp3/internal/ws/WebSocketReader$FrameCallback;->onReadClose(ILjava/lang/String;)V

    .line 205
    move-object v7, v0

    const/4 v8, 0x1

    iput-boolean v8, v7, Lokhttp3/internal/ws/WebSocketReader;->closed:Z

    .line 206
    goto :goto_0

    .line 185
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private readHeader()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 106
    move-object v0, p0

    move-object v8, v0

    iget-boolean v8, v8, Lokhttp3/internal/ws/WebSocketReader;->closed:Z

    if-eqz v8, :cond_0

    new-instance v8, Ljava/io/IOException;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    const-string v10, "closed"

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 110
    :cond_0
    move-object v8, v0

    iget-object v8, v8, Lokhttp3/internal/ws/WebSocketReader;->source:Lokio/BufferedSource;

    invoke-interface {v8}, Lokio/BufferedSource;->timeout()Lokio/Timeout;

    move-result-object v8

    invoke-virtual {v8}, Lokio/Timeout;->timeoutNanos()J

    move-result-wide v8

    move-wide v2, v8

    .line 111
    move-object v8, v0

    iget-object v8, v8, Lokhttp3/internal/ws/WebSocketReader;->source:Lokio/BufferedSource;

    invoke-interface {v8}, Lokio/BufferedSource;->timeout()Lokio/Timeout;

    move-result-object v8

    invoke-virtual {v8}, Lokio/Timeout;->clearTimeout()Lokio/Timeout;

    move-result-object v8

    .line 113
    move-object v8, v0

    :try_start_0
    iget-object v8, v8, Lokhttp3/internal/ws/WebSocketReader;->source:Lokio/BufferedSource;

    invoke-interface {v8}, Lokio/BufferedSource;->readByte()B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    const/16 v9, 0xff

    and-int/lit16 v8, v8, 0xff

    move v1, v8

    .line 115
    move-object v8, v0

    iget-object v8, v8, Lokhttp3/internal/ws/WebSocketReader;->source:Lokio/BufferedSource;

    invoke-interface {v8}, Lokio/BufferedSource;->timeout()Lokio/Timeout;

    move-result-object v8

    move-wide v9, v2

    sget-object v11, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v8, v9, v10, v11}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    move-result-object v8

    .line 118
    move-object v8, v0

    move v9, v1

    const/16 v10, 0xf

    and-int/lit8 v9, v9, 0xf

    iput v9, v8, Lokhttp3/internal/ws/WebSocketReader;->opcode:I

    .line 119
    move-object v8, v0

    move v9, v1

    const/16 v10, 0x80

    and-int/lit16 v9, v9, 0x80

    if-eqz v9, :cond_1

    const/4 v9, 0x1

    :goto_0
    iput-boolean v9, v8, Lokhttp3/internal/ws/WebSocketReader;->isFinalFrame:Z

    .line 120
    move-object v8, v0

    move v9, v1

    const/16 v10, 0x8

    and-int/lit8 v9, v9, 0x8

    if-eqz v9, :cond_2

    const/4 v9, 0x1

    :goto_1
    iput-boolean v9, v8, Lokhttp3/internal/ws/WebSocketReader;->isControlFrame:Z

    .line 123
    move-object v8, v0

    iget-boolean v8, v8, Lokhttp3/internal/ws/WebSocketReader;->isControlFrame:Z

    if-eqz v8, :cond_3

    move-object v8, v0

    iget-boolean v8, v8, Lokhttp3/internal/ws/WebSocketReader;->isFinalFrame:Z

    if-nez v8, :cond_3

    .line 124
    new-instance v8, Ljava/net/ProtocolException;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    const-string v10, "Control frames must be final."

    invoke-direct {v9, v10}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 115
    :catchall_0
    move-exception v8

    move-object v4, v8

    move-object v8, v0

    iget-object v8, v8, Lokhttp3/internal/ws/WebSocketReader;->source:Lokio/BufferedSource;

    invoke-interface {v8}, Lokio/BufferedSource;->timeout()Lokio/Timeout;

    move-result-object v8

    move-wide v9, v2

    sget-object v11, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v8, v9, v10, v11}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    move-result-object v8

    move-object v8, v4

    throw v8

    .line 119
    :cond_1
    const/4 v9, 0x0

    goto :goto_0

    .line 120
    :cond_2
    const/4 v9, 0x0

    goto :goto_1

    .line 127
    :cond_3
    move v8, v1

    const/16 v9, 0x40

    and-int/lit8 v8, v8, 0x40

    if-eqz v8, :cond_5

    const/4 v8, 0x1

    :goto_2
    move v4, v8

    .line 128
    move v8, v1

    const/16 v9, 0x20

    and-int/lit8 v8, v8, 0x20

    if-eqz v8, :cond_6

    const/4 v8, 0x1

    :goto_3
    move v5, v8

    .line 129
    move v8, v1

    const/16 v9, 0x10

    and-int/lit8 v8, v8, 0x10

    if-eqz v8, :cond_7

    const/4 v8, 0x1

    :goto_4
    move v6, v8

    .line 130
    move v8, v4

    if-nez v8, :cond_4

    move v8, v5

    if-nez v8, :cond_4

    move v8, v6

    if-eqz v8, :cond_8

    .line 132
    :cond_4
    new-instance v8, Ljava/net/ProtocolException;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    const-string v10, "Reserved flags are unsupported."

    invoke-direct {v9, v10}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 127
    :cond_5
    const/4 v8, 0x0

    goto :goto_2

    .line 128
    :cond_6
    const/4 v8, 0x0

    goto :goto_3

    .line 129
    :cond_7
    const/4 v8, 0x0

    goto :goto_4

    .line 135
    :cond_8
    move-object v8, v0

    iget-object v8, v8, Lokhttp3/internal/ws/WebSocketReader;->source:Lokio/BufferedSource;

    invoke-interface {v8}, Lokio/BufferedSource;->readByte()B

    move-result v8

    const/16 v9, 0xff

    and-int/lit16 v8, v8, 0xff

    move v7, v8

    .line 137
    move-object v8, v0

    move v9, v7

    const/16 v10, 0x80

    and-int/lit16 v9, v9, 0x80

    if-eqz v9, :cond_9

    const/4 v9, 0x1

    :goto_5
    iput-boolean v9, v8, Lokhttp3/internal/ws/WebSocketReader;->isMasked:Z

    .line 138
    move-object v8, v0

    iget-boolean v8, v8, Lokhttp3/internal/ws/WebSocketReader;->isMasked:Z

    move-object v9, v0

    iget-boolean v9, v9, Lokhttp3/internal/ws/WebSocketReader;->isClient:Z

    if-ne v8, v9, :cond_b

    .line 140
    new-instance v8, Ljava/net/ProtocolException;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    move-object v10, v0

    iget-boolean v10, v10, Lokhttp3/internal/ws/WebSocketReader;->isClient:Z

    if-eqz v10, :cond_a

    const-string v10, "Server-sent frames must not be masked."

    :goto_6
    invoke-direct {v9, v10}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 137
    :cond_9
    const/4 v9, 0x0

    goto :goto_5

    .line 140
    :cond_a
    const-string v10, "Client-sent frames must be masked."

    goto :goto_6

    .line 146
    :cond_b
    move-object v8, v0

    move v9, v7

    const/16 v10, 0x7f

    and-int/lit8 v9, v9, 0x7f

    int-to-long v9, v9

    iput-wide v9, v8, Lokhttp3/internal/ws/WebSocketReader;->frameLength:J

    .line 147
    move-object v8, v0

    iget-wide v8, v8, Lokhttp3/internal/ws/WebSocketReader;->frameLength:J

    const-wide/16 v10, 0x7e

    cmp-long v8, v8, v10

    if-nez v8, :cond_d

    .line 148
    move-object v8, v0

    move-object v9, v0

    iget-object v9, v9, Lokhttp3/internal/ws/WebSocketReader;->source:Lokio/BufferedSource;

    invoke-interface {v9}, Lokio/BufferedSource;->readShort()S

    move-result v9

    int-to-long v9, v9

    const-wide/32 v11, 0xffff

    and-long/2addr v9, v11

    iput-wide v9, v8, Lokhttp3/internal/ws/WebSocketReader;->frameLength:J

    .line 156
    :cond_c
    move-object v8, v0

    const-wide/16 v9, 0x0

    iput-wide v9, v8, Lokhttp3/internal/ws/WebSocketReader;->frameBytesRead:J

    .line 158
    move-object v8, v0

    iget-boolean v8, v8, Lokhttp3/internal/ws/WebSocketReader;->isControlFrame:Z

    if-eqz v8, :cond_e

    move-object v8, v0

    iget-wide v8, v8, Lokhttp3/internal/ws/WebSocketReader;->frameLength:J

    const-wide/16 v10, 0x7d

    cmp-long v8, v8, v10

    if-lez v8, :cond_e

    .line 159
    new-instance v8, Ljava/net/ProtocolException;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    const-string v10, "Control frame must be less than 125B."

    invoke-direct {v9, v10}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 149
    :cond_d
    move-object v8, v0

    iget-wide v8, v8, Lokhttp3/internal/ws/WebSocketReader;->frameLength:J

    const-wide/16 v10, 0x7f

    cmp-long v8, v8, v10

    if-nez v8, :cond_c

    .line 150
    move-object v8, v0

    move-object v9, v0

    iget-object v9, v9, Lokhttp3/internal/ws/WebSocketReader;->source:Lokio/BufferedSource;

    invoke-interface {v9}, Lokio/BufferedSource;->readLong()J

    move-result-wide v9

    iput-wide v9, v8, Lokhttp3/internal/ws/WebSocketReader;->frameLength:J

    .line 151
    move-object v8, v0

    iget-wide v8, v8, Lokhttp3/internal/ws/WebSocketReader;->frameLength:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-gez v8, :cond_c

    .line 152
    new-instance v8, Ljava/net/ProtocolException;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Frame length 0x"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v0

    iget-wide v11, v11, Lokhttp3/internal/ws/WebSocketReader;->frameLength:J

    .line 153
    invoke-static {v11, v12}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " > 0x7FFFFFFFFFFFFFFF"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 162
    :cond_e
    move-object v8, v0

    iget-boolean v8, v8, Lokhttp3/internal/ws/WebSocketReader;->isMasked:Z

    if-eqz v8, :cond_f

    .line 164
    move-object v8, v0

    iget-object v8, v8, Lokhttp3/internal/ws/WebSocketReader;->source:Lokio/BufferedSource;

    move-object v9, v0

    iget-object v9, v9, Lokhttp3/internal/ws/WebSocketReader;->maskKey:[B

    invoke-interface {v8, v9}, Lokio/BufferedSource;->readFully([B)V

    .line 166
    :cond_f
    return-void
.end method

.method private readMessage(Lokio/Buffer;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 246
    move-object v0, p0

    move-object v1, p1

    :goto_0
    move-object v6, v0

    iget-boolean v6, v6, Lokhttp3/internal/ws/WebSocketReader;->closed:Z

    if-eqz v6, :cond_0

    new-instance v6, Ljava/io/IOException;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    const-string v8, "closed"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 248
    :cond_0
    move-object v6, v0

    iget-wide v6, v6, Lokhttp3/internal/ws/WebSocketReader;->frameBytesRead:J

    move-object v8, v0

    iget-wide v8, v8, Lokhttp3/internal/ws/WebSocketReader;->frameLength:J

    cmp-long v6, v6, v8

    if-nez v6, :cond_3

    .line 249
    move-object v6, v0

    iget-boolean v6, v6, Lokhttp3/internal/ws/WebSocketReader;->isFinalFrame:Z

    if-eqz v6, :cond_1

    .line 256
    :goto_1
    return-void

    .line 251
    :cond_1
    move-object v6, v0

    invoke-virtual {v6}, Lokhttp3/internal/ws/WebSocketReader;->readUntilNonControlFrame()V

    .line 252
    move-object v6, v0

    iget v6, v6, Lokhttp3/internal/ws/WebSocketReader;->opcode:I

    if-eqz v6, :cond_2

    .line 253
    new-instance v6, Ljava/net/ProtocolException;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Expected continuation opcode. Got: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v0

    iget v9, v9, Lokhttp3/internal/ws/WebSocketReader;->opcode:I

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 255
    :cond_2
    move-object v6, v0

    iget-boolean v6, v6, Lokhttp3/internal/ws/WebSocketReader;->isFinalFrame:Z

    if-eqz v6, :cond_3

    move-object v6, v0

    iget-wide v6, v6, Lokhttp3/internal/ws/WebSocketReader;->frameLength:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_3

    .line 256
    goto :goto_1

    .line 260
    :cond_3
    move-object v6, v0

    iget-wide v6, v6, Lokhttp3/internal/ws/WebSocketReader;->frameLength:J

    move-object v8, v0

    iget-wide v8, v8, Lokhttp3/internal/ws/WebSocketReader;->frameBytesRead:J

    sub-long/2addr v6, v8

    move-wide v2, v6

    .line 263
    move-object v6, v0

    iget-boolean v6, v6, Lokhttp3/internal/ws/WebSocketReader;->isMasked:Z

    if-eqz v6, :cond_6

    .line 264
    move-wide v6, v2

    move-object v8, v0

    iget-object v8, v8, Lokhttp3/internal/ws/WebSocketReader;->maskBuffer:[B

    array-length v8, v8

    int-to-long v8, v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    move-wide v2, v6

    .line 265
    move-object v6, v0

    iget-object v6, v6, Lokhttp3/internal/ws/WebSocketReader;->source:Lokio/BufferedSource;

    move-object v7, v0

    iget-object v7, v7, Lokhttp3/internal/ws/WebSocketReader;->maskBuffer:[B

    const/4 v8, 0x0

    move-wide v9, v2

    long-to-int v9, v9

    invoke-interface {v6, v7, v8, v9}, Lokio/BufferedSource;->read([BII)I

    move-result v6

    int-to-long v6, v6

    move-wide v4, v6

    .line 266
    move-wide v6, v4

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-nez v6, :cond_4

    new-instance v6, Ljava/io/EOFException;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    invoke-direct {v7}, Ljava/io/EOFException;-><init>()V

    throw v6

    .line 267
    :cond_4
    move-object v6, v0

    iget-object v6, v6, Lokhttp3/internal/ws/WebSocketReader;->maskBuffer:[B

    move-wide v7, v4

    move-object v9, v0

    iget-object v9, v9, Lokhttp3/internal/ws/WebSocketReader;->maskKey:[B

    move-object v10, v0

    iget-wide v10, v10, Lokhttp3/internal/ws/WebSocketReader;->frameBytesRead:J

    invoke-static/range {v6 .. v11}, Lokhttp3/internal/ws/WebSocketProtocol;->toggleMask([BJ[BJ)V

    .line 268
    move-object v6, v1

    move-object v7, v0

    iget-object v7, v7, Lokhttp3/internal/ws/WebSocketReader;->maskBuffer:[B

    const/4 v8, 0x0

    move-wide v9, v4

    long-to-int v9, v9

    invoke-virtual {v6, v7, v8, v9}, Lokio/Buffer;->write([BII)Lokio/Buffer;

    move-result-object v6

    .line 274
    :cond_5
    move-object v6, v0

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    iget-wide v7, v7, Lokhttp3/internal/ws/WebSocketReader;->frameBytesRead:J

    move-wide v9, v4

    add-long/2addr v7, v9

    iput-wide v7, v6, Lokhttp3/internal/ws/WebSocketReader;->frameBytesRead:J

    .line 275
    goto/16 :goto_0

    .line 270
    :cond_6
    move-object v6, v0

    iget-object v6, v6, Lokhttp3/internal/ws/WebSocketReader;->source:Lokio/BufferedSource;

    move-object v7, v1

    move-wide v8, v2

    invoke-interface {v6, v7, v8, v9}, Lokio/BufferedSource;->read(Lokio/Buffer;J)J

    move-result-wide v6

    move-wide v4, v6

    .line 271
    move-wide v6, v4

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-nez v6, :cond_5

    new-instance v6, Ljava/io/EOFException;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    invoke-direct {v7}, Ljava/io/EOFException;-><init>()V

    throw v6
.end method

.method private readMessageFrame()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 213
    move-object v0, p0

    move-object v3, v0

    iget v3, v3, Lokhttp3/internal/ws/WebSocketReader;->opcode:I

    move v1, v3

    .line 214
    move v3, v1

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    move v3, v1

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    .line 215
    new-instance v3, Ljava/net/ProtocolException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown opcode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move v6, v1

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 218
    :cond_0
    new-instance v3, Lokio/Buffer;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Lokio/Buffer;-><init>()V

    move-object v2, v3

    .line 219
    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Lokhttp3/internal/ws/WebSocketReader;->readMessage(Lokio/Buffer;)V

    .line 221
    move v3, v1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 222
    move-object v3, v0

    iget-object v3, v3, Lokhttp3/internal/ws/WebSocketReader;->frameCallback:Lokhttp3/internal/ws/WebSocketReader$FrameCallback;

    move-object v4, v2

    invoke-virtual {v4}, Lokio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lokhttp3/internal/ws/WebSocketReader$FrameCallback;->onReadMessage(Ljava/lang/String;)V

    .line 226
    :goto_0
    return-void

    .line 224
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lokhttp3/internal/ws/WebSocketReader;->frameCallback:Lokhttp3/internal/ws/WebSocketReader$FrameCallback;

    move-object v4, v2

    invoke-virtual {v4}, Lokio/Buffer;->readByteString()Lokio/ByteString;

    move-result-object v4

    invoke-interface {v3, v4}, Lokhttp3/internal/ws/WebSocketReader$FrameCallback;->onReadMessage(Lokio/ByteString;)V

    goto :goto_0
.end method


# virtual methods
.method processNextFrame()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 97
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lokhttp3/internal/ws/WebSocketReader;->readHeader()V

    .line 98
    move-object v1, v0

    iget-boolean v1, v1, Lokhttp3/internal/ws/WebSocketReader;->isControlFrame:Z

    if-eqz v1, :cond_0

    .line 99
    move-object v1, v0

    invoke-direct {v1}, Lokhttp3/internal/ws/WebSocketReader;->readControlFrame()V

    .line 103
    :goto_0
    return-void

    .line 101
    :cond_0
    move-object v1, v0

    invoke-direct {v1}, Lokhttp3/internal/ws/WebSocketReader;->readMessageFrame()V

    goto :goto_0
.end method

.method readUntilNonControlFrame()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 230
    move-object v0, p0

    :goto_0
    move-object v1, v0

    iget-boolean v1, v1, Lokhttp3/internal/ws/WebSocketReader;->closed:Z

    if-nez v1, :cond_0

    .line 231
    move-object v1, v0

    invoke-direct {v1}, Lokhttp3/internal/ws/WebSocketReader;->readHeader()V

    .line 232
    move-object v1, v0

    iget-boolean v1, v1, Lokhttp3/internal/ws/WebSocketReader;->isControlFrame:Z

    if-nez v1, :cond_1

    .line 237
    :cond_0
    return-void

    .line 235
    :cond_1
    move-object v1, v0

    invoke-direct {v1}, Lokhttp3/internal/ws/WebSocketReader;->readControlFrame()V

    goto :goto_0
.end method
