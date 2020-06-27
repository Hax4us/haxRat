.class Lio/socket/client/Socket$5;
.super Ljava/lang/Object;
.source "Socket.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/socket/client/Socket;->emit(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/emitter/Emitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/socket/client/Socket;

.field final synthetic val$args:[Ljava/lang/Object;

.field final synthetic val$event:Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/socket/client/Socket;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 173
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lio/socket/client/Socket$5;->this$0:Lio/socket/client/Socket;

    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lio/socket/client/Socket$5;->val$event:Ljava/lang/String;

    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lio/socket/client/Socket$5;->val$args:[Ljava/lang/Object;

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    .line 176
    move-object v0, p0

    sget-object v5, Lio/socket/client/Socket;->events:Ljava/util/Map;

    move-object v6, v0

    iget-object v6, v6, Lio/socket/client/Socket$5;->val$event:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 177
    move-object v5, v0

    iget-object v5, v5, Lio/socket/client/Socket$5;->this$0:Lio/socket/client/Socket;

    move-object v6, v0

    iget-object v6, v6, Lio/socket/client/Socket$5;->val$event:Ljava/lang/String;

    move-object v7, v0

    iget-object v7, v7, Lio/socket/client/Socket$5;->val$args:[Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lio/socket/client/Socket;->access$601(Lio/socket/client/Socket;Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/emitter/Emitter;

    move-result-object v5

    .line 205
    :goto_0
    return-void

    .line 181
    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    move-object v7, v0

    iget-object v7, v7, Lio/socket/client/Socket$5;->val$args:[Ljava/lang/Object;

    array-length v7, v7

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    move-object v1, v5

    .line 182
    move-object v5, v1

    move-object v6, v0

    iget-object v6, v6, Lio/socket/client/Socket$5;->val$event:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 183
    move-object v5, v1

    move-object v6, v0

    iget-object v6, v6, Lio/socket/client/Socket$5;->val$args:[Ljava/lang/Object;

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v5

    .line 185
    new-instance v5, Lorg/json/JSONArray;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    move-object v2, v5

    .line 186
    move-object v5, v1

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v3, v5

    :goto_1
    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v4, v5

    .line 187
    move-object v5, v2

    move-object v6, v4

    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v5

    .line 188
    goto :goto_1

    .line 189
    :cond_1
    move-object v5, v2

    invoke-static {v5}, Lio/socket/hasbinary/HasBinary;->hasBinary(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v5, 0x5

    :goto_2
    move v3, v5

    .line 190
    new-instance v5, Lio/socket/parser/Packet;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    move v7, v3

    move-object v8, v2

    invoke-direct {v6, v7, v8}, Lio/socket/parser/Packet;-><init>(ILjava/lang/Object;)V

    move-object v4, v5

    .line 192
    move-object v5, v1

    move-object v6, v1

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lio/socket/client/Ack;

    if-eqz v5, :cond_2

    .line 193
    invoke-static {}, Lio/socket/client/Socket;->access$800()Ljava/util/logging/Logger;

    move-result-object v5

    const-string v6, "emitting packet with ack id %d"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x0

    move-object v10, v0

    iget-object v10, v10, Lio/socket/client/Socket$5;->this$0:Lio/socket/client/Socket;

    invoke-static {v10}, Lio/socket/client/Socket;->access$700(Lio/socket/client/Socket;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 194
    move-object v5, v0

    iget-object v5, v5, Lio/socket/client/Socket$5;->this$0:Lio/socket/client/Socket;

    invoke-static {v5}, Lio/socket/client/Socket;->access$900(Lio/socket/client/Socket;)Ljava/util/Map;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Lio/socket/client/Socket$5;->this$0:Lio/socket/client/Socket;

    invoke-static {v6}, Lio/socket/client/Socket;->access$700(Lio/socket/client/Socket;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v7, v1

    move-object v8, v1

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    invoke-interface {v7, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lio/socket/client/Ack;

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 195
    move-object v5, v2

    move-object v6, v2

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v6

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    invoke-static {v5, v6}, Lio/socket/client/Socket;->access$1000(Lorg/json/JSONArray;I)Lorg/json/JSONArray;

    move-result-object v5

    move-object v2, v5

    .line 196
    move-object v5, v4

    move-object v6, v2

    iput-object v6, v5, Lio/socket/parser/Packet;->data:Ljava/lang/Object;

    .line 197
    move-object v5, v4

    move-object v6, v0

    iget-object v6, v6, Lio/socket/client/Socket$5;->this$0:Lio/socket/client/Socket;

    invoke-static {v6}, Lio/socket/client/Socket;->access$708(Lio/socket/client/Socket;)I

    move-result v6

    iput v6, v5, Lio/socket/parser/Packet;->id:I

    .line 200
    :cond_2
    move-object v5, v0

    iget-object v5, v5, Lio/socket/client/Socket$5;->this$0:Lio/socket/client/Socket;

    invoke-static {v5}, Lio/socket/client/Socket;->access$300(Lio/socket/client/Socket;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 201
    move-object v5, v0

    iget-object v5, v5, Lio/socket/client/Socket$5;->this$0:Lio/socket/client/Socket;

    move-object v6, v4

    invoke-static {v5, v6}, Lio/socket/client/Socket;->access$1100(Lio/socket/client/Socket;Lio/socket/parser/Packet;)V

    .line 205
    :goto_3
    goto/16 :goto_0

    .line 189
    :cond_3
    const/4 v5, 0x2

    goto/16 :goto_2

    .line 203
    :cond_4
    move-object v5, v0

    iget-object v5, v5, Lio/socket/client/Socket$5;->this$0:Lio/socket/client/Socket;

    invoke-static {v5}, Lio/socket/client/Socket;->access$1200(Lio/socket/client/Socket;)Ljava/util/Queue;

    move-result-object v5

    move-object v6, v4

    invoke-interface {v5, v6}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    move-result v5

    goto :goto_3
.end method
