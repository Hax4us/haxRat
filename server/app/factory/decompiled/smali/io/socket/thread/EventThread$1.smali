.class final Lio/socket/thread/EventThread$1;
.super Ljava/lang/Object;
.source "EventThread.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/socket/thread/EventThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 18
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 7

    .prologue
    .line 21
    move-object v0, p0

    move-object v1, p1

    new-instance v2, Lio/socket/thread/EventThread;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v1

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lio/socket/thread/EventThread;-><init>(Ljava/lang/Runnable;Lio/socket/thread/EventThread$1;)V

    invoke-static {v2}, Lio/socket/thread/EventThread;->access$002(Lio/socket/thread/EventThread;)Lio/socket/thread/EventThread;

    move-result-object v2

    .line 22
    invoke-static {}, Lio/socket/thread/EventThread;->access$000()Lio/socket/thread/EventThread;

    move-result-object v2

    const-string v3, "EventThread"

    invoke-virtual {v2, v3}, Lio/socket/thread/EventThread;->setName(Ljava/lang/String;)V

    .line 23
    invoke-static {}, Lio/socket/thread/EventThread;->access$000()Lio/socket/thread/EventThread;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->isDaemon()Z

    move-result v3

    invoke-virtual {v2, v3}, Lio/socket/thread/EventThread;->setDaemon(Z)V

    .line 24
    invoke-static {}, Lio/socket/thread/EventThread;->access$000()Lio/socket/thread/EventThread;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method
