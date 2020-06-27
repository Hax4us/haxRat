.class Lio/socket/engineio/client/transports/PollingXHR$3;
.super Ljava/lang/Object;
.source "PollingXHR.java"

# interfaces
.implements Lio/socket/emitter/Emitter$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/socket/engineio/client/transports/PollingXHR;->doWrite([BLjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/socket/engineio/client/transports/PollingXHR;

.field final synthetic val$fn:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lio/socket/engineio/client/transports/PollingXHR;Ljava/lang/Runnable;)V
    .locals 5

    .prologue
    .line 70
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lio/socket/engineio/client/transports/PollingXHR$3;->this$0:Lio/socket/engineio/client/transports/PollingXHR;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lio/socket/engineio/client/transports/PollingXHR$3;->val$fn:Ljava/lang/Runnable;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs call([Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 73
    move-object v0, p0

    move-object v1, p1

    new-instance v2, Lio/socket/engineio/client/transports/PollingXHR$3$1;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Lio/socket/engineio/client/transports/PollingXHR$3$1;-><init>(Lio/socket/engineio/client/transports/PollingXHR$3;)V

    invoke-static {v2}, Lio/socket/thread/EventThread;->exec(Ljava/lang/Runnable;)V

    .line 79
    return-void
.end method
