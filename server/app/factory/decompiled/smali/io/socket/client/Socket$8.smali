.class Lio/socket/client/Socket$8;
.super Ljava/lang/Object;
.source "Socket.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/socket/client/Socket;->close()Lio/socket/client/Socket;
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
    .line 430
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lio/socket/client/Socket$8;->this$0:Lio/socket/client/Socket;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 433
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lio/socket/client/Socket$8;->this$0:Lio/socket/client/Socket;

    invoke-static {v1}, Lio/socket/client/Socket;->access$300(Lio/socket/client/Socket;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 434
    invoke-static {}, Lio/socket/client/Socket;->access$800()Ljava/util/logging/Logger;

    move-result-object v1

    const-string v2, "performing disconnect (%s)"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    move-object v6, v0

    iget-object v6, v6, Lio/socket/client/Socket$8;->this$0:Lio/socket/client/Socket;

    invoke-static {v6}, Lio/socket/client/Socket;->access$1300(Lio/socket/client/Socket;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 435
    move-object v1, v0

    iget-object v1, v1, Lio/socket/client/Socket$8;->this$0:Lio/socket/client/Socket;

    new-instance v2, Lio/socket/parser/Packet;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Lio/socket/parser/Packet;-><init>(I)V

    invoke-static {v1, v2}, Lio/socket/client/Socket;->access$1100(Lio/socket/client/Socket;Lio/socket/parser/Packet;)V

    .line 438
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lio/socket/client/Socket$8;->this$0:Lio/socket/client/Socket;

    invoke-static {v1}, Lio/socket/client/Socket;->access$1400(Lio/socket/client/Socket;)V

    .line 440
    move-object v1, v0

    iget-object v1, v1, Lio/socket/client/Socket$8;->this$0:Lio/socket/client/Socket;

    invoke-static {v1}, Lio/socket/client/Socket;->access$300(Lio/socket/client/Socket;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 441
    move-object v1, v0

    iget-object v1, v1, Lio/socket/client/Socket$8;->this$0:Lio/socket/client/Socket;

    const-string v2, "io client disconnect"

    invoke-static {v1, v2}, Lio/socket/client/Socket;->access$200(Lio/socket/client/Socket;Ljava/lang/String;)V

    .line 443
    :cond_1
    return-void
.end method
