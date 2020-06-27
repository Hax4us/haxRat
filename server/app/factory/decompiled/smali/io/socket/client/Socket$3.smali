.class Lio/socket/client/Socket$3;
.super Ljava/lang/Object;
.source "Socket.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/socket/client/Socket;->open()Lio/socket/client/Socket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/socket/client/Socket;


# direct methods
.method constructor <init>(Lio/socket/client/Socket;)V
    .locals 4

    .prologue
    .line 127
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lio/socket/client/Socket$3;->this$0:Lio/socket/client/Socket;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 130
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lio/socket/client/Socket$3;->this$0:Lio/socket/client/Socket;

    invoke-static {v1}, Lio/socket/client/Socket;->access$300(Lio/socket/client/Socket;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 136
    :goto_0
    return-void

    .line 132
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lio/socket/client/Socket$3;->this$0:Lio/socket/client/Socket;

    invoke-static {v1}, Lio/socket/client/Socket;->access$400(Lio/socket/client/Socket;)V

    .line 133
    move-object v1, v0

    iget-object v1, v1, Lio/socket/client/Socket$3;->this$0:Lio/socket/client/Socket;

    invoke-static {v1}, Lio/socket/client/Socket;->access$500(Lio/socket/client/Socket;)Lio/socket/client/Manager;

    move-result-object v1

    invoke-virtual {v1}, Lio/socket/client/Manager;->open()Lio/socket/client/Manager;

    move-result-object v1

    .line 134
    sget-object v1, Lio/socket/client/Manager$ReadyState;->OPEN:Lio/socket/client/Manager$ReadyState;

    move-object v2, v0

    iget-object v2, v2, Lio/socket/client/Socket$3;->this$0:Lio/socket/client/Socket;

    invoke-static {v2}, Lio/socket/client/Socket;->access$500(Lio/socket/client/Socket;)Lio/socket/client/Manager;

    move-result-object v2

    iget-object v2, v2, Lio/socket/client/Manager;->readyState:Lio/socket/client/Manager$ReadyState;

    if-ne v1, v2, :cond_1

    move-object v1, v0

    iget-object v1, v1, Lio/socket/client/Socket$3;->this$0:Lio/socket/client/Socket;

    invoke-static {v1}, Lio/socket/client/Socket;->access$000(Lio/socket/client/Socket;)V

    .line 135
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Lio/socket/client/Socket$3;->this$0:Lio/socket/client/Socket;

    const-string v2, "connecting"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lio/socket/client/Socket;->emit(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/emitter/Emitter;

    move-result-object v1

    .line 136
    goto :goto_0
.end method
