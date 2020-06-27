.class Lio/socket/engineio/client/transports/Polling$3;
.super Ljava/lang/Object;
.source "Polling.java"

# interfaces
.implements Lio/socket/emitter/Emitter$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/socket/engineio/client/transports/Polling;->doClose()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/socket/engineio/client/transports/Polling;

.field final synthetic val$self:Lio/socket/engineio/client/transports/Polling;


# direct methods
.method constructor <init>(Lio/socket/engineio/client/transports/Polling;Lio/socket/engineio/client/transports/Polling;)V
    .locals 5

    .prologue
    .line 152
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lio/socket/engineio/client/transports/Polling$3;->this$0:Lio/socket/engineio/client/transports/Polling;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lio/socket/engineio/client/transports/Polling$3;->val$self:Lio/socket/engineio/client/transports/Polling;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs call([Ljava/lang/Object;)V
    .locals 11

    .prologue
    .line 155
    move-object v0, p0

    move-object v1, p1

    invoke-static {}, Lio/socket/engineio/client/transports/Polling;->access$100()Ljava/util/logging/Logger;

    move-result-object v3

    const-string v4, "writing close packet"

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 157
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Lio/socket/engineio/client/transports/Polling$3;->val$self:Lio/socket/engineio/client/transports/Polling;

    const/4 v4, 0x1

    new-array v4, v4, [Lio/socket/engineio/parser/Packet;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    const/4 v6, 0x0

    new-instance v7, Lio/socket/engineio/parser/Packet;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    const-string v9, "close"

    invoke-direct {v8, v9}, Lio/socket/engineio/parser/Packet;-><init>(Ljava/lang/String;)V

    aput-object v7, v5, v6

    invoke-virtual {v3, v4}, Lio/socket/engineio/client/transports/Polling;->write([Lio/socket/engineio/parser/Packet;)V
    :try_end_0
    .catch Lio/socket/utf8/UTF8Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    return-void

    .line 158
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 159
    new-instance v3, Ljava/lang/RuntimeException;

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    move-object v5, v2

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method
