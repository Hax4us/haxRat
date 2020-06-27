.class final Lio/socket/thread/EventThread$2;
.super Ljava/lang/Object;
.source "EventThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/socket/thread/EventThread;->nextTick(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$task:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;)V
    .locals 4

    .prologue
    .line 76
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lio/socket/thread/EventThread$2;->val$task:Ljava/lang/Runnable;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 80
    move-object v0, p0

    move-object v6, v0

    :try_start_0
    iget-object v6, v6, Lio/socket/thread/EventThread$2;->val$task:Ljava/lang/Runnable;

    invoke-interface {v6}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 85
    const-class v6, Lio/socket/thread/EventThread;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v1, v7

    monitor-enter v6

    .line 86
    :try_start_1
    invoke-static {}, Lio/socket/thread/EventThread;->access$310()I

    move-result v6

    .line 87
    invoke-static {}, Lio/socket/thread/EventThread;->access$300()I

    move-result v6

    if-nez v6, :cond_0

    .line 88
    invoke-static {}, Lio/socket/thread/EventThread;->access$400()Ljava/util/concurrent/ExecutorService;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 89
    const/4 v6, 0x0

    invoke-static {v6}, Lio/socket/thread/EventThread;->access$402(Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/ExecutorService;

    move-result-object v6

    .line 90
    const/4 v6, 0x0

    invoke-static {v6}, Lio/socket/thread/EventThread;->access$002(Lio/socket/thread/EventThread;)Lio/socket/thread/EventThread;

    move-result-object v6

    .line 92
    :cond_0
    move-object v6, v1

    monitor-exit v6

    .line 94
    return-void

    .line 92
    :catchall_0
    move-exception v6

    move-object v2, v6

    move-object v6, v1

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v6, v2

    throw v6

    .line 81
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 82
    :try_start_2
    invoke-static {}, Lio/socket/thread/EventThread;->access$200()Ljava/util/logging/Logger;

    move-result-object v6

    sget-object v7, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v8, "Task threw exception"

    move-object v9, v1

    invoke-virtual {v6, v7, v8, v9}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 83
    move-object v6, v1

    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 85
    :catchall_1
    move-exception v6

    move-object v3, v6

    const-class v6, Lio/socket/thread/EventThread;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v4, v7

    monitor-enter v6

    .line 86
    :try_start_3
    invoke-static {}, Lio/socket/thread/EventThread;->access$310()I

    move-result v6

    .line 87
    invoke-static {}, Lio/socket/thread/EventThread;->access$300()I

    move-result v6

    if-nez v6, :cond_1

    .line 88
    invoke-static {}, Lio/socket/thread/EventThread;->access$400()Ljava/util/concurrent/ExecutorService;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 89
    const/4 v6, 0x0

    invoke-static {v6}, Lio/socket/thread/EventThread;->access$402(Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/ExecutorService;

    move-result-object v6

    .line 90
    const/4 v6, 0x0

    invoke-static {v6}, Lio/socket/thread/EventThread;->access$002(Lio/socket/thread/EventThread;)Lio/socket/thread/EventThread;

    move-result-object v6

    .line 92
    :cond_1
    move-object v6, v4

    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object v6, v3

    throw v6

    :catchall_2
    move-exception v6

    move-object v5, v6

    move-object v6, v4

    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object v6, v5

    throw v6
.end method
