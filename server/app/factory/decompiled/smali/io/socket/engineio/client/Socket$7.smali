.class Lio/socket/engineio/client/Socket$7;
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

.field final synthetic val$cleanup:[Ljava/lang/Runnable;

.field final synthetic val$failed:[Z

.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$self:Lio/socket/engineio/client/Socket;

.field final synthetic val$transport:[Lio/socket/engineio/client/Transport;


# direct methods
.method constructor <init>(Lio/socket/engineio/client/Socket;[ZLjava/lang/String;[Lio/socket/engineio/client/Transport;Lio/socket/engineio/client/Socket;[Ljava/lang/Runnable;)V
    .locals 9

    .prologue
    .line 338
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, v0

    move-object v8, v1

    iput-object v8, v7, Lio/socket/engineio/client/Socket$7;->this$0:Lio/socket/engineio/client/Socket;

    move-object v7, v0

    move-object v8, v2

    iput-object v8, v7, Lio/socket/engineio/client/Socket$7;->val$failed:[Z

    move-object v7, v0

    move-object v8, v3

    iput-object v8, v7, Lio/socket/engineio/client/Socket$7;->val$name:Ljava/lang/String;

    move-object v7, v0

    move-object v8, v4

    iput-object v8, v7, Lio/socket/engineio/client/Socket$7;->val$transport:[Lio/socket/engineio/client/Transport;

    move-object v7, v0

    move-object v8, v5

    iput-object v8, v7, Lio/socket/engineio/client/Socket$7;->val$self:Lio/socket/engineio/client/Socket;

    move-object v7, v0

    move-object v8, v6

    iput-object v8, v7, Lio/socket/engineio/client/Socket$7;->val$cleanup:[Ljava/lang/Runnable;

    move-object v7, v0

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs call([Ljava/lang/Object;)V
    .locals 10

    .prologue
    .line 341
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Lio/socket/engineio/client/Socket$7;->val$failed:[Z

    const/4 v4, 0x0

    aget-boolean v3, v3, v4

    if-eqz v3, :cond_0

    .line 387
    :goto_0
    return-void

    .line 343
    :cond_0
    invoke-static {}, Lio/socket/engineio/client/Socket;->access$1200()Ljava/util/logging/Logger;

    move-result-object v3

    const-string v4, "probe transport \'%s\' opened"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v0

    iget-object v8, v8, Lio/socket/engineio/client/Socket$7;->val$name:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 344
    new-instance v3, Lio/socket/engineio/parser/Packet;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    const-string v5, "ping"

    const-string v6, "probe"

    invoke-direct {v4, v5, v6}, Lio/socket/engineio/parser/Packet;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v2, v3

    .line 345
    move-object v3, v0

    iget-object v3, v3, Lio/socket/engineio/client/Socket$7;->val$transport:[Lio/socket/engineio/client/Transport;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Lio/socket/engineio/parser/Packet;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const/4 v6, 0x0

    move-object v7, v2

    aput-object v7, v5, v6

    invoke-virtual {v3, v4}, Lio/socket/engineio/client/Transport;->send([Lio/socket/engineio/parser/Packet;)V

    .line 346
    move-object v3, v0

    iget-object v3, v3, Lio/socket/engineio/client/Socket$7;->val$transport:[Lio/socket/engineio/client/Transport;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const-string v4, "packet"

    new-instance v5, Lio/socket/engineio/client/Socket$7$1;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    invoke-direct {v6, v7}, Lio/socket/engineio/client/Socket$7$1;-><init>(Lio/socket/engineio/client/Socket$7;)V

    invoke-virtual {v3, v4, v5}, Lio/socket/engineio/client/Transport;->once(Ljava/lang/String;Lio/socket/emitter/Emitter$Listener;)Lio/socket/emitter/Emitter;

    move-result-object v3

    .line 387
    goto :goto_0
.end method
