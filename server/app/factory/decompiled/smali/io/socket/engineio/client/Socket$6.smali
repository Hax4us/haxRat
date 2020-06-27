.class Lio/socket/engineio/client/Socket$6;
.super Ljava/lang/Object;
.source "Socket.java"

# interfaces
.implements Lio/socket/emitter/Emitter$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/socket/engineio/client/Socket;->setTransport(Lio/socket/engineio/client/Transport;)V
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
    .line 305
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lio/socket/engineio/client/Socket$6;->this$0:Lio/socket/engineio/client/Socket;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lio/socket/engineio/client/Socket$6;->val$self:Lio/socket/engineio/client/Socket;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs call([Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 308
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lio/socket/engineio/client/Socket$6;->val$self:Lio/socket/engineio/client/Socket;

    invoke-static {v2}, Lio/socket/engineio/client/Socket;->access$1100(Lio/socket/engineio/client/Socket;)V

    .line 309
    return-void
.end method
