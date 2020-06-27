.class final Lokhttp3/internal/cache2/Relay;
.super Ljava/lang/Object;
.source "Relay.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/cache2/Relay$RelaySource;
    }
.end annotation


# static fields
.field private static final FILE_HEADER_SIZE:J = 0x20L

.field static final PREFIX_CLEAN:Lokio/ByteString;

.field static final PREFIX_DIRTY:Lokio/ByteString;

.field private static final SOURCE_FILE:I = 0x2

.field private static final SOURCE_UPSTREAM:I = 0x1


# instance fields
.field final buffer:Lokio/Buffer;

.field final bufferMaxSize:J

.field complete:Z

.field file:Ljava/io/RandomAccessFile;

.field private final metadata:Lokio/ByteString;

.field sourceCount:I

.field upstream:Lokio/Source;

.field final upstreamBuffer:Lokio/Buffer;

.field upstreamPos:J

.field upstreamReader:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-string v0, "OkHttp cache v1\n"

    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/cache2/Relay;->PREFIX_CLEAN:Lokio/ByteString;

    .line 46
    const-string v0, "OkHttp DIRTY :(\n"

    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/cache2/Relay;->PREFIX_DIRTY:Lokio/ByteString;

    return-void
.end method

.method private constructor <init>(Ljava/io/RandomAccessFile;Lokio/Source;JLokio/ByteString;J)V
    .locals 12

    .prologue
    .line 107
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object/from16 v5, p5

    move-wide/from16 v6, p6

    move-object v8, v0

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 79
    move-object v8, v0

    new-instance v9, Lokio/Buffer;

    move-object v11, v9

    move-object v9, v11

    move-object v10, v11

    invoke-direct {v10}, Lokio/Buffer;-><init>()V

    iput-object v9, v8, Lokhttp3/internal/cache2/Relay;->upstreamBuffer:Lokio/Buffer;

    .line 94
    move-object v8, v0

    new-instance v9, Lokio/Buffer;

    move-object v11, v9

    move-object v9, v11

    move-object v10, v11

    invoke-direct {v10}, Lokio/Buffer;-><init>()V

    iput-object v9, v8, Lokhttp3/internal/cache2/Relay;->buffer:Lokio/Buffer;

    .line 108
    move-object v8, v0

    move-object v9, v1

    iput-object v9, v8, Lokhttp3/internal/cache2/Relay;->file:Ljava/io/RandomAccessFile;

    .line 109
    move-object v8, v0

    move-object v9, v2

    iput-object v9, v8, Lokhttp3/internal/cache2/Relay;->upstream:Lokio/Source;

    .line 110
    move-object v8, v0

    move-object v9, v2

    if-nez v9, :cond_0

    const/4 v9, 0x1

    :goto_0
    iput-boolean v9, v8, Lokhttp3/internal/cache2/Relay;->complete:Z

    .line 111
    move-object v8, v0

    move-wide v9, v3

    iput-wide v9, v8, Lokhttp3/internal/cache2/Relay;->upstreamPos:J

    .line 112
    move-object v8, v0

    move-object v9, v5

    iput-object v9, v8, Lokhttp3/internal/cache2/Relay;->metadata:Lokio/ByteString;

    .line 113
    move-object v8, v0

    move-wide v9, v6

    iput-wide v9, v8, Lokhttp3/internal/cache2/Relay;->bufferMaxSize:J

    .line 114
    return-void

    .line 110
    :cond_0
    const/4 v9, 0x0

    goto :goto_0
.end method

