.class final Lokhttp3/internal/http2/Http2Writer;
.super Ljava/lang/Object;
.source "Http2Writer.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private final client:Z

.field private closed:Z

.field private final hpackBuffer:Lokio/Buffer;

.field final hpackWriter:Lokhttp3/internal/http2/Hpack$Writer;

.field private maxFrameSize:I

.field private final sink:Lokio/BufferedSink;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-class v0, Lokhttp3/internal/http2/Http2;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/http2/Http2Writer;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lokio/BufferedSink;Z)V
    .locals 8

    .prologue
    .line 57
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 58
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lokhttp3/internal/http2/Http2Writer;->sink:Lokio/BufferedSink;

    .line 59
    move-object v3, v0

    move v4, v2

    iput-boolean v4, v3, Lokhttp3/internal/http2/Http2Writer;->client:Z

    .line 60
    move-object v3, v0

    new-instance v4, Lokio/Buffer;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Lokio/Buffer;-><init>()V

    iput-object v4, v3, Lokhttp3/internal/http2/Http2Writer;->hpackBuffer:Lokio/Buffer;

    .line 61
    move-object v3, v0

    new-instance v4, Lokhttp3/internal/http2/Hpack$Writer;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    iget-object v6, v6, Lokhttp3/internal/http2/Http2Writer;->hpackBuffer:Lokio/Buffer;

    invoke-direct {v5, v6}, Lokhttp3/internal/http2/Hpack$Writer;-><init>(Lokio/Buffer;)V

    iput-object v4, v3, Lokhttp3/internal/http2/Http2Writer;->hpackWriter:Lokhttp3/internal/http2/Hpack$Writer;

    .line 62
    move-object v3, v0

    const/16 v4, 0x4000

    iput v4, v3, Lokhttp3/internal/http2/Http2Writer;->maxFrameSize:I

    .line 63
    return-void
.end method

.method private writeContinuationFrames(IJ)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 289
    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    :goto_0
    move-wide v5, v2

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-lez v5, :cond_1

    .line 290
    move-object v5, v0

    iget v5, v5, Lokhttp3/internal/http2/Http2Writer;->maxFrameSize:I

    int-to-long v5, v5

    move-wide v7, v2

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    long-to-int v5, v5

    move v4, v5

    .line 291
    move-wide v5, v2

    move v7, v4

    int-to-long v7, v7

    sub-long/2addr v5, v7

    move-wide v2, v5

    .line 292
    move-object v5, v0

    move v6, v1

    move v7, v4

    const/16 v8, 0x9

    move-wide v9, v2

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-nez v9, :cond_0

    const/4 v9, 0x4

    :goto_1
    invoke-virtual {v5, v6, v7, v8, v9}, Lokhttp3/internal/http2/Http2Writer;->frameHeader(IIBB)V

    .line 293
    move-object v5, v0

    iget-object v5, v5, Lokhttp3/internal/http2/Http2Writer;->sink:Lokio/BufferedSink;

    move-object v6, v0

    iget-object v6, v6, Lokhttp3/internal/http2/Http2Writer;->hpackBuffer:Lokio/Buffer;

    move v7, v4

    int-to-long v7, v7

    invoke-interface {v5, v6, v7, v8}, Lokio/BufferedSink;->write(Lokio/Buffer;J)V

    .line 294
    goto :goto_0

    .line 292
    :cond_0
    const/4 v9, 0x0

    goto :goto_1

    .line 295
    :cond_1
    return-void
.end method

