.class Lio/socket/client/Manager$4;
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
    .line 362
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lio/socket/client/Manager$4;->this$0:Lio/socket/client/Manager;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs call([Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 365
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lio/socket/client/Manager$4;->this$0:Lio/socket/client/Manager;

    invoke-static {v2}, Lio/socket/client/Manager;->access$1300(Lio/socket/client/Manager;)V

    .line 366
    return-void
.end method
