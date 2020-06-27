.class Lio/socket/engineio/client/Socket$7$1$1;
.super Ljava/lang/Object;
.source "Socket.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/socket/engineio/client/Socket$7$1;->call([Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lio/socket/engineio/client/Socket$7$1;


# direct methods
.method constructor <init>(Lio/socket/engineio/client/Socket$7$1;)V
    .locals 4

    .prologue
    .line 360
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lio/socket/engineio/client/Socket$7$1$1;->this$2:Lio/socket/engineio/client/Socket$7$1;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 363
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lio/socket/engineio/client/Socket$7$1$1;->this$2:Lio/socket/engineio/client/Socket$7$1;

    iget-object v2, v2, Lio/socket/engineio/client/Socket$7$1;->this$1:Lio/socket/engineio/client/Socket$7;

    iget-object v2, v2, Lio/socket/engineio/client/Socket$7;->val$failed:[Z

    const/4 v3, 0x0

    aget-boolean v2, v2, v3

    if-eqz v2, :cond_0

    .line 377
    :goto_0
    return-void

    .line 364
    :cond_0
    sget-object v2, Lio/socket/engineio/client/Socket$ReadyState;->CLOSED:Lio/socket/engineio/client/Socket$ReadyState;

    move-object v3, v0

    iget-object v3, v3, Lio/socket/engineio/client/Socket$7$1$1;->this$2:Lio/socket/engineio/client/Socket$7$1;

    iget-object v3, v3, Lio/socket/engineio/client/Socket$7$1;->this$1:Lio/socket/engineio/client/Socket$7;

    iget-object v3, v3, Lio/socket/engineio/client/Socket$7;->val$self:Lio/socket/engineio/client/Socket;

    invoke-static {v3}, Lio/socket/engineio/client/Socket;->access$500(Lio/socket/engineio/client/Socket;)Lio/socket/engineio/client/Socket$ReadyState;

    move-result-object v3

    if-ne v2, v3, :cond_1

    goto :goto_0

    .line 366
    :cond_1
    invoke-static {}, Lio/socket/engineio/client/Socket;->access$1200()Ljava/util/logging/Logger;

    move-result-object v2

    const-string v3, "changing transport and sending upgrade packet"

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 368
    move-object v2, v0

    iget-object v2, v2, Lio/socket/engineio/client/Socket$7$1$1;->this$2:Lio/socket/engineio/client/Socket$7$1;

    iget-object v2, v2, Lio/socket/engineio/client/Socket$7$1;->this$1:Lio/socket/engineio/client/Socket$7;

    iget-object v2, v2, Lio/socket/engineio/client/Socket$7;->val$cleanup:[Ljava/lang/Runnable;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 370
    move-object v2, v0

    iget-object v2, v2, Lio/socket/engineio/client/Socket$7$1$1;->this$2:Lio/socket/engineio/client/Socket$7$1;

    iget-object v2, v2, Lio/socket/engineio/client/Socket$7$1;->this$1:Lio/socket/engineio/client/Socket$7;

    iget-object v2, v2, Lio/socket/engineio/client/Socket$7;->val$self:Lio/socket/engineio/client/Socket;

    move-object v3, v0

    iget-object v3, v3, Lio/socket/engineio/client/Socket$7$1$1;->this$2:Lio/socket/engineio/client/Socket$7$1;

    iget-object v3, v3, Lio/socket/engineio/client/Socket$7$1;->this$1:Lio/socket/engineio/client/Socket$7;

    iget-object v3, v3, Lio/socket/engineio/client/Socket$7;->val$transport:[Lio/socket/engineio/client/Transport;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-static {v2, v3}, Lio/socket/engineio/client/Socket;->access$700(Lio/socket/engineio/client/Socket;Lio/socket/engineio/client/Transport;)V

    .line 371
    new-instance v2, Lio/socket/engineio/parser/Packet;

    move-object v9, v2

    move-object v2, v9

    move-object v3, v9

    const-string v4, "upgrade"

    invoke-direct {v3, v4}, Lio/socket/engineio/parser/Packet;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    .line 372
    move-object v2, v0

    iget-object v2, v2, Lio/socket/engineio/client/Socket$7$1$1;->this$2:Lio/socket/engineio/client/Socket$7$1;

    iget-object v2, v2, Lio/socket/engineio/client/Socket$7$1;->this$1:Lio/socket/engineio/client/Socket$7;

    iget-object v2, v2, Lio/socket/engineio/client/Socket$7;->val$transport:[Lio/socket/engineio/client/Transport;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x1

    new-array v3, v3, [Lio/socket/engineio/parser/Packet;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    const/4 v5, 0x0

    move-object v6, v1

    aput-object v6, v4, v5

    invoke-virtual {v2, v3}, Lio/socket/engineio/client/Transport;->send([Lio/socket/engineio/parser/Packet;)V

    .line 373
    move-object v2, v0

    iget-object v2, v2, Lio/socket/engineio/client/Socket$7$1$1;->this$2:Lio/socket/engineio/client/Socket$7$1;

    iget-object v2, v2, Lio/socket/engineio/client/Socket$7$1;->this$1:Lio/socket/engineio/client/Socket$7;

    iget-object v2, v2, Lio/socket/engineio/client/Socket$7;->val$self:Lio/socket/engineio/client/Socket;

    const-string v3, "upgrade"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const/4 v6, 0x0

    move-object v7, v0

    iget-object v7, v7, Lio/socket/engineio/client/Socket$7$1$1;->this$2:Lio/socket/engineio/client/Socket$7$1;

    iget-object v7, v7, Lio/socket/engineio/client/Socket$7$1;->this$1:Lio/socket/engineio/client/Socket$7;

    iget-object v7, v7, Lio/socket/engineio/client/Socket$7;->val$transport:[Lio/socket/engineio/client/Transport;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    aput-object v7, v5, v6

    invoke-virtual {v2, v3, v4}, Lio/socket/engineio/client/Socket;->emit(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/emitter/Emitter;

    move-result-object v2

    .line 374
    move-object v2, v0

    iget-object v2, v2, Lio/socket/engineio/client/Socket$7$1$1;->this$2:Lio/socket/engineio/client/Socket$7$1;

    iget-object v2, v2, Lio/socket/engineio/client/Socket$7$1;->this$1:Lio/socket/engineio/client/Socket$7;

    iget-object v2, v2, Lio/socket/engineio/client/Socket$7;->val$transport:[Lio/socket/engineio/client/Transport;

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput-object v4, v2, v3

    .line 375
    move-object v2, v0

    iget-object v2, v2, Lio/socket/engineio/client/Socket$7$1$1;->this$2:Lio/socket/engineio/client/Socket$7$1;

    iget-object v2, v2, Lio/socket/engineio/client/Socket$7$1;->this$1:Lio/socket/engineio/client/Socket$7;

    iget-object v2, v2, Lio/socket/engineio/client/Socket$7;->val$self:Lio/socket/engineio/client/Socket;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lio/socket/engineio/client/Socket;->access$1302(Lio/socket/engineio/client/Socket;Z)Z

    move-result v2

    .line 376
    move-object v2, v0

    iget-object v2, v2, Lio/socket/engineio/client/Socket$7$1$1;->this$2:Lio/socket/engineio/client/Socket$7$1;

    iget-object v2, v2, Lio/socket/engineio/client/Socket$7$1;->this$1:Lio/socket/engineio/client/Socket$7;

    iget-object v2, v2, Lio/socket/engineio/client/Socket$7;->val$self:Lio/socket/engineio/client/Socket;

    invoke-static {v2}, Lio/socket/engineio/client/Socket;->access$1400(Lio/socket/engineio/client/Socket;)V

    .line 377
    goto/16 :goto_0
.end method
