.class public Lio/socket/thread/EventThread;
.super Ljava/lang/Thread;
.source "EventThread.java"


# static fields
.field private static final THREAD_FACTORY:Ljava/util/concurrent/ThreadFactory;

.field private static counter:I

.field private static final logger:Ljava/util/logging/Logger;

.field private static service:Ljava/util/concurrent/ExecutorService;

.field private static thread:Lio/socket/thread/EventThread;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 16
    const-class v0, Lio/socket/thread/EventThread;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lio/socket/thread/EventThread;->logger:Ljava/util/logging/Logger;

    .line 18
    new-instance v0, Lio/socket/thread/EventThread$1;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lio/socket/thread/EventThread$1;-><init>()V

    sput-object v0, Lio/socket/thread/EventThread;->THREAD_FACTORY:Ljava/util/concurrent/ThreadFactory;

    .line 32
    const/4 v0, 0x0

    sput v0, Lio/socket/thread/EventThread;->counter:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/Runnable;)V
    .locals 4

    .prologue
    .line 36
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 37
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Runnable;Lio/socket/thread/EventThread$1;)V
    .locals 5

    .prologue
    .line 14
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lio/socket/thread/EventThread;-><init>(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$000()Lio/socket/thread/EventThread;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lio/socket/thread/EventThread;->thread:Lio/socket/thread/EventThread;

    return-object v0
.end method

.method static synthetic access$002(Lio/socket/thread/EventThread;)Lio/socket/thread/EventThread;
    .locals 4

    .prologue
    .line 14
    move-object v0, p0

    move-object v1, v0

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    sput-object v2, Lio/socket/thread/EventThread;->thread:Lio/socket/thread/EventThread;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$200()Ljava/util/logging/Logger;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lio/socket/thread/EventThread;->logger:Ljava/util/logging/Logger;

    return-object v0
.end method

.method static synthetic access$300()I
    .locals 1

    .prologue
    .line 14
    sget v0, Lio/socket/thread/EventThread;->counter:I

    return v0
.end method

.method static synthetic access$310()I
    .locals 4

    .prologue
    .line 14
    sget v0, Lio/socket/thread/EventThread;->counter:I

    move v3, v0

    move v0, v3

    move v1, v3

    const/4 v2, 0x1

    add-int/lit8 v1, v1, -0x1

    sput v1, Lio/socket/thread/EventThread;->counter:I

    return v0
.end method

.method static synthetic access$400()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lio/socket/thread/EventThread;->service:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static synthetic access$402(Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/ExecutorService;
    .locals 4

    .prologue
    .line 14
    move-object v0, p0

    move-object v1, v0

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    sput-object v2, Lio/socket/thread/EventThread;->service:Ljava/util/concurrent/ExecutorService;

    move-object v0, v1

    return-object v0
.end method

.method public static exec(Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 54
    move-object v0, p0

    invoke-static {}, Lio/socket/thread/EventThread;->isCurrent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 55
    move-object v1, v0

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 59
    :goto_0
    return-void

    .line 57
    :cond_0
    move-object v1, v0

    invoke-static {v1}, Lio/socket/thread/EventThread;->nextTick(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static isCurrent()Z
    .locals 2

    .prologue
    .line 45
    invoke-static {}, Lio/socket/thread/EventThread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sget-object v1, Lio/socket/thread/EventThread;->thread:Lio/socket/thread/EventThread;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static nextTick(Ljava/lang/Runnable;)V
    .locals 9

    .prologue
    .line 68
    move-object v0, p0

    const-class v4, Lio/socket/thread/EventThread;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v2, v5

    monitor-enter v4

    .line 69
    :try_start_0
    sget v4, Lio/socket/thread/EventThread;->counter:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    sput v4, Lio/socket/thread/EventThread;->counter:I

    .line 70
    sget-object v4, Lio/socket/thread/EventThread;->service:Ljava/util/concurrent/ExecutorService;

    if-nez v4, :cond_0

    .line 71
    sget-object v4, Lio/socket/thread/EventThread;->THREAD_FACTORY:Ljava/util/concurrent/ThreadFactory;

    invoke-static {v4}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v4

    sput-object v4, Lio/socket/thread/EventThread;->service:Ljava/util/concurrent/ExecutorService;

    .line 73
    :cond_0
    sget-object v4, Lio/socket/thread/EventThread;->service:Ljava/util/concurrent/ExecutorService;

    move-object v1, v4

    .line 74
    move-object v4, v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    move-object v4, v1

    new-instance v5, Lio/socket/thread/EventThread$2;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v0

    invoke-direct {v6, v7}, Lio/socket/thread/EventThread$2;-><init>(Ljava/lang/Runnable;)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 96
    return-void

    .line 74
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
