.class Lio/socket/engineio/client/Socket$14;
.super Ljava/lang/Object;
.source "Socket.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/socket/engineio/client/Socket;->onHeartbeat(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/socket/engineio/client/Socket;

.field final synthetic val$self:Lio/socket/engineio/client/Socket;


# direct methods
.method constructor <init>(Lio/socket/engineio/client/Socket;Lio/socket/engineio/client/Socket;)V
    .locals 5

    .prologue
    .line 545
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lio/socket/engineio/client/Socket$14;->this$0:Lio/socket/engineio/client/Socket;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lio/socket/engineio/client/Socket$14;->val$self:Lio/socket/engineio/client/Socket;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 548
    move-object v0, p0

    new-instance v1, Lio/socket/engineio/client/Socket$14$1;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lio/socket/engineio/client/Socket$14$1;-><init>(Lio/socket/engineio/client/Socket$14;)V

    invoke-static {v1}, Lio/socket/thread/EventThread;->exec(Ljava/lang/Runnable;)V

    .line 555
    return-void
.end method
