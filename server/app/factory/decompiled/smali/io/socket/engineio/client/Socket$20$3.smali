.class Lio/socket/engineio/client/Socket$20$3;
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

.field final synthetic val$cleanupAndClose:[Lio/socket/emitter/Emitter$Listener;

.field final synthetic val$self:Lio/socket/engineio/client/Socket;


# direct methods
.method constructor <init>(Lio/socket/engineio/client/Socket$20;Lio/socket/engineio/client/Socket;[Lio/socket/emitter/Emitter$Listener;)V
    .locals 6

    .prologue
    .line 738
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lio/socket/engineio/client/Socket$20$3;->this$1:Lio/socket/engineio/client/Socket$20;

    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lio/socket/engineio/client/Socket$20$3;->val$self:Lio/socket/engineio/client/Socket;

    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lio/socket/engineio/client/Socket$20$3;->val$cleanupAndClose:[Lio/socket/emitter/Emitter$Listener;

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 742
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lio/socket/engineio/client/Socket$20$3;->val$self:Lio/socket/engineio/client/Socket;

    const-string v2, "upgrade"

    move-object v3, v0

    iget-object v3, v3, Lio/socket/engineio/client/Socket$20$3;->val$cleanupAndClose:[Lio/socket/emitter/Emitter$Listener;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v1, v2, v3}, Lio/socket/engineio/client/Socket;->once(Ljava/lang/String;Lio/socket/emitter/Emitter$Listener;)Lio/socket/emitter/Emitter;

    move-result-object v1

    .line 743
    move-object v1, v0

    iget-object v1, v1, Lio/socket/engineio/client/Socket$20$3;->val$self:Lio/socket/engineio/client/Socket;

    const-string v2, "upgradeError"

    move-object v3, v0

    iget-object v3, v3, Lio/socket/engineio/client/Socket$20$3;->val$cleanupAndClose:[Lio/socket/emitter/Emitter$Listener;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v1, v2, v3}, Lio/socket/engineio/client/Socket;->once(Ljava/lang/String;Lio/socket/emitter/Emitter$Listener;)Lio/socket/emitter/Emitter;

    move-result-object v1

    .line 744
    return-void
.end method
