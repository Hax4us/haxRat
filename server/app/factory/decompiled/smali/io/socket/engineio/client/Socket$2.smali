.class Lio/socket/engineio/client/Socket$2;
.super Ljava/lang/Object;
.source "Socket.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/socket/engineio/client/Socket;->open()Lio/socket/engineio/client/Socket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/socket/engineio/client/Socket;


# direct methods
.method constructor <init>(Lio/socket/engineio/client/Socket;)V
    .locals 4

    .prologue
    .line 226
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lio/socket/engineio/client/Socket$2;->this$0:Lio/socket/engineio/client/Socket;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 230
    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lio/socket/engineio/client/Socket$2;->this$0:Lio/socket/engineio/client/Socket;

    invoke-static {v3}, Lio/socket/engineio/client/Socket;->access$200(Lio/socket/engineio/client/Socket;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lio/socket/engineio/client/Socket;->access$300()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lio/socket/engineio/client/Socket$2;->this$0:Lio/socket/engineio/client/Socket;

    invoke-static {v3}, Lio/socket/engineio/client/Socket;->access$400(Lio/socket/engineio/client/Socket;)Ljava/util/List;

    move-result-object v3

    const-string v4, "websocket"

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 231
    const-string v3, "websocket"

    move-object v1, v3

    .line 245
    :goto_0
    move-object v3, v0

    iget-object v3, v3, Lio/socket/engineio/client/Socket$2;->this$0:Lio/socket/engineio/client/Socket;

    sget-object v4, Lio/socket/engineio/client/Socket$ReadyState;->OPENING:Lio/socket/engineio/client/Socket$ReadyState;

    invoke-static {v3, v4}, Lio/socket/engineio/client/Socket;->access$502(Lio/socket/engineio/client/Socket;Lio/socket/engineio/client/Socket$ReadyState;)Lio/socket/engineio/client/Socket$ReadyState;

    move-result-object v3

    .line 246
    move-object v3, v0

    iget-object v3, v3, Lio/socket/engineio/client/Socket$2;->this$0:Lio/socket/engineio/client/Socket;

    move-object v4, v1

    invoke-static {v3, v4}, Lio/socket/engineio/client/Socket;->access$600(Lio/socket/engineio/client/Socket;Ljava/lang/String;)Lio/socket/engineio/client/Transport;

    move-result-object v3

    move-object v2, v3

    .line 247
    move-object v3, v0

    iget-object v3, v3, Lio/socket/engineio/client/Socket$2;->this$0:Lio/socket/engineio/client/Socket;

    move-object v4, v2

    invoke-static {v3, v4}, Lio/socket/engineio/client/Socket;->access$700(Lio/socket/engineio/client/Socket;Lio/socket/engineio/client/Transport;)V

    .line 248
    move-object v3, v2

    invoke-virtual {v3}, Lio/socket/engineio/client/Transport;->open()Lio/socket/engineio/client/Transport;

    move-result-object v3

    .line 249
    :goto_1
    return-void

    .line 232
    :cond_0
    const/4 v3, 0x0

    move-object v4, v0

    iget-object v4, v4, Lio/socket/engineio/client/Socket$2;->this$0:Lio/socket/engineio/client/Socket;

    invoke-static {v4}, Lio/socket/engineio/client/Socket;->access$400(Lio/socket/engineio/client/Socket;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 234
    move-object v3, v0

    iget-object v3, v3, Lio/socket/engineio/client/Socket$2;->this$0:Lio/socket/engineio/client/Socket;

    move-object v2, v3

    .line 235
    new-instance v3, Lio/socket/engineio/client/Socket$2$1;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Lio/socket/engineio/client/Socket$2$1;-><init>(Lio/socket/engineio/client/Socket$2;Lio/socket/engineio/client/Socket;)V

    invoke-static {v3}, Lio/socket/thread/EventThread;->nextTick(Ljava/lang/Runnable;)V

    .line 241
    goto :goto_1

    .line 243
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lio/socket/engineio/client/Socket$2;->this$0:Lio/socket/engineio/client/Socket;

    invoke-static {v3}, Lio/socket/engineio/client/Socket;->access$400(Lio/socket/engineio/client/Socket;)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object v1, v3

    goto :goto_0
.end method
