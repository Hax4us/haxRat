.class Lio/socket/engineio/client/transports/PollingXHR$1$1;
.super Ljava/lang/Object;
.source "PollingXHR.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/socket/engineio/client/transports/PollingXHR$1;->call([Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/socket/engineio/client/transports/PollingXHR$1;

.field final synthetic val$args:[Ljava/lang/Object;


# direct methods
.method constructor <init>(Lio/socket/engineio/client/transports/PollingXHR$1;[Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 52
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lio/socket/engineio/client/transports/PollingXHR$1$1;->this$1:Lio/socket/engineio/client/transports/PollingXHR$1;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lio/socket/engineio/client/transports/PollingXHR$1$1;->val$args:[Ljava/lang/Object;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 55
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lio/socket/engineio/client/transports/PollingXHR$1$1;->this$1:Lio/socket/engineio/client/transports/PollingXHR$1;

    iget-object v1, v1, Lio/socket/engineio/client/transports/PollingXHR$1;->val$self:Lio/socket/engineio/client/transports/PollingXHR;

    const-string v2, "responseHeaders"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const/4 v5, 0x0

    move-object v6, v0

    iget-object v6, v6, Lio/socket/engineio/client/transports/PollingXHR$1$1;->val$args:[Ljava/lang/Object;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v3}, Lio/socket/engineio/client/transports/PollingXHR;->emit(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/emitter/Emitter;

    move-result-object v1

    .line 56
    return-void
.end method
