.class Lio/socket/engineio/client/transports/PollingXHR$5;
.super Ljava/lang/Object;
.source "PollingXHR.java"

# interfaces
.implements Lio/socket/emitter/Emitter$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/socket/engineio/client/transports/PollingXHR;->doPoll()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/socket/engineio/client/transports/PollingXHR;

.field final synthetic val$self:Lio/socket/engineio/client/transports/PollingXHR;


# direct methods
.method constructor <init>(Lio/socket/engineio/client/transports/PollingXHR;Lio/socket/engineio/client/transports/PollingXHR;)V
    .locals 5

    .prologue
    .line 101
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lio/socket/engineio/client/transports/PollingXHR$5;->this$0:Lio/socket/engineio/client/transports/PollingXHR;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lio/socket/engineio/client/transports/PollingXHR$5;->val$self:Lio/socket/engineio/client/transports/PollingXHR;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs call([Ljava/lang/Object;)V
    .locals 7

    .prologue
    .line 104
    move-object v0, p0

    move-object v1, p1

    new-instance v2, Lio/socket/engineio/client/transports/PollingXHR$5$1;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lio/socket/engineio/client/transports/PollingXHR$5$1;-><init>(Lio/socket/engineio/client/transports/PollingXHR$5;[Ljava/lang/Object;)V

    invoke-static {v2}, Lio/socket/thread/EventThread;->exec(Ljava/lang/Runnable;)V

    .line 115
    return-void
.end method
