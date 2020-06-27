.class Lio/socket/engineio/client/Socket$20;
.super Ljava/lang/Object;
.source "Socket.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/socket/engineio/client/Socket;->close()Lio/socket/engineio/client/Socket;
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
    .line 711
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lio/socket/engineio/client/Socket$20;->this$0:Lio/socket/engineio/client/Socket;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 714
    move-object v0, p0

    move-object v5, v0

    iget-object v5, v5, Lio/socket/engineio/client/Socket$20;->this$0:Lio/socket/engineio/client/Socket;

    invoke-static {v5}, Lio/socket/engineio/client/Socket;->access$500(Lio/socket/engineio/client/Socket;)Lio/socket/engineio/client/Socket$ReadyState;

    move-result-object v5

    sget-object v6, Lio/socket/engineio/client/Socket$ReadyState;->OPENING:Lio/socket/engineio/client/Socket$ReadyState;

    if-eq v5, v6, :cond_0

    move-object v5, v0

    iget-object v5, v5, Lio/socket/engineio/client/Socket$20;->this$0:Lio/socket/engineio/client/Socket;

    invoke-static {v5}, Lio/socket/engineio/client/Socket;->access$500(Lio/socket/engineio/client/Socket;)Lio/socket/engineio/client/Socket$ReadyState;

    move-result-object v5

    sget-object v6, Lio/socket/engineio/client/Socket$ReadyState;->OPEN:Lio/socket/engineio/client/Socket$ReadyState;

    if-ne v5, v6, :cond_1

    .line 715
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Lio/socket/engineio/client/Socket$20;->this$0:Lio/socket/engineio/client/Socket;

    sget-object v6, Lio/socket/engineio/client/Socket$ReadyState;->CLOSING:Lio/socket/engineio/client/Socket$ReadyState;

    invoke-static {v5, v6}, Lio/socket/engineio/client/Socket;->access$502(Lio/socket/engineio/client/Socket;Lio/socket/engineio/client/Socket$ReadyState;)Lio/socket/engineio/client/Socket$ReadyState;

    move-result-object v5

    .line 717
    move-object v5, v0

    iget-object v5, v5, Lio/socket/engineio/client/Socket$20;->this$0:Lio/socket/engineio/client/Socket;

    move-object v1, v5

    .line 719
    new-instance v5, Lio/socket/engineio/client/Socket$20$1;

    move-object v13, v5

    move-object v5, v13

    move-object v6, v13

    move-object v7, v0

    move-object v8, v1

    invoke-direct {v6, v7, v8}, Lio/socket/engineio/client/Socket$20$1;-><init>(Lio/socket/engineio/client/Socket$20;Lio/socket/engineio/client/Socket;)V

    move-object v2, v5

    .line 728
    const/4 v5, 0x1

    new-array v5, v5, [Lio/socket/emitter/Emitter$Listener;

    move-object v3, v5

    .line 729
    move-object v5, v3

    const/4 v6, 0x0

    new-instance v7, Lio/socket/engineio/client/Socket$20$2;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    move-object v9, v0

    move-object v10, v1

    move-object v11, v3

    move-object v12, v2

    invoke-direct {v8, v9, v10, v11, v12}, Lio/socket/engineio/client/Socket$20$2;-><init>(Lio/socket/engineio/client/Socket$20;Lio/socket/engineio/client/Socket;[Lio/socket/emitter/Emitter$Listener;Ljava/lang/Runnable;)V

    aput-object v7, v5, v6

    .line 738
    new-instance v5, Lio/socket/engineio/client/Socket$20$3;

    move-object v13, v5

    move-object v5, v13

    move-object v6, v13

    move-object v7, v0

    move-object v8, v1

    move-object v9, v3

    invoke-direct {v6, v7, v8, v9}, Lio/socket/engineio/client/Socket$20$3;-><init>(Lio/socket/engineio/client/Socket$20;Lio/socket/engineio/client/Socket;[Lio/socket/emitter/Emitter$Listener;)V

    move-object v4, v5

    .line 747
    move-object v5, v0

    iget-object v5, v5, Lio/socket/engineio/client/Socket$20;->this$0:Lio/socket/engineio/client/Socket;

    iget-object v5, v5, Lio/socket/engineio/client/Socket;->writeBuffer:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 748
    move-object v5, v0

    iget-object v5, v5, Lio/socket/engineio/client/Socket$20;->this$0:Lio/socket/engineio/client/Socket;

    const-string v6, "drain"

    new-instance v7, Lio/socket/engineio/client/Socket$20$4;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    move-object v9, v0

    move-object v10, v4

    move-object v11, v2

    invoke-direct {v8, v9, v10, v11}, Lio/socket/engineio/client/Socket$20$4;-><init>(Lio/socket/engineio/client/Socket$20;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    invoke-virtual {v5, v6, v7}, Lio/socket/engineio/client/Socket;->once(Ljava/lang/String;Lio/socket/emitter/Emitter$Listener;)Lio/socket/emitter/Emitter;

    move-result-object v5

    .line 764
    :cond_1
    :goto_0
    return-void

    .line 758
    :cond_2
    move-object v5, v0

    iget-object v5, v5, Lio/socket/engineio/client/Socket$20;->this$0:Lio/socket/engineio/client/Socket;

    invoke-static {v5}, Lio/socket/engineio/client/Socket;->access$1300(Lio/socket/engineio/client/Socket;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 759
    move-object v5, v4

    invoke-interface {v5}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 761
    :cond_3
    move-object v5, v2

    invoke-interface {v5}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method
