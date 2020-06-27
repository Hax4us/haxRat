.class Lio/socket/client/Socket$6$1;
.super Ljava/util/ArrayList;
.source "Socket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/socket/client/Socket$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lio/socket/client/Socket$6;


# direct methods
.method constructor <init>(Lio/socket/client/Socket$6;)V
    .locals 4

    .prologue
    .line 238
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lio/socket/client/Socket$6$1;->this$1:Lio/socket/client/Socket$6;

    move-object v2, v0

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 239
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lio/socket/client/Socket$6$1;->this$1:Lio/socket/client/Socket$6;

    iget-object v3, v3, Lio/socket/client/Socket$6;->val$event:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lio/socket/client/Socket$6$1;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 240
    move-object v2, v0

    iget-object v2, v2, Lio/socket/client/Socket$6$1;->this$1:Lio/socket/client/Socket$6;

    iget-object v2, v2, Lio/socket/client/Socket$6;->val$args:[Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 241
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lio/socket/client/Socket$6$1;->this$1:Lio/socket/client/Socket$6;

    iget-object v3, v3, Lio/socket/client/Socket$6;->val$args:[Ljava/lang/Object;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/socket/client/Socket$6$1;->addAll(Ljava/util/Collection;)Z

    move-result v2

    .line 243
    :cond_0
    return-void
.end method
