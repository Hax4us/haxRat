.class Lio/socket/client/Socket$4;
.super Ljava/lang/Object;
.source "Socket.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/socket/client/Socket;->send([Ljava/lang/Object;)Lio/socket/client/Socket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/socket/client/Socket;

.field final synthetic val$args:[Ljava/lang/Object;


# direct methods
.method constructor <init>(Lio/socket/client/Socket;[Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 155
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lio/socket/client/Socket$4;->this$0:Lio/socket/client/Socket;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lio/socket/client/Socket$4;->val$args:[Ljava/lang/Object;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 158
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lio/socket/client/Socket$4;->this$0:Lio/socket/client/Socket;

    const-string v2, "message"

    move-object v3, v0

    iget-object v3, v3, Lio/socket/client/Socket$4;->val$args:[Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lio/socket/client/Socket;->emit(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/emitter/Emitter;

    move-result-object v1

    .line 159
    return-void
.end method
