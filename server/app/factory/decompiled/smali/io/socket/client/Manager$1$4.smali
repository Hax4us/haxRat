.class Lio/socket/client/Manager$1$4;
.super Ljava/util/TimerTask;
.source "Manager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/socket/client/Manager$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/socket/client/Manager$1;

.field final synthetic val$openSub:Lio/socket/client/On$Handle;

.field final synthetic val$self:Lio/socket/client/Manager;

.field final synthetic val$socket:Lio/socket/engineio/client/Socket;

.field final synthetic val$timeout:J


# direct methods
.method constructor <init>(Lio/socket/client/Manager$1;JLio/socket/client/On$Handle;Lio/socket/engineio/client/Socket;Lio/socket/client/Manager;)V
    .locals 10

    .prologue
    .line 303
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object v7, v0

    move-object v8, v1

    iput-object v8, v7, Lio/socket/client/Manager$1$4;->this$1:Lio/socket/client/Manager$1;

    move-object v7, v0

    move-wide v8, v2

    iput-wide v8, v7, Lio/socket/client/Manager$1$4;->val$timeout:J

    move-object v7, v0

    move-object v8, v4

    iput-object v8, v7, Lio/socket/client/Manager$1$4;->val$openSub:Lio/socket/client/On$Handle;

    move-object v7, v0

    move-object v8, v5

    iput-object v8, v7, Lio/socket/client/Manager$1$4;->val$socket:Lio/socket/engineio/client/Socket;

    move-object v7, v0

    move-object v8, v6

    iput-object v8, v7, Lio/socket/client/Manager$1$4;->val$self:Lio/socket/client/Manager;

    move-object v7, v0

    invoke-direct {v7}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 306
    move-object v0, p0

    new-instance v1, Lio/socket/client/Manager$1$4$1;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lio/socket/client/Manager$1$4$1;-><init>(Lio/socket/client/Manager$1$4;)V

    invoke-static {v1}, Lio/socket/thread/EventThread;->exec(Ljava/lang/Runnable;)V

    .line 316
    return-void
.end method
