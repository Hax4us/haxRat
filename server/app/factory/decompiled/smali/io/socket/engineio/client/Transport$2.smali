.class Lio/socket/engineio/client/Transport$2;
.super Ljava/lang/Object;
.source "Transport.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/socket/engineio/client/Transport;->close()Lio/socket/engineio/client/Transport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/socket/engineio/client/Transport;


# direct methods
.method constructor <init>(Lio/socket/engineio/client/Transport;)V
    .locals 4

    .prologue
    .line 90
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lio/socket/engineio/client/Transport$2;->this$0:Lio/socket/engineio/client/Transport;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 93
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lio/socket/engineio/client/Transport$2;->this$0:Lio/socket/engineio/client/Transport;

    iget-object v1, v1, Lio/socket/engineio/client/Transport;->readyState:Lio/socket/engineio/client/Transport$ReadyState;

    sget-object v2, Lio/socket/engineio/client/Transport$ReadyState;->OPENING:Lio/socket/engineio/client/Transport$ReadyState;

    if-eq v1, v2, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lio/socket/engineio/client/Transport$2;->this$0:Lio/socket/engineio/client/Transport;

    iget-object v1, v1, Lio/socket/engineio/client/Transport;->readyState:Lio/socket/engineio/client/Transport$ReadyState;

    sget-object v2, Lio/socket/engineio/client/Transport$ReadyState;->OPEN:Lio/socket/engineio/client/Transport$ReadyState;

    if-ne v1, v2, :cond_1

    .line 94
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lio/socket/engineio/client/Transport$2;->this$0:Lio/socket/engineio/client/Transport;

    invoke-virtual {v1}, Lio/socket/engineio/client/Transport;->doClose()V

    .line 95
    move-object v1, v0

    iget-object v1, v1, Lio/socket/engineio/client/Transport$2;->this$0:Lio/socket/engineio/client/Transport;

    invoke-virtual {v1}, Lio/socket/engineio/client/Transport;->onClose()V

    .line 97
    :cond_1
    return-void
.end method
