.class public final Lokhttp3/internal/http2/Http2Connection;
.super Ljava/lang/Object;
.source "Http2Connection.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/http2/Http2Connection$Listener;,
        Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;,
        Lokhttp3/internal/http2/Http2Connection$Builder;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final OKHTTP_CLIENT_WINDOW_SIZE:I = 0x1000000

.field static final executor:Ljava/util/concurrent/ExecutorService;


# instance fields
.field bytesLeftInWriteWindow:J

.field final client:Z

.field final currentPushRequests:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final hostname:Ljava/lang/String;

.field lastGoodStreamId:I

.field final listener:Lokhttp3/internal/http2/Http2Connection$Listener;

.field private nextPingId:I

.field nextStreamId:I

.field okHttpSettings:Lokhttp3/internal/http2/Settings;

.field final peerSettings:Lokhttp3/internal/http2/Settings;

.field private pings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lokhttp3/internal/http2/Ping;",
            ">;"
        }
    .end annotation
.end field

.field private final pushExecutor:Ljava/util/concurrent/ExecutorService;

.field final pushObserver:Lokhttp3/internal/http2/PushObserver;

.field final readerRunnable:Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;

.field receivedInitialPeerSettings:Z

.field shutdown:Z

.field final socket:Ljava/net/Socket;

.field final streams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lokhttp3/internal/http2/Http2Stream;",
            ">;"
        }
    .end annotation
.end field

.field unacknowledgedBytesRead:J

.field final writer:Lokhttp3/internal/http2/Http2Writer;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    .line 55
    const-class v0, Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lokhttp3/internal/http2/Http2Connection;->$assertionsDisabled:Z

    .line 69
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    move-object v10, v0

    move-object v0, v10

    move-object v1, v10

    const/4 v2, 0x0

    const v3, 0x7fffffff

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/SynchronousQueue;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    const-string v8, "OkHttp FramedConnection"

    const/4 v9, 0x1

    .line 71
    invoke-static {v8, v9}, Lokhttp3/internal/Util;->threadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lokhttp3/internal/http2/Http2Connection;->executor:Ljava/util/concurrent/ExecutorService;

    .line 69
    return-void

    .line 55
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lokhttp3/internal/http2/Http2Connection$Builder;)V
    .locals 17

    .prologue
    .line 125
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 81
    move-object v2, v0

    new-instance v3, Ljava/util/LinkedHashMap;

    move-object/from16 v16, v3

    move-object/from16 v3, v16

    move-object/from16 v4, v16

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v3, v2, Lokhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    .line 101
    move-object v2, v0

    const-wide/16 v3, 0x0

    iput-wide v3, v2, Lokhttp3/internal/http2/Http2Connection;->unacknowledgedBytesRead:J

    .line 110
    move-object v2, v0

    new-instance v3, Lokhttp3/internal/http2/Settings;

    move-object/from16 v16, v3

    move-object/from16 v3, v16

    move-object/from16 v4, v16

    invoke-direct {v4}, Lokhttp3/internal/http2/Settings;-><init>()V

    iput-object v3, v2, Lokhttp3/internal/http2/Http2Connection;->okHttpSettings:Lokhttp3/internal/http2/Settings;

    .line 116
    move-object v2, v0

    new-instance v3, Lokhttp3/internal/http2/Settings;

    move-object/from16 v16, v3

    move-object/from16 v3, v16

    move-object/from16 v4, v16

    invoke-direct {v4}, Lokhttp3/internal/http2/Settings;-><init>()V

    iput-object v3, v2, Lokhttp3/internal/http2/Http2Connection;->peerSettings:Lokhttp3/internal/http2/Settings;

    .line 118
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lokhttp3/internal/http2/Http2Connection;->receivedInitialPeerSettings:Z

    .line 779
    move-object v2, v0

    new-instance v3, Ljava/util/LinkedHashSet;

    move-object/from16 v16, v3

    move-object/from16 v3, v16

    move-object/from16 v4, v16

    invoke-direct {v4}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v3, v2, Lokhttp3/internal/http2/Http2Connection;->currentPushRequests:Ljava/util/Set;

    .line 126
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Lokhttp3/internal/http2/Http2Connection$Builder;->pushObserver:Lokhttp3/internal/http2/PushObserver;

    iput-object v3, v2, Lokhttp3/internal/http2/Http2Connection;->pushObserver:Lokhttp3/internal/http2/PushObserver;

    .line 127
    move-object v2, v0

    move-object v3, v1

    iget-boolean v3, v3, Lokhttp3/internal/http2/Http2Connection$Builder;->client:Z

    iput-boolean v3, v2, Lokhttp3/internal/http2/Http2Connection;->client:Z

    .line 128
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Lokhttp3/internal/http2/Http2Connection$Builder;->listener:Lokhttp3/internal/http2/Http2Connection$Listener;

    iput-object v3, v2, Lokhttp3/internal/http2/Http2Connection;->listener:Lokhttp3/internal/http2/Http2Connection$Listener;

    .line 130
    move-object v2, v0

    move-object v3, v1

    iget-boolean v3, v3, Lokhttp3/internal/http2/Http2Connection$Builder;->client:Z

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    :goto_0
    iput v3, v2, Lokhttp3/internal/http2/Http2Connection;->nextStreamId:I

    .line 131
    move-object v2, v1

    iget-boolean v2, v2, Lokhttp3/internal/http2/Http2Connection$Builder;->client:Z

    if-eqz v2, :cond_0

    .line 132
    move-object v2, v0

    move-object/from16 v16, v2

    move-object/from16 v2, v16

    move-object/from16 v3, v16

    iget v3, v3, Lokhttp3/internal/http2/Http2Connection;->nextStreamId:I

    const/4 v4, 0x2

    add-int/lit8 v3, v3, 0x2

    iput v3, v2, Lokhttp3/internal/http2/Http2Connection;->nextStreamId:I

    .line 135
    :cond_0
    move-object v2, v0

    move-object v3, v1

    iget-boolean v3, v3, Lokhttp3/internal/http2/Http2Connection$Builder;->client:Z

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    :goto_1
    iput v3, v2, Lokhttp3/internal/http2/Http2Connection;->nextPingId:I

    .line 141
    move-object v2, v1

    iget-boolean v2, v2, Lokhttp3/internal/http2/Http2Connection$Builder;->client:Z

    if-eqz v2, :cond_1

    .line 142
    move-object v2, v0

    iget-object v2, v2, Lokhttp3/internal/http2/Http2Connection;->okHttpSettings:Lokhttp3/internal/http2/Settings;

    const/4 v3, 0x7

    const/high16 v4, 0x1000000

    invoke-virtual {v2, v3, v4}, Lokhttp3/internal/http2/Settings;->set(II)Lokhttp3/internal/http2/Settings;

    move-result-object v2

    .line 145
    :cond_1
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Lokhttp3/internal/http2/Http2Connection$Builder;->hostname:Ljava/lang/String;

    iput-object v3, v2, Lokhttp3/internal/http2/Http2Connection;->hostname:Ljava/lang/String;

    .line 148
    move-object v2, v0

    new-instance v3, Ljava/util/concurrent/ThreadPoolExecutor;

    move-object/from16 v16, v3

    move-object/from16 v3, v16

    move-object/from16 v4, v16

    const/4 v5, 0x0

    const/4 v6, 0x1

    const-wide/16 v7, 0x3c

    sget-object v9, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v10, Ljava/util/concurrent/LinkedBlockingQueue;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    invoke-direct {v11}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const-string v11, "OkHttp %s Push Observer"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    const/4 v14, 0x0

    move-object v15, v0

    iget-object v15, v15, Lokhttp3/internal/http2/Http2Connection;->hostname:Ljava/lang/String;

    aput-object v15, v13, v14

    .line 150
    invoke-static {v11, v12}, Lokhttp3/internal/Util;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    invoke-static {v11, v12}, Lokhttp3/internal/Util;->threadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v11

    invoke-direct/range {v4 .. v11}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v3, v2, Lokhttp3/internal/http2/Http2Connection;->pushExecutor:Ljava/util/concurrent/ExecutorService;

    .line 151
    move-object v2, v0

    iget-object v2, v2, Lokhttp3/internal/http2/Http2Connection;->peerSettings:Lokhttp3/internal/http2/Settings;

    const/4 v3, 0x7

    const v4, 0xffff

    invoke-virtual {v2, v3, v4}, Lokhttp3/internal/http2/Settings;->set(II)Lokhttp3/internal/http2/Settings;

    move-result-object v2

    .line 152
    move-object v2, v0

    iget-object v2, v2, Lokhttp3/internal/http2/Http2Connection;->peerSettings:Lokhttp3/internal/http2/Settings;

    const/4 v3, 0x5

    const/16 v4, 0x4000

    invoke-virtual {v2, v3, v4}, Lokhttp3/internal/http2/Settings;->set(II)Lokhttp3/internal/http2/Settings;

    move-result-object v2

    .line 153
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lokhttp3/internal/http2/Http2Connection;->peerSettings:Lokhttp3/internal/http2/Settings;

    invoke-virtual {v3}, Lokhttp3/internal/http2/Settings;->getInitialWindowSize()I

    move-result v3

    int-to-long v3, v3

    iput-wide v3, v2, Lokhttp3/internal/http2/Http2Connection;->bytesLeftInWriteWindow:J

    .line 154
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Lokhttp3/internal/http2/Http2Connection$Builder;->socket:Ljava/net/Socket;

    iput-object v3, v2, Lokhttp3/internal/http2/Http2Connection;->socket:Ljava/net/Socket;

    .line 155
    move-object v2, v0

    new-instance v3, Lokhttp3/internal/http2/Http2Writer;

    move-object/from16 v16, v3

    move-object/from16 v3, v16

    move-object/from16 v4, v16

    move-object v5, v1

    iget-object v5, v5, Lokhttp3/internal/http2/Http2Connection$Builder;->sink:Lokio/BufferedSink;

    move-object v6, v0

    iget-boolean v6, v6, Lokhttp3/internal/http2/Http2Connection;->client:Z

    invoke-direct {v4, v5, v6}, Lokhttp3/internal/http2/Http2Writer;-><init>(Lokio/BufferedSink;Z)V

    iput-object v3, v2, Lokhttp3/internal/http2/Http2Connection;->writer:Lokhttp3/internal/http2/Http2Writer;

    .line 157
    move-object v2, v0

    new-instance v3, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;

    move-object/from16 v16, v3

    move-object/from16 v3, v16

    move-object/from16 v4, v16

    move-object v5, v0

    new-instance v6, Lokhttp3/internal/http2/Http2Reader;

    move-object/from16 v16, v6

    move-object/from16 v6, v16

    move-object/from16 v7, v16

    move-object v8, v1

    iget-object v8, v8, Lokhttp3/internal/http2/Http2Connection$Builder;->source:Lokio/BufferedSource;

    move-object v9, v0

    iget-boolean v9, v9, Lokhttp3/internal/http2/Http2Connection;->client:Z

    invoke-direct {v7, v8, v9}, Lokhttp3/internal/http2/Http2Reader;-><init>(Lokio/BufferedSource;Z)V

    invoke-direct {v4, v5, v6}, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;-><init>(Lokhttp3/internal/http2/Http2Connection;Lokhttp3/internal/http2/Http2Reader;)V

    iput-object v3, v2, Lokhttp3/internal/http2/Http2Connection;->readerRunnable:Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;

    .line 158
    return-void

    .line 130
    :cond_2
    const/4 v3, 0x2

    goto/16 :goto_0

    .line 135
    :cond_3
    const/4 v3, 0x2

    goto/16 :goto_1
