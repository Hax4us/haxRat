.class Lio/socket/engineio/client/transports/PollingXHR$3$1;
.super Ljava/lang/Object;
.source "PollingXHR.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/socket/engineio/client/transports/PollingXHR$3;->call([Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/socket/engineio/client/transports/PollingXHR$3;


# direct methods
.method constructor <init>(Lio/socket/engineio/client/transports/PollingXHR$3;)V
    .locals 4

    .prologue
    .line 73
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lio/socket/engineio/client/transports/PollingXHR$3$1;->this$1:Lio/socket/engineio/client/transports/PollingXHR$3;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 76
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lio/socket/engineio/client/transports/PollingXHR$3$1;->this$1:Lio/socket/engineio/client/transports/PollingXHR$3;

    iget-object v1, v1, Lio/socket/engineio/client/transports/PollingXHR$3;->val$fn:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 77
    return-void
.end method
