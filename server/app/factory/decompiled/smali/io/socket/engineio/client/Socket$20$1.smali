.class Lio/socket/engineio/client/Socket$20$1;
.super Ljava/lang/Object;
.source "Socket.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/socket/engineio/client/Socket$20;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/socket/engineio/client/Socket$20;

.field final synthetic val$self:Lio/socket/engineio/client/Socket;


# direct methods
.method constructor <init>(Lio/socket/engineio/client/Socket$20;Lio/socket/engineio/client/Socket;)V
    .locals 5

    .prologue
    .line 719
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lio/socket/engineio/client/Socket$20$1;->this$1:Lio/socket/engineio/client/Socket$20;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lio/socket/engineio/client/Socket$20$1;->val$self:Lio/socket/engineio/client/Socket;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 722
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lio/socket/engineio/client/Socket$20$1;->val$self:Lio/socket/engineio/client/Socket;

    const-string v2, "forced close"

    invoke-static {v1, v2}, Lio/socket/engineio/client/Socket;->access$800(Lio/socket/engineio/client/Socket;Ljava/lang/String;)V

    .line 723
    invoke-static {}, Lio/socket/engineio/client/Socket;->access$1200()Ljava/util/logging/Logger;

    move-result-object v1

    const-string v2, "socket closing - telling transport to close"

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 724
    move-object v1, v0

    iget-object v1, v1, Lio/socket/engineio/client/Socket$20$1;->val$self:Lio/socket/engineio/client/Socket;

    iget-object v1, v1, Lio/socket/engineio/client/Socket;->transport:Lio/socket/engineio/client/Transport;

    invoke-virtual {v1}, Lio/socket/engineio/client/Transport;->close()Lio/socket/engineio/client/Transport;

    move-result-object v1

    .line 725
    return-void
.end method
