.class public final Lokhttp3/internal/connection/StreamAllocation;
.super Ljava/lang/Object;
.source "StreamAllocation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/connection/StreamAllocation$StreamAllocationReference;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field public final address:Lokhttp3/Address;

.field private final callStackTrace:Ljava/lang/Object;

.field private canceled:Z

.field private codec:Lokhttp3/internal/http/HttpCodec;

.field private connection:Lokhttp3/internal/connection/RealConnection;

.field private final connectionPool:Lokhttp3/ConnectionPool;

.field private refusedStreamCount:I

.field private released:Z

.field private route:Lokhttp3/Route;

.field private final routeSelector:Lokhttp3/internal/connection/RouteSelector;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    const-class v0, Lokhttp3/internal/connection/StreamAllocation;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lokhttp3/internal/connection/StreamAllocation;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lokhttp3/ConnectionPool;Lokhttp3/Address;Ljava/lang/Object;)V
    .locals 10

    .prologue
    .line 87
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 88
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lokhttp3/internal/connection/StreamAllocation;->connectionPool:Lokhttp3/ConnectionPool;

    .line 89
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lokhttp3/internal/connection/StreamAllocation;->address:Lokhttp3/Address;

    .line 90
    move-object v4, v0

    new-instance v5, Lokhttp3/internal/connection/RouteSelector;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v2

    move-object v8, v0

    invoke-direct {v8}, Lokhttp3/internal/connection/StreamAllocation;->routeDatabase()Lokhttp3/internal/connection/RouteDatabase;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lokhttp3/internal/connection/RouteSelector;-><init>(Lokhttp3/Address;Lokhttp3/internal/connection/RouteDatabase;)V

    iput-object v5, v4, Lokhttp3/internal/connection/StreamAllocation;->routeSelector:Lokhttp3/internal/connection/RouteSelector;

    .line 91
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lokhttp3/internal/connection/StreamAllocation;->callStackTrace:Ljava/lang/Object;

    .line 92
    return-void
.end method