.method public static edit(Ljava/io/File;Lokio/Source;Lokio/ByteString;J)Lokhttp3/internal/cache2/Relay;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 126
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    new-instance v7, Ljava/io/RandomAccessFile;

    move-object/from16 v16, v7

    move-object/from16 v7, v16

    move-object/from16 v8, v16

    move-object v9, v0

    const-string v10, "rw"

    invoke-direct {v8, v9, v10}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v5, v7

    .line 127
    new-instance v7, Lokhttp3/internal/cache2/Relay;

    move-object/from16 v16, v7

    move-object/from16 v7, v16

    move-object/from16 v8, v16

    move-object v9, v5

    move-object v10, v1

    const-wide/16 v11, 0x0

    move-object v13, v2

    move-wide v14, v3

    invoke-direct/range {v8 .. v15}, Lokhttp3/internal/cache2/Relay;-><init>(Ljava/io/RandomAccessFile;Lokio/Source;JLokio/ByteString;J)V

    move-object v6, v7

    .line 130
    move-object v7, v5

    const-wide/16 v8, 0x0

    invoke-virtual {v7, v8, v9}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 131
    move-object v7, v6

    sget-object v8, Lokhttp3/internal/cache2/Relay;->PREFIX_DIRTY:Lokio/ByteString;

    const-wide/16 v9, -0x1

    const-wide/16 v11, -0x1

    invoke-direct/range {v7 .. v12}, Lokhttp3/internal/cache2/Relay;->writeHeader(Lokio/ByteString;JJ)V

    .line 133
    move-object v7, v6

    move-object v0, v7

    return-object v0
.end method

