.class Lio/socket/client/Manager$11$1$1;
.super Ljava/lang/Object;
.source "Manager.java"

# interfaces
.implements Lio/socket/client/Manager$OpenCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/socket/client/Manager$11$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lio/socket/client/Manager$11$1;


# direct methods
.method constructor <init>(Lio/socket/client/Manager$11$1;)V
    .locals 4

    .prologue
    .line 560
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lio/socket/client/Manager$11$1$1;->this$2:Lio/socket/client/Manager$11$1;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Exception;)V
    .locals 9

    .prologue
    .line 563
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-eqz v2, :cond_0

    .line 564
    invoke-static {}, Lio/socket/client/Manager;->access$000()Ljava/util/logging/Logger;

    move-result-object v2

    const-string v3, "reconnect attempt error"

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 565
    move-object v2, v0

    iget-object v2, v2, Lio/socket/client/Manager$11$1$1;->this$2:Lio/socket/client/Manager$11$1;

    iget-object v2, v2, Lio/socket/client/Manager$11$1;->this$1:Lio/socket/client/Manager$11;

    iget-object v2, v2, Lio/socket/client/Manager$11;->val$self:Lio/socket/client/Manager;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lio/socket/client/Manager;->access$2102(Lio/socket/client/Manager;Z)Z

    move-result v2

    .line 566
    move-object v2, v0

    iget-object v2, v2, Lio/socket/client/Manager$11$1$1;->this$2:Lio/socket/client/Manager$11$1;

    iget-object v2, v2, Lio/socket/client/Manager$11$1;->this$1:Lio/socket/client/Manager$11;

    iget-object v2, v2, Lio/socket/client/Manager$11;->val$self:Lio/socket/client/Manager;

    invoke-static {v2}, Lio/socket/client/Manager;->access$2200(Lio/socket/client/Manager;)V

    .line 567
    move-object v2, v0

    iget-object v2, v2, Lio/socket/client/Manager$11$1$1;->this$2:Lio/socket/client/Manager$11$1;

    iget-object v2, v2, Lio/socket/client/Manager$11$1;->this$1:Lio/socket/client/Manager$11;

    iget-object v2, v2, Lio/socket/client/Manager$11;->val$self:Lio/socket/client/Manager;

    const-string v3, "reconnect_error"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v1

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4}, Lio/socket/client/Manager;->access$600(Lio/socket/client/Manager;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 572
    :goto_0
    return-void

    .line 569
    :cond_0
    invoke-static {}, Lio/socket/client/Manager;->access$000()Ljava/util/logging/Logger;

    move-result-object v2

    const-string v3, "reconnect success"

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 570
    move-object v2, v0

    iget-object v2, v2, Lio/socket/client/Manager$11$1$1;->this$2:Lio/socket/client/Manager$11$1;

    iget-object v2, v2, Lio/socket/client/Manager$11$1;->this$1:Lio/socket/client/Manager$11;

    iget-object v2, v2, Lio/socket/client/Manager$11;->val$self:Lio/socket/client/Manager;

    invoke-static {v2}, Lio/socket/client/Manager;->access$2300(Lio/socket/client/Manager;)V

    goto :goto_0
.end method
