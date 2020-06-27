.class Lio/socket/client/Manager$11;
.super Ljava/util/TimerTask;
.source "Manager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/socket/client/Manager;->reconnect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/socket/client/Manager;

.field final synthetic val$self:Lio/socket/client/Manager;


# direct methods
.method constructor <init>(Lio/socket/client/Manager;Lio/socket/client/Manager;)V
    .locals 5

    .prologue
    .line 544
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lio/socket/client/Manager$11;->this$0:Lio/socket/client/Manager;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lio/socket/client/Manager$11;->val$self:Lio/socket/client/Manager;

    move-object v3, v0

    invoke-direct {v3}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 547
    move-object v0, p0

    new-instance v1, Lio/socket/client/Manager$11$1;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lio/socket/client/Manager$11$1;-><init>(Lio/socket/client/Manager$11;)V

    invoke-static {v1}, Lio/socket/thread/EventThread;->exec(Ljava/lang/Runnable;)V

    .line 576
    return-void
.end method
