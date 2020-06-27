.class Lio/socket/engineio/client/Socket$12;
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

.field final synthetic val$transport:[Lio/socket/engineio/client/Transport;


# direct methods
.method constructor <init>(Lio/socket/engineio/client/Socket;[Lio/socket/engineio/client/Transport;Lio/socket/emitter/Emitter$Listener;)V
    .locals 6

    .prologue
    .line 443
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lio/socket/engineio/client/Socket$12;->this$0:Lio/socket/engineio/client/Socket;

    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lio/socket/engineio/client/Socket$12;->val$transport:[Lio/socket/engineio/client/Transport;

    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lio/socket/engineio/client/Socket$12;->val$freezeTransport:Lio/socket/emitter/Emitter$Listener;

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs call([Ljava/lang/Object;)V
    .locals 11

    .prologue
    .line 446
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    const/4 v4, 0x0

    aget-object v3, v3, v4

    check-cast v3, Lio/socket/engineio/client/Transport;

    move-object v2, v3

    .line 447
    move-object v3, v0

    iget-object v3, v3, Lio/socket/engineio/client/Socket$12;->val$transport:[Lio/socket/engineio/client/Transport;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    if-eqz v3, :cond_0

    move-object v3, v2

    iget-object v3, v3, Lio/socket/engineio/client/Transport;->name:Ljava/lang/String;

    move-object v4, v0

    iget-object v4, v4, Lio/socket/engineio/client/Socket$12;->val$transport:[Lio/socket/engineio/client/Transport;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    iget-object v4, v4, Lio/socket/engineio/client/Transport;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 448
    invoke-static {}, Lio/socket/engineio/client/Socket;->access$1200()Ljava/util/logging/Logger;

    move-result-object v3

    const-string v4, "\'%s\' works - aborting \'%s\'"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const/4 v7, 0x0

    move-object v8, v2

    iget-object v8, v8, Lio/socket/engineio/client/Transport;->name:Ljava/lang/String;

    aput-object v8, v6, v7

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const/4 v7, 0x1

    move-object v8, v0

    iget-object v8, v8, Lio/socket/engineio/client/Socket$12;->val$transport:[Lio/socket/engineio/client/Transport;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    iget-object v8, v8, Lio/socket/engineio/client/Transport;->name:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 449
    move-object v3, v0

    iget-object v3, v3, Lio/socket/engineio/client/Socket$12;->val$freezeTransport:Lio/socket/emitter/Emitter$Listener;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v3, v4}, Lio/socket/emitter/Emitter$Listener;->call([Ljava/lang/Object;)V

    .line 451
    :cond_0
    return-void
.end method
