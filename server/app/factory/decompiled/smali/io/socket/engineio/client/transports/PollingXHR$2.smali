.class Lio/socket/engineio/client/transports/PollingXHR$2;
.super Ljava/lang/Object;
.source "PollingXHR.java"

# interfaces
.implements Lio/socket/emitter/Emitter$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/socket/engineio/client/transports/PollingXHR;->request(Lio/socket/engineio/client/transports/PollingXHR$Request$Options;)Lio/socket/engineio/client/transports/PollingXHR$Request;
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
    .line 43
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lio/socket/engineio/client/transports/PollingXHR$2;->this$0:Lio/socket/engineio/client/transports/PollingXHR;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lio/socket/engineio/client/transports/PollingXHR$2;->val$self:Lio/socket/engineio/client/transports/PollingXHR;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs call([Ljava/lang/Object;)V
    .locals 10

    .prologue
    .line 47
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lio/socket/engineio/client/transports/PollingXHR$2;->val$self:Lio/socket/engineio/client/transports/PollingXHR;

    const-string v3, "requestHeaders"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const/4 v6, 0x0

    move-object v7, v1

    const/4 v8, 0x0

    aget-object v7, v7, v8

    aput-object v7, v5, v6

    invoke-virtual {v2, v3, v4}, Lio/socket/engineio/client/transports/PollingXHR;->emit(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/emitter/Emitter;

    move-result-object v2

    .line 48
    return-void
.end method
