.class Lio/socket/engineio/client/transports/Polling$1;
.super Ljava/lang/Object;
.source "Polling.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/socket/engineio/client/transports/Polling;->pause(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/socket/engineio/client/transports/Polling;

.field final synthetic val$onPause:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lio/socket/engineio/client/transports/Polling;Ljava/lang/Runnable;)V
    .locals 5

    .prologue
    .line 39
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lio/socket/engineio/client/transports/Polling$1;->this$0:Lio/socket/engineio/client/transports/Polling;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lio/socket/engineio/client/transports/Polling$1;->val$onPause:Ljava/lang/Runnable;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    .line 42
    move-object v0, p0

    move-object v4, v0

    iget-object v4, v4, Lio/socket/engineio/client/transports/Polling$1;->this$0:Lio/socket/engineio/client/transports/Polling;

    move-object v1, v4

    .line 44
    move-object v4, v0

    iget-object v4, v4, Lio/socket/engineio/client/transports/Polling$1;->this$0:Lio/socket/engineio/client/transports/Polling;

    sget-object v5, Lio/socket/engineio/client/Transport$ReadyState;->PAUSED:Lio/socket/engineio/client/Transport$ReadyState;

    invoke-static {v4, v5}, Lio/socket/engineio/client/transports/Polling;->access$002(Lio/socket/engineio/client/transports/Polling;Lio/socket/engineio/client/Transport$ReadyState;)Lio/socket/engineio/client/Transport$ReadyState;

    move-result-object v4

    .line 46
    new-instance v4, Lio/socket/engineio/client/transports/Polling$1$1;

    move-object v11, v4

    move-object v4, v11

    move-object v5, v11

    move-object v6, v0

    move-object v7, v1

    invoke-direct {v5, v6, v7}, Lio/socket/engineio/client/transports/Polling$1$1;-><init>(Lio/socket/engineio/client/transports/Polling$1;Lio/socket/engineio/client/transports/Polling;)V

    move-object v2, v4

    .line 55
    move-object v4, v0

    iget-object v4, v4, Lio/socket/engineio/client/transports/Polling$1;->this$0:Lio/socket/engineio/client/transports/Polling;

    invoke-static {v4}, Lio/socket/engineio/client/transports/Polling;->access$300(Lio/socket/engineio/client/transports/Polling;)Z

    move-result v4

    if-nez v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Lio/socket/engineio/client/transports/Polling$1;->this$0:Lio/socket/engineio/client/transports/Polling;

    iget-boolean v4, v4, Lio/socket/engineio/client/transports/Polling;->writable:Z

    if-nez v4, :cond_3

    .line 56
    :cond_0
    const/4 v4, 0x1

    new-array v4, v4, [I

    move-object v11, v4

    move-object v4, v11

    move-object v5, v11

    const/4 v6, 0x0

    const/4 v7, 0x0

    aput v7, v5, v6

    move-object v3, v4

    .line 58
    move-object v4, v0

    iget-object v4, v4, Lio/socket/engineio/client/transports/Polling$1;->this$0:Lio/socket/engineio/client/transports/Polling;

    invoke-static {v4}, Lio/socket/engineio/client/transports/Polling;->access$300(Lio/socket/engineio/client/transports/Polling;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 59
    invoke-static {}, Lio/socket/engineio/client/transports/Polling;->access$100()Ljava/util/logging/Logger;

    move-result-object v4

    const-string v5, "we are currently polling - waiting to pause"

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 60
    move-object v4, v3

    const/4 v5, 0x0

    move-object v11, v4

    move v12, v5

    move-object v4, v11

    move v5, v12

    move-object v6, v11

    move v7, v12

    aget v6, v6, v7

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    aput v6, v4, v5

    .line 61
    move-object v4, v0

    iget-object v4, v4, Lio/socket/engineio/client/transports/Polling$1;->this$0:Lio/socket/engineio/client/transports/Polling;

    const-string v5, "pollComplete"

    new-instance v6, Lio/socket/engineio/client/transports/Polling$1$2;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v0

    move-object v9, v3

    move-object v10, v2

    invoke-direct {v7, v8, v9, v10}, Lio/socket/engineio/client/transports/Polling$1$2;-><init>(Lio/socket/engineio/client/transports/Polling$1;[ILjava/lang/Runnable;)V

    invoke-virtual {v4, v5, v6}, Lio/socket/engineio/client/transports/Polling;->once(Ljava/lang/String;Lio/socket/emitter/Emitter$Listener;)Lio/socket/emitter/Emitter;

    move-result-object v4

    .line 72
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Lio/socket/engineio/client/transports/Polling$1;->this$0:Lio/socket/engineio/client/transports/Polling;

    iget-boolean v4, v4, Lio/socket/engineio/client/transports/Polling;->writable:Z

    if-nez v4, :cond_2

    .line 73
    invoke-static {}, Lio/socket/engineio/client/transports/Polling;->access$100()Ljava/util/logging/Logger;

    move-result-object v4

    const-string v5, "we are currently writing - waiting to pause"

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 74
    move-object v4, v3

    const/4 v5, 0x0

    move-object v11, v4

    move v12, v5

    move-object v4, v11

    move v5, v12

    move-object v6, v11

    move v7, v12

    aget v6, v6, v7

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    aput v6, v4, v5

    .line 75
    move-object v4, v0

    iget-object v4, v4, Lio/socket/engineio/client/transports/Polling$1;->this$0:Lio/socket/engineio/client/transports/Polling;

    const-string v5, "drain"

    new-instance v6, Lio/socket/engineio/client/transports/Polling$1$3;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v0

    move-object v9, v3

    move-object v10, v2

    invoke-direct {v7, v8, v9, v10}, Lio/socket/engineio/client/transports/Polling$1$3;-><init>(Lio/socket/engineio/client/transports/Polling$1;[ILjava/lang/Runnable;)V

    invoke-virtual {v4, v5, v6}, Lio/socket/engineio/client/transports/Polling;->once(Ljava/lang/String;Lio/socket/emitter/Emitter$Listener;)Lio/socket/emitter/Emitter;

    move-result-object v4

    .line 88
    :cond_2
    :goto_0
    return-void

    .line 86
    :cond_3
    move-object v4, v2

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method
