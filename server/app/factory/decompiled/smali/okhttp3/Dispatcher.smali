.class public final Lokhttp3/Dispatcher;
.super Ljava/lang/Object;
.source "Dispatcher.java"


# instance fields
.field private executorService:Ljava/util/concurrent/ExecutorService;

.field private idleCallback:Ljava/lang/Runnable;

.field private maxRequests:I

.field private maxRequestsPerHost:I

.field private final readyAsyncCalls:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque",
            "<",
            "Lokhttp3/RealCall$AsyncCall;",
            ">;"
        }
    .end annotation
.end field

.field private final runningAsyncCalls:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque",
            "<",
            "Lokhttp3/RealCall$AsyncCall;",
            ">;"
        }
    .end annotation
.end field

.field private final runningSyncCalls:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque",
            "<",
            "Lokhttp3/RealCall;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 59
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 39
    move-object v1, v0

    const/16 v2, 0x40

    iput v2, v1, Lokhttp3/Dispatcher;->maxRequests:I

    .line 40
    move-object v1, v0

    const/4 v2, 0x5

    iput v2, v1, Lokhttp3/Dispatcher;->maxRequestsPerHost:I

    .line 47
    move-object v1, v0

    new-instance v2, Ljava/util/ArrayDeque;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v2, v1, Lokhttp3/Dispatcher;->readyAsyncCalls:Ljava/util/Deque;

    .line 50
    move-object v1, v0

    new-instance v2, Ljava/util/ArrayDeque;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v2, v1, Lokhttp3/Dispatcher;->runningAsyncCalls:Ljava/util/Deque;

    .line 53
    move-object v1, v0

    new-instance v2, Ljava/util/ArrayDeque;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v2, v1, Lokhttp3/Dispatcher;->runningSyncCalls:Ljava/util/Deque;

    .line 60
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ExecutorService;)V
    .locals 6

    .prologue
    .line 55
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 39
    move-object v2, v0

    const/16 v3, 0x40

    iput v3, v2, Lokhttp3/Dispatcher;->maxRequests:I

    .line 40
    move-object v2, v0

    const/4 v3, 0x5

    iput v3, v2, Lokhttp3/Dispatcher;->maxRequestsPerHost:I

    .line 47
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayDeque;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v3, v2, Lokhttp3/Dispatcher;->readyAsyncCalls:Ljava/util/Deque;

    .line 50
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayDeque;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v3, v2, Lokhttp3/Dispatcher;->runningAsyncCalls:Ljava/util/Deque;

    .line 53
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayDeque;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v3, v2, Lokhttp3/Dispatcher;->runningSyncCalls:Ljava/util/Deque;

    .line 56
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lokhttp3/Dispatcher;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 57
    return-void
.end method

.method private finished(Ljava/util/Deque;Ljava/lang/Object;Z)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Deque",
            "<TT;>;TT;Z)V"
        }
    .end annotation

    .prologue
    .line 197
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v8, v0

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    move-object v6, v9

    monitor-enter v8

    .line 198
    move-object v8, v1

    move-object v9, v2

    :try_start_0
    invoke-interface {v8, v9}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    new-instance v8, Ljava/lang/AssertionError;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    const-string v10, "Call wasn\'t in-flight!"

    invoke-direct {v9, v10}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v8

    .line 202
    :catchall_0
    move-exception v8

    move-object v7, v8

    move-object v8, v6

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v8, v7

    throw v8

    .line 199
    :cond_0
    move v8, v3

    if-eqz v8, :cond_1

    move-object v8, v0

    :try_start_1
    invoke-direct {v8}, Lokhttp3/Dispatcher;->promoteCalls()V

    .line 200
    :cond_1
    move-object v8, v0

    invoke-virtual {v8}, Lokhttp3/Dispatcher;->runningCallsCount()I

    move-result v8

    move v4, v8

    .line 201
    move-object v8, v0

    iget-object v8, v8, Lokhttp3/Dispatcher;->idleCallback:Ljava/lang/Runnable;

    move-object v5, v8

    .line 202
    move-object v8, v6

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 204
    move v8, v4

    if-nez v8, :cond_2

    move-object v8, v5

    if-eqz v8, :cond_2

    .line 205
    move-object v8, v5

    invoke-interface {v8}, Ljava/lang/Runnable;->run()V

    .line 207
    :cond_2
    return-void
.end method

