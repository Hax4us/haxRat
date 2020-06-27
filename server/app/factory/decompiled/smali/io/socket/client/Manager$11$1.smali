.class Lio/socket/client/Manager$11$1;
.super Ljava/lang/Object;
.source "Manager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/socket/client/Manager$11;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/socket/client/Manager$11;


# direct methods
.method constructor <init>(Lio/socket/client/Manager$11;)V
    .locals 4

    .prologue
    .line 547
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lio/socket/client/Manager$11$1;->this$1:Lio/socket/client/Manager$11;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 550
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lio/socket/client/Manager$11$1;->this$1:Lio/socket/client/Manager$11;

    iget-object v2, v2, Lio/socket/client/Manager$11;->val$self:Lio/socket/client/Manager;

    invoke-static {v2}, Lio/socket/client/Manager;->access$300(Lio/socket/client/Manager;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 574
    :goto_0
    return-void

    .line 552
    :cond_0
    invoke-static {}, Lio/socket/client/Manager;->access$000()Ljava/util/logging/Logger;

    move-result-object v2

    const-string v3, "attempting reconnect"

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 553
    move-object v2, v0

    iget-object v2, v2, Lio/socket/client/Manager$11$1;->this$1:Lio/socket/client/Manager$11;

    iget-object v2, v2, Lio/socket/client/Manager$11;->val$self:Lio/socket/client/Manager;

    invoke-static {v2}, Lio/socket/client/Manager;->access$2000(Lio/socket/client/Manager;)Lio/socket/backo/Backoff;

    move-result-object v2

    invoke-virtual {v2}, Lio/socket/backo/Backoff;->getAttempts()I

    move-result v2

    move v1, v2

    .line 554
    move-object v2, v0

    iget-object v2, v2, Lio/socket/client/Manager$11$1;->this$1:Lio/socket/client/Manager$11;

    iget-object v2, v2, Lio/socket/client/Manager$11;->val$self:Lio/socket/client/Manager;

    const-string v3, "reconnect_attempt"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move v7, v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4}, Lio/socket/client/Manager;->access$600(Lio/socket/client/Manager;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 555
    move-object v2, v0

    iget-object v2, v2, Lio/socket/client/Manager$11$1;->this$1:Lio/socket/client/Manager$11;

    iget-object v2, v2, Lio/socket/client/Manager$11;->val$self:Lio/socket/client/Manager;

    const-string v3, "reconnecting"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move v7, v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4}, Lio/socket/client/Manager;->access$600(Lio/socket/client/Manager;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 558
    move-object v2, v0

    iget-object v2, v2, Lio/socket/client/Manager$11$1;->this$1:Lio/socket/client/Manager$11;

    iget-object v2, v2, Lio/socket/client/Manager$11;->val$self:Lio/socket/client/Manager;

    invoke-static {v2}, Lio/socket/client/Manager;->access$300(Lio/socket/client/Manager;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 560
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lio/socket/client/Manager$11$1;->this$1:Lio/socket/client/Manager$11;

    iget-object v2, v2, Lio/socket/client/Manager$11;->val$self:Lio/socket/client/Manager;

    new-instance v3, Lio/socket/client/Manager$11$1$1;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    invoke-direct {v4, v5}, Lio/socket/client/Manager$11$1$1;-><init>(Lio/socket/client/Manager$11$1;)V

    invoke-virtual {v2, v3}, Lio/socket/client/Manager;->open(Lio/socket/client/Manager$OpenCallback;)Lio/socket/client/Manager;

    move-result-object v2

    .line 574
    goto :goto_0
.end method
