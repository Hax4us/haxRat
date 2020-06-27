.class Lio/socket/engineio/client/transports/Polling$1$3;
.super Ljava/lang/Object;
.source "Polling.java"

# interfaces
.implements Lio/socket/emitter/Emitter$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/socket/engineio/client/transports/Polling$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/socket/engineio/client/transports/Polling$1;

.field final synthetic val$pause:Ljava/lang/Runnable;

.field final synthetic val$total:[I


# direct methods
.method constructor <init>(Lio/socket/engineio/client/transports/Polling$1;[ILjava/lang/Runnable;)V
    .locals 6

    .prologue
    .line 75
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lio/socket/engineio/client/transports/Polling$1$3;->this$1:Lio/socket/engineio/client/transports/Polling$1;

    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lio/socket/engineio/client/transports/Polling$1$3;->val$total:[I

    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lio/socket/engineio/client/transports/Polling$1$3;->val$pause:Ljava/lang/Runnable;

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs call([Ljava/lang/Object;)V
    .locals 9

    .prologue
    .line 78
    move-object v0, p0

    move-object v1, p1

    invoke-static {}, Lio/socket/engineio/client/transports/Polling;->access$100()Ljava/util/logging/Logger;

    move-result-object v2

    const-string v3, "pre-pause writing complete"

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 79
    move-object v2, v0

    iget-object v2, v2, Lio/socket/engineio/client/transports/Polling$1$3;->val$total:[I

    const/4 v3, 0x0

    move-object v6, v2

    move v7, v3

    move-object v2, v6

    move v3, v7

    move-object v4, v6

    move v5, v7

    aget v4, v4, v5

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    move-object v6, v2

    move v7, v3

    move v8, v4

    move v2, v8

    move-object v3, v6

    move v4, v7

    move v5, v8

    aput v5, v3, v4

    if-nez v2, :cond_0

    .line 80
    move-object v2, v0

    iget-object v2, v2, Lio/socket/engineio/client/transports/Polling$1$3;->val$pause:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 82
    :cond_0
    return-void
.end method
