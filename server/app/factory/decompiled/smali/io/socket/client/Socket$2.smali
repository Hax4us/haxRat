.class Lio/socket/client/Socket$2;
.super Ljava/util/LinkedList;
.source "Socket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/socket/client/Socket;->subEvents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedList",
        "<",
        "Lio/socket/client/On$Handle;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/socket/client/Socket;

.field final synthetic val$io:Lio/socket/client/Manager;


# direct methods
.method constructor <init>(Lio/socket/client/Socket;Lio/socket/client/Manager;)V
    .locals 10

    .prologue
    .line 101
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lio/socket/client/Socket$2;->this$0:Lio/socket/client/Socket;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lio/socket/client/Socket$2;->val$io:Lio/socket/client/Manager;

    move-object v3, v0

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 102
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lio/socket/client/Socket$2;->val$io:Lio/socket/client/Manager;

    const-string v5, "open"

    new-instance v6, Lio/socket/client/Socket$2$1;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v0

    invoke-direct {v7, v8}, Lio/socket/client/Socket$2$1;-><init>(Lio/socket/client/Socket$2;)V

    invoke-static {v4, v5, v6}, Lio/socket/client/On;->on(Lio/socket/emitter/Emitter;Ljava/lang/String;Lio/socket/emitter/Emitter$Listener;)Lio/socket/client/On$Handle;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/socket/client/Socket$2;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 108
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lio/socket/client/Socket$2;->val$io:Lio/socket/client/Manager;

    const-string v5, "packet"

    new-instance v6, Lio/socket/client/Socket$2$2;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v0

    invoke-direct {v7, v8}, Lio/socket/client/Socket$2$2;-><init>(Lio/socket/client/Socket$2;)V

    invoke-static {v4, v5, v6}, Lio/socket/client/On;->on(Lio/socket/emitter/Emitter;Ljava/lang/String;Lio/socket/emitter/Emitter$Listener;)Lio/socket/client/On$Handle;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/socket/client/Socket$2;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 114
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lio/socket/client/Socket$2;->val$io:Lio/socket/client/Manager;

    const-string v5, "close"

    new-instance v6, Lio/socket/client/Socket$2$3;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v0

    invoke-direct {v7, v8}, Lio/socket/client/Socket$2$3;-><init>(Lio/socket/client/Socket$2;)V

    invoke-static {v4, v5, v6}, Lio/socket/client/On;->on(Lio/socket/emitter/Emitter;Ljava/lang/String;Lio/socket/emitter/Emitter$Listener;)Lio/socket/client/On$Handle;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/socket/client/Socket$2;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 120
    return-void
.end method