.method public static read(Ljava/io/File;)Lokhttp3/internal/cache2/Relay;
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 144
    move-object/from16 v0, p0

    new-instance v11, Ljava/io/RandomAccessFile;

    move-object/from16 v20, v11

    move-object/from16 v11, v20

    move-object/from16 v12, v20

    move-object v13, v0

    const-string v14, "rw"

    invoke-direct {v12, v13, v14}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v1, v11

    .line 145
    new-instance v11, Lokhttp3/internal/cache2/FileOperator;

    move-object/from16 v20, v11

    move-object/from16 v11, v20

    move-object/from16 v12, v20

    move-object v13, v1

    invoke-virtual {v13}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v13

    invoke-direct {v12, v13}, Lokhttp3/internal/cache2/FileOperator;-><init>(Ljava/nio/channels/FileChannel;)V

    move-object v2, v11

    .line 148
    new-instance v11, Lokio/Buffer;

    move-object/from16 v20, v11

    move-object/from16 v11, v20

    move-object/from16 v12, v20

    invoke-direct {v12}, Lokio/Buffer;-><init>()V

    move-object v3, v11

    .line 149
    move-object v11, v2

    const-wide/16 v12, 0x0

    move-object v14, v3

    const-wide/16 v15, 0x20

    invoke-virtual/range {v11 .. v16}, Lokhttp3/internal/cache2/FileOperator;->read(JLokio/Buffer;J)V

    .line 150
    move-object v11, v3

    sget-object v12, Lokhttp3/internal/cache2/Relay;->PREFIX_CLEAN:Lokio/ByteString;

    invoke-virtual {v12}, Lokio/ByteString;->size()I

    move-result v12

    int-to-long v12, v12

    invoke-virtual {v11, v12, v13}, Lokio/Buffer;->readByteString(J)Lokio/ByteString;

    move-result-object v11

    move-object v4, v11

    .line 151
    move-object v11, v4

    sget-object v12, Lokhttp3/internal/cache2/Relay;->PREFIX_CLEAN:Lokio/ByteString;

    invoke-virtual {v11, v12}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    new-instance v11, Ljava/io/IOException;

    move-object/from16 v20, v11

    move-object/from16 v11, v20

    move-object/from16 v12, v20

    const-string v13, "unreadable cache file"

    invoke-direct {v12, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 152
    :cond_0
    move-object v11, v3

    invoke-virtual {v11}, Lokio/Buffer;->readLong()J

    move-result-wide v11

    move-wide v5, v11

    .line 153
    move-object v11, v3

    invoke-virtual {v11}, Lokio/Buffer;->readLong()J

    move-result-wide v11

    move-wide v7, v11

    .line 156
    new-instance v11, Lokio/Buffer;

    move-object/from16 v20, v11

    move-object/from16 v11, v20

    move-object/from16 v12, v20

    invoke-direct {v12}, Lokio/Buffer;-><init>()V

    move-object v9, v11

    .line 157
    move-object v11, v2

    const-wide/16 v12, 0x20

    move-wide v14, v5

    add-long/2addr v12, v14

    move-object v14, v9

    move-wide v15, v7

    invoke-virtual/range {v11 .. v16}, Lokhttp3/internal/cache2/FileOperator;->read(JLokio/Buffer;J)V

    .line 158
    move-object v11, v9

    invoke-virtual {v11}, Lokio/Buffer;->readByteString()Lokio/ByteString;

    move-result-object v11

    move-object v10, v11

    .line 161
    new-instance v11, Lokhttp3/internal/cache2/Relay;

    move-object/from16 v20, v11

    move-object/from16 v11, v20

    move-object/from16 v12, v20

    move-object v13, v1

    const/4 v14, 0x0

    move-wide v15, v5

    move-object/from16 v17, v10

    const-wide/16 v18, 0x0

    invoke-direct/range {v12 .. v19}, Lokhttp3/internal/cache2/Relay;-><init>(Ljava/io/RandomAccessFile;Lokio/Source;JLokio/ByteString;J)V

    move-object v0, v11

    return-object v0
.end method

.method private writeHeader(Lokio/ByteString;JJ)V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 166
    move-object v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    new-instance v8, Lokio/Buffer;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    invoke-direct {v9}, Lokio/Buffer;-><init>()V

    move-object v6, v8

    .line 167
    move-object v8, v6

    move-object v9, v1

    invoke-virtual {v8, v9}, Lokio/Buffer;->write(Lokio/ByteString;)Lokio/Buffer;

    move-result-object v8

    .line 168
    move-object v8, v6

    move-wide v9, v2

    invoke-virtual {v8, v9, v10}, Lokio/Buffer;->writeLong(J)Lokio/Buffer;

    move-result-object v8

    .line 169
    move-object v8, v6

    move-wide v9, v4

    invoke-virtual {v8, v9, v10}, Lokio/Buffer;->writeLong(J)Lokio/Buffer;

    move-result-object v8

    .line 170
    move-object v8, v6

    invoke-virtual {v8}, Lokio/Buffer;->size()J

    move-result-wide v8

    const-wide/16 v10, 0x20

    cmp-long v8, v8, v10

    if-eqz v8, :cond_0

    new-instance v8, Ljava/lang/IllegalArgumentException;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    invoke-direct {v9}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v8

    .line 172
    :cond_0
    new-instance v8, Lokhttp3/internal/cache2/FileOperator;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move-object v10, v0

    iget-object v10, v10, Lokhttp3/internal/cache2/Relay;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v10

    invoke-direct {v9, v10}, Lokhttp3/internal/cache2/FileOperator;-><init>(Ljava/nio/channels/FileChannel;)V

    move-object v7, v8

    .line 173
    move-object v8, v7

    const-wide/16 v9, 0x0

    move-object v11, v6

    const-wide/16 v12, 0x20

    invoke-virtual/range {v8 .. v13}, Lokhttp3/internal/cache2/FileOperator;->write(JLokio/Buffer;J)V

    .line 174
    return-void
.end method

.method private writeMetadata(J)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 177
    move-object v0, p0

    move-wide v1, p1

    new-instance v5, Lokio/Buffer;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    invoke-direct {v6}, Lokio/Buffer;-><init>()V

    move-object v3, v5

    .line 178
    move-object v5, v3

    move-object v6, v0

    iget-object v6, v6, Lokhttp3/internal/cache2/Relay;->metadata:Lokio/ByteString;

    invoke-virtual {v5, v6}, Lokio/Buffer;->write(Lokio/ByteString;)Lokio/Buffer;

    move-result-object v5

    .line 180
    new-instance v5, Lokhttp3/internal/cache2/FileOperator;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    move-object v7, v0

    iget-object v7, v7, Lokhttp3/internal/cache2/Relay;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v7

    invoke-direct {v6, v7}, Lokhttp3/internal/cache2/FileOperator;-><init>(Ljava/nio/channels/FileChannel;)V

    move-object v4, v5

    .line 181
    move-object v5, v4

    const-wide/16 v6, 0x20

    move-wide v8, v1

    add-long/2addr v6, v8

    move-object v8, v3

    move-object v9, v0

    iget-object v9, v9, Lokhttp3/internal/cache2/Relay;->metadata:Lokio/ByteString;

    invoke-virtual {v9}, Lokio/ByteString;->size()I

    move-result v9

    int-to-long v9, v9

    invoke-virtual/range {v5 .. v10}, Lokhttp3/internal/cache2/FileOperator;->write(JLokio/Buffer;J)V

    .line 182
    return-void
.end method


# virtual methods
.method commit(J)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 186
    move-object v0, p0

    move-wide v1, p1

    move-object v5, v0

    move-wide v6, v1

    invoke-direct {v5, v6, v7}, Lokhttp3/internal/cache2/Relay;->writeMetadata(J)V

    .line 187
    move-object v5, v0

    iget-object v5, v5, Lokhttp3/internal/cache2/Relay;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/nio/channels/FileChannel;->force(Z)V

    .line 190
    move-object v5, v0

    sget-object v6, Lokhttp3/internal/cache2/Relay;->PREFIX_CLEAN:Lokio/ByteString;

    move-wide v7, v1

    move-object v9, v0

    iget-object v9, v9, Lokhttp3/internal/cache2/Relay;->metadata:Lokio/ByteString;

    invoke-virtual {v9}, Lokio/ByteString;->size()I

    move-result v9

    int-to-long v9, v9

    invoke-direct/range {v5 .. v10}, Lokhttp3/internal/cache2/Relay;->writeHeader(Lokio/ByteString;JJ)V

    .line 191
    move-object v5, v0

    iget-object v5, v5, Lokhttp3/internal/cache2/Relay;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/nio/channels/FileChannel;->force(Z)V

    .line 194
    move-object v5, v0

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    move-object v3, v6

    monitor-enter v5

    .line 195
    move-object v5, v0

    const/4 v6, 0x1

    :try_start_0
    iput-boolean v6, v5, Lokhttp3/internal/cache2/Relay;->complete:Z

    .line 196
    move-object v5, v3

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    move-object v5, v0

    iget-object v5, v5, Lokhttp3/internal/cache2/Relay;->upstream:Lokio/Source;

    invoke-static {v5}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 199
    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Lokhttp3/internal/cache2/Relay;->upstream:Lokio/Source;

    .line 200
    return-void

    .line 196
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
.end method

.method isClosed()Z
    .locals 2

    .prologue
    .line 203
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/internal/cache2/Relay;->file:Ljava/io/RandomAccessFile;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public metadata()Lokio/ByteString;
    .locals 2

    .prologue
    .line 207
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/internal/cache2/Relay;->metadata:Lokio/ByteString;

    move-object v0, v1

    return-object v0
.end method

.method public newSource()Lokio/Source;
    .locals 7

    .prologue
    .line 216
    move-object v0, p0

    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v1, v4

    monitor-enter v3

    .line 217
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Lokhttp3/internal/cache2/Relay;->file:Ljava/io/RandomAccessFile;

    if-nez v3, :cond_0

    const/4 v3, 0x0

    move-object v4, v1

    monitor-exit v4

    move-object v0, v3

    .line 221
    :goto_0
    return-object v0

    .line 218
    :cond_0
    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Lokhttp3/internal/cache2/Relay;->sourceCount:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lokhttp3/internal/cache2/Relay;->sourceCount:I

    .line 219
    move-object v3, v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 221
    new-instance v3, Lokhttp3/internal/cache2/Relay$RelaySource;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Lokhttp3/internal/cache2/Relay$RelaySource;-><init>(Lokhttp3/internal/cache2/Relay;)V

    move-object v0, v3

    goto :goto_0

    .line 219
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
