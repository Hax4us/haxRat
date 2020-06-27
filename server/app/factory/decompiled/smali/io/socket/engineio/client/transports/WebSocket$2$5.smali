.class Lio/socket/engineio/client/transports/WebSocket$2$5;
.super Ljava/lang/Object;
.source "WebSocket.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/socket/engineio/client/transports/WebSocket$2;->onFailure(Lokhttp3/WebSocket;Ljava/lang/Throwable;Lokhttp3/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/socket/engineio/client/transports/WebSocket$2;

.field final synthetic val$t:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Lio/socket/engineio/client/transports/WebSocket$2;Ljava/lang/Throwable;)V
    .locals 5

    .prologue
    .line 132
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lio/socket/engineio/client/transports/WebSocket$2$5;->this$1:Lio/socket/engineio/client/transports/WebSocket$2;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lio/socket/engineio/client/transports/WebSocket$2$5;->val$t:Ljava/lang/Throwable;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 135
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lio/socket/engineio/client/transports/WebSocket$2$5;->this$1:Lio/socket/engineio/client/transports/WebSocket$2;

    iget-object v1, v1, Lio/socket/engineio/client/transports/WebSocket$2;->val$self:Lio/socket/engineio/client/transports/WebSocket;

    const-string v2, "websocket error"

    move-object v3, v0

    iget-object v3, v3, Lio/socket/engineio/client/transports/WebSocket$2$5;->val$t:Ljava/lang/Throwable;

    check-cast v3, Ljava/lang/Exception;

    invoke-static {v1, v2, v3}, Lio/socket/engineio/client/transports/WebSocket;->access$400(Lio/socket/engineio/client/transports/WebSocket;Ljava/lang/String;Ljava/lang/Exception;)Lio/socket/engineio/client/Transport;

    move-result-object v1

    .line 136
    return-void
.end method
