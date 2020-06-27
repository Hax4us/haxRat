.class Lio/socket/engineio/client/Socket$20$4;
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

.field final synthetic val$close:Ljava/lang/Runnable;

.field final synthetic val$waitForUpgrade:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lio/socket/engineio/client/Socket$20;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 6

    .prologue
    .line 748
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lio/socket/engineio/client/Socket$20$4;->this$1:Lio/socket/engineio/client/Socket$20;

    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lio/socket/engineio/client/Socket$20$4;->val$waitForUpgrade:Ljava/lang/Runnable;

    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lio/socket/engineio/client/Socket$20$4;->val$close:Ljava/lang/Runnable;

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs call([Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 751
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lio/socket/engineio/client/Socket$20$4;->this$1:Lio/socket/engineio/client/Socket$20;

    iget-object v2, v2, Lio/socket/engineio/client/Socket$20;->this$0:Lio/socket/engineio/client/Socket;

    invoke-static {v2}, Lio/socket/engineio/client/Socket;->access$1300(Lio/socket/engineio/client/Socket;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 752
    move-object v2, v0

    iget-object v2, v2, Lio/socket/engineio/client/Socket$20$4;->val$waitForUpgrade:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 756
    :goto_0
    return-void

    .line 754
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lio/socket/engineio/client/Socket$20$4;->val$close:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method
