.class Lio/socket/client/Manager$1$3;
.super Ljava/lang/Object;
.source "Manager.java"

# interfaces
.implements Lio/socket/emitter/Emitter$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/socket/client/Manager$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/socket/client/Manager$1;

.field final synthetic val$self:Lio/socket/client/Manager;


# direct methods
.method constructor <init>(Lio/socket/client/Manager$1;Lio/socket/client/Manager;)V
    .locals 5

    .prologue
    .line 279
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lio/socket/client/Manager$1$3;->this$1:Lio/socket/client/Manager$1;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lio/socket/client/Manager$1$3;->val$self:Lio/socket/client/Manager;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs call([Ljava/lang/Object;)V
    .locals 11

    .prologue
    .line 282
    move-object v0, p0

    move-object v1, p1

    move-object v4, v1

    array-length v4, v4

    if-lez v4, :cond_0

    move-object v4, v1

    const/4 v5, 0x0

    aget-object v4, v4, v5

    :goto_0
    move-object v2, v4

    .line 283
    invoke-static {}, Lio/socket/client/Manager;->access$000()Ljava/util/logging/Logger;

    move-result-object v4

    const-string v5, "connect_error"

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 284
    move-object v4, v0

    iget-object v4, v4, Lio/socket/client/Manager$1$3;->val$self:Lio/socket/client/Manager;

    invoke-static {v4}, Lio/socket/client/Manager;->access$500(Lio/socket/client/Manager;)V

    .line 285
    move-object v4, v0

    iget-object v4, v4, Lio/socket/client/Manager$1$3;->val$self:Lio/socket/client/Manager;

    sget-object v5, Lio/socket/client/Manager$ReadyState;->CLOSED:Lio/socket/client/Manager$ReadyState;

    iput-object v5, v4, Lio/socket/client/Manager;->readyState:Lio/socket/client/Manager$ReadyState;

    .line 286
    move-object v4, v0

    iget-object v4, v4, Lio/socket/client/Manager$1$3;->val$self:Lio/socket/client/Manager;

    const-string v5, "connect_error"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    move-object v9, v2

    aput-object v9, v7, v8

    invoke-static {v4, v5, v6}, Lio/socket/client/Manager;->access$600(Lio/socket/client/Manager;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 287
    move-object v4, v0

    iget-object v4, v4, Lio/socket/client/Manager$1$3;->this$1:Lio/socket/client/Manager$1;

    iget-object v4, v4, Lio/socket/client/Manager$1;->val$fn:Lio/socket/client/Manager$OpenCallback;

    if-eqz v4, :cond_2

    .line 288
    new-instance v4, Lio/socket/client/SocketIOException;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    const-string v6, "Connection error"

    move-object v7, v2

    instance-of v7, v7, Ljava/lang/Exception;

    if-eqz v7, :cond_1

    move-object v7, v2

    check-cast v7, Ljava/lang/Exception;

    :goto_1
    invoke-direct {v5, v6, v7}, Lio/socket/client/SocketIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v3, v4

    .line 290
    move-object v4, v0

    iget-object v4, v4, Lio/socket/client/Manager$1$3;->this$1:Lio/socket/client/Manager$1;

    iget-object v4, v4, Lio/socket/client/Manager$1;->val$fn:Lio/socket/client/Manager$OpenCallback;

    move-object v5, v3

    invoke-interface {v4, v5}, Lio/socket/client/Manager$OpenCallback;->call(Ljava/lang/Exception;)V

    .line 295
    :goto_2
    return-void

    .line 282
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 288
    :cond_1
    const/4 v7, 0x0

    goto :goto_1

    .line 293
    :cond_2
    move-object v4, v0

    iget-object v4, v4, Lio/socket/client/Manager$1$3;->val$self:Lio/socket/client/Manager;

    invoke-static {v4}, Lio/socket/client/Manager;->access$700(Lio/socket/client/Manager;)V

    goto :goto_2
.end method
