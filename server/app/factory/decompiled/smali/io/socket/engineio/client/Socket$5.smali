.class Lio/socket/engineio/client/Socket$5;
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
    .line 310
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lio/socket/engineio/client/Socket$5;->this$0:Lio/socket/engineio/client/Socket;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lio/socket/engineio/client/Socket$5;->val$self:Lio/socket/engineio/client/Socket;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs call([Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 313
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lio/socket/engineio/client/Socket$5;->val$self:Lio/socket/engineio/client/Socket;

    move-object v3, v1

    array-length v3, v3

    if-lez v3, :cond_0

    move-object v3, v1

    const/4 v4, 0x0

    aget-object v3, v3, v4

    check-cast v3, Lio/socket/engineio/parser/Packet;

    :goto_0
    invoke-static {v2, v3}, Lio/socket/engineio/client/Socket;->access$1000(Lio/socket/engineio/client/Socket;Lio/socket/engineio/parser/Packet;)V

    .line 314
    return-void

    .line 313
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method
