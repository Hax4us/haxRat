.class Lio/socket/engineio/client/transports/Polling$1$1;
.super Ljava/lang/Object;
.source "Polling.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/socket/engineio/client/transports/Polling$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/socket/engineio/client/transports/Polling$1;

.field final synthetic val$self:Lio/socket/engineio/client/transports/Polling;


# direct methods
.method constructor <init>(Lio/socket/engineio/client/transports/Polling$1;Lio/socket/engineio/client/transports/Polling;)V
    .locals 5

    .prologue
    .line 46
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lio/socket/engineio/client/transports/Polling$1$1;->this$1:Lio/socket/engineio/client/transports/Polling$1;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lio/socket/engineio/client/transports/Polling$1$1;->val$self:Lio/socket/engineio/client/transports/Polling;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 49
    move-object v0, p0

    invoke-static {}, Lio/socket/engineio/client/transports/Polling;->access$100()Ljava/util/logging/Logger;

    move-result-object v1

    const-string v2, "paused"

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 50
    move-object v1, v0

    iget-object v1, v1, Lio/socket/engineio/client/transports/Polling$1$1;->val$self:Lio/socket/engineio/client/transports/Polling;

    sget-object v2, Lio/socket/engineio/client/Transport$ReadyState;->PAUSED:Lio/socket/engineio/client/Transport$ReadyState;

    invoke-static {v1, v2}, Lio/socket/engineio/client/transports/Polling;->access$202(Lio/socket/engineio/client/transports/Polling;Lio/socket/engineio/client/Transport$ReadyState;)Lio/socket/engineio/client/Transport$ReadyState;

    move-result-object v1

    .line 51
    move-object v1, v0

    iget-object v1, v1, Lio/socket/engineio/client/transports/Polling$1$1;->this$1:Lio/socket/engineio/client/transports/Polling$1;

    iget-object v1, v1, Lio/socket/engineio/client/transports/Polling$1;->val$onPause:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 52
    return-void
.end method
