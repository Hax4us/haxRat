.class Lio/socket/client/Manager$1;
.super Ljava/lang/Object;
.source "Manager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/socket/client/Manager;->open(Lio/socket/client/Manager$OpenCallback;)Lio/socket/client/Manager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/socket/client/Manager;

.field final synthetic val$fn:Lio/socket/client/Manager$OpenCallback;


# direct methods
.method constructor <init>(Lio/socket/client/Manager;Lio/socket/client/Manager$OpenCallback;)V
    .locals 5

    .prologue
    .line 250
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lio/socket/client/Manager$1;->this$0:Lio/socket/client/Manager;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lio/socket/client/Manager$1;->val$fn:Lio/socket/client/Manager$OpenCallback;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    .prologue
    .line 253
    move-object/from16 v0, p0

    invoke-static {}, Lio/socket/client/Manager;->access$000()Ljava/util/logging/Logger;

    move-result-object v8

    const-string v9, "readyState %s"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    move-object/from16 v17, v10

    move-object/from16 v10, v17

    move-object/from16 v11, v17

    const/4 v12, 0x0

    move-object v13, v0

    iget-object v13, v13, Lio/socket/client/Manager$1;->this$0:Lio/socket/client/Manager;

    iget-object v13, v13, Lio/socket/client/Manager;->readyState:Lio/socket/client/Manager$ReadyState;

    aput-object v13, v11, v12

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 254
    move-object v8, v0

    iget-object v8, v8, Lio/socket/client/Manager$1;->this$0:Lio/socket/client/Manager;

    iget-object v8, v8, Lio/socket/client/Manager;->readyState:Lio/socket/client/Manager$ReadyState;

    sget-object v9, Lio/socket/client/Manager$ReadyState;->OPEN:Lio/socket/client/Manager$ReadyState;

    if-eq v8, v9, :cond_0

    move-object v8, v0

    iget-object v8, v8, Lio/socket/client/Manager$1;->this$0:Lio/socket/client/Manager;

    iget-object v8, v8, Lio/socket/client/Manager;->readyState:Lio/socket/client/Manager$ReadyState;

    sget-object v9, Lio/socket/client/Manager$ReadyState;->OPENING:Lio/socket/client/Manager$ReadyState;

    if-ne v8, v9, :cond_1

    .line 331
    :cond_0
    :goto_0
    return-void

    .line 256
    :cond_1
    invoke-static {}, Lio/socket/client/Manager;->access$000()Ljava/util/logging/Logger;

    move-result-object v8

    const-string v9, "opening %s"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    move-object/from16 v17, v10

    move-object/from16 v10, v17

    move-object/from16 v11, v17

    const/4 v12, 0x0

    move-object v13, v0

    iget-object v13, v13, Lio/socket/client/Manager$1;->this$0:Lio/socket/client/Manager;

    invoke-static {v13}, Lio/socket/client/Manager;->access$100(Lio/socket/client/Manager;)Ljava/net/URI;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 257
    move-object v8, v0

    iget-object v8, v8, Lio/socket/client/Manager$1;->this$0:Lio/socket/client/Manager;

    new-instance v9, Lio/socket/client/Manager$Engine;

    move-object/from16 v17, v9

    move-object/from16 v9, v17

    move-object/from16 v10, v17

    move-object v11, v0

    iget-object v11, v11, Lio/socket/client/Manager$1;->this$0:Lio/socket/client/Manager;

    invoke-static {v11}, Lio/socket/client/Manager;->access$100(Lio/socket/client/Manager;)Ljava/net/URI;

    move-result-object v11

    move-object v12, v0

    iget-object v12, v12, Lio/socket/client/Manager$1;->this$0:Lio/socket/client/Manager;

    invoke-static {v12}, Lio/socket/client/Manager;->access$200(Lio/socket/client/Manager;)Lio/socket/client/Manager$Options;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lio/socket/client/Manager$Engine;-><init>(Ljava/net/URI;Lio/socket/engineio/client/Socket$Options;)V

    iput-object v9, v8, Lio/socket/client/Manager;->engine:Lio/socket/engineio/client/Socket;

    .line 258
    move-object v8, v0

    iget-object v8, v8, Lio/socket/client/Manager$1;->this$0:Lio/socket/client/Manager;

    iget-object v8, v8, Lio/socket/client/Manager;->engine:Lio/socket/engineio/client/Socket;

    move-object v1, v8

    .line 259
    move-object v8, v0

    iget-object v8, v8, Lio/socket/client/Manager$1;->this$0:Lio/socket/client/Manager;

    move-object v2, v8

    .line 260
    move-object v8, v0

    iget-object v8, v8, Lio/socket/client/Manager$1;->this$0:Lio/socket/client/Manager;

    sget-object v9, Lio/socket/client/Manager$ReadyState;->OPENING:Lio/socket/client/Manager$ReadyState;

    iput-object v9, v8, Lio/socket/client/Manager;->readyState:Lio/socket/client/Manager$ReadyState;

    .line 261
    move-object v8, v0

    iget-object v8, v8, Lio/socket/client/Manager$1;->this$0:Lio/socket/client/Manager;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lio/socket/client/Manager;->access$302(Lio/socket/client/Manager;Z)Z

    move-result v8

    .line 264
    move-object v8, v1

    const-string v9, "transport"

    new-instance v10, Lio/socket/client/Manager$1$1;

    move-object/from16 v17, v10

    move-object/from16 v10, v17

    move-object/from16 v11, v17

    move-object v12, v0

    move-object v13, v2

    invoke-direct {v11, v12, v13}, Lio/socket/client/Manager$1$1;-><init>(Lio/socket/client/Manager$1;Lio/socket/client/Manager;)V

    invoke-virtual {v8, v9, v10}, Lio/socket/engineio/client/Socket;->on(Ljava/lang/String;Lio/socket/emitter/Emitter$Listener;)Lio/socket/emitter/Emitter;

    move-result-object v8

    .line 271
    move-object v8, v1

    const-string v9, "open"

    new-instance v10, Lio/socket/client/Manager$1$2;

    move-object/from16 v17, v10

    move-object/from16 v10, v17

    move-object/from16 v11, v17

    move-object v12, v0

    move-object v13, v2

    invoke-direct {v11, v12, v13}, Lio/socket/client/Manager$1$2;-><init>(Lio/socket/client/Manager$1;Lio/socket/client/Manager;)V

    invoke-static {v8, v9, v10}, Lio/socket/client/On;->on(Lio/socket/emitter/Emitter;Ljava/lang/String;Lio/socket/emitter/Emitter$Listener;)Lio/socket/client/On$Handle;

    move-result-object v8

    move-object v3, v8

    .line 279
    move-object v8, v1

    const-string v9, "error"

    new-instance v10, Lio/socket/client/Manager$1$3;

    move-object/from16 v17, v10

    move-object/from16 v10, v17

    move-object/from16 v11, v17

    move-object v12, v0

    move-object v13, v2

    invoke-direct {v11, v12, v13}, Lio/socket/client/Manager$1$3;-><init>(Lio/socket/client/Manager$1;Lio/socket/client/Manager;)V

    invoke-static {v8, v9, v10}, Lio/socket/client/On;->on(Lio/socket/emitter/Emitter;Ljava/lang/String;Lio/socket/emitter/Emitter$Listener;)Lio/socket/client/On$Handle;

    move-result-object v8

    move-object v4, v8

    .line 298
    move-object v8, v0

    iget-object v8, v8, Lio/socket/client/Manager$1;->this$0:Lio/socket/client/Manager;

    invoke-static {v8}, Lio/socket/client/Manager;->access$800(Lio/socket/client/Manager;)J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-ltz v8, :cond_2

    .line 299
    move-object v8, v0

    iget-object v8, v8, Lio/socket/client/Manager$1;->this$0:Lio/socket/client/Manager;

    invoke-static {v8}, Lio/socket/client/Manager;->access$800(Lio/socket/client/Manager;)J

    move-result-wide v8

    move-wide v5, v8

    .line 300
    invoke-static {}, Lio/socket/client/Manager;->access$000()Ljava/util/logging/Logger;

    move-result-object v8

    const-string v9, "connection attempt will timeout after %d"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    move-object/from16 v17, v10

    move-object/from16 v10, v17

    move-object/from16 v11, v17

    const/4 v12, 0x0

    move-wide v13, v5

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 302
    new-instance v8, Ljava/util/Timer;

    move-object/from16 v17, v8

    move-object/from16 v8, v17

    move-object/from16 v9, v17

    invoke-direct {v9}, Ljava/util/Timer;-><init>()V

    move-object v7, v8

    .line 303
    move-object v8, v7

    new-instance v9, Lio/socket/client/Manager$1$4;

    move-object/from16 v17, v9

    move-object/from16 v9, v17

    move-object/from16 v10, v17

    move-object v11, v0

    move-wide v12, v5

    move-object v14, v3

    move-object v15, v1

    move-object/from16 v16, v2

    invoke-direct/range {v10 .. v16}, Lio/socket/client/Manager$1$4;-><init>(Lio/socket/client/Manager$1;JLio/socket/client/On$Handle;Lio/socket/engineio/client/Socket;Lio/socket/client/Manager;)V

    move-wide v10, v5

    invoke-virtual {v8, v9, v10, v11}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 319
    move-object v8, v0

    iget-object v8, v8, Lio/socket/client/Manager$1;->this$0:Lio/socket/client/Manager;

    invoke-static {v8}, Lio/socket/client/Manager;->access$900(Lio/socket/client/Manager;)Ljava/util/Queue;

    move-result-object v8

    new-instance v9, Lio/socket/client/Manager$1$5;

    move-object/from16 v17, v9

    move-object/from16 v9, v17

    move-object/from16 v10, v17

    move-object v11, v0

    move-object v12, v7

    invoke-direct {v10, v11, v12}, Lio/socket/client/Manager$1$5;-><init>(Lio/socket/client/Manager$1;Ljava/util/Timer;)V

    invoke-interface {v8, v9}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    move-result v8

    .line 327
    :cond_2
    move-object v8, v0

    iget-object v8, v8, Lio/socket/client/Manager$1;->this$0:Lio/socket/client/Manager;

    invoke-static {v8}, Lio/socket/client/Manager;->access$900(Lio/socket/client/Manager;)Ljava/util/Queue;

    move-result-object v8

    move-object v9, v3

    invoke-interface {v8, v9}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    move-result v8

    .line 328
    move-object v8, v0

    iget-object v8, v8, Lio/socket/client/Manager$1;->this$0:Lio/socket/client/Manager;

    invoke-static {v8}, Lio/socket/client/Manager;->access$900(Lio/socket/client/Manager;)Ljava/util/Queue;

    move-result-object v8

    move-object v9, v4

    invoke-interface {v8, v9}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    move-result v8

    .line 330
    move-object v8, v0

    iget-object v8, v8, Lio/socket/client/Manager$1;->this$0:Lio/socket/client/Manager;

    iget-object v8, v8, Lio/socket/client/Manager;->engine:Lio/socket/engineio/client/Socket;

    invoke-virtual {v8}, Lio/socket/engineio/client/Socket;->open()Lio/socket/engineio/client/Socket;

    move-result-object v8

    .line 331
    goto/16 :goto_0
.end method
