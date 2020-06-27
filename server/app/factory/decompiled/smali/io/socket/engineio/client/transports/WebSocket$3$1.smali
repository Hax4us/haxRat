.class Lio/socket/engineio/client/transports/WebSocket$3$1;
.super Ljava/lang/Object;
.source "WebSocket.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/socket/engineio/client/transports/WebSocket$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/socket/engineio/client/transports/WebSocket$3;


# direct methods
.method constructor <init>(Lio/socket/engineio/client/transports/WebSocket$3;)V
    .locals 4

    .prologue
    .line 152
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lio/socket/engineio/client/transports/WebSocket$3$1;->this$1:Lio/socket/engineio/client/transports/WebSocket$3;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 155
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lio/socket/engineio/client/transports/WebSocket$3$1;->this$1:Lio/socket/engineio/client/transports/WebSocket$3;

    iget-object v1, v1, Lio/socket/engineio/client/transports/WebSocket$3;->val$self:Lio/socket/engineio/client/transports/WebSocket;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lio/socket/engineio/client/transports/WebSocket;->writable:Z

    .line 156
    move-object v1, v0

    iget-object v1, v1, Lio/socket/engineio/client/transports/WebSocket$3$1;->this$1:Lio/socket/engineio/client/transports/WebSocket$3;

    iget-object v1, v1, Lio/socket/engineio/client/transports/WebSocket$3;->val$self:Lio/socket/engineio/client/transports/WebSocket;

    const-string v2, "drain"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lio/socket/engineio/client/transports/WebSocket;->emit(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/emitter/Emitter;

    move-result-object v1

    .line 157
    return-void
.end method
