.class Lio/socket/engineio/client/transports/Polling$2;
.super Ljava/lang/Object;
.source "Polling.java"

# interfaces
.implements Lio/socket/engineio/parser/Parser$DecodePayloadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/socket/engineio/client/transports/Polling;->_onData(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/socket/engineio/client/transports/Polling;

.field final synthetic val$self:Lio/socket/engineio/client/transports/Polling;


# direct methods
.method constructor <init>(Lio/socket/engineio/client/transports/Polling;Lio/socket/engineio/client/transports/Polling;)V
    .locals 5

    .prologue
    .line 112
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lio/socket/engineio/client/transports/Polling$2;->this$0:Lio/socket/engineio/client/transports/Polling;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lio/socket/engineio/client/transports/Polling$2;->val$self:Lio/socket/engineio/client/transports/Polling;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lio/socket/engineio/parser/Packet;II)Z
    .locals 6

    .prologue
    .line 115
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v0

    iget-object v4, v4, Lio/socket/engineio/client/transports/Polling$2;->val$self:Lio/socket/engineio/client/transports/Polling;

    invoke-static {v4}, Lio/socket/engineio/client/transports/Polling;->access$400(Lio/socket/engineio/client/transports/Polling;)Lio/socket/engineio/client/Transport$ReadyState;

    move-result-object v4

    sget-object v5, Lio/socket/engineio/client/Transport$ReadyState;->OPENING:Lio/socket/engineio/client/Transport$ReadyState;

    if-ne v4, v5, :cond_0

    .line 116
    move-object v4, v0

    iget-object v4, v4, Lio/socket/engineio/client/transports/Polling$2;->val$self:Lio/socket/engineio/client/transports/Polling;

    invoke-static {v4}, Lio/socket/engineio/client/transports/Polling;->access$500(Lio/socket/engineio/client/transports/Polling;)V

    .line 119
    :cond_0
    const-string v4, "close"

    move-object v5, v1

    iget-object v5, v5, Lio/socket/engineio/parser/Packet;->type:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 120
    move-object v4, v0

    iget-object v4, v4, Lio/socket/engineio/client/transports/Polling$2;->val$self:Lio/socket/engineio/client/transports/Polling;

    invoke-static {v4}, Lio/socket/engineio/client/transports/Polling;->access$600(Lio/socket/engineio/client/transports/Polling;)V

    .line 121
    const/4 v4, 0x0

    move v0, v4

    .line 125
    :goto_0
    return v0

    .line 124
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Lio/socket/engineio/client/transports/Polling$2;->val$self:Lio/socket/engineio/client/transports/Polling;

    move-object v5, v1

    invoke-static {v4, v5}, Lio/socket/engineio/client/transports/Polling;->access$700(Lio/socket/engineio/client/transports/Polling;Lio/socket/engineio/parser/Packet;)V

    .line 125
    const/4 v4, 0x1

    move v0, v4

    goto :goto_0
.end method