.end method

.method private newStream(ILjava/util/List;Z)Lokhttp3/internal/http2/Http2Stream;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/http2/Header;",
            ">;Z)",
            "Lokhttp3/internal/http2/Http2Stream;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 210
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move v13, v3

    if-nez v13, :cond_0

    const/4 v13, 0x1

    :goto_0
    move v4, v13

    .line 211
    const/4 v13, 0x0

    move v5, v13

    .line 216
    move-object v13, v0

    iget-object v13, v13, Lokhttp3/internal/http2/Http2Connection;->writer:Lokhttp3/internal/http2/Http2Writer;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    move-object v9, v14

    monitor-enter v13

    .line 217
    move-object v13, v0

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    move-object v10, v14

    :try_start_0
    monitor-enter v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 218
    move-object v13, v0

    :try_start_1
    iget-boolean v13, v13, Lokhttp3/internal/http2/Http2Connection;->shutdown:Z

    if-eqz v13, :cond_1

    .line 219
    new-instance v13, Lokhttp3/internal/http2/ConnectionShutdownException;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    invoke-direct {v14}, Lokhttp3/internal/http2/ConnectionShutdownException;-><init>()V

    throw v13

    .line 228
    :catchall_0
    move-exception v13

    move-object v11, v13

    move-object v13, v10

    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v13, v11

    :try_start_2
    throw v13

    .line 236
    :catchall_1
    move-exception v13

    move-object v12, v13

    move-object v13, v9

    monitor-exit v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v13, v12

    throw v13

    .line 210
    :cond_0
    const/4 v13, 0x0

    goto :goto_0

    .line 221
    :cond_1
    move-object v13, v0

    :try_start_3
    iget v13, v13, Lokhttp3/internal/http2/Http2Connection;->nextStreamId:I

    move v8, v13

    .line 222
    move-object v13, v0

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    iget v14, v14, Lokhttp3/internal/http2/Http2Connection;->nextStreamId:I

    const/4 v15, 0x2

    add-int/lit8 v14, v14, 0x2

    iput v14, v13, Lokhttp3/internal/http2/Http2Connection;->nextStreamId:I

    .line 223
    new-instance v13, Lokhttp3/internal/http2/Http2Stream;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    move v15, v8

    move-object/from16 v16, v0

    move/from16 v17, v4

    move/from16 v18, v5

    move-object/from16 v19, v2

    invoke-direct/range {v14 .. v19}, Lokhttp3/internal/http2/Http2Stream;-><init>(ILokhttp3/internal/http2/Http2Connection;ZZLjava/util/List;)V

    move-object v7, v13

    .line 224
    move v13, v3

    if-eqz v13, :cond_2

    move-object v13, v0

    iget-wide v13, v13, Lokhttp3/internal/http2/Http2Connection;->bytesLeftInWriteWindow:J

    const-wide/16 v15, 0x0

    cmp-long v13, v13, v15

    if-eqz v13, :cond_2

    move-object v13, v7

    iget-wide v13, v13, Lokhttp3/internal/http2/Http2Stream;->bytesLeftInWriteWindow:J

    const-wide/16 v15, 0x0

    cmp-long v13, v13, v15

    if-nez v13, :cond_5

    :cond_2
    const/4 v13, 0x1

    :goto_1
    move v6, v13

    .line 225
    move-object v13, v7

    invoke-virtual {v13}, Lokhttp3/internal/http2/Http2Stream;->isOpen()Z

    move-result v13

    if-eqz v13, :cond_3

    .line 226
    move-object v13, v0

    iget-object v13, v13, Lokhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    move v14, v8

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object v15, v7

    invoke-interface {v13, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .line 228
    :cond_3
    move-object v13, v10

    monitor-exit v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 229
    move v13, v1

    if-nez v13, :cond_6

    .line 230
    move-object v13, v0

    :try_start_4
    iget-object v13, v13, Lokhttp3/internal/http2/Http2Connection;->writer:Lokhttp3/internal/http2/Http2Writer;

    move v14, v4

    move v15, v8

    move/from16 v16, v1

    move-object/from16 v17, v2

    invoke-virtual/range {v13 .. v17}, Lokhttp3/internal/http2/Http2Writer;->synStream(ZIILjava/util/List;)V

    .line 236
    :goto_2
    move-object v13, v9

    monitor-exit v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 238
    move v13, v6

    if-eqz v13, :cond_4

    .line 239
    move-object v13, v0

    iget-object v13, v13, Lokhttp3/internal/http2/Http2Connection;->writer:Lokhttp3/internal/http2/Http2Writer;

    invoke-virtual {v13}, Lokhttp3/internal/http2/Http2Writer;->flush()V

    .line 242
    :cond_4
    move-object v13, v7

    move-object v0, v13

    return-object v0

    .line 224
    :cond_5
    const/4 v13, 0x0

    goto :goto_1

    .line 231
    :cond_6
    move-object v13, v0

    :try_start_5
    iget-boolean v13, v13, Lokhttp3/internal/http2/Http2Connection;->client:Z

    if-eqz v13, :cond_7

    .line 232
    new-instance v13, Ljava/lang/IllegalArgumentException;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const-string v15, "client streams shouldn\'t have associated stream IDs"

    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 234
    :cond_7
    move-object v13, v0

    iget-object v13, v13, Lokhttp3/internal/http2/Http2Connection;->writer:Lokhttp3/internal/http2/Http2Writer;

    move v14, v1

    move v15, v8

    move-object/from16 v16, v2

    invoke-virtual/range {v13 .. v16}, Lokhttp3/internal/http2/Http2Writer;->pushPromise(IILjava/util/List;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2
.end method


# virtual methods
.method addBytesToWriteWindow(J)V
    .locals 9

    .prologue
    .line 299
    move-object v0, p0

    move-wide v1, p1

    move-object v3, v0

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    iget-wide v4, v4, Lokhttp3/internal/http2/Http2Connection;->bytesLeftInWriteWindow:J

    move-wide v6, v1

    add-long/2addr v4, v6

    iput-wide v4, v3, Lokhttp3/internal/http2/Http2Connection;->bytesLeftInWriteWindow:J

    .line 300
    move-wide v3, v1

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 301
    :cond_0
    return-void
.end method

.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 404
    move-object v0, p0

    move-object v1, v0

    sget-object v2, Lokhttp3/internal/http2/ErrorCode;->NO_ERROR:Lokhttp3/internal/http2/ErrorCode;

    sget-object v3, Lokhttp3/internal/http2/ErrorCode;->CANCEL:Lokhttp3/internal/http2/ErrorCode;

    invoke-virtual {v1, v2, v3}, Lokhttp3/internal/http2/Http2Connection;->close(Lokhttp3/internal/http2/ErrorCode;Lokhttp3/internal/http2/ErrorCode;)V

    .line 405
    return-void
.end method

.method close(Lokhttp3/internal/http2/ErrorCode;Lokhttp3/internal/http2/ErrorCode;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 408
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    sget-boolean v11, Lokhttp3/internal/http2/Http2Connection;->$assertionsDisabled:Z

    if-nez v11, :cond_0

    move-object v11, v0

    invoke-static {v11}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    new-instance v11, Ljava/lang/AssertionError;

    move-object v13, v11

    move-object v11, v13

    move-object v12, v13

    invoke-direct {v12}, Ljava/lang/AssertionError;-><init>()V

    throw v11

    .line 409
    :cond_0
    const/4 v11, 0x0

    move-object v3, v11

    .line 411
    move-object v11, v0

    move-object v12, v1

    :try_start_0
    invoke-virtual {v11, v12}, Lokhttp3/internal/http2/Http2Connection;->shutdown(Lokhttp3/internal/http2/ErrorCode;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 416
    :goto_0
    const/4 v11, 0x0

    move-object v4, v11

    .line 417
    const/4 v11, 0x0

    move-object v5, v11

    .line 418
    move-object v11, v0

    move-object v13, v11

    move-object v11, v13

    move-object v12, v13

    move-object v6, v12

    monitor-enter v11

    .line 419
    move-object v11, v0

    :try_start_1
    iget-object v11, v11, Lokhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    invoke-interface {v11}, Ljava/util/Map;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_1

    .line 420
    move-object v11, v0

    iget-object v11, v11, Lokhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    invoke-interface {v11}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v11

    move-object v12, v0

    iget-object v12, v12, Lokhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    invoke-interface {v12}, Ljava/util/Map;->size()I

    move-result v12

    new-array v12, v12, [Lokhttp3/internal/http2/Http2Stream;

    invoke-interface {v11, v12}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Lokhttp3/internal/http2/Http2Stream;

    move-object v4, v11

    .line 421
    move-object v11, v0

    iget-object v11, v11, Lokhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    invoke-interface {v11}, Ljava/util/Map;->clear()V

    .line 423
    :cond_1
    move-object v11, v0

    iget-object v11, v11, Lokhttp3/internal/http2/Http2Connection;->pings:Ljava/util/Map;

    if-eqz v11, :cond_2

    .line 424
    move-object v11, v0

    iget-object v11, v11, Lokhttp3/internal/http2/Http2Connection;->pings:Ljava/util/Map;

    invoke-interface {v11}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v11

    move-object v12, v0

    iget-object v12, v12, Lokhttp3/internal/http2/Http2Connection;->pings:Ljava/util/Map;

    invoke-interface {v12}, Ljava/util/Map;->size()I

    move-result v12

    new-array v12, v12, [Lokhttp3/internal/http2/Ping;

    invoke-interface {v11, v12}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Lokhttp3/internal/http2/Ping;

    move-object v5, v11

    .line 425
    move-object v11, v0

    const/4 v12, 0x0

    iput-object v12, v11, Lokhttp3/internal/http2/Http2Connection;->pings:Ljava/util/Map;

    .line 427
    :cond_2
    move-object v11, v6

    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 429
    move-object v11, v4

    if-eqz v11, :cond_4

    .line 430
    move-object v11, v4

    move-object v6, v11

    move-object v11, v6

    array-length v11, v11

    move v7, v11

    const/4 v11, 0x0

    move v8, v11

    :goto_1
    move v11, v8

    move v12, v7

    if-ge v11, v12, :cond_4

    move-object v11, v6

    move v12, v8

    aget-object v11, v11, v12

    move-object v9, v11

    .line 432
    move-object v11, v9

    move-object v12, v2

    :try_start_2
    invoke-virtual {v11, v12}, Lokhttp3/internal/http2/Http2Stream;->close(Lokhttp3/internal/http2/ErrorCode;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 430
    :cond_3
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 412
    :catch_0
    move-exception v11

    move-object v4, v11

    .line 413
    move-object v11, v4

    move-object v3, v11

    goto :goto_0

    .line 427
    :catchall_0
    move-exception v11

    move-object v7, v11

    move-object v11, v6

    :try_start_3
    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v11, v7

    throw v11

    .line 433
    :catch_1
    move-exception v11

    move-object v10, v11

    .line 434
    move-object v11, v3

    if-eqz v11, :cond_3

    move-object v11, v10

    move-object v3, v11

    goto :goto_2

    .line 439
    :cond_4
    move-object v11, v5

    if-eqz v11, :cond_5

    .line 440
    move-object v11, v5

    move-object v6, v11

    move-object v11, v6

    array-length v11, v11

    move v7, v11

    const/4 v11, 0x0

    move v8, v11

    :goto_3
    move v11, v8

    move v12, v7

    if-ge v11, v12, :cond_5

    move-object v11, v6

    move v12, v8

    aget-object v11, v11, v12

    move-object v9, v11

    .line 441
    move-object v11, v9

    invoke-virtual {v11}, Lokhttp3/internal/http2/Ping;->cancel()V

    .line 440
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 447
    :cond_5
    move-object v11, v0

    :try_start_4
    iget-object v11, v11, Lokhttp3/internal/http2/Http2Connection;->writer:Lokhttp3/internal/http2/Http2Writer;

    invoke-virtual {v11}, Lokhttp3/internal/http2/Http2Writer;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 454
    :cond_6
    :goto_4
    move-object v11, v0

    :try_start_5
    iget-object v11, v11, Lokhttp3/internal/http2/Http2Connection;->socket:Ljava/net/Socket;

    invoke-virtual {v11}, Ljava/net/Socket;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 459
    :goto_5
    move-object v11, v3

    if-eqz v11, :cond_7

    move-object v11, v3

    throw v11

    .line 448
    :catch_2
    move-exception v11

    move-object v6, v11

    .line 449
    move-object v11, v3

    if-nez v11, :cond_6

    move-object v11, v6

    move-object v3, v11

    goto :goto_4

    .line 455
    :catch_3
    move-exception v11

    move-object v6, v11

    .line 456
    move-object v11, v6

    move-object v3, v11

    goto :goto_5

    .line 460
    :cond_7
    return-void
.end method

.method public flush()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 375
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/internal/http2/Http2Connection;->writer:Lokhttp3/internal/http2/Http2Writer;

    invoke-virtual {v1}, Lokhttp3/internal/http2/Http2Writer;->flush()V

    .line 376
    return-void
.end method

.method public getProtocol()Lokhttp3/Protocol;
    .locals 2

    .prologue
    .line 162
    move-object v0, p0

    sget-object v1, Lokhttp3/Protocol;->HTTP_2:Lokhttp3/Protocol;

    move-object v0, v1

    return-object v0
.end method

.method declared-synchronized getStream(I)Lokhttp3/internal/http2/Http2Stream;
    .locals 5

    .prologue
    .line 173
    move-object v0, p0

    move v1, p1

    move-object v4, p0

    monitor-enter v4

    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lokhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    move v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lokhttp3/internal/http2/Http2Stream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v2

    monitor-exit v4

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0
.end method

.method public declared-synchronized isShutdown()Z
    .locals 3

    .prologue
    .line 500
    move-object v0, p0

    move-object v2, p0

    monitor-enter v2

    move-object v1, v0

    :try_start_0
    iget-boolean v1, v1, Lokhttp3/internal/http2/Http2Connection;->shutdown:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v1

    monitor-exit v2

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public declared-synchronized maxConcurrentStreams()I
    .locals 4

    .prologue
    .line 183
    move-object v0, p0

    move-object v3, p0

    monitor-enter v3

    move-object v1, v0

    :try_start_0
    iget-object v1, v1, Lokhttp3/internal/http2/Http2Connection;->peerSettings:Lokhttp3/internal/http2/Settings;

    const v2, 0x7fffffff

    invoke-virtual {v1, v2}, Lokhttp3/internal/http2/Settings;->getMaxConcurrentStreams(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    move v0, v1

    monitor-exit v3

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0
.end method

.method public newStream(Ljava/util/List;Z)Lokhttp3/internal/http2/Http2Stream;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/http2/Header;",
            ">;Z)",
            "Lokhttp3/internal/http2/Http2Stream;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 205
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    const/4 v4, 0x0

    move-object v5, v1

    move v6, v2

    invoke-direct {v3, v4, v5, v6}, Lokhttp3/internal/http2/Http2Connection;->newStream(ILjava/util/List;Z)Lokhttp3/internal/http2/Http2Stream;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method public declared-synchronized openStreamCount()I
    .locals 3

    .prologue
    .line 169
    move-object v0, p0

    move-object v2, p0

    monitor-enter v2

    move-object v1, v0

    :try_start_0
    iget-object v1, v1, Lokhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    move v0, v1

    monitor-exit v2

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public ping()Lokhttp3/internal/http2/Ping;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 334
    move-object v0, p0

    new-instance v5, Lokhttp3/internal/http2/Ping;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    invoke-direct {v6}, Lokhttp3/internal/http2/Ping;-><init>()V

    move-object v1, v5

    .line 336
    move-object v5, v0

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v3, v6

    monitor-enter v5

    .line 337
    move-object v5, v0

    :try_start_0
    iget-boolean v5, v5, Lokhttp3/internal/http2/Http2Connection;->shutdown:Z

    if-eqz v5, :cond_0

    .line 338
    new-instance v5, Lokhttp3/internal/http2/ConnectionShutdownException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    invoke-direct {v6}, Lokhttp3/internal/http2/ConnectionShutdownException;-><init>()V

    throw v5

    .line 344
    :catchall_0
    move-exception v5

    move-object v4, v5

    move-object v5, v3

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v5, v4

    throw v5

    .line 340
    :cond_0
    move-object v5, v0

    :try_start_1
    iget v5, v5, Lokhttp3/internal/http2/Http2Connection;->nextPingId:I

    move v2, v5

    .line 341
    move-object v5, v0

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    iget v6, v6, Lokhttp3/internal/http2/Http2Connection;->nextPingId:I

    const/4 v7, 0x2

    add-int/lit8 v6, v6, 0x2

    iput v6, v5, Lokhttp3/internal/http2/Http2Connection;->nextPingId:I

    .line 342
    move-object v5, v0

    iget-object v5, v5, Lokhttp3/internal/http2/Http2Connection;->pings:Ljava/util/Map;

    if-nez v5, :cond_1

    move-object v5, v0

    new-instance v6, Ljava/util/LinkedHashMap;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v6, v5, Lokhttp3/internal/http2/Http2Connection;->pings:Ljava/util/Map;

    .line 343
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Lokhttp3/internal/http2/Http2Connection;->pings:Ljava/util/Map;

    move v6, v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v7, v1

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 344
    move-object v5, v3

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 345
    move-object v5, v0

    const/4 v6, 0x0

    move v7, v2

    const v8, 0x4f4b6f6b

    move-object v9, v1

    invoke-virtual {v5, v6, v7, v8, v9}, Lokhttp3/internal/http2/Http2Connection;->writePing(ZIILokhttp3/internal/http2/Ping;)V

    .line 346
    move-object v5, v1

    move-object v0, v5

    return-object v0
.end method

.method pushDataLater(ILokio/BufferedSource;IZ)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 829
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    new-instance v6, Lokio/Buffer;

    move-object/from16 v16, v6

    move-object/from16 v6, v16

    move-object/from16 v7, v16

    invoke-direct {v7}, Lokio/Buffer;-><init>()V

    move-object v5, v6

    .line 830
    move-object v6, v2

    move v7, v3

    int-to-long v7, v7

    invoke-interface {v6, v7, v8}, Lokio/BufferedSource;->require(J)V

    .line 831
    move-object v6, v2

    move-object v7, v5

    move v8, v3

    int-to-long v8, v8

    invoke-interface {v6, v7, v8, v9}, Lokio/BufferedSource;->read(Lokio/Buffer;J)J

    move-result-wide v6

    .line 832
    move-object v6, v5

    invoke-virtual {v6}, Lokio/Buffer;->size()J

    move-result-wide v6

    move v8, v3

    int-to-long v8, v8

    cmp-long v6, v6, v8

    if-eqz v6, :cond_0

    new-instance v6, Ljava/io/IOException;

    move-object/from16 v16, v6

    move-object/from16 v6, v16

    move-object/from16 v7, v16

    new-instance v8, Ljava/lang/StringBuilder;

    move-object/from16 v16, v8

    move-object/from16 v8, v16

    move-object/from16 v9, v16

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object v9, v5

    invoke-virtual {v9}, Lokio/Buffer;->size()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " != "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move v9, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 833
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Lokhttp3/internal/http2/Http2Connection;->pushExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v7, Lokhttp3/internal/http2/Http2Connection$6;

    move-object/from16 v16, v7

    move-object/from16 v7, v16

    move-object/from16 v8, v16

    move-object v9, v0

    const-string v10, "OkHttp %s Push Data[%s]"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    const/4 v13, 0x0

    move-object v14, v0

    iget-object v14, v14, Lokhttp3/internal/http2/Http2Connection;->hostname:Ljava/lang/String;

    aput-object v14, v12, v13

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    const/4 v13, 0x1

    move v14, v1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    move v12, v1

    move-object v13, v5

    move v14, v3

    move v15, v4

    invoke-direct/range {v8 .. v15}, Lokhttp3/internal/http2/Http2Connection$6;-><init>(Lokhttp3/internal/http2/Http2Connection;Ljava/lang/String;[Ljava/lang/Object;ILokio/Buffer;IZ)V

    invoke-interface {v6, v7}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 847
    return-void
.end method

.method pushHeadersLater(ILjava/util/List;Z)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/http2/Header;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 807
    move-object v0, p0

    move v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object v4, v0

    iget-object v4, v4, Lokhttp3/internal/http2/Http2Connection;->pushExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v5, Lokhttp3/internal/http2/Http2Connection$5;

    move-object v13, v5

    move-object v5, v13

    move-object v6, v13

    move-object v7, v0

    const-string v8, "OkHttp %s Push Headers[%s]"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x0

    move-object v12, v0

    iget-object v12, v12, Lokhttp3/internal/http2/Http2Connection;->hostname:Ljava/lang/String;

    aput-object v12, v10, v11

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x1

    move v12, v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    move v10, v1

    move-object v11, v2

    move v12, v3

    invoke-direct/range {v6 .. v12}, Lokhttp3/internal/http2/Http2Connection$5;-><init>(Lokhttp3/internal/http2/Http2Connection;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;Z)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 821
    return-void
.end method

.method pushRequestLater(ILjava/util/List;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/http2/Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 782
    move-object v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object v5, v0

    move-object v14, v5

    move-object v5, v14

    move-object v6, v14

    move-object v3, v6

    monitor-enter v5

    .line 783
    move-object v5, v0

    :try_start_0
    iget-object v5, v5, Lokhttp3/internal/http2/Http2Connection;->currentPushRequests:Ljava/util/Set;

    move v6, v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 784
    move-object v5, v0

    move v6, v1

    sget-object v7, Lokhttp3/internal/http2/ErrorCode;->PROTOCOL_ERROR:Lokhttp3/internal/http2/ErrorCode;

    invoke-virtual {v5, v6, v7}, Lokhttp3/internal/http2/Http2Connection;->writeSynResetLater(ILokhttp3/internal/http2/ErrorCode;)V

    .line 785
    move-object v5, v3

    monitor-exit v5

    .line 803
    :goto_0
    return-void

    .line 787
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Lokhttp3/internal/http2/Http2Connection;->currentPushRequests:Ljava/util/Set;

    move v6, v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 788
    move-object v5, v3

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 789
    move-object v5, v0

    iget-object v5, v5, Lokhttp3/internal/http2/Http2Connection;->pushExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v6, Lokhttp3/internal/http2/Http2Connection$4;

    move-object v14, v6

    move-object v6, v14

    move-object v7, v14

    move-object v8, v0

    const-string v9, "OkHttp %s Push Request[%s]"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x0

    move-object v13, v0

    iget-object v13, v13, Lokhttp3/internal/http2/Http2Connection;->hostname:Ljava/lang/String;

    aput-object v13, v11, v12

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x1

    move v13, v1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    move v11, v1

    move-object v12, v2

    invoke-direct/range {v7 .. v12}, Lokhttp3/internal/http2/Http2Connection$4;-><init>(Lokhttp3/internal/http2/Http2Connection;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;)V

    invoke-interface {v5, v6}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 803
    goto :goto_0

    .line 788
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

.method pushResetLater(ILokhttp3/internal/http2/ErrorCode;)V
    .locals 13

    .prologue
    .line 850
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Lokhttp3/internal/http2/Http2Connection;->pushExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v4, Lokhttp3/internal/http2/Http2Connection$7;

    move-object v12, v4

    move-object v4, v12

    move-object v5, v12

    move-object v6, v0

    const-string v7, "OkHttp %s Push Reset[%s]"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x0

    move-object v11, v0

    iget-object v11, v11, Lokhttp3/internal/http2/Http2Connection;->hostname:Ljava/lang/String;

    aput-object v11, v9, v10

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x1

    move v11, v1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    move v9, v1

    move-object v10, v2

    invoke-direct/range {v5 .. v10}, Lokhttp3/internal/http2/Http2Connection$7;-><init>(Lokhttp3/internal/http2/Http2Connection;Ljava/lang/String;[Ljava/lang/Object;ILokhttp3/internal/http2/ErrorCode;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 858
    return-void
.end method

.method public pushStream(ILjava/util/List;Z)Lokhttp3/internal/http2/Http2Stream;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/http2/Header;",
            ">;Z)",
            "Lokhttp3/internal/http2/Http2Stream;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 195
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v0

    iget-boolean v4, v4, Lokhttp3/internal/http2/Http2Connection;->client:Z

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/IllegalStateException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const-string v6, "Client cannot push requests."

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 196
    :cond_0
    move-object v4, v0

    move v5, v1

    move-object v6, v2

    move v7, v3

    invoke-direct {v4, v5, v6, v7}, Lokhttp3/internal/http2/Http2Connection;->newStream(ILjava/util/List;Z)Lokhttp3/internal/http2/Http2Stream;

    move-result-object v4

    move-object v0, v4

    return-object v0
.end method

.method pushedStream(I)Z
    .locals 4

    .prologue
    .line 775
    move-object v0, p0

    move v1, p1

    move v2, v1

    if-eqz v2, :cond_0

    move v2, v1

    const/4 v3, 0x1

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    return v0

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method declared-synchronized removePing(I)Lokhttp3/internal/http2/Ping;
    .locals 5

    .prologue
    .line 371
    move-object v0, p0

    move v1, p1

    move-object v4, p0

    monitor-enter v4

    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lokhttp3/internal/http2/Http2Connection;->pings:Ljava/util/Map;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lokhttp3/internal/http2/Http2Connection;->pings:Ljava/util/Map;

    move v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lokhttp3/internal/http2/Ping;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    move-object v0, v2

    monitor-exit v4

    return-object v0

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0
.end method

.method declared-synchronized removeStream(I)Lokhttp3/internal/http2/Http2Stream;
    .locals 6

    .prologue
    .line 177
    move-object v0, p0

    move v1, p1

    move-object v5, p0

    monitor-enter v5

    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Lokhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    move v4, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lokhttp3/internal/http2/Http2Stream;

    move-object v2, v3

    .line 178
    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    move-object v3, v2

    move-object v0, v3

    monitor-exit v5

    return-object v0

    .line 177
    :catchall_0
    move-exception v0

    monitor-exit v5

    throw v0
.end method

.method public setSettings(Lokhttp3/internal/http2/Settings;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 488
    move-object v0, p0

    move-object v1, p1

    move-object v6, v0

    iget-object v6, v6, Lokhttp3/internal/http2/Http2Connection;->writer:Lokhttp3/internal/http2/Http2Writer;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    move-object v2, v7

    monitor-enter v6

    .line 489
    move-object v6, v0

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    move-object v3, v7

    :try_start_0
    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 490
    move-object v6, v0

    :try_start_1
    iget-boolean v6, v6, Lokhttp3/internal/http2/Http2Connection;->shutdown:Z

    if-eqz v6, :cond_0

    .line 491
    new-instance v6, Lokhttp3/internal/http2/ConnectionShutdownException;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Lokhttp3/internal/http2/ConnectionShutdownException;-><init>()V

    throw v6

    .line 495
    :catchall_0
    move-exception v6

    move-object v4, v6

    move-object v6, v3

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v6, v4

    :try_start_2
    throw v6

    .line 496
    :catchall_1
    move-exception v6

    move-object v5, v6

    move-object v6, v2

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v6, v5

    throw v6

    .line 493
    :cond_0
    move-object v6, v0

    :try_start_3
    iget-object v6, v6, Lokhttp3/internal/http2/Http2Connection;->okHttpSettings:Lokhttp3/internal/http2/Settings;

    move-object v7, v1

    invoke-virtual {v6, v7}, Lokhttp3/internal/http2/Settings;->merge(Lokhttp3/internal/http2/Settings;)V

    .line 494
    move-object v6, v0

    iget-object v6, v6, Lokhttp3/internal/http2/Http2Connection;->writer:Lokhttp3/internal/http2/Http2Writer;

    move-object v7, v1

    invoke-virtual {v6, v7}, Lokhttp3/internal/http2/Http2Writer;->settings(Lokhttp3/internal/http2/Settings;)V

    .line 495
    move-object v6, v3

    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 496
    move-object v6, v2

    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 497
    return-void
.end method

.method public shutdown(Lokhttp3/internal/http2/ErrorCode;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 384
    move-object v0, p0

    move-object v1, p1

    move-object v7, v0

    iget-object v7, v7, Lokhttp3/internal/http2/Http2Connection;->writer:Lokhttp3/internal/http2/Http2Writer;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v2, v8

    monitor-enter v7

    .line 386
    move-object v7, v0

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v4, v8

    :try_start_0
    monitor-enter v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 387
    move-object v7, v0

    :try_start_1
    iget-boolean v7, v7, Lokhttp3/internal/http2/Http2Connection;->shutdown:Z

    if-eqz v7, :cond_0

    .line 388
    move-object v7, v4

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v7, v2

    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 397
    :goto_0
    return-void

    .line 390
    :cond_0
    move-object v7, v0

    const/4 v8, 0x1

    :try_start_3
    iput-boolean v8, v7, Lokhttp3/internal/http2/Http2Connection;->shutdown:Z

    .line 391
    move-object v7, v0

    iget v7, v7, Lokhttp3/internal/http2/Http2Connection;->lastGoodStreamId:I

    move v3, v7

    .line 392
    move-object v7, v4

    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 395
    move-object v7, v0

    :try_start_4
    iget-object v7, v7, Lokhttp3/internal/http2/Http2Connection;->writer:Lokhttp3/internal/http2/Http2Writer;

    move v8, v3

    move-object v9, v1

    sget-object v10, Lokhttp3/internal/Util;->EMPTY_BYTE_ARRAY:[B

    invoke-virtual {v7, v8, v9, v10}, Lokhttp3/internal/http2/Http2Writer;->goAway(ILokhttp3/internal/http2/ErrorCode;[B)V

    .line 396
    move-object v7, v2

    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 397
    goto :goto_0

    .line 392
    :catchall_0
    move-exception v7

    move-object v5, v7

    move-object v7, v4

    :try_start_5
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object v7, v5

    :try_start_6
    throw v7

    .line 396
    :catchall_1
    move-exception v7

    move-object v6, v7

    move-object v7, v2

    monitor-exit v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-object v7, v6

    throw v7
.end method

.method public start()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 467
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lokhttp3/internal/http2/Http2Connection;->start(Z)V

    .line 468
    return-void
.end method

.method start(Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 475
    move-object v0, p0

    move v1, p1

    move v3, v1

    if-eqz v3, :cond_0

    .line 476
    move-object v3, v0

    iget-object v3, v3, Lokhttp3/internal/http2/Http2Connection;->writer:Lokhttp3/internal/http2/Http2Writer;

    invoke-virtual {v3}, Lokhttp3/internal/http2/Http2Writer;->connectionPreface()V

    .line 477
    move-object v3, v0

    iget-object v3, v3, Lokhttp3/internal/http2/Http2Connection;->writer:Lokhttp3/internal/http2/Http2Writer;

    move-object v4, v0

    iget-object v4, v4, Lokhttp3/internal/http2/Http2Connection;->okHttpSettings:Lokhttp3/internal/http2/Settings;

    invoke-virtual {v3, v4}, Lokhttp3/internal/http2/Http2Writer;->settings(Lokhttp3/internal/http2/Settings;)V

    .line 478
    move-object v3, v0

    iget-object v3, v3, Lokhttp3/internal/http2/Http2Connection;->okHttpSettings:Lokhttp3/internal/http2/Settings;

    invoke-virtual {v3}, Lokhttp3/internal/http2/Settings;->getInitialWindowSize()I

    move-result v3

    move v2, v3

    .line 479
    move v3, v2

    const v4, 0xffff

    if-eq v3, v4, :cond_0

    .line 480
    move-object v3, v0

    iget-object v3, v3, Lokhttp3/internal/http2/Http2Connection;->writer:Lokhttp3/internal/http2/Http2Writer;

    const/4 v4, 0x0

    move v5, v2

    const v6, 0xffff

    sub-int/2addr v5, v6

    int-to-long v5, v5

    invoke-virtual {v3, v4, v5, v6}, Lokhttp3/internal/http2/Http2Writer;->windowUpdate(IJ)V

    .line 483
    :cond_0
    new-instance v3, Ljava/lang/Thread;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    iget-object v5, v5, Lokhttp3/internal/http2/Http2Connection;->readerRunnable:Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 484
    return-void
.end method

.method public writeData(IZLokio/Buffer;J)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 264
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-wide/from16 v4, p4

    move-wide v10, v4

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-nez v10, :cond_1

    .line 265
    move-object v10, v0

    iget-object v10, v10, Lokhttp3/internal/http2/Http2Connection;->writer:Lokhttp3/internal/http2/Http2Writer;

    move v11, v2

    move v12, v1

    move-object v13, v3

    const/4 v14, 0x0

    invoke-virtual {v10, v11, v12, v13, v14}, Lokhttp3/internal/http2/Http2Writer;->data(ZILokio/Buffer;I)V

    .line 293
    :goto_0
    return-void

    .line 285
    :cond_0
    move-wide v10, v4

    move-object v12, v0

    :try_start_0
    iget-wide v12, v12, Lokhttp3/internal/http2/Http2Connection;->bytesLeftInWriteWindow:J

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    long-to-int v10, v10

    move v6, v10

    .line 286
    move v10, v6

    move-object v11, v0

    iget-object v11, v11, Lokhttp3/internal/http2/Http2Connection;->writer:Lokhttp3/internal/http2/Http2Writer;

    invoke-virtual {v11}, Lokhttp3/internal/http2/Http2Writer;->maxDataLength()I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    move v6, v10

    .line 287
    move-object v10, v0

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    iget-wide v11, v11, Lokhttp3/internal/http2/Http2Connection;->bytesLeftInWriteWindow:J

    move v13, v6

    int-to-long v13, v13

    sub-long/2addr v11, v13

    iput-wide v11, v10, Lokhttp3/internal/http2/Http2Connection;->bytesLeftInWriteWindow:J

    .line 288
    move-object v10, v7

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 290
    move-wide v10, v4

    move v12, v6

    int-to-long v12, v12

    sub-long/2addr v10, v12

    move-wide v4, v10

    .line 291
    move-object v10, v0

    iget-object v10, v10, Lokhttp3/internal/http2/Http2Connection;->writer:Lokhttp3/internal/http2/Http2Writer;

    move v11, v2

    if-eqz v11, :cond_3

    move-wide v11, v4

    const-wide/16 v13, 0x0

    cmp-long v11, v11, v13

    if-nez v11, :cond_3

    const/4 v11, 0x1

    :goto_1
    move v12, v1

    move-object v13, v3

    move v14, v6

    invoke-virtual {v10, v11, v12, v13, v14}, Lokhttp3/internal/http2/Http2Writer;->data(ZILokio/Buffer;I)V

    .line 269
    :cond_1
    move-wide v10, v4

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-lez v10, :cond_4

    .line 271
    move-object v10, v0

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    move-object v7, v11

    monitor-enter v10

    .line 273
    :goto_2
    move-object v10, v0

    :try_start_1
    iget-wide v10, v10, Lokhttp3/internal/http2/Http2Connection;->bytesLeftInWriteWindow:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-gtz v10, :cond_0

    .line 276
    move-object v10, v0

    iget-object v10, v10, Lokhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    move v11, v1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 277
    new-instance v10, Ljava/io/IOException;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    const-string v12, "stream closed"

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 281
    :catch_0
    move-exception v10

    move-object v8, v10

    .line 282
    :try_start_2
    new-instance v10, Ljava/io/InterruptedIOException;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    invoke-direct {v11}, Ljava/io/InterruptedIOException;-><init>()V

    throw v10

    .line 288
    :catchall_0
    move-exception v10

    move-object v9, v10

    move-object v10, v7

    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v10, v9

    throw v10

    .line 279
    :cond_2
    move-object v10, v0

    :try_start_3
    invoke-virtual {v10}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 291
    :cond_3
    const/4 v11, 0x0

    goto :goto_1

    .line 293
    :cond_4
    goto/16 :goto_0
.end method

.method writePing(ZIILokhttp3/internal/http2/Ping;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 363
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object/from16 v4, p4

    move-object v7, v0

    iget-object v7, v7, Lokhttp3/internal/http2/Http2Connection;->writer:Lokhttp3/internal/http2/Http2Writer;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v5, v8

    monitor-enter v7

    .line 365
    move-object v7, v4

    if-eqz v7, :cond_0

    move-object v7, v4

    :try_start_0
    invoke-virtual {v7}, Lokhttp3/internal/http2/Ping;->send()V

    .line 366
    :cond_0
    move-object v7, v0

    iget-object v7, v7, Lokhttp3/internal/http2/Http2Connection;->writer:Lokhttp3/internal/http2/Http2Writer;

    move v8, v1

    move v9, v2

    move v10, v3

    invoke-virtual {v7, v8, v9, v10}, Lokhttp3/internal/http2/Http2Writer;->ping(ZII)V

    .line 367
    move-object v7, v5

    monitor-exit v7

    .line 368
    return-void

    .line 367
    :catchall_0
    move-exception v7

    move-object v6, v7

    move-object v7, v5

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v7, v6

    throw v7
.end method

.method writePingLater(ZIILokhttp3/internal/http2/Ping;)V
    .locals 16

    .prologue
    .line 351
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    sget-object v5, Lokhttp3/internal/http2/Http2Connection;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v6, Lokhttp3/internal/http2/Http2Connection$3;

    move-object v15, v6

    move-object v6, v15

    move-object v7, v15

    move-object v8, v0

    const-string v9, "OkHttp %s ping %08x%08x"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    const/4 v12, 0x0

    move-object v13, v0

    iget-object v13, v13, Lokhttp3/internal/http2/Http2Connection;->hostname:Ljava/lang/String;

    aput-object v13, v11, v12

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    const/4 v12, 0x1

    move v13, v2

    .line 352
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    const/4 v12, 0x2

    move v13, v3

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    move v11, v1

    move v12, v2

    move v13, v3

    move-object v14, v4

    invoke-direct/range {v7 .. v14}, Lokhttp3/internal/http2/Http2Connection$3;-><init>(Lokhttp3/internal/http2/Http2Connection;Ljava/lang/String;[Ljava/lang/Object;ZIILokhttp3/internal/http2/Ping;)V

    .line 351
    invoke-interface {v5, v6}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 360
    return-void
.end method

.method writeSynReply(IZLjava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
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
    .line 247
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, v0

    iget-object v4, v4, Lokhttp3/internal/http2/Http2Connection;->writer:Lokhttp3/internal/http2/Http2Writer;

    move v5, v2

    move v6, v1

    move-object v7, v3

    invoke-virtual {v4, v5, v6, v7}, Lokhttp3/internal/http2/Http2Writer;->synReply(ZILjava/util/List;)V

    .line 248
    return-void
.end method

.method writeSynReset(ILokhttp3/internal/http2/ErrorCode;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 315
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Lokhttp3/internal/http2/Http2Connection;->writer:Lokhttp3/internal/http2/Http2Writer;

    move v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lokhttp3/internal/http2/Http2Writer;->rstStream(ILokhttp3/internal/http2/ErrorCode;)V

    .line 316
    return-void
.end method

.method writeSynResetLater(ILokhttp3/internal/http2/ErrorCode;)V
    .locals 13

    .prologue
    .line 304
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    sget-object v3, Lokhttp3/internal/http2/Http2Connection;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v4, Lokhttp3/internal/http2/Http2Connection$1;

    move-object v12, v4

    move-object v4, v12

    move-object v5, v12

    move-object v6, v0

    const-string v7, "OkHttp %s stream %d"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x0

    move-object v11, v0

    iget-object v11, v11, Lokhttp3/internal/http2/Http2Connection;->hostname:Ljava/lang/String;

    aput-object v11, v9, v10

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x1

    move v11, v1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    move v9, v1

    move-object v10, v2

    invoke-direct/range {v5 .. v10}, Lokhttp3/internal/http2/Http2Connection$1;-><init>(Lokhttp3/internal/http2/Http2Connection;Ljava/lang/String;[Ljava/lang/Object;ILokhttp3/internal/http2/ErrorCode;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 312
    return-void
.end method

.method writeWindowUpdateLater(IJ)V
    .locals 14

    .prologue
    .line 319
    move-object v0, p0

    move v1, p1

    move-wide/from16 v2, p2

    sget-object v4, Lokhttp3/internal/http2/Http2Connection;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v5, Lokhttp3/internal/http2/Http2Connection$2;

    move-object v13, v5

    move-object v5, v13

    move-object v6, v13

    move-object v7, v0

    const-string v8, "OkHttp Window Update %s stream %d"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x0

    move-object v12, v0

    iget-object v12, v12, Lokhttp3/internal/http2/Http2Connection;->hostname:Ljava/lang/String;

    aput-object v12, v10, v11

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x1

    move v12, v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    move v10, v1

    move-wide v11, v2

    invoke-direct/range {v6 .. v12}, Lokhttp3/internal/http2/Http2Connection$2;-><init>(Lokhttp3/internal/http2/Http2Connection;Ljava/lang/String;[Ljava/lang/Object;IJ)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 327
    return-void
.end method
