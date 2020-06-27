.class Lio/socket/engineio/client/Socket$14$1;
.super Ljava/lang/Object;
.source "Socket.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/socket/engineio/client/Socket$14;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/socket/engineio/client/Socket$14;


# direct methods
.method constructor <init>(Lio/socket/engineio/client/Socket$14;)V
    .locals 4

    .prologue
    .line 548
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lio/socket/engineio/client/Socket$14$1;->this$1:Lio/socket/engineio/client/Socket$14;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 551
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lio/socket/engineio/client/Socket$14$1;->this$1:Lio/socket/engineio/client/Socket$14;

    iget-object v1, v1, Lio/socket/engineio/client/Socket$14;->val$self:Lio/socket/engineio/client/Socket;

    invoke-static {v1}, Lio/socket/engineio/client/Socket;->access$500(Lio/socket/engineio/client/Socket;)Lio/socket/engineio/client/Socket$ReadyState;

    move-result-object v1

    sget-object v2, Lio/socket/engineio/client/Socket$ReadyState;->CLOSED:Lio/socket/engineio/client/Socket$ReadyState;

    if-ne v1, v2, :cond_0

    .line 553
    :goto_0
    return-void

    .line 552
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lio/socket/engineio/client/Socket$14$1;->this$1:Lio/socket/engineio/client/Socket$14;

    iget-object v1, v1, Lio/socket/engineio/client/Socket$14;->val$self:Lio/socket/engineio/client/Socket;

    const-string v2, "ping timeout"

    invoke-static {v1, v2}, Lio/socket/engineio/client/Socket;->access$800(Lio/socket/engineio/client/Socket;Ljava/lang/String;)V

    .line 553
    goto :goto_0
.end method
