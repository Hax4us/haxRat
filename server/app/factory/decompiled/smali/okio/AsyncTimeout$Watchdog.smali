.class final Lokio/AsyncTimeout$Watchdog;
.super Ljava/lang/Thread;
.source "AsyncTimeout.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokio/AsyncTimeout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Watchdog"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\u0008\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0000\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0016\u00a8\u0006\u0005"
    }
    d2 = {
        "Lokio/AsyncTimeout$Watchdog;",
        "Ljava/lang/Thread;",
        "()V",
        "run",
        "",
        "okio"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 177
    move-object v0, p0

    move-object v1, v0

    const-string v2, "Okio Watchdog"

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 178
    nop

    .line 179
    move-object v1, v0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lokio/AsyncTimeout$Watchdog;->setDaemon(Z)V

    .line 180
    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 183
    move-object v0, p0

    :goto_0
    nop

    .line 184
    nop

    .line 185
    const/4 v7, 0x0

    :try_start_0
    check-cast v7, Lokio/AsyncTimeout;

    move-object v1, v7

    .line 186
    const-class v7, Lokio/AsyncTimeout;

    move-object v2, v7

    const/4 v7, 0x0

    move v3, v7

    .line 328
    const/4 v7, 0x0

    move v4, v7

    const/4 v7, 0x0

    move v5, v7

    move-object v7, v2

    monitor-enter v7
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    const/4 v7, 0x0

    move v6, v7

    .line 187
    :try_start_1
    sget-object v7, Lokio/AsyncTimeout;->Companion:Lokio/AsyncTimeout$Companion;

    invoke-virtual {v7}, Lokio/AsyncTimeout$Companion;->awaitTimeout$okio()Lokio/AsyncTimeout;

    move-result-object v7

    move-object v1, v7

    .line 191
    move-object v7, v1

    invoke-static {}, Lokio/AsyncTimeout;->access$getHead$cp()Lokio/AsyncTimeout;

    move-result-object v8

    if-ne v7, v8, :cond_0

    .line 192
    const/4 v7, 0x0

    check-cast v7, Lokio/AsyncTimeout;

    invoke-static {v7}, Lokio/AsyncTimeout;->access$setHead$cp(Lokio/AsyncTimeout;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 193
    move-object v7, v2

    :try_start_2
    monitor-exit v7
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    .line 195
    :cond_0
    nop

    :try_start_3
    sget-object v7, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v5, v7

    move-object v7, v2

    :try_start_4
    monitor-exit v7

    .line 198
    move-object v7, v1

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    if-eqz v8, :cond_1

    invoke-virtual {v7}, Lokio/AsyncTimeout;->timedOut()V

    .line 200
    :goto_1
    goto :goto_0

    .line 195
    :catchall_0
    move-exception v7

    move-object v5, v7

    move-object v7, v2

    monitor-exit v7

    move-object v7, v5

    throw v7
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    .line 199
    :catch_0
    move-exception v7

    move-object v1, v7

    goto :goto_1

    .line 198
    :cond_1
    goto :goto_1
.end method
