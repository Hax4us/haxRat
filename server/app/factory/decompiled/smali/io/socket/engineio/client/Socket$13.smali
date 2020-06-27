.class Lio/socket/engineio/client/Socket$13;
.super Ljava/lang/Object;
.source "Socket.java"

# interfaces
.implements Ljava/lang/Runnable;


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

.field final synthetic val$onTransportClose:Lio/socket/emitter/Emitter$Listener;

.field final synthetic val$onTransportOpen:Lio/socket/emitter/Emitter$Listener;

.field final synthetic val$onclose:Lio/socket/emitter/Emitter$Listener;

.field final synthetic val$onerror:Lio/socket/emitter/Emitter$Listener;

.field final synthetic val$onupgrade:Lio/socket/emitter/Emitter$Listener;

.field final synthetic val$self:Lio/socket/engineio/client/Socket;

.field final synthetic val$transport:[Lio/socket/engineio/client/Transport;


# direct methods
.method constructor <init>(Lio/socket/engineio/client/Socket;[Lio/socket/engineio/client/Transport;Lio/socket/emitter/Emitter$Listener;Lio/socket/emitter/Emitter$Listener;Lio/socket/emitter/Emitter$Listener;Lio/socket/engineio/client/Socket;Lio/socket/emitter/Emitter$Listener;Lio/socket/emitter/Emitter$Listener;)V
    .locals 11

    .prologue
    .line 454
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object v9, v0

    move-object v10, v1

    iput-object v10, v9, Lio/socket/engineio/client/Socket$13;->this$0:Lio/socket/engineio/client/Socket;

    move-object v9, v0

    move-object v10, v2

    iput-object v10, v9, Lio/socket/engineio/client/Socket$13;->val$transport:[Lio/socket/engineio/client/Transport;

    move-object v9, v0

    move-object v10, v3

    iput-object v10, v9, Lio/socket/engineio/client/Socket$13;->val$onTransportOpen:Lio/socket/emitter/Emitter$Listener;

    move-object v9, v0

    move-object v10, v4

    iput-object v10, v9, Lio/socket/engineio/client/Socket$13;->val$onerror:Lio/socket/emitter/Emitter$Listener;

    move-object v9, v0

    move-object v10, v5

    iput-object v10, v9, Lio/socket/engineio/client/Socket$13;->val$onTransportClose:Lio/socket/emitter/Emitter$Listener;

    move-object v9, v0

    move-object v10, v6

    iput-object v10, v9, Lio/socket/engineio/client/Socket$13;->val$self:Lio/socket/engineio/client/Socket;

    move-object v9, v0

    move-object v10, v7

    iput-object v10, v9, Lio/socket/engineio/client/Socket$13;->val$onclose:Lio/socket/emitter/Emitter$Listener;

    move-object v9, v0

    move-object v10, v8

    iput-object v10, v9, Lio/socket/engineio/client/Socket$13;->val$onupgrade:Lio/socket/emitter/Emitter$Listener;

    move-object v9, v0

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 457
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lio/socket/engineio/client/Socket$13;->val$transport:[Lio/socket/engineio/client/Transport;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const-string v2, "open"

    move-object v3, v0

    iget-object v3, v3, Lio/socket/engineio/client/Socket$13;->val$onTransportOpen:Lio/socket/emitter/Emitter$Listener;

    invoke-virtual {v1, v2, v3}, Lio/socket/engineio/client/Transport;->off(Ljava/lang/String;Lio/socket/emitter/Emitter$Listener;)Lio/socket/emitter/Emitter;

    move-result-object v1

    .line 458
    move-object v1, v0

    iget-object v1, v1, Lio/socket/engineio/client/Socket$13;->val$transport:[Lio/socket/engineio/client/Transport;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const-string v2, "error"

    move-object v3, v0

    iget-object v3, v3, Lio/socket/engineio/client/Socket$13;->val$onerror:Lio/socket/emitter/Emitter$Listener;

    invoke-virtual {v1, v2, v3}, Lio/socket/engineio/client/Transport;->off(Ljava/lang/String;Lio/socket/emitter/Emitter$Listener;)Lio/socket/emitter/Emitter;

    move-result-object v1

    .line 459
    move-object v1, v0

    iget-object v1, v1, Lio/socket/engineio/client/Socket$13;->val$transport:[Lio/socket/engineio/client/Transport;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const-string v2, "close"

    move-object v3, v0

    iget-object v3, v3, Lio/socket/engineio/client/Socket$13;->val$onTransportClose:Lio/socket/emitter/Emitter$Listener;

    invoke-virtual {v1, v2, v3}, Lio/socket/engineio/client/Transport;->off(Ljava/lang/String;Lio/socket/emitter/Emitter$Listener;)Lio/socket/emitter/Emitter;

    move-result-object v1

    .line 460
    move-object v1, v0

    iget-object v1, v1, Lio/socket/engineio/client/Socket$13;->val$self:Lio/socket/engineio/client/Socket;

    const-string v2, "close"

    move-object v3, v0

    iget-object v3, v3, Lio/socket/engineio/client/Socket$13;->val$onclose:Lio/socket/emitter/Emitter$Listener;

    invoke-virtual {v1, v2, v3}, Lio/socket/engineio/client/Socket;->off(Ljava/lang/String;Lio/socket/emitter/Emitter$Listener;)Lio/socket/emitter/Emitter;

    move-result-object v1

    .line 461
    move-object v1, v0

    iget-object v1, v1, Lio/socket/engineio/client/Socket$13;->val$self:Lio/socket/engineio/client/Socket;

    const-string v2, "upgrading"

    move-object v3, v0

    iget-object v3, v3, Lio/socket/engineio/client/Socket$13;->val$onupgrade:Lio/socket/emitter/Emitter$Listener;

    invoke-virtual {v1, v2, v3}, Lio/socket/engineio/client/Socket;->off(Ljava/lang/String;Lio/socket/emitter/Emitter$Listener;)Lio/socket/emitter/Emitter;

    move-result-object v1

    .line 462
    return-void
.end method
