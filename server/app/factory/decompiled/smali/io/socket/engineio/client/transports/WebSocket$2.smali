.class Lio/socket/engineio/client/transports/WebSocket$2;
.super Lokhttp3/WebSocketListener;
.source "WebSocket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/socket/engineio/client/transports/WebSocket;->doOpen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/socket/engineio/client/transports/WebSocket;

.field final synthetic val$self:Lio/socket/engineio/client/transports/WebSocket;


# direct methods
.method constructor <init>(Lio/socket/engineio/client/transports/WebSocket;Lio/socket/engineio/client/transports/WebSocket;)V
    .locals 5

    .prologue
    .line 78
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lio/socket/engineio/client/transports/WebSocket$2;->this$0:Lio/socket/engineio/client/transports/WebSocket;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lio/socket/engineio/client/transports/WebSocket$2;->val$self:Lio/socket/engineio/client/transports/WebSocket;

    move-object v3, v0

    invoke-direct {v3}, Lokhttp3/WebSocketListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onClosed(Lokhttp3/WebSocket;ILjava/lang/String;)V
    .locals 8

    .prologue
    .line 119
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    new-instance v4, Lio/socket/engineio/client/transports/WebSocket$2$4;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-direct {v5, v6}, Lio/socket/engineio/client/transports/WebSocket$2$4;-><init>(Lio/socket/engineio/client/transports/WebSocket$2;)V

    invoke-static {v4}, Lio/socket/thread/EventThread;->exec(Ljava/lang/Runnable;)V

    .line 125
    return-void
.end method

.method public onFailure(Lokhttp3/WebSocket;Ljava/lang/Throwable;Lokhttp3/Response;)V
    .locals 9

    .prologue
    .line 129
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v2

    instance-of v4, v4, Ljava/lang/Exception;

    if-nez v4, :cond_0

    .line 138
    :goto_0
    return-void

    .line 132
    :cond_0
    new-instance v4, Lio/socket/engineio/client/transports/WebSocket$2$5;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Lio/socket/engineio/client/transports/WebSocket$2$5;-><init>(Lio/socket/engineio/client/transports/WebSocket$2;Ljava/lang/Throwable;)V

    invoke-static {v4}, Lio/socket/thread/EventThread;->exec(Ljava/lang/Runnable;)V

    .line 138
    goto :goto_0
.end method

.method public onMessage(Lokhttp3/WebSocket;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 93
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v2

    if-nez v3, :cond_0

    .line 102
    :goto_0
    return-void

    .line 96
    :cond_0
    new-instance v3, Lio/socket/engineio/client/transports/WebSocket$2$2;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Lio/socket/engineio/client/transports/WebSocket$2$2;-><init>(Lio/socket/engineio/client/transports/WebSocket$2;Ljava/lang/String;)V

    invoke-static {v3}, Lio/socket/thread/EventThread;->exec(Ljava/lang/Runnable;)V

    .line 102
    goto :goto_0
.end method

.method public onMessage(Lokhttp3/WebSocket;Lokio/ByteString;)V
    .locals 8

    .prologue
    .line 106
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v2

    if-nez v3, :cond_0

    .line 115
    :goto_0
    return-void

    .line 109
    :cond_0
    new-instance v3, Lio/socket/engineio/client/transports/WebSocket$2$3;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Lio/socket/engineio/client/transports/WebSocket$2$3;-><init>(Lio/socket/engineio/client/transports/WebSocket$2;Lokio/ByteString;)V

    invoke-static {v3}, Lio/socket/thread/EventThread;->exec(Ljava/lang/Runnable;)V

    .line 115
    goto :goto_0
.end method

.method public onOpen(Lokhttp3/WebSocket;Lokhttp3/Response;)V
    .locals 9

    .prologue
    .line 81
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v2

    invoke-virtual {v4}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/Headers;->toMultimap()Ljava/util/Map;

    move-result-object v4

    move-object v3, v4

    .line 82
    new-instance v4, Lio/socket/engineio/client/transports/WebSocket$2$1;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    move-object v7, v3

    invoke-direct {v5, v6, v7}, Lio/socket/engineio/client/transports/WebSocket$2$1;-><init>(Lio/socket/engineio/client/transports/WebSocket$2;Ljava/util/Map;)V

    invoke-static {v4}, Lio/socket/thread/EventThread;->exec(Ljava/lang/Runnable;)V

    .line 89
    return-void
.end method
