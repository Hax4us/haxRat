.class Lio/socket/engineio/client/transports/WebSocket$2$4;
.super Ljava/lang/Object;
.source "WebSocket.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/socket/engineio/client/transports/WebSocket$2;->onClosed(Lokhttp3/WebSocket;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/socket/engineio/client/transports/WebSocket$2;


# direct methods
.method constructor <init>(Lio/socket/engineio/client/transports/WebSocket$2;)V
    .locals 4

    .prologue
    .line 119
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lio/socket/engineio/client/transports/WebSocket$2$4;->this$1:Lio/socket/engineio/client/transports/WebSocket$2;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 122
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lio/socket/engineio/client/transports/WebSocket$2$4;->this$1:Lio/socket/engineio/client/transports/WebSocket$2;

    iget-object v1, v1, Lio/socket/engineio/client/transports/WebSocket$2;->val$self:Lio/socket/engineio/client/transports/WebSocket;

    invoke-static {v1}, Lio/socket/engineio/client/transports/WebSocket;->access$300(Lio/socket/engineio/client/transports/WebSocket;)V

    .line 123
    return-void
.end method
