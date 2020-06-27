.class public final Lokhttp3/ConnectionPool;
.super Ljava/lang/Object;
.source "ConnectionPool.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final executor:Ljava/util/concurrent/Executor;


# instance fields
.field private final cleanupRunnable:Ljava/lang/Runnable;

.field cleanupRunning:Z

.field private final connections:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque",
            "<",
            "Lokhttp3/internal/connection/RealConnection;",
            ">;"
        }
    .end annotation
.end field

.field private final keepAliveDurationNs:J

.field private final maxIdleConnections:I

.field final routeDatabase:Lokhttp3/internal/connection/RouteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    .line 42
    const-class v0, Lokhttp3/ConnectionPool;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lokhttp3/ConnectionPool;->$assertionsDisabled:Z

    .line 48
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

    const-string v8, "OkHttp ConnectionPool"

    const/4 v9, 0x1

    .line 50
    invoke-static {v8, v9}, Lokhttp3/internal/Util;->threadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lokhttp3/ConnectionPool;->executor:Ljava/util/concurrent/Executor;

    .line 48
    return-void

    .line 42
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    .line 84
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x5

    const-wide/16 v3, 0x5

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-direct {v1, v2, v3, v4, v5}, Lokhttp3/ConnectionPool;-><init>(IJLjava/util/concurrent/TimeUnit;)V

    .line 85
    return-void
.end method

.method public constructor <init>(IJLjava/util/concurrent/TimeUnit;)V
    .locals 11

    .prologue
    .line 87
    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 55
    move-object v5, v0

    new-instance v6, Lokhttp3/ConnectionPool$1;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v0

    invoke-direct {v7, v8}, Lokhttp3/ConnectionPool$1;-><init>(Lokhttp3/ConnectionPool;)V

    iput-object v6, v5, Lokhttp3/ConnectionPool;->cleanupRunnable:Ljava/lang/Runnable;

    .line 74
    move-object v5, v0

    new-instance v6, Ljava/util/ArrayDeque;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v6, v5, Lokhttp3/ConnectionPool;->connections:Ljava/util/Deque;

    .line 75
    move-object v5, v0

    new-instance v6, Lokhttp3/internal/connection/RouteDatabase;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Lokhttp3/internal/connection/RouteDatabase;-><init>()V

    iput-object v6, v5, Lokhttp3/ConnectionPool;->routeDatabase:Lokhttp3/internal/connection/RouteDatabase;

    .line 88
    move-object v5, v0

    move v6, v1

    iput v6, v5, Lokhttp3/ConnectionPool;->maxIdleConnections:I

    .line 89
    move-object v5, v0

    move-object v6, v4

    move-wide v7, v2

    invoke-virtual {v6, v7, v8}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v6

    iput-wide v6, v5, Lokhttp3/ConnectionPool;->keepAliveDurationNs:J

    .line 92
    move-wide v5, v2

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-gtz v5, :cond_0

    .line 93
    new-instance v5, Ljava/lang/IllegalArgumentException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "keepAliveDuration <= 0: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide v8, v2

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 95
    :cond_0
    return-void
.end method

