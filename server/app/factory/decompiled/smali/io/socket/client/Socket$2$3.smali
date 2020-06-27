.class Lio/socket/client/Socket$2$3;
.super Ljava/lang/Object;
.source "Socket.java"

# interfaces
.implements Lio/socket/emitter/Emitter$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/socket/client/Socket$2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/socket/client/Socket$2;


# direct methods
.method constructor <init>(Lio/socket/client/Socket$2;)V
    .locals 4

    .prologue
    .line 114
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lio/socket/client/Socket$2$3;->this$1:Lio/socket/client/Socket$2;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs call([Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 117
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lio/socket/client/Socket$2$3;->this$1:Lio/socket/client/Socket$2;

    iget-object v2, v2, Lio/socket/client/Socket$2;->this$0:Lio/socket/client/Socket;

    move-object v3, v1

    array-length v3, v3

    if-lez v3, :cond_0

    move-object v3, v1

    const/4 v4, 0x0

    aget-object v3, v3, v4

    check-cast v3, Ljava/lang/String;

    :goto_0
    invoke-static {v2, v3}, Lio/socket/client/Socket;->access$200(Lio/socket/client/Socket;Ljava/lang/String;)V

    .line 118
    return-void

    .line 117
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method
