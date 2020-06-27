.class Lio/socket/client/Manager$1$4$1;
.super Ljava/lang/Object;
.source "Manager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/socket/client/Manager$1$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lio/socket/client/Manager$1$4;


# direct methods
.method constructor <init>(Lio/socket/client/Manager$1$4;)V
    .locals 4

    .prologue
    .line 306
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lio/socket/client/Manager$1$4$1;->this$2:Lio/socket/client/Manager$1$4;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 309
    move-object v0, p0

    invoke-static {}, Lio/socket/client/Manager;->access$000()Ljava/util/logging/Logger;

    move-result-object v1

    const-string v2, "connect attempt timed out after %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    const/4 v5, 0x0

    move-object v6, v0

    iget-object v6, v6, Lio/socket/client/Manager$1$4$1;->this$2:Lio/socket/client/Manager$1$4;

    iget-wide v6, v6, Lio/socket/client/Manager$1$4;->val$timeout:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 310
    move-object v1, v0

    iget-object v1, v1, Lio/socket/client/Manager$1$4$1;->this$2:Lio/socket/client/Manager$1$4;

    iget-object v1, v1, Lio/socket/client/Manager$1$4;->val$openSub:Lio/socket/client/On$Handle;

    invoke-interface {v1}, Lio/socket/client/On$Handle;->destroy()V

    .line 311
    move-object v1, v0

    iget-object v1, v1, Lio/socket/client/Manager$1$4$1;->this$2:Lio/socket/client/Manager$1$4;

    iget-object v1, v1, Lio/socket/client/Manager$1$4;->val$socket:Lio/socket/engineio/client/Socket;

    invoke-virtual {v1}, Lio/socket/engineio/client/Socket;->close()Lio/socket/engineio/client/Socket;

    move-result-object v1

    .line 312
    move-object v1, v0

    iget-object v1, v1, Lio/socket/client/Manager$1$4$1;->this$2:Lio/socket/client/Manager$1$4;

    iget-object v1, v1, Lio/socket/client/Manager$1$4;->val$socket:Lio/socket/engineio/client/Socket;

    const-string v2, "error"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    const/4 v5, 0x0

    new-instance v6, Lio/socket/client/SocketIOException;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    const-string v8, "timeout"

    invoke-direct {v7, v8}, Lio/socket/client/SocketIOException;-><init>(Ljava/lang/String;)V

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v3}, Lio/socket/engineio/client/Socket;->emit(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/emitter/Emitter;

    move-result-object v1

    .line 313
    move-object v1, v0

    iget-object v1, v1, Lio/socket/client/Manager$1$4$1;->this$2:Lio/socket/client/Manager$1$4;

    iget-object v1, v1, Lio/socket/client/Manager$1$4;->val$self:Lio/socket/client/Manager;

    const-string v2, "connect_timeout"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    const/4 v5, 0x0

    move-object v6, v0

    iget-object v6, v6, Lio/socket/client/Manager$1$4$1;->this$2:Lio/socket/client/Manager$1$4;

    iget-wide v6, v6, Lio/socket/client/Manager$1$4;->val$timeout:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v2, v3}, Lio/socket/client/Manager;->access$600(Lio/socket/client/Manager;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 314
    return-void
.end method
