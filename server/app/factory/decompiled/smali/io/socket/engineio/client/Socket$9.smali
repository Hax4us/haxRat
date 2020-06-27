.class Lio/socket/engineio/client/Socket$9;
.super Ljava/lang/Object;
.source "Socket.java"

# interfaces
.implements Lio/socket/emitter/Emitter$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/socket/engineio/client/Socket;->probe(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/socket/engineio/client/Socket;

.field final synthetic val$freezeTransport:Lio/socket/emitter/Emitter$Listener;

.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$self:Lio/socket/engineio/client/Socket;

.field final synthetic val$transport:[Lio/socket/engineio/client/Transport;


# direct methods
.method constructor <init>(Lio/socket/engineio/client/Socket;[Lio/socket/engineio/client/Transport;Lio/socket/emitter/Emitter$Listener;Ljava/lang/String;Lio/socket/engineio/client/Socket;)V
    .locals 8

    .prologue
    .line 405
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Lio/socket/engineio/client/Socket$9;->this$0:Lio/socket/engineio/client/Socket;

    move-object v6, v0

    move-object v7, v2

    iput-object v7, v6, Lio/socket/engineio/client/Socket$9;->val$transport:[Lio/socket/engineio/client/Transport;

    move-object v6, v0

    move-object v7, v3

    iput-object v7, v6, Lio/socket/engineio/client/Socket$9;->val$freezeTransport:Lio/socket/emitter/Emitter$Listener;

    move-object v6, v0

    move-object v7, v4

    iput-object v7, v6, Lio/socket/engineio/client/Socket$9;->val$name:Ljava/lang/String;

    move-object v6, v0

    move-object v7, v5

    iput-object v7, v6, Lio/socket/engineio/client/Socket$9;->val$self:Lio/socket/engineio/client/Socket;

    move-object v6, v0

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs call([Ljava/lang/Object;)V
    .locals 11

    .prologue
    .line 408
    move-object v0, p0

    move-object v1, p1

    move-object v4, v1

    const/4 v5, 0x0

    aget-object v4, v4, v5

    move-object v2, v4

    .line 410
    move-object v4, v2

    instance-of v4, v4, Ljava/lang/Exception;

    if-eqz v4, :cond_0

    .line 411
    new-instance v4, Lio/socket/engineio/client/EngineIOException;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    const-string v6, "probe error"

    move-object v7, v2

    check-cast v7, Ljava/lang/Exception;

    invoke-direct {v5, v6, v7}, Lio/socket/engineio/client/EngineIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v3, v4

    .line 417
    :goto_0
    move-object v4, v3

    move-object v5, v0

    iget-object v5, v5, Lio/socket/engineio/client/Socket$9;->val$transport:[Lio/socket/engineio/client/Transport;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    iget-object v5, v5, Lio/socket/engineio/client/Transport;->name:Ljava/lang/String;

    iput-object v5, v4, Lio/socket/engineio/client/EngineIOException;->transport:Ljava/lang/String;

    .line 419
    move-object v4, v0

    iget-object v4, v4, Lio/socket/engineio/client/Socket$9;->val$freezeTransport:Lio/socket/emitter/Emitter$Listener;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v4, v5}, Lio/socket/emitter/Emitter$Listener;->call([Ljava/lang/Object;)V

    .line 421
    invoke-static {}, Lio/socket/engineio/client/Socket;->access$1200()Ljava/util/logging/Logger;

    move-result-object v4

    const-string v5, "probe transport \"%s\" failed because of error: %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    move-object v9, v0

    iget-object v9, v9, Lio/socket/engineio/client/Socket$9;->val$name:Ljava/lang/String;

    aput-object v9, v7, v8

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x1

    move-object v9, v2

    aput-object v9, v7, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 423
    move-object v4, v0

    iget-object v4, v4, Lio/socket/engineio/client/Socket$9;->val$self:Lio/socket/engineio/client/Socket;

    const-string v5, "upgradeError"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    move-object v9, v3

    aput-object v9, v7, v8

    invoke-virtual {v4, v5, v6}, Lio/socket/engineio/client/Socket;->emit(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/emitter/Emitter;

    move-result-object v4

    .line 424
    return-void

    .line 412
    :cond_0
    move-object v4, v2

    instance-of v4, v4, Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 413
    new-instance v4, Lio/socket/engineio/client/EngineIOException;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "probe error: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v2

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lio/socket/engineio/client/EngineIOException;-><init>(Ljava/lang/String;)V

    move-object v3, v4

    goto :goto_0

    .line 415
    :cond_1
    new-instance v4, Lio/socket/engineio/client/EngineIOException;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    const-string v6, "probe error"

    invoke-direct {v5, v6}, Lio/socket/engineio/client/EngineIOException;-><init>(Ljava/lang/String;)V

    move-object v3, v4

    goto :goto_0
.end method