.method private promoteCalls()V
    .locals 5

    .prologue
    .line 154
    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lokhttp3/Dispatcher;->runningAsyncCalls:Ljava/util/Deque;

    invoke-interface {v3}, Ljava/util/Deque;->size()I

    move-result v3

    move-object v4, v0

    iget v4, v4, Lokhttp3/Dispatcher;->maxRequests:I

    if-lt v3, v4, :cond_0

    .line 168
    :goto_0
    return-void

    .line 155
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lokhttp3/Dispatcher;->readyAsyncCalls:Ljava/util/Deque;

    invoke-interface {v3}, Ljava/util/Deque;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 157
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lokhttp3/Dispatcher;->readyAsyncCalls:Ljava/util/Deque;

    invoke-interface {v3}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v3

    :goto_1
    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 158
    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lokhttp3/RealCall$AsyncCall;

    move-object v2, v3

    .line 160
    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Lokhttp3/Dispatcher;->runningCallsForHost(Lokhttp3/RealCall$AsyncCall;)I

    move-result v3

    move-object v4, v0

    iget v4, v4, Lokhttp3/Dispatcher;->maxRequestsPerHost:I

    if-ge v3, v4, :cond_2

    .line 161
    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 162
    move-object v3, v0

    iget-object v3, v3, Lokhttp3/Dispatcher;->runningAsyncCalls:Ljava/util/Deque;

    move-object v4, v2

    invoke-interface {v3, v4}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 163
    move-object v3, v0

    invoke-virtual {v3}, Lokhttp3/Dispatcher;->executorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    move-object v4, v2

    invoke-interface {v3, v4}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 166
    :cond_2
    move-object v3, v0

    iget-object v3, v3, Lokhttp3/Dispatcher;->runningAsyncCalls:Ljava/util/Deque;

    invoke-interface {v3}, Ljava/util/Deque;->size()I

    move-result v3

    move-object v4, v0

    iget v4, v4, Lokhttp3/Dispatcher;->maxRequests:I

    if-lt v3, v4, :cond_3

    goto :goto_0

    .line 167
    :cond_3
    goto :goto_1

    .line 168
    :cond_4
    goto :goto_0
.end method

.method private runningCallsForHost(Lokhttp3/RealCall$AsyncCall;)I
    .locals 7

    .prologue
    .line 172
    move-object v0, p0

    move-object v1, p1

    const/4 v5, 0x0

    move v2, v5

    .line 173
    move-object v5, v0

    iget-object v5, v5, Lokhttp3/Dispatcher;->runningAsyncCalls:Ljava/util/Deque;

    invoke-interface {v5}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v3, v5

    :goto_0
    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lokhttp3/RealCall$AsyncCall;

    move-object v4, v5

    .line 174
    move-object v5, v4

    invoke-virtual {v5}, Lokhttp3/RealCall$AsyncCall;->host()Ljava/lang/String;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v6}, Lokhttp3/RealCall$AsyncCall;->host()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    add-int/lit8 v2, v2, 0x1

    .line 175
    :cond_0
    goto :goto_0

    .line 176
    :cond_1
    move v5, v2

    move v0, v5

    return v0
.end method


# virtual methods
.method public declared-synchronized cancelAll()V
    .locals 5

    .prologue
    .line 140
    move-object v0, p0

    move-object v4, p0

    monitor-enter v4

    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Lokhttp3/Dispatcher;->readyAsyncCalls:Ljava/util/Deque;

    invoke-interface {v3}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v3

    :goto_0
    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lokhttp3/RealCall$AsyncCall;

    move-object v2, v3

    .line 141
    move-object v3, v2

    invoke-virtual {v3}, Lokhttp3/RealCall$AsyncCall;->get()Lokhttp3/RealCall;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/RealCall;->cancel()V

    .line 142
    goto :goto_0

    .line 144
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lokhttp3/Dispatcher;->runningAsyncCalls:Ljava/util/Deque;

    invoke-interface {v3}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v3

    :goto_1
    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lokhttp3/RealCall$AsyncCall;

    move-object v2, v3

    .line 145
    move-object v3, v2

    invoke-virtual {v3}, Lokhttp3/RealCall$AsyncCall;->get()Lokhttp3/RealCall;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/RealCall;->cancel()V

    .line 146
    goto :goto_1

    .line 148
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lokhttp3/Dispatcher;->runningSyncCalls:Ljava/util/Deque;

    invoke-interface {v3}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v3

    :goto_2
    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lokhttp3/RealCall;

    move-object v2, v3

    .line 149
    move-object v3, v2

    invoke-virtual {v3}, Lokhttp3/RealCall;->cancel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    goto :goto_2

    .line 151
    :cond_2
    monitor-exit v4

    return-void

    .line 140
    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0
.end method

