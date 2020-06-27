.class Lio/socket/engineio/client/transports/PollingXHR$5$1;
.super Ljava/lang/Object;
.source "PollingXHR.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/socket/engineio/client/transports/PollingXHR$5;->call([Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/socket/engineio/client/transports/PollingXHR$5;

.field final synthetic val$args:[Ljava/lang/Object;


# direct methods
.method constructor <init>(Lio/socket/engineio/client/transports/PollingXHR$5;[Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 104
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lio/socket/engineio/client/transports/PollingXHR$5$1;->this$1:Lio/socket/engineio/client/transports/PollingXHR$5;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lio/socket/engineio/client/transports/PollingXHR$5$1;->val$args:[Ljava/lang/Object;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 107
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lio/socket/engineio/client/transports/PollingXHR$5$1;->val$args:[Ljava/lang/Object;

    array-length v2, v2

    if-lez v2, :cond_1

    move-object v2, v0

    iget-object v2, v2, Lio/socket/engineio/client/transports/PollingXHR$5$1;->val$args:[Ljava/lang/Object;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    :goto_0
    move-object v1, v2

    .line 108
    move-object v2, v1

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 109
    move-object v2, v0

    iget-object v2, v2, Lio/socket/engineio/client/transports/PollingXHR$5$1;->this$1:Lio/socket/engineio/client/transports/PollingXHR$5;

    iget-object v2, v2, Lio/socket/engineio/client/transports/PollingXHR$5;->val$self:Lio/socket/engineio/client/transports/PollingXHR;

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lio/socket/engineio/client/transports/PollingXHR;->onData(Ljava/lang/String;)V

    .line 113
    :cond_0
    :goto_1
    return-void

    .line 107
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 110
    :cond_2
    move-object v2, v1

    instance-of v2, v2, [B

    if-eqz v2, :cond_0

    .line 111
    move-object v2, v0

    iget-object v2, v2, Lio/socket/engineio/client/transports/PollingXHR$5$1;->this$1:Lio/socket/engineio/client/transports/PollingXHR$5;

    iget-object v2, v2, Lio/socket/engineio/client/transports/PollingXHR$5;->val$self:Lio/socket/engineio/client/transports/PollingXHR;

    move-object v3, v1

    check-cast v3, [B

    check-cast v3, [B

    invoke-virtual {v2, v3}, Lio/socket/engineio/client/transports/PollingXHR;->onData([B)V

    goto :goto_1
.end method
