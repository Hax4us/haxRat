.class Lio/socket/engineio/client/Socket$18;
.super Ljava/lang/Object;
.source "Socket.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/socket/engineio/client/Socket;->send([BLjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/socket/engineio/client/Socket;

.field final synthetic val$fn:Ljava/lang/Runnable;

.field final synthetic val$msg:[B


# direct methods
.method constructor <init>(Lio/socket/engineio/client/Socket;[BLjava/lang/Runnable;)V
    .locals 6

    .prologue
    .line 665
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lio/socket/engineio/client/Socket$18;->this$0:Lio/socket/engineio/client/Socket;

    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lio/socket/engineio/client/Socket$18;->val$msg:[B

    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lio/socket/engineio/client/Socket$18;->val$fn:Ljava/lang/Runnable;

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 668
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lio/socket/engineio/client/Socket$18;->this$0:Lio/socket/engineio/client/Socket;

    const-string v2, "message"

    move-object v3, v0

    iget-object v3, v3, Lio/socket/engineio/client/Socket$18;->val$msg:[B

    move-object v4, v0

    iget-object v4, v4, Lio/socket/engineio/client/Socket$18;->val$fn:Ljava/lang/Runnable;

    invoke-static {v1, v2, v3, v4}, Lio/socket/engineio/client/Socket;->access$1900(Lio/socket/engineio/client/Socket;Ljava/lang/String;[BLjava/lang/Runnable;)V

    .line 669
    return-void
.end method
