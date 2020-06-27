.class Lio/socket/engineio/client/Socket$7$1;
.super Ljava/lang/Object;
.source "Socket.java"

# interfaces
.implements Lio/socket/emitter/Emitter$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/socket/engineio/client/Socket$7;->call([Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/socket/engineio/client/Socket$7;


# direct methods
.method constructor <init>(Lio/socket/engineio/client/Socket$7;)V
    .locals 4

    .prologue
    .line 346
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lio/socket/engineio/client/Socket$7$1;->this$1:Lio/socket/engineio/client/Socket$7;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs call([Ljava/lang/Object;)V
    .locals 12

    .prologue
    .line 349
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    iget-object v4, v4, Lio/socket/engineio/client/Socket$7$1;->this$1:Lio/socket/engineio/client/Socket$7;

    iget-object v4, v4, Lio/socket/engineio/client/Socket$7;->val$failed:[Z

    const/4 v5, 0x0

    aget-boolean v4, v4, v5

    if-eqz v4, :cond_0

    .line 385
    :goto_0
    return-void

    .line 351
    :cond_0
    move-object v4, v1

    const/4 v5, 0x0

    aget-object v4, v4, v5

    check-cast v4, Lio/socket/engineio/parser/Packet;

    move-object v2, v4

    .line 352
    const-string v4, "pong"

    move-object v5, v2

    iget-object v5, v5, Lio/socket/engineio/parser/Packet;->type:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "probe"

    move-object v5, v2

    iget-object v5, v5, Lio/socket/engineio/parser/Packet;->data:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 353
    invoke-static {}, Lio/socket/engineio/client/Socket;->access$1200()Ljava/util/logging/Logger;

    move-result-object v4

    const-string v5, "probe transport \'%s\' pong"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    const/4 v8, 0x0

    move-object v9, v0

    iget-object v9, v9, Lio/socket/engineio/client/Socket$7$1;->this$1:Lio/socket/engineio/client/Socket$7;

    iget-object v9, v9, Lio/socket/engineio/client/Socket$7;->val$name:Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 354
    move-object v4, v0

    iget-object v4, v4, Lio/socket/engineio/client/Socket$7$1;->this$1:Lio/socket/engineio/client/Socket$7;

    iget-object v4, v4, Lio/socket/engineio/client/Socket$7;->val$self:Lio/socket/engineio/client/Socket;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lio/socket/engineio/client/Socket;->access$1302(Lio/socket/engineio/client/Socket;Z)Z

    move-result v4

    .line 355
    move-object v4, v0

    iget-object v4, v4, Lio/socket/engineio/client/Socket$7$1;->this$1:Lio/socket/engineio/client/Socket$7;

    iget-object v4, v4, Lio/socket/engineio/client/Socket$7;->val$self:Lio/socket/engineio/client/Socket;

    const-string v5, "upgrading"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    const/4 v8, 0x0

    move-object v9, v0

    iget-object v9, v9, Lio/socket/engineio/client/Socket$7$1;->this$1:Lio/socket/engineio/client/Socket$7;

    iget-object v9, v9, Lio/socket/engineio/client/Socket$7;->val$transport:[Lio/socket/engineio/client/Transport;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    aput-object v9, v7, v8

    invoke-virtual {v4, v5, v6}, Lio/socket/engineio/client/Socket;->emit(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/emitter/Emitter;

    move-result-object v4

    .line 356
    const/4 v4, 0x0

    move-object v5, v0

    iget-object v5, v5, Lio/socket/engineio/client/Socket$7$1;->this$1:Lio/socket/engineio/client/Socket$7;

    iget-object v5, v5, Lio/socket/engineio/client/Socket$7;->val$transport:[Lio/socket/engineio/client/Transport;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    if-ne v4, v5, :cond_1

    goto :goto_0

    .line 357
    :cond_1
    const-string v4, "websocket"

    move-object v5, v0

    iget-object v5, v5, Lio/socket/engineio/client/Socket$7$1;->this$1:Lio/socket/engineio/client/Socket$7;

    iget-object v5, v5, Lio/socket/engineio/client/Socket$7;->val$transport:[Lio/socket/engineio/client/Transport;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    iget-object v5, v5, Lio/socket/engineio/client/Transport;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-static {v4}, Lio/socket/engineio/client/Socket;->access$302(Z)Z

    move-result v4

    .line 359
    invoke-static {}, Lio/socket/engineio/client/Socket;->access$1200()Ljava/util/logging/Logger;

    move-result-object v4

    const-string v5, "pausing current transport \'%s\'"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    const/4 v8, 0x0

    move-object v9, v0

    iget-object v9, v9, Lio/socket/engineio/client/Socket$7$1;->this$1:Lio/socket/engineio/client/Socket$7;

    iget-object v9, v9, Lio/socket/engineio/client/Socket$7;->val$self:Lio/socket/engineio/client/Socket;

    iget-object v9, v9, Lio/socket/engineio/client/Socket;->transport:Lio/socket/engineio/client/Transport;

    iget-object v9, v9, Lio/socket/engineio/client/Transport;->name:Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 360
    move-object v4, v0

    iget-object v4, v4, Lio/socket/engineio/client/Socket$7$1;->this$1:Lio/socket/engineio/client/Socket$7;

    iget-object v4, v4, Lio/socket/engineio/client/Socket$7;->val$self:Lio/socket/engineio/client/Socket;

    iget-object v4, v4, Lio/socket/engineio/client/Socket;->transport:Lio/socket/engineio/client/Transport;

    check-cast v4, Lio/socket/engineio/client/transports/Polling;

    new-instance v5, Lio/socket/engineio/client/Socket$7$1$1;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    move-object v7, v0

    invoke-direct {v6, v7}, Lio/socket/engineio/client/Socket$7$1$1;-><init>(Lio/socket/engineio/client/Socket$7$1;)V

    invoke-virtual {v4, v5}, Lio/socket/engineio/client/transports/Polling;->pause(Ljava/lang/Runnable;)V

    .line 385
    :goto_1
    goto/16 :goto_0

    .line 380
    :cond_2
    invoke-static {}, Lio/socket/engineio/client/Socket;->access$1200()Ljava/util/logging/Logger;

    move-result-object v4

    const-string v5, "probe transport \'%s\' failed"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    const/4 v8, 0x0

    move-object v9, v0

    iget-object v9, v9, Lio/socket/engineio/client/Socket$7$1;->this$1:Lio/socket/engineio/client/Socket$7;

    iget-object v9, v9, Lio/socket/engineio/client/Socket$7;->val$name:Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 381
    new-instance v4, Lio/socket/engineio/client/EngineIOException;

    move-object v11, v4

    move-object v4, v11

    move-object v5, v11

    const-string v6, "probe error"

    invoke-direct {v5, v6}, Lio/socket/engineio/client/EngineIOException;-><init>(Ljava/lang/String;)V

    move-object v3, v4

    .line 382
    move-object v4, v3

    move-object v5, v0

    iget-object v5, v5, Lio/socket/engineio/client/Socket$7$1;->this$1:Lio/socket/engineio/client/Socket$7;

    iget-object v5, v5, Lio/socket/engineio/client/Socket$7;->val$transport:[Lio/socket/engineio/client/Transport;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    iget-object v5, v5, Lio/socket/engineio/client/Transport;->name:Ljava/lang/String;

    iput-object v5, v4, Lio/socket/engineio/client/EngineIOException;->transport:Ljava/lang/String;

    .line 383
    move-object v4, v0

    iget-object v4, v4, Lio/socket/engineio/client/Socket$7$1;->this$1:Lio/socket/engineio/client/Socket$7;

    iget-object v4, v4, Lio/socket/engineio/client/Socket$7;->val$self:Lio/socket/engineio/client/Socket;

    const-string v5, "upgradeError"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    const/4 v8, 0x0

    move-object v9, v3

    aput-object v9, v7, v8

    invoke-virtual {v4, v5, v6}, Lio/socket/engineio/client/Socket;->emit(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/emitter/Emitter;

    move-result-object v4

    goto :goto_1
.end method
