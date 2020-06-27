.class Lio/socket/engineio/client/transports/WebSocket$2$3;
.super Ljava/lang/Object;
.source "WebSocket.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/socket/engineio/client/transports/WebSocket$2;->onMessage(Lokhttp3/WebSocket;Lokio/ByteString;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/socket/engineio/client/transports/WebSocket$2;

.field final synthetic val$bytes:Lokio/ByteString;


# direct methods
.method constructor <init>(Lio/socket/engineio/client/transports/WebSocket$2;Lokio/ByteString;)V
    .locals 5

    .prologue
    .line 109
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lio/socket/engineio/client/transports/WebSocket$2$3;->this$1:Lio/socket/engineio/client/transports/WebSocket$2;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lio/socket/engineio/client/transports/WebSocket$2$3;->val$bytes:Lokio/ByteString;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 112
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lio/socket/engineio/client/transports/WebSocket$2$3;->this$1:Lio/socket/engineio/client/transports/WebSocket$2;

    iget-object v1, v1, Lio/socket/engineio/client/transports/WebSocket$2;->val$self:Lio/socket/engineio/client/transports/WebSocket;

    move-object v2, v0

    iget-object v2, v2, Lio/socket/engineio/client/transports/WebSocket$2$3;->val$bytes:Lokio/ByteString;

    invoke-virtual {v2}, Lokio/ByteString;->toByteArray()[B

    move-result-object v2

    invoke-static {v1, v2}, Lio/socket/engineio/client/transports/WebSocket;->access$200(Lio/socket/engineio/client/transports/WebSocket;[B)V

    .line 113
    return-void
.end method
