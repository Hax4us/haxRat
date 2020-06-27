.class Lio/socket/engineio/client/transports/WebSocket$2$1;
.super Ljava/lang/Object;
.source "WebSocket.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/socket/engineio/client/transports/WebSocket$2;->onOpen(Lokhttp3/WebSocket;Lokhttp3/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/socket/engineio/client/transports/WebSocket$2;

.field final synthetic val$headers:Ljava/util/Map;


# direct methods
.method constructor <init>(Lio/socket/engineio/client/transports/WebSocket$2;Ljava/util/Map;)V
    .locals 5

    .prologue
    .line 82
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lio/socket/engineio/client/transports/WebSocket$2$1;->this$1:Lio/socket/engineio/client/transports/WebSocket$2;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lio/socket/engineio/client/transports/WebSocket$2$1;->val$headers:Ljava/util/Map;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 85
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lio/socket/engineio/client/transports/WebSocket$2$1;->this$1:Lio/socket/engineio/client/transports/WebSocket$2;

    iget-object v1, v1, Lio/socket/engineio/client/transports/WebSocket$2;->val$self:Lio/socket/engineio/client/transports/WebSocket;

    const-string v2, "responseHeaders"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    move-object v6, v0

    iget-object v6, v6, Lio/socket/engineio/client/transports/WebSocket$2$1;->val$headers:Ljava/util/Map;

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v3}, Lio/socket/engineio/client/transports/WebSocket;->emit(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/emitter/Emitter;

    move-result-object v1

    .line 86
    move-object v1, v0

    iget-object v1, v1, Lio/socket/engineio/client/transports/WebSocket$2$1;->this$1:Lio/socket/engineio/client/transports/WebSocket$2;

    iget-object v1, v1, Lio/socket/engineio/client/transports/WebSocket$2;->val$self:Lio/socket/engineio/client/transports/WebSocket;

    invoke-static {v1}, Lio/socket/engineio/client/transports/WebSocket;->access$000(Lio/socket/engineio/client/transports/WebSocket;)V

    .line 87
    return-void
.end method
