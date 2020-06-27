.class Lio/socket/engineio/client/transports/Polling$5;
.super Ljava/lang/Object;
.source "Polling.java"

# interfaces
.implements Lio/socket/engineio/parser/Parser$EncodeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/socket/engineio/client/transports/Polling;->write([Lio/socket/engineio/parser/Packet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/socket/engineio/parser/Parser$EncodeCallback",
        "<[B>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/socket/engineio/client/transports/Polling;

.field final synthetic val$callbackfn:Ljava/lang/Runnable;

.field final synthetic val$self:Lio/socket/engineio/client/transports/Polling;


# direct methods
.method constructor <init>(Lio/socket/engineio/client/transports/Polling;Lio/socket/engineio/client/transports/Polling;Ljava/lang/Runnable;)V
    .locals 6

    .prologue
    .line 186
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lio/socket/engineio/client/transports/Polling$5;->this$0:Lio/socket/engineio/client/transports/Polling;

    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lio/socket/engineio/client/transports/Polling$5;->val$self:Lio/socket/engineio/client/transports/Polling;

    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lio/socket/engineio/client/transports/Polling$5;->val$callbackfn:Ljava/lang/Runnable;

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 186
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, [B

    invoke-virtual {v2, v3}, Lio/socket/engineio/client/transports/Polling$5;->call([B)V

    return-void
.end method

.method public call([B)V
    .locals 5

    .prologue
    .line 189
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lio/socket/engineio/client/transports/Polling$5;->val$self:Lio/socket/engineio/client/transports/Polling;

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lio/socket/engineio/client/transports/Polling$5;->val$callbackfn:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v4}, Lio/socket/engineio/client/transports/Polling;->doWrite([BLjava/lang/Runnable;)V

    .line 190
    return-void
.end method