.method declared-synchronized enqueue(Lokhttp3/RealCall$AsyncCall;)V
    .locals 5

    .prologue
    .line 127
    move-object v0, p0

    move-object v1, p1

    move-object v4, p0

    monitor-enter v4

    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lokhttp3/Dispatcher;->runningAsyncCalls:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->size()I

    move-result v2

    move-object v3, v0

    iget v3, v3, Lokhttp3/Dispatcher;->maxRequests:I

    if-ge v2, v3, :cond_0

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lokhttp3/Dispatcher;->runningCallsForHost(Lokhttp3/RealCall$AsyncCall;)I

    move-result v2

    move-object v3, v0

    iget v3, v3, Lokhttp3/Dispatcher;->maxRequestsPerHost:I

    if-ge v2, v3, :cond_0

    .line 128
    move-object v2, v0

    iget-object v2, v2, Lokhttp3/Dispatcher;->runningAsyncCalls:Ljava/util/Deque;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 129
    move-object v2, v0

    invoke-virtual {v2}, Lokhttp3/Dispatcher;->executorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    :goto_0
    monitor-exit v4

    return-void

    .line 131
    :cond_0
    move-object v2, v0

    :try_start_1
    iget-object v2, v2, Lokhttp3/Dispatcher;->readyAsyncCalls:Ljava/util/Deque;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    goto :goto_0

    .line 127
    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0
.end method

.method declared-synchronized executed(Lokhttp3/RealCall;)V
    .locals 5

    .prologue
    .line 181
    move-object v0, p0

    move-object v1, p1

    move-object v4, p0

    monitor-enter v4

    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lokhttp3/Dispatcher;->runningSyncCalls:Ljava/util/Deque;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 182
    monitor-exit v4

    return-void

    .line 181
    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0
.end method

.method public declared-synchronized executorService()Ljava/util/concurrent/ExecutorService;
    .locals 14

    .prologue
    .line 63
    move-object v0, p0

    move-object v12, p0

    monitor-enter v12

    move-object v1, v0

    :try_start_0
    iget-object v1, v1, Lokhttp3/Dispatcher;->executorService:Ljava/util/concurrent/ExecutorService;

    if-nez v1, :cond_0

    .line 64
    move-object v1, v0

    new-instance v2, Ljava/util/concurrent/ThreadPoolExecutor;

    move-object v13, v2

    move-object v2, v13

    move-object v3, v13

    const/4 v4, 0x0

    const v5, 0x7fffffff

    const-wide/16 v6, 0x3c

    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v9, Ljava/util/concurrent/SynchronousQueue;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    invoke-direct {v10}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    const-string v10, "OkHttp Dispatcher"

    const/4 v11, 0x0

    .line 65
    invoke-static {v10, v11}, Lokhttp3/internal/Util;->threadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v10

    invoke-direct/range {v3 .. v10}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v2, v1, Lokhttp3/Dispatcher;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 67
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lokhttp3/Dispatcher;->executorService:Ljava/util/concurrent/ExecutorService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    monitor-exit v12

    return-object v0

    .line 63
    :catchall_0
    move-exception v0

    monitor-exit v12

    throw v0
.end method

.method finished(Lokhttp3/RealCall$AsyncCall;)V
    .locals 6

    .prologue
    .line 186
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lokhttp3/Dispatcher;->runningAsyncCalls:Ljava/util/Deque;

    move-object v4, v1

    const/4 v5, 0x1

    invoke-direct {v2, v3, v4, v5}, Lokhttp3/Dispatcher;->finished(Ljava/util/Deque;Ljava/lang/Object;Z)V

    .line 187
    return-void
.end method

.method finished(Lokhttp3/RealCall;)V
    .locals 6

    .prologue
    .line 191
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lokhttp3/Dispatcher;->runningSyncCalls:Ljava/util/Deque;

    move-object v4, v1

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lokhttp3/Dispatcher;->finished(Ljava/util/Deque;Ljava/lang/Object;Z)V

    .line 192
    return-void
.end method

.method public declared-synchronized getMaxRequests()I
    .locals 3

    .prologue
    .line 86
    move-object v0, p0

    move-object v2, p0

    monitor-enter v2

    move-object v1, v0

    :try_start_0
    iget v1, v1, Lokhttp3/Dispatcher;->maxRequests:I
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

.method public declared-synchronized getMaxRequestsPerHost()I
    .locals 3

    .prologue
    .line 107
    move-object v0, p0

    move-object v2, p0

    monitor-enter v2

    move-object v1, v0

    :try_start_0
    iget v1, v1, Lokhttp3/Dispatcher;->maxRequestsPerHost:I
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

