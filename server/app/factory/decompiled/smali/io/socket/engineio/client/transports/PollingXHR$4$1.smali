.class Lio/socket/engineio/client/transports/PollingXHR$4$1;
.super Ljava/lang/Object;
.source "PollingXHR.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/socket/engineio/client/transports/PollingXHR$4;->call([Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/socket/engineio/client/transports/PollingXHR$4;

.field final synthetic val$args:[Ljava/lang/Object;


# direct methods
.method constructor <init>(Lio/socket/engineio/client/transports/PollingXHR$4;[Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 84
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lio/socket/engineio/client/transports/PollingXHR$4$1;->this$1:Lio/socket/engineio/client/transports/PollingXHR$4;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lio/socket/engineio/client/transports/PollingXHR$4$1;->val$args:[Ljava/lang/Object;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 87
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lio/socket/engineio/client/transports/PollingXHR$4$1;->val$args:[Ljava/lang/Object;

    array-length v2, v2

    if-lez v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lio/socket/engineio/client/transports/PollingXHR$4$1;->val$args:[Ljava/lang/Object;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    instance-of v2, v2, Ljava/lang/Exception;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lio/socket/engineio/client/transports/PollingXHR$4$1;->val$args:[Ljava/lang/Object;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    check-cast v2, Ljava/lang/Exception;

    :goto_0
    move-object v1, v2

    .line 88
    move-object v2, v0

    iget-object v2, v2, Lio/socket/engineio/client/transports/PollingXHR$4$1;->this$1:Lio/socket/engineio/client/transports/PollingXHR$4;

    iget-object v2, v2, Lio/socket/engineio/client/transports/PollingXHR$4;->val$self:Lio/socket/engineio/client/transports/PollingXHR;

    const-string v3, "xhr post error"

    move-object v4, v1

    invoke-static {v2, v3, v4}, Lio/socket/engineio/client/transports/PollingXHR;->access$000(Lio/socket/engineio/client/transports/PollingXHR;Ljava/lang/String;Ljava/lang/Exception;)Lio/socket/engineio/client/Transport;

    move-result-object v2

    .line 89
    return-void

    .line 87
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