.method private deallocate(ZZZ)V
    .locals 11

    .prologue
    .line 243
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    const/4 v7, 0x0

    move-object v4, v7

    .line 244
    move-object v7, v0

    iget-object v7, v7, Lokhttp3/internal/connection/StreamAllocation;->connectionPool:Lokhttp3/ConnectionPool;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v5, v8

    monitor-enter v7

    .line 245
    move v7, v3

    if-eqz v7, :cond_0

    .line 246
    move-object v7, v0

    const/4 v8, 0x0

    :try_start_0
    iput-object v8, v7, Lokhttp3/internal/connection/StreamAllocation;->codec:Lokhttp3/internal/http/HttpCodec;

    .line 248
    :cond_0
    move v7, v2

    if-eqz v7, :cond_1

    .line 249
    move-object v7, v0

    const/4 v8, 0x1

    iput-boolean v8, v7, Lokhttp3/internal/connection/StreamAllocation;->released:Z

    .line 251
    :cond_1
    move-object v7, v0

    iget-object v7, v7, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    if-eqz v7, :cond_5

    .line 252
    move v7, v1

    if-eqz v7, :cond_2

    .line 253
    move-object v7, v0

    iget-object v7, v7, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    const/4 v8, 0x1

    iput-boolean v8, v7, Lokhttp3/internal/connection/RealConnection;->noNewStreams:Z

    .line 255
    :cond_2
    move-object v7, v0

    iget-object v7, v7, Lokhttp3/internal/connection/StreamAllocation;->codec:Lokhttp3/internal/http/HttpCodec;

    if-nez v7, :cond_5

    move-object v7, v0

    iget-boolean v7, v7, Lokhttp3/internal/connection/StreamAllocation;->released:Z

    if-nez v7, :cond_3

    move-object v7, v0

    iget-object v7, v7, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    iget-boolean v7, v7, Lokhttp3/internal/connection/RealConnection;->noNewStreams:Z

    if-eqz v7, :cond_5

    .line 256
    :cond_3
    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    invoke-direct {v7, v8}, Lokhttp3/internal/connection/StreamAllocation;->release(Lokhttp3/internal/connection/RealConnection;)V

    .line 257
    move-object v7, v0

    iget-object v7, v7, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    iget-object v7, v7, Lokhttp3/internal/connection/RealConnection;->allocations:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 258
    move-object v7, v0

    iget-object v7, v7, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    iput-wide v8, v7, Lokhttp3/internal/connection/RealConnection;->idleAtNanos:J

    .line 259
    sget-object v7, Lokhttp3/internal/Internal;->instance:Lokhttp3/internal/Internal;

    move-object v8, v0

    iget-object v8, v8, Lokhttp3/internal/connection/StreamAllocation;->connectionPool:Lokhttp3/ConnectionPool;

    move-object v9, v0

    iget-object v9, v9, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    invoke-virtual {v7, v8, v9}, Lokhttp3/internal/Internal;->connectionBecameIdle(Lokhttp3/ConnectionPool;Lokhttp3/internal/connection/RealConnection;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 260
    move-object v7, v0

    iget-object v7, v7, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    move-object v4, v7

    .line 263
    :cond_4
    move-object v7, v0

    const/4 v8, 0x0

    iput-object v8, v7, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    .line 266
    :cond_5
    move-object v7, v5

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 267
    move-object v7, v4

    if-eqz v7, :cond_6

    .line 268
    move-object v7, v4

    invoke-virtual {v7}, Lokhttp3/internal/connection/RealConnection;->socket()Ljava/net/Socket;

    move-result-object v7

    invoke-static {v7}, Lokhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    .line 270
    :cond_6
    return-void

    .line 266
    :catchall_0
    move-exception v7

    move-object v6, v7

    move-object v7, v5

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v7, v6

    throw v7
.end method

.method private findConnection(IIIZ)Lokhttp3/internal/connection/RealConnection;
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 160
    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object v13, v1

    iget-object v13, v13, Lokhttp3/internal/connection/StreamAllocation;->connectionPool:Lokhttp3/ConnectionPool;

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    move-object v7, v14

    monitor-enter v13

    .line 161
    move-object v13, v1

    :try_start_0
    iget-boolean v13, v13, Lokhttp3/internal/connection/StreamAllocation;->released:Z

    if-eqz v13, :cond_0

    new-instance v13, Ljava/lang/IllegalStateException;

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    const-string v15, "released"

    invoke-direct {v14, v15}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 178
    :catchall_0
    move-exception v13

    move-object v10, v13

    move-object v13, v7

    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v13, v10

    throw v13

    .line 162
    :cond_0
    move-object v13, v1

    :try_start_1
    iget-object v13, v13, Lokhttp3/internal/connection/StreamAllocation;->codec:Lokhttp3/internal/http/HttpCodec;

    if-eqz v13, :cond_1

    new-instance v13, Ljava/lang/IllegalStateException;

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    const-string v15, "codec != null"

    invoke-direct {v14, v15}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 163
    :cond_1
    move-object v13, v1

    iget-boolean v13, v13, Lokhttp3/internal/connection/StreamAllocation;->canceled:Z

    if-eqz v13, :cond_2

    new-instance v13, Ljava/io/IOException;

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    const-string v15, "Canceled"

    invoke-direct {v14, v15}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 165
    :cond_2
    move-object v13, v1

    iget-object v13, v13, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    move-object v8, v13

    .line 166
    move-object v13, v8

    if-eqz v13, :cond_3

    move-object v13, v8

    iget-boolean v13, v13, Lokhttp3/internal/connection/RealConnection;->noNewStreams:Z

    if-nez v13, :cond_3

    .line 167
    move-object v13, v8

    move-object v14, v7

    monitor-exit v14

    move-object v1, v13

    .line 200
    :goto_0
    return-object v1

    .line 171
    :cond_3
    sget-object v13, Lokhttp3/internal/Internal;->instance:Lokhttp3/internal/Internal;

    move-object v14, v1

    iget-object v14, v14, Lokhttp3/internal/connection/StreamAllocation;->connectionPool:Lokhttp3/ConnectionPool;

    move-object v15, v1

    iget-object v15, v15, Lokhttp3/internal/connection/StreamAllocation;->address:Lokhttp3/Address;

    move-object/from16 v16, v1

    invoke-virtual/range {v13 .. v16}, Lokhttp3/internal/Internal;->get(Lokhttp3/ConnectionPool;Lokhttp3/Address;Lokhttp3/internal/connection/StreamAllocation;)Lokhttp3/internal/connection/RealConnection;

    move-result-object v13

    move-object v9, v13

    .line 172
    move-object v13, v9

    if-eqz v13, :cond_4

    .line 173
    move-object v13, v1

    move-object v14, v9

    iput-object v14, v13, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    .line 174
    move-object v13, v9

    move-object v14, v7

    monitor-exit v14

    move-object v1, v13

    goto :goto_0

    .line 177
    :cond_4
    move-object v13, v1

    iget-object v13, v13, Lokhttp3/internal/connection/StreamAllocation;->route:Lokhttp3/Route;

    move-object v6, v13

    .line 178
    move-object v13, v7

    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 180
    move-object v13, v6

    if-nez v13, :cond_5

    .line 181
    move-object v13, v1

    iget-object v13, v13, Lokhttp3/internal/connection/StreamAllocation;->routeSelector:Lokhttp3/internal/connection/RouteSelector;

    invoke-virtual {v13}, Lokhttp3/internal/connection/RouteSelector;->next()Lokhttp3/Route;

    move-result-object v13

    move-object v6, v13

    .line 182
    move-object v13, v1

    iget-object v13, v13, Lokhttp3/internal/connection/StreamAllocation;->connectionPool:Lokhttp3/ConnectionPool;

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    move-object v7, v14

    monitor-enter v13

    .line 183
    move-object v13, v1

    move-object v14, v6

    :try_start_2
    iput-object v14, v13, Lokhttp3/internal/connection/StreamAllocation;->route:Lokhttp3/Route;

    .line 184
    move-object v13, v1

    const/4 v14, 0x0

    iput v14, v13, Lokhttp3/internal/connection/StreamAllocation;->refusedStreamCount:I

    .line 185
    move-object v13, v7

    monitor-exit v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 187
    :cond_5
    new-instance v13, Lokhttp3/internal/connection/RealConnection;

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    move-object v15, v6

    invoke-direct {v14, v15}, Lokhttp3/internal/connection/RealConnection;-><init>(Lokhttp3/Route;)V

    move-object v7, v13

    .line 189
    move-object v13, v1

    iget-object v13, v13, Lokhttp3/internal/connection/StreamAllocation;->connectionPool:Lokhttp3/ConnectionPool;

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    move-object v8, v14

    monitor-enter v13

    .line 190
    move-object v13, v1

    move-object v14, v7

    :try_start_3
    invoke-virtual {v13, v14}, Lokhttp3/internal/connection/StreamAllocation;->acquire(Lokhttp3/internal/connection/RealConnection;)V

    .line 191
    sget-object v13, Lokhttp3/internal/Internal;->instance:Lokhttp3/internal/Internal;

    move-object v14, v1

    iget-object v14, v14, Lokhttp3/internal/connection/StreamAllocation;->connectionPool:Lokhttp3/ConnectionPool;

    move-object v15, v7

    invoke-virtual {v13, v14, v15}, Lokhttp3/internal/Internal;->put(Lokhttp3/ConnectionPool;Lokhttp3/internal/connection/RealConnection;)V

    .line 192
    move-object v13, v1

    move-object v14, v7

    iput-object v14, v13, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    .line 193
    move-object v13, v1

    iget-boolean v13, v13, Lokhttp3/internal/connection/StreamAllocation;->canceled:Z

    if-eqz v13, :cond_6

    new-instance v13, Ljava/io/IOException;

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    const-string v15, "Canceled"

    invoke-direct {v14, v15}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 194
    :catchall_1
    move-exception v13

    move-object v12, v13

    move-object v13, v8

    monitor-exit v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v13, v12

    throw v13

    .line 185
    :catchall_2
    move-exception v13

    move-object v11, v13

    move-object v13, v7

    :try_start_4
    monitor-exit v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object v13, v11

    throw v13

    .line 194
    :cond_6
    move-object v13, v8

    :try_start_5
    monitor-exit v13
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 196
    move-object v13, v7

    move v14, v2

    move v15, v3

    move/from16 v16, v4

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lokhttp3/internal/connection/StreamAllocation;->address:Lokhttp3/Address;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lokhttp3/Address;->connectionSpecs()Ljava/util/List;

    move-result-object v17

    move/from16 v18, v5

    invoke-virtual/range {v13 .. v18}, Lokhttp3/internal/connection/RealConnection;->connect(IIILjava/util/List;Z)V

    .line 198
    move-object v13, v1

    invoke-direct {v13}, Lokhttp3/internal/connection/StreamAllocation;->routeDatabase()Lokhttp3/internal/connection/RouteDatabase;

    move-result-object v13

    move-object v14, v7

    invoke-virtual {v14}, Lokhttp3/internal/connection/RealConnection;->route()Lokhttp3/Route;

    move-result-object v14

    invoke-virtual {v13, v14}, Lokhttp3/internal/connection/RouteDatabase;->connected(Lokhttp3/Route;)V

    .line 200
    move-object v13, v7

    move-object v1, v13

    goto/16 :goto_0
.end method

.method private findHealthyConnection(IIIZZ)Lokhttp3/internal/connection/RealConnection;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 132
    move-object v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    :goto_0
    move-object v9, v0

    move v10, v1

    move v11, v2

    move v12, v3

    move v13, v4

    invoke-direct {v9, v10, v11, v12, v13}, Lokhttp3/internal/connection/StreamAllocation;->findConnection(IIIZ)Lokhttp3/internal/connection/RealConnection;

    move-result-object v9

    move-object v6, v9

    .line 136
    move-object v9, v0

    iget-object v9, v9, Lokhttp3/internal/connection/StreamAllocation;->connectionPool:Lokhttp3/ConnectionPool;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    move-object v7, v10

    monitor-enter v9

    .line 137
    move-object v9, v6

    :try_start_0
    iget v9, v9, Lokhttp3/internal/connection/RealConnection;->successCount:I

    if-nez v9, :cond_0

    .line 138
    move-object v9, v6

    move-object v10, v7

    monitor-exit v10

    move-object v0, v9

    .line 149
    :goto_1
    return-object v0

    .line 140
    :cond_0
    move-object v9, v7

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    move-object v9, v6

    move v10, v5

    invoke-virtual {v9, v10}, Lokhttp3/internal/connection/RealConnection;->isHealthy(Z)Z

    move-result v9

    if-nez v9, :cond_1

    .line 145
    move-object v9, v0

    invoke-virtual {v9}, Lokhttp3/internal/connection/StreamAllocation;->noNewStreams()V

    .line 146
    goto :goto_0

    .line 140
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

    .line 149
    :cond_1
    move-object v9, v6

    move-object v0, v9

    goto :goto_1
.end method

.method private release(Lokhttp3/internal/connection/RealConnection;)V
    .locals 8

    .prologue
    .line 330
    move-object v0, p0

    move-object v1, p1

    const/4 v5, 0x0

    move v2, v5

    move-object v5, v1

    iget-object v5, v5, Lokhttp3/internal/connection/RealConnection;->allocations:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    move v3, v5

    :goto_0
    move v5, v2

    move v6, v3

    if-ge v5, v6, :cond_1

    .line 331
    move-object v5, v1

    iget-object v5, v5, Lokhttp3/internal/connection/RealConnection;->allocations:Ljava/util/List;

    move v6, v2

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/Reference;

    move-object v4, v5

    .line 332
    move-object v5, v4

    invoke-virtual {v5}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v0

    if-ne v5, v6, :cond_0

    .line 333
    move-object v5, v1

    iget-object v5, v5, Lokhttp3/internal/connection/RealConnection;->allocations:Ljava/util/List;

    move v6, v2

    invoke-interface {v5, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v5

    .line 334
    return-void

    .line 330
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 337
    :cond_1
    new-instance v5, Ljava/lang/IllegalStateException;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/IllegalStateException;-><init>()V

    throw v5
.end method

.method private routeDatabase()Lokhttp3/internal/connection/RouteDatabase;
    .locals 3

    .prologue
    .line 222
    move-object v0, p0

    sget-object v1, Lokhttp3/internal/Internal;->instance:Lokhttp3/internal/Internal;

    move-object v2, v0

    iget-object v2, v2, Lokhttp3/internal/connection/StreamAllocation;->connectionPool:Lokhttp3/ConnectionPool;

    invoke-virtual {v1, v2}, Lokhttp3/internal/Internal;->routeDatabase(Lokhttp3/ConnectionPool;)Lokhttp3/internal/connection/RouteDatabase;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method


# virtual methods
.method public acquire(Lokhttp3/internal/connection/RealConnection;)V
    .locals 8

    .prologue
    .line 324
    move-object v0, p0

    move-object v1, p1

    sget-boolean v2, Lokhttp3/internal/connection/StreamAllocation;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lokhttp3/internal/connection/StreamAllocation;->connectionPool:Lokhttp3/ConnectionPool;

    invoke-static {v2}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 325
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Lokhttp3/internal/connection/RealConnection;->allocations:Ljava/util/List;

    new-instance v3, Lokhttp3/internal/connection/StreamAllocation$StreamAllocationReference;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lokhttp3/internal/connection/StreamAllocation;->callStackTrace:Ljava/lang/Object;

    invoke-direct {v4, v5, v6}, Lokhttp3/internal/connection/StreamAllocation$StreamAllocationReference;-><init>(Lokhttp3/internal/connection/StreamAllocation;Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 326
    return-void
.end method

.method public cancel()V
    .locals 8

    .prologue
    .line 275
    move-object v0, p0

    move-object v5, v0

    iget-object v5, v5, Lokhttp3/internal/connection/StreamAllocation;->connectionPool:Lokhttp3/ConnectionPool;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    move-object v3, v6

    monitor-enter v5

    .line 276
    move-object v5, v0

    const/4 v6, 0x1

    :try_start_0
    iput-boolean v6, v5, Lokhttp3/internal/connection/StreamAllocation;->canceled:Z

    .line 277
    move-object v5, v0

    iget-object v5, v5, Lokhttp3/internal/connection/StreamAllocation;->codec:Lokhttp3/internal/http/HttpCodec;

    move-object v1, v5

    .line 278
    move-object v5, v0

    iget-object v5, v5, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    move-object v2, v5

    .line 279
    move-object v5, v3

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 280
    move-object v5, v1

    if-eqz v5, :cond_1

    .line 281
    move-object v5, v1

    invoke-interface {v5}, Lokhttp3/internal/http/HttpCodec;->cancel()V

    .line 285
    :cond_0
    :goto_0
    return-void

    .line 279
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

    .line 282
    :cond_1
    move-object v5, v2

    if-eqz v5, :cond_0

    .line 283
    move-object v5, v2

    invoke-virtual {v5}, Lokhttp3/internal/connection/RealConnection;->cancel()V

    goto :goto_0
.end method

.method public codec()Lokhttp3/internal/http/HttpCodec;
    .locals 6

    .prologue
    .line 216
    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lokhttp3/internal/connection/StreamAllocation;->connectionPool:Lokhttp3/ConnectionPool;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    move-object v1, v4

    monitor-enter v3

    .line 217
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Lokhttp3/internal/connection/StreamAllocation;->codec:Lokhttp3/internal/http/HttpCodec;

    move-object v4, v1

    monitor-exit v4

    move-object v0, v3

    return-object v0

    .line 218
    :catchall_0
    move-exception v3

    move-object v2, v3

    move-object v3, v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v2

    throw v3
.end method

.method public declared-synchronized connection()Lokhttp3/internal/connection/RealConnection;
    .locals 3

    .prologue
    .line 226
    move-object v0, p0

    move-object v2, p0

    monitor-enter v2

    move-object v1, v0

    :try_start_0
    iget-object v1, v1, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;
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

.method public hasMoreRoutes()Z
    .locals 2

    .prologue
    .line 341
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/internal/connection/StreamAllocation;->route:Lokhttp3/Route;

    if-nez v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/internal/connection/StreamAllocation;->routeSelector:Lokhttp3/internal/connection/RouteSelector;

    invoke-virtual {v1}, Lokhttp3/internal/connection/RouteSelector;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public newStream(Lokhttp3/OkHttpClient;Z)Lokhttp3/internal/http/HttpCodec;
    .locals 19

    .prologue
    .line 95
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object v12, v2

    invoke-virtual {v12}, Lokhttp3/OkHttpClient;->connectTimeoutMillis()I

    move-result v12

    move v4, v12

    .line 96
    move-object v12, v2

    invoke-virtual {v12}, Lokhttp3/OkHttpClient;->readTimeoutMillis()I

    move-result v12

    move v5, v12

    .line 97
    move-object v12, v2

    invoke-virtual {v12}, Lokhttp3/OkHttpClient;->writeTimeoutMillis()I

    move-result v12

    move v6, v12

    .line 98
    move-object v12, v2

    invoke-virtual {v12}, Lokhttp3/OkHttpClient;->retryOnConnectionFailure()Z

    move-result v12

    move v7, v12

    .line 101
    move-object v12, v1

    move v13, v4

    move v14, v5

    move v15, v6

    move/from16 v16, v7

    move/from16 v17, v3

    :try_start_0
    invoke-direct/range {v12 .. v17}, Lokhttp3/internal/connection/StreamAllocation;->findHealthyConnection(IIIZZ)Lokhttp3/internal/connection/RealConnection;

    move-result-object v12

    move-object v8, v12

    .line 105
    move-object v12, v8

    iget-object v12, v12, Lokhttp3/internal/connection/RealConnection;->http2Connection:Lokhttp3/internal/http2/Http2Connection;

    if-eqz v12, :cond_0

    .line 106
    new-instance v12, Lokhttp3/internal/http2/Http2Codec;

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    move-object v14, v2

    move-object v15, v1

    move-object/from16 v16, v8

    move-object/from16 v0, v16

    iget-object v0, v0, Lokhttp3/internal/connection/RealConnection;->http2Connection:Lokhttp3/internal/http2/Http2Connection;

    move-object/from16 v16, v0

    invoke-direct/range {v13 .. v16}, Lokhttp3/internal/http2/Http2Codec;-><init>(Lokhttp3/OkHttpClient;Lokhttp3/internal/connection/StreamAllocation;Lokhttp3/internal/http2/Http2Connection;)V

    move-object v9, v12

    .line 115
    :goto_0
    move-object v12, v1

    iget-object v12, v12, Lokhttp3/internal/connection/StreamAllocation;->connectionPool:Lokhttp3/ConnectionPool;

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    move-object v10, v13

    monitor-enter v12
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    move-object v12, v1

    move-object v13, v9

    :try_start_1
    iput-object v13, v12, Lokhttp3/internal/connection/StreamAllocation;->codec:Lokhttp3/internal/http/HttpCodec;

    .line 117
    move-object v12, v9

    move-object v13, v10

    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v12

    return-object v1

    .line 108
    :cond_0
    move-object v12, v8

    :try_start_2
    invoke-virtual {v12}, Lokhttp3/internal/connection/RealConnection;->socket()Ljava/net/Socket;

    move-result-object v12

    move v13, v5

    invoke-virtual {v12, v13}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 109
    move-object v12, v8

    iget-object v12, v12, Lokhttp3/internal/connection/RealConnection;->source:Lokio/BufferedSource;

    invoke-interface {v12}, Lokio/BufferedSource;->timeout()Lokio/Timeout;

    move-result-object v12

    move v13, v5

    int-to-long v13, v13

    sget-object v15, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v12, v13, v14, v15}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    move-result-object v12

    .line 110
    move-object v12, v8

    iget-object v12, v12, Lokhttp3/internal/connection/RealConnection;->sink:Lokio/BufferedSink;

    invoke-interface {v12}, Lokio/BufferedSink;->timeout()Lokio/Timeout;

    move-result-object v12

    move v13, v6

    int-to-long v13, v13

    sget-object v15, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v12, v13, v14, v15}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    move-result-object v12

    .line 111
    new-instance v12, Lokhttp3/internal/http1/Http1Codec;

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    move-object v14, v2

    move-object v15, v1

    move-object/from16 v16, v8

    move-object/from16 v0, v16

    iget-object v0, v0, Lokhttp3/internal/connection/RealConnection;->source:Lokio/BufferedSource;

    move-object/from16 v16, v0

    move-object/from16 v17, v8

    move-object/from16 v0, v17

    iget-object v0, v0, Lokhttp3/internal/connection/RealConnection;->sink:Lokio/BufferedSink;

    move-object/from16 v17, v0

    invoke-direct/range {v13 .. v17}, Lokhttp3/internal/http1/Http1Codec;-><init>(Lokhttp3/OkHttpClient;Lokhttp3/internal/connection/StreamAllocation;Lokio/BufferedSource;Lokio/BufferedSink;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v9, v12

    goto :goto_0

    .line 118
    :catchall_0
    move-exception v12

    move-object v11, v12

    move-object v12, v10

    :try_start_3
    monitor-exit v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v12, v11

    :try_start_4
    throw v12
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 119
    :catch_0
    move-exception v12

    move-object v8, v12

    .line 120
    new-instance v12, Lokhttp3/internal/connection/RouteException;

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    move-object v14, v8

    invoke-direct {v13, v14}, Lokhttp3/internal/connection/RouteException;-><init>(Ljava/io/IOException;)V

    throw v12
.end method

.method public noNewStreams()V
    .locals 5

    .prologue
    .line 235
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lokhttp3/internal/connection/StreamAllocation;->deallocate(ZZZ)V

    .line 236
    return-void
.end method

.method public release()V
    .locals 5

    .prologue
    .line 230
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lokhttp3/internal/connection/StreamAllocation;->deallocate(ZZZ)V

    .line 231
    return-void
.end method

.method public streamFailed(Ljava/io/IOException;)V
    .locals 11

    .prologue
    .line 288
    move-object v0, p0

    move-object v1, p1

    const/4 v6, 0x0

    move v2, v6

    .line 290
    move-object v6, v0

    iget-object v6, v6, Lokhttp3/internal/connection/StreamAllocation;->connectionPool:Lokhttp3/ConnectionPool;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v3, v7

    monitor-enter v6

    .line 291
    move-object v6, v1

    :try_start_0
    instance-of v6, v6, Lokhttp3/internal/http2/StreamResetException;

    if-eqz v6, :cond_3

    .line 292
    move-object v6, v1

    check-cast v6, Lokhttp3/internal/http2/StreamResetException;

    move-object v4, v6

    .line 293
    move-object v6, v4

    iget-object v6, v6, Lokhttp3/internal/http2/StreamResetException;->errorCode:Lokhttp3/internal/http2/ErrorCode;

    sget-object v7, Lokhttp3/internal/http2/ErrorCode;->REFUSED_STREAM:Lokhttp3/internal/http2/ErrorCode;

    if-ne v6, v7, :cond_0

    .line 294
    move-object v6, v0

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    iget v7, v7, Lokhttp3/internal/connection/StreamAllocation;->refusedStreamCount:I

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lokhttp3/internal/connection/StreamAllocation;->refusedStreamCount:I

    .line 298
    :cond_0
    move-object v6, v4

    iget-object v6, v6, Lokhttp3/internal/http2/StreamResetException;->errorCode:Lokhttp3/internal/http2/ErrorCode;

    sget-object v7, Lokhttp3/internal/http2/ErrorCode;->REFUSED_STREAM:Lokhttp3/internal/http2/ErrorCode;

    if-ne v6, v7, :cond_1

    move-object v6, v0

    iget v6, v6, Lokhttp3/internal/connection/StreamAllocation;->refusedStreamCount:I

    const/4 v7, 0x1

    if-le v6, v7, :cond_2

    .line 299
    :cond_1
    const/4 v6, 0x1

    move v2, v6

    .line 300
    move-object v6, v0

    const/4 v7, 0x0

    iput-object v7, v6, Lokhttp3/internal/connection/StreamAllocation;->route:Lokhttp3/Route;

    .line 314
    :cond_2
    :goto_0
    move-object v6, v3

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 316
    move-object v6, v0

    move v7, v2

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-direct {v6, v7, v8, v9}, Lokhttp3/internal/connection/StreamAllocation;->deallocate(ZZZ)V

    .line 317
    return-void

    .line 302
    :cond_3
    move-object v6, v0

    :try_start_1
    iget-object v6, v6, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    if-eqz v6, :cond_4

    move-object v6, v0

    iget-object v6, v6, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    invoke-virtual {v6}, Lokhttp3/internal/connection/RealConnection;->isMultiplexed()Z

    move-result v6

    if-eqz v6, :cond_5

    :cond_4
    move-object v6, v1

    instance-of v6, v6, Lokhttp3/internal/http2/ConnectionShutdownException;

    if-eqz v6, :cond_2

    .line 304
    :cond_5
    const/4 v6, 0x1

    move v2, v6

    .line 307
    move-object v6, v0

    iget-object v6, v6, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    iget v6, v6, Lokhttp3/internal/connection/RealConnection;->successCount:I

    if-nez v6, :cond_2

    .line 308
    move-object v6, v0

    iget-object v6, v6, Lokhttp3/internal/connection/StreamAllocation;->route:Lokhttp3/Route;

    if-eqz v6, :cond_6

    move-object v6, v1

    if-eqz v6, :cond_6

    .line 309
    move-object v6, v0

    iget-object v6, v6, Lokhttp3/internal/connection/StreamAllocation;->routeSelector:Lokhttp3/internal/connection/RouteSelector;

    move-object v7, v0

    iget-object v7, v7, Lokhttp3/internal/connection/StreamAllocation;->route:Lokhttp3/Route;

    move-object v8, v1

    invoke-virtual {v6, v7, v8}, Lokhttp3/internal/connection/RouteSelector;->connectFailed(Lokhttp3/Route;Ljava/io/IOException;)V

    .line 311
    :cond_6
    move-object v6, v0

    const/4 v7, 0x0

    iput-object v7, v6, Lokhttp3/internal/connection/StreamAllocation;->route:Lokhttp3/Route;

    goto :goto_0

    .line 314
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

.method public streamFinished(ZLokhttp3/internal/http/HttpCodec;)V
    .locals 10

    .prologue
    .line 204
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v5, v0

    iget-object v5, v5, Lokhttp3/internal/connection/StreamAllocation;->connectionPool:Lokhttp3/ConnectionPool;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v3, v6

    monitor-enter v5

    .line 205
    move-object v5, v2

    if-eqz v5, :cond_0

    move-object v5, v2

    move-object v6, v0

    :try_start_0
    iget-object v6, v6, Lokhttp3/internal/connection/StreamAllocation;->codec:Lokhttp3/internal/http/HttpCodec;

    if-eq v5, v6, :cond_1

    .line 206
    :cond_0
    new-instance v5, Ljava/lang/IllegalStateException;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "expected "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v0

    iget-object v8, v8, Lokhttp3/internal/connection/StreamAllocation;->codec:Lokhttp3/internal/http/HttpCodec;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " but was "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 211
    :catchall_0
    move-exception v5

    move-object v4, v5

    move-object v5, v3

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v5, v4

    throw v5

    .line 208
    :cond_1
    move v5, v1

    if-nez v5, :cond_2

    .line 209
    move-object v5, v0

    :try_start_1
    iget-object v5, v5, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    iget v6, v6, Lokhttp3/internal/connection/RealConnection;->successCount:I

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lokhttp3/internal/connection/RealConnection;->successCount:I

    .line 211
    :cond_2
    move-object v5, v3

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 212
    move-object v5, v0

    move v6, v1

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-direct {v5, v6, v7, v8}, Lokhttp3/internal/connection/StreamAllocation;->deallocate(ZZZ)V

    .line 213
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 345
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/internal/connection/StreamAllocation;->address:Lokhttp3/Address;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method
