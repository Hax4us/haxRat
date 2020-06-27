.class Lio/socket/engineio/client/Socket$20$2;
.super Ljava/lang/Object;
.source "Socket.java"

# interfaces
.implements Lio/socket/emitter/Emitter$Listener;


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

.field final synthetic val$close:Ljava/lang/Runnable;

.field final synthetic val$self:Lio/socket/engineio/client/Socket;


# direct methods
.method constructor <init>(Lio/socket/engineio/client/Socket$20;Lio/socket/engineio/client/Socket;[Lio/socket/emitter/Emitter$Listener;Ljava/lang/Runnable;)V
    .locals 7

    .prologue
    .line 729
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lio/socket/engineio/client/Socket$20$2;->this$1:Lio/socket/engineio/client/Socket$20;

    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Lio/socket/engineio/client/Socket$20$2;->val$self:Lio/socket/engineio/client/Socket;

    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Lio/socket/engineio/client/Socket$20$2;->val$cleanupAndClose:[Lio/socket/emitter/Emitter$Listener;

    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Lio/socket/engineio/client/Socket$20$2;->val$close:Ljava/lang/Runnable;

    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs call([Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 732
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lio/socket/engineio/client/Socket$20$2;->val$self:Lio/socket/engineio/client/Socket;

    const-string v3, "upgrade"

    move-object v4, v0

    iget-object v4, v4, Lio/socket/engineio/client/Socket$20$2;->val$cleanupAndClose:[Lio/socket/emitter/Emitter$Listener;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v2, v3, v4}, Lio/socket/engineio/client/Socket;->off(Ljava/lang/String;Lio/socket/emitter/Emitter$Listener;)Lio/socket/emitter/Emitter;

    move-result-object v2

    .line 733
    move-object v2, v0

    iget-object v2, v2, Lio/socket/engineio/client/Socket$20$2;->val$self:Lio/socket/engineio/client/Socket;

    const-string v3, "upgradeError"

    move-object v4, v0

    iget-object v4, v4, Lio/socket/engineio/client/Socket$20$2;->val$cleanupAndClose:[Lio/socket/emitter/Emitter$Listener;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v2, v3, v4}, Lio/socket/engineio/client/Socket;->off(Ljava/lang/String;Lio/socket/emitter/Emitter$Listener;)Lio/socket/emitter/Emitter;

    move-result-object v2

    .line 734
    move-object v2, v0

    iget-object v2, v2, Lio/socket/engineio/client/Socket$20$2;->val$close:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 735
    return-void
.end method
