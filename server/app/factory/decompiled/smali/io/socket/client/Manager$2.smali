.class Lio/socket/client/Manager$2;
.super Ljava/lang/Object;
.source "Manager.java"

# interfaces
.implements Lio/socket/emitter/Emitter$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/socket/client/Manager;->onopen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/socket/client/Manager;


# direct methods
.method constructor <init>(Lio/socket/client/Manager;)V
    .locals 4

    .prologue
    .line 345
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lio/socket/client/Manager$2;->this$0:Lio/socket/client/Manager;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs call([Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 348
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    const/4 v4, 0x0

    aget-object v3, v3, v4

    move-object v2, v3

    .line 349
    move-object v3, v2

    instance-of v3, v3, Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 350
    move-object v3, v0

    iget-object v3, v3, Lio/socket/client/Manager$2;->this$0:Lio/socket/client/Manager;

    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    invoke-static {v3, v4}, Lio/socket/client/Manager;->access$1000(Lio/socket/client/Manager;Ljava/lang/String;)V

    .line 354
    :cond_0
    :goto_0
    return-void

    .line 351
    :cond_1
    move-object v3, v2

    instance-of v3, v3, [B

    if-eqz v3, :cond_0

    .line 352
    move-object v3, v0

    iget-object v3, v3, Lio/socket/client/Manager$2;->this$0:Lio/socket/client/Manager;

    move-object v4, v2

    check-cast v4, [B

    check-cast v4, [B

    invoke-static {v3, v4}, Lio/socket/client/Manager;->access$1100(Lio/socket/client/Manager;[B)V

    goto :goto_0
.end method
