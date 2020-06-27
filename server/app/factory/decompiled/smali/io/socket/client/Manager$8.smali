.class Lio/socket/client/Manager$8;
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
.method constructor <init>(Lio/socket/client/Manager;Lio/socket/client/Manager;Lio/socket/client/Socket;)V
    .locals 6

    .prologue
    .line 431
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lio/socket/client/Manager$8;->this$0:Lio/socket/client/Manager;

    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lio/socket/client/Manager$8;->val$self:Lio/socket/client/Manager;

    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lio/socket/client/Manager$8;->val$s:Lio/socket/client/Socket;

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs call([Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 434
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lio/socket/client/Manager$8;->val$self:Lio/socket/client/Manager;

    invoke-static {v2}, Lio/socket/client/Manager;->access$1700(Lio/socket/client/Manager;)Ljava/util/Set;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lio/socket/client/Manager$8;->val$s:Lio/socket/client/Socket;

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 435
    return-void
.end method
