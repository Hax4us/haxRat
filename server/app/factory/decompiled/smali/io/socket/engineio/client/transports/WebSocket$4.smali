.class Lio/socket/engineio/client/transports/WebSocket$4;
.super Ljava/lang/Object;
.source "WebSocket.java"

# interfaces
.implements Lio/socket/engineio/parser/Parser$EncodeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/socket/engineio/client/transports/WebSocket;->write([Lio/socket/engineio/parser/Packet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/socket/engineio/client/transports/WebSocket;

.field final synthetic val$done:Ljava/lang/Runnable;

.field final synthetic val$self:Lio/socket/engineio/client/transports/WebSocket;

.field final synthetic val$total:[I


# direct methods
.method constructor <init>(Lio/socket/engineio/client/transports/WebSocket;Lio/socket/engineio/client/transports/WebSocket;[ILjava/lang/Runnable;)V
    .locals 7

    .prologue
    .line 169
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lio/socket/engineio/client/transports/WebSocket$4;->this$0:Lio/socket/engineio/client/transports/WebSocket;

    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Lio/socket/engineio/client/transports/WebSocket$4;->val$self:Lio/socket/engineio/client/transports/WebSocket;

    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Lio/socket/engineio/client/transports/WebSocket$4;->val$total:[I

    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Lio/socket/engineio/client/transports/WebSocket$4;->val$done:Ljava/lang/Runnable;

    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 11

    .prologue
    .line 173
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    :try_start_0
    instance-of v3, v3, Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 174
    move-object v3, v0

    iget-object v3, v3, Lio/socket/engineio/client/transports/WebSocket$4;->val$self:Lio/socket/engineio/client/transports/WebSocket;

    invoke-static {v3}, Lio/socket/engineio/client/transports/WebSocket;->access$500(Lio/socket/engineio/client/transports/WebSocket;)Lokhttp3/WebSocket;

    move-result-object v3

    move-object v4, v1

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3, v4}, Lokhttp3/WebSocket;->send(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 182
    :cond_0
    :goto_0
    const/4 v3, 0x0

    move-object v4, v0

    iget-object v4, v4, Lio/socket/engineio/client/transports/WebSocket$4;->val$total:[I

    const/4 v5, 0x0

    move-object v8, v4

    move v9, v5

    move-object v4, v8

    move v5, v9

    move-object v6, v8

    move v7, v9

    aget v6, v6, v7

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    move-object v8, v4

    move v9, v5

    move v10, v6

    move v4, v10

    move-object v5, v8

    move v6, v9

    move v7, v10

    aput v7, v5, v6

    if-ne v3, v4, :cond_1

    move-object v3, v0

    iget-object v3, v3, Lio/socket/engineio/client/transports/WebSocket$4;->val$done:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 183
    :cond_1
    return-void

    .line 175
    :cond_2
    move-object v3, v1

    :try_start_1
    instance-of v3, v3, [B

    if-eqz v3, :cond_0

    .line 176
    move-object v3, v0

    iget-object v3, v3, Lio/socket/engineio/client/transports/WebSocket$4;->val$self:Lio/socket/engineio/client/transports/WebSocket;

    invoke-static {v3}, Lio/socket/engineio/client/transports/WebSocket;->access$500(Lio/socket/engineio/client/transports/WebSocket;)Lokhttp3/WebSocket;

    move-result-object v3

    move-object v4, v1

    check-cast v4, [B

    check-cast v4, [B

    invoke-static {v4}, Lokio/ByteString;->of([B)Lokio/ByteString;

    move-result-object v4

    invoke-interface {v3, v4}, Lokhttp3/WebSocket;->send(Lokio/ByteString;)Z
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v3

    goto :goto_0

    .line 178
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 179
    invoke-static {}, Lio/socket/engineio/client/transports/WebSocket;->access$600()Ljava/util/logging/Logger;

    move-result-object v3

    const-string v4, "websocket closed before we could write"

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    goto :goto_0
.end method
