.class Lio/socket/engineio/client/Socket$15$1;
.super Ljava/lang/Object;
.source "Socket.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/socket/engineio/client/Socket$15;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/socket/engineio/client/Socket$15;


# direct methods
.method constructor <init>(Lio/socket/engineio/client/Socket$15;)V
    .locals 4

    .prologue
    .line 568
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lio/socket/engineio/client/Socket$15$1;->this$1:Lio/socket/engineio/client/Socket$15;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 571
    move-object v0, p0

    invoke-static {}, Lio/socket/engineio/client/Socket;->access$1200()Ljava/util/logging/Logger;

    move-result-object v1

    const-string v2, "writing ping packet - expecting pong within %sms"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const/4 v5, 0x0

    move-object v6, v0

    iget-object v6, v6, Lio/socket/engineio/client/Socket$15$1;->this$1:Lio/socket/engineio/client/Socket$15;

    iget-object v6, v6, Lio/socket/engineio/client/Socket$15;->val$self:Lio/socket/engineio/client/Socket;

    invoke-static {v6}, Lio/socket/engineio/client/Socket;->access$1500(Lio/socket/engineio/client/Socket;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 572
    move-object v1, v0

    iget-object v1, v1, Lio/socket/engineio/client/Socket$15$1;->this$1:Lio/socket/engineio/client/Socket$15;

    iget-object v1, v1, Lio/socket/engineio/client/Socket$15;->val$self:Lio/socket/engineio/client/Socket;

    invoke-static {v1}, Lio/socket/engineio/client/Socket;->access$1600(Lio/socket/engineio/client/Socket;)V

    .line 573
    move-object v1, v0

    iget-object v1, v1, Lio/socket/engineio/client/Socket$15$1;->this$1:Lio/socket/engineio/client/Socket$15;

    iget-object v1, v1, Lio/socket/engineio/client/Socket$15;->val$self:Lio/socket/engineio/client/Socket;

    move-object v2, v0

    iget-object v2, v2, Lio/socket/engineio/client/Socket$15$1;->this$1:Lio/socket/engineio/client/Socket$15;

    iget-object v2, v2, Lio/socket/engineio/client/Socket$15;->val$self:Lio/socket/engineio/client/Socket;

    invoke-static {v2}, Lio/socket/engineio/client/Socket;->access$1500(Lio/socket/engineio/client/Socket;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lio/socket/engineio/client/Socket;->access$000(Lio/socket/engineio/client/Socket;J)V

    .line 574
    return-void
.end method
