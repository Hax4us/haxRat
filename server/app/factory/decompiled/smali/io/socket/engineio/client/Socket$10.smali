.class Lio/socket/engineio/client/Socket$10;
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

.field final synthetic val$onerror:Lio/socket/emitter/Emitter$Listener;


# direct methods
.method constructor <init>(Lio/socket/engineio/client/Socket;Lio/socket/emitter/Emitter$Listener;)V
    .locals 5

    .prologue
    .line 427
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lio/socket/engineio/client/Socket$10;->this$0:Lio/socket/engineio/client/Socket;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lio/socket/engineio/client/Socket$10;->val$onerror:Lio/socket/emitter/Emitter$Listener;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs call([Ljava/lang/Object;)V
    .locals 8

    .prologue
    .line 430
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lio/socket/engineio/client/Socket$10;->val$onerror:Lio/socket/emitter/Emitter$Listener;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    const-string v6, "transport closed"

    aput-object v6, v4, v5

    invoke-interface {v2, v3}, Lio/socket/emitter/Emitter$Listener;->call([Ljava/lang/Object;)V

    .line 431
    return-void
.end method
