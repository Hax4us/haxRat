.class Lio/socket/engineio/client/Socket$2$1;
.super Ljava/lang/Object;
.source "Socket.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/socket/engineio/client/Socket$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/socket/engineio/client/Socket$2;

.field final synthetic val$self:Lio/socket/engineio/client/Socket;


# direct methods
.method constructor <init>(Lio/socket/engineio/client/Socket$2;Lio/socket/engineio/client/Socket;)V
    .locals 5

    .prologue
    .line 235
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lio/socket/engineio/client/Socket$2$1;->this$1:Lio/socket/engineio/client/Socket$2;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lio/socket/engineio/client/Socket$2$1;->val$self:Lio/socket/engineio/client/Socket;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 238
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lio/socket/engineio/client/Socket$2$1;->val$self:Lio/socket/engineio/client/Socket;

    const-string v2, "error"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    const/4 v5, 0x0

    new-instance v6, Lio/socket/engineio/client/EngineIOException;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    const-string v8, "No transports available"

    invoke-direct {v7, v8}, Lio/socket/engineio/client/EngineIOException;-><init>(Ljava/lang/String;)V

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v3}, Lio/socket/engineio/client/Socket;->emit(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/emitter/Emitter;

    move-result-object v1

    .line 239
    return-void
.end method
