.class Lio/socket/client/Socket$7;
.super Ljava/lang/Object;
.source "Socket.java"

# interfaces
.implements Lio/socket/client/Ack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/socket/client/Socket;->ack(I)Lio/socket/client/Ack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/socket/client/Socket;

.field final synthetic val$id:I

.field final synthetic val$self:Lio/socket/client/Socket;

.field final synthetic val$sent:[Z


# direct methods
.method constructor <init>(Lio/socket/client/Socket;[ZILio/socket/client/Socket;)V
    .locals 7

    .prologue
    .line 349
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lio/socket/client/Socket$7;->this$0:Lio/socket/client/Socket;

    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Lio/socket/client/Socket$7;->val$sent:[Z

    move-object v5, v0

    move v6, v3

    iput v6, v5, Lio/socket/client/Socket$7;->val$id:I

    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Lio/socket/client/Socket$7;->val$self:Lio/socket/client/Socket;

    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs call([Ljava/lang/Object;)V
    .locals 7

    .prologue
    .line 352
    move-object v0, p0

    move-object v1, p1

    new-instance v2, Lio/socket/client/Socket$7$1;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lio/socket/client/Socket$7$1;-><init>(Lio/socket/client/Socket$7;[Ljava/lang/Object;)V

    invoke-static {v2}, Lio/socket/thread/EventThread;->exec(Ljava/lang/Runnable;)V

    .line 371
    return-void
.end method