.method private pruneAndGetAllocationCount(Lokhttp3/internal/connection/RealConnection;J)I
    .locals 15

    .prologue
    .line 238
    move-object v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-object v9, v1

    iget-object v9, v9, Lokhttp3/internal/connection/RealConnection;->allocations:Ljava/util/List;

    move-object v4, v9

    .line 239
    const/4 v9, 0x0

    move v5, v9

    :goto_0
    move v9, v5

    move-object v10, v4

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_2

    .line 240
    move-object v9, v4

    move v10, v5

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/ref/Reference;

    move-object v6, v9

    .line 242
    move-object v9, v6

    invoke-virtual {v9}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 243
    add-int/lit8 v5, v5, 0x1

    .line 244
    goto :goto_0

    .line 248
    :cond_0
    move-object v9, v6

    check-cast v9, Lokhttp3/internal/connection/StreamAllocation$StreamAllocationReference;

    move-object v7, v9

    .line 250
    new-instance v9, Ljava/lang/StringBuilder;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "A connection to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v1

    invoke-virtual {v10}, Lokhttp3/internal/connection/RealConnection;->route()Lokhttp3/Route;

    move-result-object v10

    invoke-virtual {v10}, Lokhttp3/Route;->address()Lokhttp3/Address;

    move-result-object v10

    invoke-virtual {v10}, Lokhttp3/Address;->url()Lokhttp3/HttpUrl;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " was leaked. Did you forget to close a response body?"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v8, v9

    .line 252
    invoke-static {}, Lokhttp3/internal/platform/Platform;->get()Lokhttp3/internal/platform/Platform;

    move-result-object v9

    move-object v10, v8

    move-object v11, v7

    iget-object v11, v11, Lokhttp3/internal/connection/StreamAllocation$StreamAllocationReference;->callStackTrace:Ljava/lang/Object;

    invoke-virtual {v9, v10, v11}, Lokhttp3/internal/platform/Platform;->logCloseableLeak(Ljava/lang/String;Ljava/lang/Object;)V

    .line 254
    move-object v9, v4

    move v10, v5

    invoke-interface {v9, v10}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v9

    .line 255
    move-object v9, v1

    const/4 v10, 0x1

    iput-boolean v10, v9, Lokhttp3/internal/connection/RealConnection;->noNewStreams:Z

    .line 258
    move-object v9, v4

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 259
    move-object v9, v1

    move-wide v10, v2

    move-object v12, v0

    iget-wide v12, v12, Lokhttp3/ConnectionPool;->keepAliveDurationNs:J

    sub-long/2addr v10, v12

    iput-wide v10, v9, Lokhttp3/internal/connection/RealConnection;->idleAtNanos:J

    .line 260
    const/4 v9, 0x0

    move v0, v9

    .line 264
    :goto_1
    return v0

    .line 262
    :cond_1
    goto :goto_0

    .line 264
    :cond_2
    move-object v9, v4

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    move v0, v9

    goto :goto_1
.end method


# virtual methods
.method cleanup(J)J
    .locals 21

    .prologue
    .line 181
    move-object/from16 v2, p0

    move-wide/from16 v3, p1

    const/16 v16, 0x0

    move/from16 v5, v16

    .line 182
    const/16 v16, 0x0

    move/from16 v6, v16

    .line 183
    const/16 v16, 0x0

    move-object/from16 v7, v16

    .line 184
    const-wide/high16 v16, -0x8000000000000000L

    move-wide/from16 v8, v16

    .line 187
    move-object/from16 v16, v2

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    move-object/from16 v10, v17

    monitor-enter v16

    .line 188
    move-object/from16 v16, v2

    :try_start_0
    move-object/from16 v0, v16

    iget-object v0, v0, Lokhttp3/ConnectionPool;->connections:Ljava/util/Deque;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v16

    move-object/from16 v11, v16

    :goto_0
    move-object/from16 v16, v11

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_2

    .line 189
    move-object/from16 v16, v11

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lokhttp3/internal/connection/RealConnection;

    move-object/from16 v12, v16

    .line 192
    move-object/from16 v16, v2

    move-object/from16 v17, v12

    move-wide/from16 v18, v3

    invoke-direct/range {v16 .. v19}, Lokhttp3/ConnectionPool;->pruneAndGetAllocationCount(Lokhttp3/internal/connection/RealConnection;J)I

    move-result v16

    if-lez v16, :cond_0

    .line 193
    add-int/lit8 v5, v5, 0x1

    .line 194
    goto :goto_0

    .line 197
    :cond_0
    add-int/lit8 v6, v6, 0x1

    .line 200
    move-wide/from16 v16, v3

    move-object/from16 v18, v12

    move-object/from16 v0, v18

    iget-wide v0, v0, Lokhttp3/internal/connection/RealConnection;->idleAtNanos:J

    move-wide/from16 v18, v0

    sub-long v16, v16, v18

    move-wide/from16 v13, v16

    .line 201
    move-wide/from16 v16, v13

    move-wide/from16 v18, v8

    cmp-long v16, v16, v18

    if-lez v16, :cond_1

    .line 202
    move-wide/from16 v16, v13

    move-wide/from16 v8, v16

    .line 203
    move-object/from16 v16, v12

    move-object/from16 v7, v16

    .line 205
    :cond_1
    goto :goto_0

    .line 207
    :cond_2
    move-wide/from16 v16, v8

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-wide v0, v0, Lokhttp3/ConnectionPool;->keepAliveDurationNs:J

    move-wide/from16 v18, v0

    cmp-long v16, v16, v18

    if-gez v16, :cond_3

    move/from16 v16, v6

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Lokhttp3/ConnectionPool;->maxIdleConnections:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_4

    .line 211
    :cond_3
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Lokhttp3/ConnectionPool;->connections:Ljava/util/Deque;

    move-object/from16 v16, v0

    move-object/from16 v17, v7

    invoke-interface/range {v16 .. v17}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z

    move-result v16

    .line 223
    move-object/from16 v16, v10

    monitor-exit v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 225
    move-object/from16 v16, v7

    invoke-virtual/range {v16 .. v16}, Lokhttp3/internal/connection/RealConnection;->socket()Ljava/net/Socket;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lokhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    .line 228
    const-wide/16 v16, 0x0

    move-wide/from16 v2, v16

    :goto_1
    return-wide v2

    .line 212
    :cond_4
    move/from16 v16, v6

    if-lez v16, :cond_5

    .line 214
    move-object/from16 v16, v2

    :try_start_1
    move-object/from16 v0, v16

    iget-wide v0, v0, Lokhttp3/ConnectionPool;->keepAliveDurationNs:J

    move-wide/from16 v16, v0

    move-wide/from16 v18, v8

    sub-long v16, v16, v18

    move-object/from16 v18, v10

    monitor-exit v18

    move-wide/from16 v2, v16

    goto :goto_1

    .line 215
    :cond_5
    move/from16 v16, v5

    if-lez v16, :cond_6

    .line 217
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-wide v0, v0, Lokhttp3/ConnectionPool;->keepAliveDurationNs:J

    move-wide/from16 v16, v0

    move-object/from16 v18, v10

    monitor-exit v18

    move-wide/from16 v2, v16

    goto :goto_1

    .line 220
    :cond_6
    move-object/from16 v16, v2

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput-boolean v0, v1, Lokhttp3/ConnectionPool;->cleanupRunning:Z

    .line 221
    const-wide/16 v16, -0x1

    move-object/from16 v18, v10

    monitor-exit v18

    move-wide/from16 v2, v16

    goto :goto_1

    .line 223
    :catchall_0
    move-exception v16

    move-object/from16 v15, v16

    move-object/from16 v16, v10

    monitor-exit v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v16, v15

    throw v16
