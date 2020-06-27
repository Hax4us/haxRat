.class Lio/socket/client/Manager$10;
.super Ljava/lang/Object;
.source "Manager.java"

# interfaces
.implements Lio/socket/parser/Parser$Encoder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/socket/client/Manager;->packet(Lio/socket/parser/Packet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/socket/client/Manager;

.field final synthetic val$self:Lio/socket/client/Manager;


# direct methods
.method constructor <init>(Lio/socket/client/Manager;Lio/socket/client/Manager;)V
    .locals 5

    .prologue
    .line 461
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lio/socket/client/Manager$10;->this$0:Lio/socket/client/Manager;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lio/socket/client/Manager$10;->val$self:Lio/socket/client/Manager;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call([Ljava/lang/Object;)V
    .locals 8

    .prologue
    .line 464
    move-object v0, p0

    move-object v1, p1

    move-object v6, v1

    move-object v2, v6

    move-object v6, v2

    array-length v6, v6

    move v3, v6

    const/4 v6, 0x0

    move v4, v6

    :goto_0
    move v6, v4

    move v7, v3

    if-ge v6, v7, :cond_2

    move-object v6, v2

    move v7, v4

    aget-object v6, v6, v7

    move-object v5, v6

    .line 465
    move-object v6, v5

    instance-of v6, v6, Ljava/lang/String;

    if-eqz v6, :cond_1

    .line 466
    move-object v6, v0

    iget-object v6, v6, Lio/socket/client/Manager$10;->val$self:Lio/socket/client/Manager;

    iget-object v6, v6, Lio/socket/client/Manager;->engine:Lio/socket/engineio/client/Socket;

    move-object v7, v5

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Lio/socket/engineio/client/Socket;->write(Ljava/lang/String;)V

    .line 464
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 467
    :cond_1
    move-object v6, v5

    instance-of v6, v6, [B

    if-eqz v6, :cond_0

    .line 468
    move-object v6, v0

    iget-object v6, v6, Lio/socket/client/Manager$10;->val$self:Lio/socket/client/Manager;

    iget-object v6, v6, Lio/socket/client/Manager;->engine:Lio/socket/engineio/client/Socket;

    move-object v7, v5

    check-cast v7, [B

    check-cast v7, [B

    invoke-virtual {v6, v7}, Lio/socket/engineio/client/Socket;->write([B)V

    goto :goto_1

    .line 471
    :cond_2
    move-object v6, v0

    iget-object v6, v6, Lio/socket/client/Manager$10;->val$self:Lio/socket/client/Manager;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lio/socket/client/Manager;->access$1802(Lio/socket/client/Manager;Z)Z

    move-result v6

    .line 472
    move-object v6, v0

    iget-object v6, v6, Lio/socket/client/Manager$10;->val$self:Lio/socket/client/Manager;

    invoke-static {v6}, Lio/socket/client/Manager;->access$1900(Lio/socket/client/Manager;)V

    .line 473
    return-void
.end method