.method public declared-synchronized queuedCalls()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lokhttp3/Call;",
            ">;"
        }
    .end annotation

    .prologue
    .line 211
    move-object v0, p0

    move-object v6, p0

    monitor-enter v6

    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v4

    .line 212
    move-object v4, v0

    iget-object v4, v4, Lokhttp3/Dispatcher;->readyAsyncCalls:Ljava/util/Deque;

    invoke-interface {v4}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v4

    :goto_0
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lokhttp3/RealCall$AsyncCall;

    move-object v3, v4

    .line 213
    move-object v4, v1

    move-object v5, v3

    invoke-virtual {v5}, Lokhttp3/RealCall$AsyncCall;->get()Lokhttp3/RealCall;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 214
    goto :goto_0

    .line 215
    :cond_0
    move-object v4, v1

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    move-object v0, v4

    monitor-exit v6

    return-object v0

    .line 211
    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0
.end method

.method public declared-synchronized queuedCallsCount()I
    .locals 3

    .prologue
    .line 229
    move-object v0, p0

    move-object v2, p0

    monitor-enter v2

    move-object v1, v0

    :try_start_0
    iget-object v1, v1, Lokhttp3/Dispatcher;->readyAsyncCalls:Ljava/util/Deque;

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

.method public declared-synchronized runningCalls()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lokhttp3/Call;",
            ">;"
        }
    .end annotation

    .prologue
    .line 220
    move-object v0, p0

    move-object v6, p0

    monitor-enter v6

    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v4

    .line 221
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Lokhttp3/Dispatcher;->runningSyncCalls:Ljava/util/Deque;

    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v4

    .line 222
    move-object v4, v0

    iget-object v4, v4, Lokhttp3/Dispatcher;->runningAsyncCalls:Ljava/util/Deque;

    invoke-interface {v4}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v4

    :goto_0
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lokhttp3/RealCall$AsyncCall;

    move-object v3, v4

    .line 223
    move-object v4, v1

    move-object v5, v3

    invoke-virtual {v5}, Lokhttp3/RealCall$AsyncCall;->get()Lokhttp3/RealCall;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 224
    goto :goto_0

    .line 225
    :cond_0
    move-object v4, v1

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    move-object v0, v4

    monitor-exit v6

    return-object v0

    .line 220
    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0
.end method

.method public declared-synchronized runningCallsCount()I
    .locals 4

    .prologue
    .line 233
    move-object v0, p0

    move-object v3, p0

    monitor-enter v3

    move-object v1, v0

    :try_start_0
    iget-object v1, v1, Lokhttp3/Dispatcher;->runningAsyncCalls:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->size()I

    move-result v1

    move-object v2, v0

    iget-object v2, v2, Lokhttp3/Dispatcher;->runningSyncCalls:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    add-int/2addr v1, v2

    move v0, v1

    monitor-exit v3

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0
.end method

.method public declared-synchronized setIdleCallback(Ljava/lang/Runnable;)V
    .locals 5

    .prologue
    .line 123
    move-object v0, p0

    move-object v1, p1

    move-object v4, p0

    monitor-enter v4

    move-object v2, v0

    move-object v3, v1

    :try_start_0
    iput-object v3, v2, Lokhttp3/Dispatcher;->idleCallback:Ljava/lang/Runnable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    monitor-exit v4

    return-void

    .line 123
    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0
.end method

.method public declared-synchronized setMaxRequests(I)V
    .locals 8

    .prologue
    .line 78
    move-object v0, p0

    move v1, p1

    move-object v6, p0

    monitor-enter v6

    move v2, v1

    const/4 v3, 0x1

    if-ge v2, v3, :cond_0

    .line 79
    :try_start_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "max < 1: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0

    .line 81
    :cond_0
    move-object v2, v0

    move v3, v1

    :try_start_1
    iput v3, v2, Lokhttp3/Dispatcher;->maxRequests:I

    .line 82
    move-object v2, v0

    invoke-direct {v2}, Lokhttp3/Dispatcher;->promoteCalls()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    monitor-exit v6

    return-void
.end method

.method public declared-synchronized setMaxRequestsPerHost(I)V
    .locals 8

    .prologue
    .line 99
    move-object v0, p0

    move v1, p1

    move-object v6, p0

    monitor-enter v6

    move v2, v1

    const/4 v3, 0x1

    if-ge v2, v3, :cond_0

    .line 100
    :try_start_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "max < 1: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0

    .line 102
    :cond_0
    move-object v2, v0

    move v3, v1

    :try_start_1
    iput v3, v2, Lokhttp3/Dispatcher;->maxRequestsPerHost:I

    .line 103
    move-object v2, v0

    invoke-direct {v2}, Lokhttp3/Dispatcher;->promoteCalls()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 104
    monitor-exit v6

    return-void
.end method