.end method

.method connectionBecameIdle(Lokhttp3/internal/connection/RealConnection;)Z
    .locals 5

    .prologue
    .line 144
    move-object v0, p0

    move-object v1, p1

    sget-boolean v2, Lokhttp3/ConnectionPool;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    move-object v2, v0

    invoke-static {v2}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 145
    :cond_0
    move-object v2, v1

    iget-boolean v2, v2, Lokhttp3/internal/connection/RealConnection;->noNewStreams:Z

    if-nez v2, :cond_1

    move-object v2, v0

    iget v2, v2, Lokhttp3/ConnectionPool;->maxIdleConnections:I

    if-nez v2, :cond_2

    .line 146
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lokhttp3/ConnectionPool;->connections:Ljava/util/Deque;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z

    move-result v2

    .line 147
    const/4 v2, 0x1

    move v0, v2

    .line 150
    :goto_0
    return v0

    .line 149
    :cond_2
    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 150
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public declared-synchronized connectionCount()I
    .locals 3

    .prologue
    .line 113
    move-object v0, p0

    move-object v2, p0

    monitor-enter v2

    move-object v1, v0

    :try_start_0
    iget-object v1, v1, Lokhttp3/ConnectionPool;->connections:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->size()I
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

.method public evictAll()V
    .locals 9

    .prologue
    .line 156
    move-object v0, p0

    new-instance v6, Ljava/util/ArrayList;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v6

    .line 157
    move-object v6, v0

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    move-object v2, v7

    monitor-enter v6

    .line 158
    move-object v6, v0

    :try_start_0
    iget-object v6, v6, Lokhttp3/ConnectionPool;->connections:Ljava/util/Deque;

    invoke-interface {v6}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v3, v6

    :goto_0
    move-object v6, v3

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 159
    move-object v6, v3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lokhttp3/internal/connection/RealConnection;

    move-object v4, v6

    .line 160
    move-object v6, v4

    iget-object v6, v6, Lokhttp3/internal/connection/RealConnection;->allocations:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 161
    move-object v6, v4

    const/4 v7, 0x1

    iput-boolean v7, v6, Lokhttp3/internal/connection/RealConnection;->noNewStreams:Z

    .line 162
    move-object v6, v1

    move-object v7, v4

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v6

    .line 163
    move-object v6, v3

    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    .line 165
    :cond_0
    goto :goto_0

    .line 166
    :cond_1
    move-object v6, v2

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    move-object v6, v1

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v2, v6

    :goto_1
    move-object v6, v2

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    move-object v6, v2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lokhttp3/internal/connection/RealConnection;

    move-object v3, v6

    .line 169
    move-object v6, v3

    invoke-virtual {v6}, Lokhttp3/internal/connection/RealConnection;->socket()Ljava/net/Socket;

    move-result-object v6

    invoke-static {v6}, Lokhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    .line 170
    goto :goto_1

    .line 166
    :catchall_0
    move-exception v6

    move-object v5, v6

    move-object v6, v2

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v6, v5

    throw v6

    .line 171
    :cond_2
    return-void
