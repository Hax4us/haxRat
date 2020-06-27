.class Lio/socket/client/Manager$9;
.super Ljava/lang/Object;
.source "Manager.java"

# interfaces
.implements Lio/socket/emitter/Emitter$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/socket/client/Manager;->socket(Ljava/lang/String;)Lio/socket/client/Socket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/socket/client/Manager;

.field final synthetic val$s:Lio/socket/client/Socket;

.field final synthetic val$self:Lio/socket/client/Manager;


# direct methods
.method constructor <init>(Lio/socket/client/Manager;Lio/socket/client/Socket;Lio/socket/client/Manager;)V
    .locals 6

    .prologue
    .line 437
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lio/socket/client/Manager$9;->this$0:Lio/socket/client/Manager;

    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lio/socket/client/Manager$9;->val$s:Lio/socket/client/Socket;

    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lio/socket/client/Manager$9;->val$self:Lio/socket/client/Manager;

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs call([Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 440
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lio/socket/client/Manager$9;->val$s:Lio/socket/client/Socket;

    move-object v3, v0

    iget-object v3, v3, Lio/socket/client/Manager$9;->val$self:Lio/socket/client/Manager;

    iget-object v3, v3, Lio/socket/client/Manager;->engine:Lio/socket/engineio/client/Socket;

    invoke-virtual {v3}, Lio/socket/engineio/client/Socket;->id()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lio/socket/client/Socket;->id:Ljava/lang/String;

    .line 441
    return-void
.end method