.method private static writeMedium(Lokio/BufferedSink;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 283
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    const/16 v4, 0x10

    ushr-int/lit8 v3, v3, 0x10

    const/16 v4, 0xff

    and-int/lit16 v3, v3, 0xff

    invoke-interface {v2, v3}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    move-result-object v2

    .line 284
    move-object v2, v0

    move v3, v1

    const/16 v4, 0x8

    ushr-int/lit8 v3, v3, 0x8

    const/16 v4, 0xff

    and-int/lit16 v3, v3, 0xff

    invoke-interface {v2, v3}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    move-result-object v2

    .line 285
    move-object v2, v0

    move v3, v1

    const/16 v4, 0xff

    and-int/lit16 v3, v3, 0xff

    invoke-interface {v2, v3}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    move-result-object v2

    .line 286
    return-void
.end method


# virtual methods
.method public declared-synchronized applyAndAckSettings(Lokhttp3/internal/http2/Settings;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 77
    move-object v0, p0

    move-object v1, p1

    move-object v11, p0

    monitor-enter v11

    move-object v6, v0

    :try_start_0
    iget-boolean v6, v6, Lokhttp3/internal/http2/Http2Writer;->closed:Z

    if-eqz v6, :cond_0

    new-instance v6, Ljava/io/IOException;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    const-string v8, "closed"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v11

    throw v0

    .line 78
    :cond_0
    move-object v6, v0

    move-object v7, v1

    move-object v8, v0

    :try_start_1
    iget v8, v8, Lokhttp3/internal/http2/Http2Writer;->maxFrameSize:I

    invoke-virtual {v7, v8}, Lokhttp3/internal/http2/Settings;->getMaxFrameSize(I)I

    move-result v7

    iput v7, v6, Lokhttp3/internal/http2/Http2Writer;->maxFrameSize:I

    .line 79
    move-object v6, v1

    invoke-virtual {v6}, Lokhttp3/internal/http2/Settings;->getHeaderTableSize()I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_1

    .line 80
    move-object v6, v0

    iget-object v6, v6, Lokhttp3/internal/http2/Http2Writer;->hpackWriter:Lokhttp3/internal/http2/Hpack$Writer;

    move-object v7, v1

    invoke-virtual {v7}, Lokhttp3/internal/http2/Settings;->getHeaderTableSize()I

    move-result v7

    invoke-virtual {v6, v7}, Lokhttp3/internal/http2/Hpack$Writer;->setHeaderTableSizeSetting(I)V

    .line 82
    :cond_1
    const/4 v6, 0x0

    move v2, v6

    .line 83
    const/4 v6, 0x4

    move v3, v6

    .line 84
    const/4 v6, 0x1

    move v4, v6

    .line 85
    const/4 v6, 0x0

    move v5, v6

    .line 86
    move-object v6, v0

    move v7, v5

    move v8, v2

    move v9, v3

    move v10, v4

    invoke-virtual {v6, v7, v8, v9, v10}, Lokhttp3/internal/http2/Http2Writer;->frameHeader(IIBB)V

    .line 87
    move-object v6, v0

    iget-object v6, v6, Lokhttp3/internal/http2/Http2Writer;->sink:Lokio/BufferedSink;

    invoke-interface {v6}, Lokio/BufferedSink;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 88
    monitor-exit v11

    return-void
.end method

.method public declared-synchronized close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 278
    move-object v0, p0

    move-object v3, p0

    monitor-enter v3

    move-object v1, v0

    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, v1, Lokhttp3/internal/http2/Http2Writer;->closed:Z

    .line 279
    move-object v1, v0

    iget-object v1, v1, Lokhttp3/internal/http2/Http2Writer;->sink:Lokio/BufferedSink;

    invoke-interface {v1}, Lokio/BufferedSink;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 280
    monitor-exit v3

    return-void

    .line 278
    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0
.end method

.method public declared-synchronized connectionPreface()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 66
    move-object v0, p0

    move-object v7, p0

    monitor-enter v7

    move-object v1, v0

    :try_start_0
    iget-boolean v1, v1, Lokhttp3/internal/http2/Http2Writer;->closed:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/io/IOException;

    move-object v8, v1

    move-object v1, v8

    move-object v2, v8

    const-string v3, "closed"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0

    .line 67
    :cond_0
    move-object v1, v0

    :try_start_1
    iget-boolean v1, v1, Lokhttp3/internal/http2/Http2Writer;->client:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_1

    .line 73
    :goto_0
    monitor-exit v7

    return-void

    .line 68
    :cond_1
    :try_start_2
    sget-object v1, Lokhttp3/internal/http2/Http2Writer;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 69
    sget-object v1, Lokhttp3/internal/http2/Http2Writer;->logger:Ljava/util/logging/Logger;

    const-string v2, ">> CONNECTION %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const/4 v5, 0x0

    sget-object v6, Lokhttp3/internal/http2/Http2;->CONNECTION_PREFACE:Lokio/ByteString;

    invoke-virtual {v6}, Lokio/ByteString;->hex()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3}, Lokhttp3/internal/Util;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 71
    :cond_2
    move-object v1, v0

    iget-object v1, v1, Lokhttp3/internal/http2/Http2Writer;->sink:Lokio/BufferedSink;

    sget-object v2, Lokhttp3/internal/http2/Http2;->CONNECTION_PREFACE:Lokio/ByteString;

    invoke-virtual {v2}, Lokio/ByteString;->toByteArray()[B

    move-result-object v2

    invoke-interface {v1, v2}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;

    move-result-object v1

    .line 72
    move-object v1, v0

    iget-object v1, v1, Lokhttp3/internal/http2/Http2Writer;->sink:Lokio/BufferedSink;

    invoke-interface {v1}, Lokio/BufferedSink;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 73
    goto :goto_0
.end method

.method public declared-synchronized data(ZILokio/Buffer;I)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 170
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object v11, p0

    monitor-enter v11

    move-object v6, v0

    :try_start_0
    iget-boolean v6, v6, Lokhttp3/internal/http2/Http2Writer;->closed:Z

    if-eqz v6, :cond_0

    new-instance v6, Ljava/io/IOException;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    const-string v8, "closed"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v11

    throw v0

    .line 171
    :cond_0
    const/4 v6, 0x0

    move v5, v6

    .line 172
    move v6, v1

    if-eqz v6, :cond_1

    move v6, v5

    const/4 v7, 0x1

    or-int/lit8 v6, v6, 0x1

    int-to-byte v6, v6

    move v5, v6

    .line 173
    :cond_1
    move-object v6, v0

    move v7, v2

    move v8, v5

    move-object v9, v3

    move v10, v4

    :try_start_1
    invoke-virtual {v6, v7, v8, v9, v10}, Lokhttp3/internal/http2/Http2Writer;->dataFrame(IBLokio/Buffer;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 174
    monitor-exit v11

    return-void
.end method

.method dataFrame(IBLokio/Buffer;I)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 177
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    const/4 v6, 0x0

    move v5, v6

    .line 178
    move-object v6, v0

    move v7, v1

    move v8, v4

    move v9, v5

    move v10, v2

    invoke-virtual {v6, v7, v8, v9, v10}, Lokhttp3/internal/http2/Http2Writer;->frameHeader(IIBB)V

    .line 179
    move v6, v4

    if-lez v6, :cond_0

    .line 180
    move-object v6, v0

    iget-object v6, v6, Lokhttp3/internal/http2/Http2Writer;->sink:Lokio/BufferedSink;

    move-object v7, v3

    move v8, v4

    int-to-long v8, v8

    invoke-interface {v6, v7, v8, v9}, Lokio/BufferedSink;->write(Lokio/Buffer;J)V

    .line 182
    :cond_0
    return-void
.end method

.method public declared-synchronized flush()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 120
    move-object v0, p0

    move-object v4, p0

    monitor-enter v4

    move-object v1, v0

    :try_start_0
    iget-boolean v1, v1, Lokhttp3/internal/http2/Http2Writer;->closed:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/io/IOException;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const-string v3, "closed"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0

    .line 121
    :cond_0
    move-object v1, v0

    :try_start_1
    iget-object v1, v1, Lokhttp3/internal/http2/Http2Writer;->sink:Lokio/BufferedSink;

    invoke-interface {v1}, Lokio/BufferedSink;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 122
    monitor-exit v4

    return-void
.end method

.method public frameHeader(IIBB)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 266
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    sget-object v5, Lokhttp3/internal/http2/Http2Writer;->logger:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lokhttp3/internal/http2/Http2Writer;->logger:Ljava/util/logging/Logger;

    const/4 v6, 0x0

    move v7, v1

    move v8, v2

    move v9, v3

    move v10, v4

    invoke-static {v6, v7, v8, v9, v10}, Lokhttp3/internal/http2/Http2;->frameLog(ZIIBB)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 267
    :cond_0
    move v5, v2

    move-object v6, v0

    iget v6, v6, Lokhttp3/internal/http2/Http2Writer;->maxFrameSize:I

    if-le v5, v6, :cond_1

    .line 268
    const-string v5, "FRAME_SIZE_ERROR length > %d: %d"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    const/4 v8, 0x0

    move-object v9, v0

    iget v9, v9, Lokhttp3/internal/http2/Http2Writer;->maxFrameSize:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    const/4 v8, 0x1

    move v9, v2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v5, v6}, Lokhttp3/internal/http2/Http2;->illegalArgument(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v5

    throw v5

    .line 270
    :cond_1
    move v5, v1

    const/high16 v6, -0x80000000

    and-int/2addr v5, v6

    if-eqz v5, :cond_2

    const-string v5, "reserved bit set: %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    const/4 v8, 0x0

    move v9, v1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v5, v6}, Lokhttp3/internal/http2/Http2;->illegalArgument(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v5

    throw v5

    .line 271
    :cond_2
    move-object v5, v0

    iget-object v5, v5, Lokhttp3/internal/http2/Http2Writer;->sink:Lokio/BufferedSink;

    move v6, v2

    invoke-static {v5, v6}, Lokhttp3/internal/http2/Http2Writer;->writeMedium(Lokio/BufferedSink;I)V

    .line 272
    move-object v5, v0

    iget-object v5, v5, Lokhttp3/internal/http2/Http2Writer;->sink:Lokio/BufferedSink;

    move v6, v3

    const/16 v7, 0xff

    and-int/lit16 v6, v6, 0xff

    invoke-interface {v5, v6}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    move-result-object v5

    .line 273
    move-object v5, v0

    iget-object v5, v5, Lokhttp3/internal/http2/Http2Writer;->sink:Lokio/BufferedSink;

    move v6, v4

    const/16 v7, 0xff

    and-int/lit16 v6, v6, 0xff

    invoke-interface {v5, v6}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    move-result-object v5

    .line 274
    move-object v5, v0

    iget-object v5, v5, Lokhttp3/internal/http2/Http2Writer;->sink:Lokio/BufferedSink;

    move v6, v1

    const v7, 0x7fffffff

    and-int/2addr v6, v7

    invoke-interface {v5, v6}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    move-result-object v5

    .line 275
    return-void
.end method

.method public declared-synchronized goAway(ILokhttp3/internal/http2/ErrorCode;[B)V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 232
    move-object v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object v13, p0

    monitor-enter v13

    move-object v8, v0

    :try_start_0
    iget-boolean v8, v8, Lokhttp3/internal/http2/Http2Writer;->closed:Z

    if-eqz v8, :cond_0

    new-instance v8, Ljava/io/IOException;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    const-string v10, "closed"

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v13

    throw v0

    .line 233
    :cond_0
    move-object v8, v2

    :try_start_1
    iget v8, v8, Lokhttp3/internal/http2/ErrorCode;->httpCode:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_1

    const-string v8, "errorCode.httpCode == -1"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v8, v9}, Lokhttp3/internal/http2/Http2;->illegalArgument(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v8

    throw v8

    .line 234
    :cond_1
    const/16 v8, 0x8

    move-object v9, v3

    array-length v9, v9

    add-int/2addr v8, v9

    move v4, v8

    .line 235
    const/4 v8, 0x7

    move v5, v8

    .line 236
    const/4 v8, 0x0

    move v6, v8

    .line 237
    const/4 v8, 0x0

    move v7, v8

    .line 238
    move-object v8, v0

    move v9, v7

    move v10, v4

    move v11, v5

    move v12, v6

    invoke-virtual {v8, v9, v10, v11, v12}, Lokhttp3/internal/http2/Http2Writer;->frameHeader(IIBB)V

    .line 239
    move-object v8, v0

    iget-object v8, v8, Lokhttp3/internal/http2/Http2Writer;->sink:Lokio/BufferedSink;

    move v9, v1

    invoke-interface {v8, v9}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    move-result-object v8

    .line 240
    move-object v8, v0

    iget-object v8, v8, Lokhttp3/internal/http2/Http2Writer;->sink:Lokio/BufferedSink;

    move-object v9, v2

    iget v9, v9, Lokhttp3/internal/http2/ErrorCode;->httpCode:I

    invoke-interface {v8, v9}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    move-result-object v8

    .line 241
    move-object v8, v3

    array-length v8, v8

    if-lez v8, :cond_2

    .line 242
    move-object v8, v0

    iget-object v8, v8, Lokhttp3/internal/http2/Http2Writer;->sink:Lokio/BufferedSink;

    move-object v9, v3

    invoke-interface {v8, v9}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;

    move-result-object v8

    .line 244
    :cond_2
    move-object v8, v0

    iget-object v8, v8, Lokhttp3/internal/http2/Http2Writer;->sink:Lokio/BufferedSink;

    invoke-interface {v8}, Lokio/BufferedSink;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 245
    monitor-exit v13

    return-void
.end method

.method public declared-synchronized headers(ILjava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/http2/Header;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 138
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v7, p0

    monitor-enter v7

    move-object v3, v0

    :try_start_0
    iget-boolean v3, v3, Lokhttp3/internal/http2/Http2Writer;->closed:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/io/IOException;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const-string v5, "closed"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0

    .line 139
    :cond_0
    move-object v3, v0

    const/4 v4, 0x0

    move v5, v1

    move-object v6, v2

    :try_start_1
    invoke-virtual {v3, v4, v5, v6}, Lokhttp3/internal/http2/Http2Writer;->headers(ZILjava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 140
    monitor-exit v7

    return-void
.end method

.method headers(ZILjava/util/List;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/http2/Header;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 298
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object v9, v0

    iget-boolean v9, v9, Lokhttp3/internal/http2/Http2Writer;->closed:Z

    if-eqz v9, :cond_0

    new-instance v9, Ljava/io/IOException;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    const-string v11, "closed"

    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 299
    :cond_0
    move-object v9, v0

    iget-object v9, v9, Lokhttp3/internal/http2/Http2Writer;->hpackWriter:Lokhttp3/internal/http2/Hpack$Writer;

    move-object v10, v3

    invoke-virtual {v9, v10}, Lokhttp3/internal/http2/Hpack$Writer;->writeHeaders(Ljava/util/List;)V

    .line 301
    move-object v9, v0

    iget-object v9, v9, Lokhttp3/internal/http2/Http2Writer;->hpackBuffer:Lokio/Buffer;

    invoke-virtual {v9}, Lokio/Buffer;->size()J

    move-result-wide v9

    move-wide v4, v9

    .line 302
    move-object v9, v0

    iget v9, v9, Lokhttp3/internal/http2/Http2Writer;->maxFrameSize:I

    int-to-long v9, v9

    move-wide v11, v4

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    long-to-int v9, v9

    move v6, v9

    .line 303
    const/4 v9, 0x1

    move v7, v9

    .line 304
    move-wide v9, v4

    move v11, v6

    int-to-long v11, v11

    cmp-long v9, v9, v11

    if-nez v9, :cond_3

    const/4 v9, 0x4

    :goto_0
    move v8, v9

    .line 305
    move v9, v1

    if-eqz v9, :cond_1

    move v9, v8

    const/4 v10, 0x1

    or-int/lit8 v9, v9, 0x1

    int-to-byte v9, v9

    move v8, v9

    .line 306
    :cond_1
    move-object v9, v0

    move v10, v2

    move v11, v6

    move v12, v7

    move v13, v8

    invoke-virtual {v9, v10, v11, v12, v13}, Lokhttp3/internal/http2/Http2Writer;->frameHeader(IIBB)V

    .line 307
    move-object v9, v0

    iget-object v9, v9, Lokhttp3/internal/http2/Http2Writer;->sink:Lokio/BufferedSink;

    move-object v10, v0

    iget-object v10, v10, Lokhttp3/internal/http2/Http2Writer;->hpackBuffer:Lokio/Buffer;

    move v11, v6

    int-to-long v11, v11

    invoke-interface {v9, v10, v11, v12}, Lokio/BufferedSink;->write(Lokio/Buffer;J)V

    .line 309
    move-wide v9, v4

    move v11, v6

    int-to-long v11, v11

    cmp-long v9, v9, v11

    if-lez v9, :cond_2

    move-object v9, v0

    move v10, v2

    move-wide v11, v4

    move v13, v6

    int-to-long v13, v13

    sub-long/2addr v11, v13

    invoke-direct {v9, v10, v11, v12}, Lokhttp3/internal/http2/Http2Writer;->writeContinuationFrames(IJ)V

    .line 310
    :cond_2
    return-void

    .line 304
    :cond_3
    const/4 v9, 0x0

    goto :goto_0
.end method

.method public maxDataLength()I
    .locals 2

    .prologue
    .line 157
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lokhttp3/internal/http2/Http2Writer;->maxFrameSize:I

    move v0, v1

    return v0
.end method

.method public declared-synchronized ping(ZII)V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 211
    move-object v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object v13, p0

    monitor-enter v13

    move-object v8, v0

    :try_start_0
    iget-boolean v8, v8, Lokhttp3/internal/http2/Http2Writer;->closed:Z

    if-eqz v8, :cond_0

    new-instance v8, Ljava/io/IOException;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    const-string v10, "closed"

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v13

    throw v0

    .line 212
    :cond_0
    const/16 v8, 0x8

    move v4, v8

    .line 213
    const/4 v8, 0x6

    move v5, v8

    .line 214
    move v8, v1

    if-eqz v8, :cond_1

    const/4 v8, 0x1

    :goto_0
    move v6, v8

    .line 215
    const/4 v8, 0x0

    move v7, v8

    .line 216
    move-object v8, v0

    move v9, v7

    move v10, v4

    move v11, v5

    move v12, v6

    :try_start_1
    invoke-virtual {v8, v9, v10, v11, v12}, Lokhttp3/internal/http2/Http2Writer;->frameHeader(IIBB)V

    .line 217
    move-object v8, v0

    iget-object v8, v8, Lokhttp3/internal/http2/Http2Writer;->sink:Lokio/BufferedSink;

    move v9, v2

    invoke-interface {v8, v9}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    move-result-object v8

    .line 218
    move-object v8, v0

    iget-object v8, v8, Lokhttp3/internal/http2/Http2Writer;->sink:Lokio/BufferedSink;

    move v9, v3

    invoke-interface {v8, v9}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    move-result-object v8

    .line 219
    move-object v8, v0

    iget-object v8, v8, Lokhttp3/internal/http2/Http2Writer;->sink:Lokio/BufferedSink;

    invoke-interface {v8}, Lokio/BufferedSink;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 220
    monitor-exit v13

    return-void

    .line 214
    :cond_1
    const/4 v8, 0x0

    goto :goto_0
.end method

.method public declared-synchronized pushPromise(IILjava/util/List;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/http2/Header;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 105
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v15, p0

    monitor-enter v15

    move-object v9, v0

    :try_start_0
    iget-boolean v9, v9, Lokhttp3/internal/http2/Http2Writer;->closed:Z

    if-eqz v9, :cond_0

    new-instance v9, Ljava/io/IOException;

    move-object/from16 v16, v9

    move-object/from16 v9, v16

    move-object/from16 v10, v16

    const-string v11, "closed"

    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v15

    throw v0

    .line 106
    :cond_0
    move-object v9, v0

    :try_start_1
    iget-object v9, v9, Lokhttp3/internal/http2/Http2Writer;->hpackWriter:Lokhttp3/internal/http2/Hpack$Writer;

    move-object v10, v3

    invoke-virtual {v9, v10}, Lokhttp3/internal/http2/Hpack$Writer;->writeHeaders(Ljava/util/List;)V

    .line 108
    move-object v9, v0

    iget-object v9, v9, Lokhttp3/internal/http2/Http2Writer;->hpackBuffer:Lokio/Buffer;

    invoke-virtual {v9}, Lokio/Buffer;->size()J

    move-result-wide v9

    move-wide v4, v9

    .line 109
    move-object v9, v0

    iget v9, v9, Lokhttp3/internal/http2/Http2Writer;->maxFrameSize:I

    const/4 v10, 0x4

    add-int/lit8 v9, v9, -0x4

    int-to-long v9, v9

    move-wide v11, v4

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    long-to-int v9, v9

    move v6, v9

    .line 110
    const/4 v9, 0x5

    move v7, v9

    .line 111
    move-wide v9, v4

    move v11, v6

    int-to-long v11, v11

    cmp-long v9, v9, v11

    if-nez v9, :cond_2

    const/4 v9, 0x4

    :goto_0
    move v8, v9

    .line 112
    move-object v9, v0

    move v10, v1

    move v11, v6

    const/4 v12, 0x4

    add-int/lit8 v11, v11, 0x4

    move v12, v7

    move v13, v8

    invoke-virtual {v9, v10, v11, v12, v13}, Lokhttp3/internal/http2/Http2Writer;->frameHeader(IIBB)V

    .line 113
    move-object v9, v0

    iget-object v9, v9, Lokhttp3/internal/http2/Http2Writer;->sink:Lokio/BufferedSink;

    move v10, v2

    const v11, 0x7fffffff

    and-int/2addr v10, v11

    invoke-interface {v9, v10}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    move-result-object v9

    .line 114
    move-object v9, v0

    iget-object v9, v9, Lokhttp3/internal/http2/Http2Writer;->sink:Lokio/BufferedSink;

    move-object v10, v0

    iget-object v10, v10, Lokhttp3/internal/http2/Http2Writer;->hpackBuffer:Lokio/Buffer;

    move v11, v6

    int-to-long v11, v11

    invoke-interface {v9, v10, v11, v12}, Lokio/BufferedSink;->write(Lokio/Buffer;J)V

    .line 116
    move-wide v9, v4

    move v11, v6

    int-to-long v11, v11

    cmp-long v9, v9, v11

    if-lez v9, :cond_1

    move-object v9, v0

    move v10, v1

    move-wide v11, v4

    move v13, v6

    int-to-long v13, v13

    sub-long/2addr v11, v13

    invoke-direct {v9, v10, v11, v12}, Lokhttp3/internal/http2/Http2Writer;->writeContinuationFrames(IJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 117
    :cond_1
    monitor-exit v15

    return-void

    .line 111
    :cond_2
    const/4 v9, 0x0

    goto :goto_0
.end method

.method public declared-synchronized rstStream(ILokhttp3/internal/http2/ErrorCode;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 144
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v11, p0

    monitor-enter v11

    move-object v6, v0

    :try_start_0
    iget-boolean v6, v6, Lokhttp3/internal/http2/Http2Writer;->closed:Z

    if-eqz v6, :cond_0

    new-instance v6, Ljava/io/IOException;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    const-string v8, "closed"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v11

    throw v0

    .line 145
    :cond_0
    move-object v6, v2

    :try_start_1
    iget v6, v6, Lokhttp3/internal/http2/ErrorCode;->httpCode:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_1

    new-instance v6, Ljava/lang/IllegalArgumentException;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    invoke-direct {v7}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v6

    .line 147
    :cond_1
    const/4 v6, 0x4

    move v3, v6

    .line 148
    const/4 v6, 0x3

    move v4, v6

    .line 149
    const/4 v6, 0x0

    move v5, v6

    .line 150
    move-object v6, v0

    move v7, v1

    move v8, v3

    move v9, v4

    move v10, v5

    invoke-virtual {v6, v7, v8, v9, v10}, Lokhttp3/internal/http2/Http2Writer;->frameHeader(IIBB)V

    .line 151
    move-object v6, v0

    iget-object v6, v6, Lokhttp3/internal/http2/Http2Writer;->sink:Lokio/BufferedSink;

    move-object v7, v2

    iget v7, v7, Lokhttp3/internal/http2/ErrorCode;->httpCode:I

    invoke-interface {v6, v7}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    move-result-object v6

    .line 152
    move-object v6, v0

    iget-object v6, v6, Lokhttp3/internal/http2/Http2Writer;->sink:Lokio/BufferedSink;

    invoke-interface {v6}, Lokio/BufferedSink;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 153
    monitor-exit v11

    return-void
.end method

.method public declared-synchronized settings(Lokhttp3/internal/http2/Settings;)V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 186
    move-object v0, p0

    move-object/from16 v1, p1

    move-object v13, p0

    monitor-enter v13

    move-object v8, v0

    :try_start_0
    iget-boolean v8, v8, Lokhttp3/internal/http2/Http2Writer;->closed:Z

    if-eqz v8, :cond_0

    new-instance v8, Ljava/io/IOException;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    const-string v10, "closed"

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v13

    throw v0

    .line 187
    :cond_0
    move-object v8, v1

    :try_start_1
    invoke-virtual {v8}, Lokhttp3/internal/http2/Settings;->size()I

    move-result v8

    const/4 v9, 0x6

    mul-int/lit8 v8, v8, 0x6

    move v2, v8

    .line 188
    const/4 v8, 0x4

    move v3, v8

    .line 189
    const/4 v8, 0x0

    move v4, v8

    .line 190
    const/4 v8, 0x0

    move v5, v8

    .line 191
    move-object v8, v0

    move v9, v5

    move v10, v2

    move v11, v3

    move v12, v4

    invoke-virtual {v8, v9, v10, v11, v12}, Lokhttp3/internal/http2/Http2Writer;->frameHeader(IIBB)V

    .line 192
    const/4 v8, 0x0

    move v6, v8

    :goto_0
    move v8, v6

    const/16 v9, 0xa

    if-ge v8, v9, :cond_4

    .line 193
    move-object v8, v1

    move v9, v6

    invoke-virtual {v8, v9}, Lokhttp3/internal/http2/Settings;->isSet(I)Z

    move-result v8

    if-nez v8, :cond_1

    .line 192
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 194
    :cond_1
    move v8, v6

    move v7, v8

    .line 195
    move v8, v7

    const/4 v9, 0x4

    if-ne v8, v9, :cond_3

    .line 196
    const/4 v8, 0x3

    move v7, v8

    .line 200
    :cond_2
    :goto_2
    move-object v8, v0

    iget-object v8, v8, Lokhttp3/internal/http2/Http2Writer;->sink:Lokio/BufferedSink;

    move v9, v7

    invoke-interface {v8, v9}, Lokio/BufferedSink;->writeShort(I)Lokio/BufferedSink;

    move-result-object v8

    .line 201
    move-object v8, v0

    iget-object v8, v8, Lokhttp3/internal/http2/Http2Writer;->sink:Lokio/BufferedSink;

    move-object v9, v1

    move v10, v6

    invoke-virtual {v9, v10}, Lokhttp3/internal/http2/Settings;->get(I)I

    move-result v9

    invoke-interface {v8, v9}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    move-result-object v8

    goto :goto_1

    .line 197
    :cond_3
    move v8, v7

    const/4 v9, 0x7

    if-ne v8, v9, :cond_2

    .line 198
    const/4 v8, 0x4

    move v7, v8

    goto :goto_2

    .line 203
    :cond_4
    move-object v8, v0

    iget-object v8, v8, Lokhttp3/internal/http2/Http2Writer;->sink:Lokio/BufferedSink;

    invoke-interface {v8}, Lokio/BufferedSink;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 204
    monitor-exit v13

    return-void
.end method

.method public declared-synchronized synReply(ZILjava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/http2/Header;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 132
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v8, p0

    monitor-enter v8

    move-object v4, v0

    :try_start_0
    iget-boolean v4, v4, Lokhttp3/internal/http2/Http2Writer;->closed:Z

    if-eqz v4, :cond_0

    new-instance v4, Ljava/io/IOException;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const-string v6, "closed"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v8

    throw v0

    .line 133
    :cond_0
    move-object v4, v0

    move v5, v1

    move v6, v2

    move-object v7, v3

    :try_start_1
    invoke-virtual {v4, v5, v6, v7}, Lokhttp3/internal/http2/Http2Writer;->headers(ZILjava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 134
    monitor-exit v8

    return-void
.end method

.method public declared-synchronized synStream(ZIILjava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZII",
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/http2/Header;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 126
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v9, p0

    monitor-enter v9

    move-object v5, v0

    :try_start_0
    iget-boolean v5, v5, Lokhttp3/internal/http2/Http2Writer;->closed:Z

    if-eqz v5, :cond_0

    new-instance v5, Ljava/io/IOException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const-string v7, "closed"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v9

    throw v0

    .line 127
    :cond_0
    move-object v5, v0

    move v6, v1

    move v7, v2

    move-object v8, v4

    :try_start_1
    invoke-virtual {v5, v6, v7, v8}, Lokhttp3/internal/http2/Http2Writer;->headers(ZILjava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 128
    monitor-exit v9

    return-void
.end method

.method public declared-synchronized windowUpdate(IJ)V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 252
    move-object v0, p0

    move/from16 v1, p1

    move-wide/from16 v2, p2

    move-object v13, p0

    monitor-enter v13

    move-object v7, v0

    :try_start_0
    iget-boolean v7, v7, Lokhttp3/internal/http2/Http2Writer;->closed:Z

    if-eqz v7, :cond_0

    new-instance v7, Ljava/io/IOException;

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    const-string v9, "closed"

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v13

    throw v0

    .line 253
    :cond_0
    move-wide v7, v2

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-eqz v7, :cond_1

    move-wide v7, v2

    const-wide/32 v9, 0x7fffffff

    cmp-long v7, v7, v9

    if-lez v7, :cond_2

    .line 254
    :cond_1
    :try_start_1
    const-string v7, "windowSizeIncrement == 0 || windowSizeIncrement > 0x7fffffffL: %s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    const/4 v10, 0x0

    move-wide v11, v2

    .line 255
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    .line 254
    invoke-static {v7, v8}, Lokhttp3/internal/http2/Http2;->illegalArgument(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v7

    throw v7

    .line 257
    :cond_2
    const/4 v7, 0x4

    move v4, v7

    .line 258
    const/16 v7, 0x8

    move v5, v7

    .line 259
    const/4 v7, 0x0

    move v6, v7

    .line 260
    move-object v7, v0

    move v8, v1

    move v9, v4

    move v10, v5

    move v11, v6

    invoke-virtual {v7, v8, v9, v10, v11}, Lokhttp3/internal/http2/Http2Writer;->frameHeader(IIBB)V

    .line 261
    move-object v7, v0

    iget-object v7, v7, Lokhttp3/internal/http2/Http2Writer;->sink:Lokio/BufferedSink;

    move-wide v8, v2

    long-to-int v8, v8

    invoke-interface {v7, v8}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    move-result-object v7

    .line 262
    move-object v7, v0

    iget-object v7, v7, Lokhttp3/internal/http2/Http2Writer;->sink:Lokio/BufferedSink;

    invoke-interface {v7}, Lokio/BufferedSink;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 263
    monitor-exit v13

    return-void
.end method