.end method

.method get(Lokhttp3/Address;Lokhttp3/internal/connection/StreamAllocation;)Lokhttp3/internal/connection/RealConnection;
    .locals 8

    .prologue
    .line 118
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    sget-boolean v5, Lokhttp3/ConnectionPool;->$assertionsDisabled:Z

    if-nez v5, :cond_0

    move-object v5, v0

    invoke-static {v5}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    new-instance v5, Ljava/lang/AssertionError;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 119
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Lokhttp3/ConnectionPool;->connections:Ljava/util/Deque;

    invoke-interface {v5}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v3, v5

    :goto_0
    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lokhttp3/internal/connection/RealConnection;

    move-object v4, v5

    .line 120
    move-object v5, v4

    iget-object v5, v5, Lokhttp3/internal/connection/RealConnection;->allocations:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    move-object v6, v4

    iget v6, v6, Lokhttp3/internal/connection/RealConnection;->allocationLimit:I

    if-ge v5, v6, :cond_1

    move-object v5, v1

    move-object v6, v4

    .line 121
    invoke-virtual {v6}, Lokhttp3/internal/connection/RealConnection;->route()Lokhttp3/Route;

    move-result-object v6

    iget-object v6, v6, Lokhttp3/Route;->address:Lokhttp3/Address;

    invoke-virtual {v5, v6}, Lokhttp3/Address;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v5, v4

    iget-boolean v5, v5, Lokhttp3/internal/connection/RealConnection;->noNewStreams:Z

    if-nez v5, :cond_1

    .line 123
    move-object v5, v2

    move-object v6, v4

    invoke-virtual {v5, v6}, Lokhttp3/internal/connection/StreamAllocation;->acquire(Lokhttp3/internal/connection/RealConnection;)V

    .line 124
    move-object v5, v4

    move-object v0, v5

    .line 127
    :goto_1
    return-object v0

    .line 126
    :cond_1
    goto :goto_0

    .line 127
    :cond_2
    const/4 v5, 0x0

    move-object v0, v5

    goto :goto_1
.end method

.method public declared-synchronized idleConnectionCount()I
    .locals 6

    .prologue
    .line 99
    move-object v0, p0

    move-object v5, p0

    monitor-enter v5

    const/4 v4, 0x0

    move v1, v4

    .line 100
    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Lokhttp3/ConnectionPool;->connections:Ljava/util/Deque;

    invoke-interface {v4}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v4

    :goto_0
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lokhttp3/internal/connection/RealConnection;

    move-object v3, v4

    .line 101
    move-object v4, v3

    iget-object v4, v4, Lokhttp3/internal/connection/RealConnection;->allocations:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v1, v1, 0x1

    .line 102
    :cond_0
    goto :goto_0

    .line 103
    :cond_1
    move v4, v1

    move v0, v4

    monitor-exit v5

    return v0

    .line 99
    :catchall_0
    move-exception v0

    monitor-exit v5

    throw v0
.end method

.method put(Lokhttp3/internal/connection/RealConnection;)V
    .locals 5

    .prologue
    .line 131
    move-object v0, p0

    move-object v1, p1

    sget-boolean v2, Lokhttp3/ConnectionPool;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    move-object v2, v0

    invoke-static {v2}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 132
    :cond_0
    move-object v2, v0

    iget-boolean v2, v2, Lokhttp3/ConnectionPool;->cleanupRunning:Z

    if-nez v2, :cond_1

    .line 133
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lokhttp3/ConnectionPool;->cleanupRunning:Z

    .line 134
    sget-object v2, Lokhttp3/ConnectionPool;->executor:Ljava/util/concurrent/Executor;

    move-object v3, v0

    iget-object v3, v3, Lokhttp3/ConnectionPool;->cleanupRunnable:Ljava/lang/Runnable;

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 136
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lokhttp3/ConnectionPool;->connections:Ljava/util/Deque;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 137
    return-void
.end method
