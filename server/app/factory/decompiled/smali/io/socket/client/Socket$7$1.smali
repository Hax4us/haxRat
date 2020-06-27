.class Lio/socket/client/Socket$7$1;
.super Ljava/lang/Object;
.source "Socket.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/socket/client/Socket$7;->call([Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/socket/client/Socket$7;

.field final synthetic val$args:[Ljava/lang/Object;


# direct methods
.method constructor <init>(Lio/socket/client/Socket$7;[Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 352
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lio/socket/client/Socket$7$1;->this$1:Lio/socket/client/Socket$7;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lio/socket/client/Socket$7$1;->val$args:[Ljava/lang/Object;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 355
    move-object v0, p0

    move-object v6, v0

    iget-object v6, v6, Lio/socket/client/Socket$7$1;->this$1:Lio/socket/client/Socket$7;

    iget-object v6, v6, Lio/socket/client/Socket$7;->val$sent:[Z

    const/4 v7, 0x0

    aget-boolean v6, v6, v7

    if-eqz v6, :cond_0

    .line 369
    :goto_0
    return-void

    .line 356
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Lio/socket/client/Socket$7$1;->this$1:Lio/socket/client/Socket$7;

    iget-object v6, v6, Lio/socket/client/Socket$7;->val$sent:[Z

    const/4 v7, 0x0

    const/4 v8, 0x1

    aput-boolean v8, v6, v7

    .line 357
    invoke-static {}, Lio/socket/client/Socket;->access$800()Ljava/util/logging/Logger;

    move-result-object v6

    const-string v7, "sending ack %s"

    move-object v8, v0

    iget-object v8, v8, Lio/socket/client/Socket$7$1;->val$args:[Ljava/lang/Object;

    array-length v8, v8

    if-eqz v8, :cond_1

    move-object v8, v0

    iget-object v8, v8, Lio/socket/client/Socket$7$1;->val$args:[Ljava/lang/Object;

    :goto_1
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 359
    new-instance v6, Lorg/json/JSONArray;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    move-object v1, v6

    .line 360
    move-object v6, v0

    iget-object v6, v6, Lio/socket/client/Socket$7$1;->val$args:[Ljava/lang/Object;

    move-object v2, v6

    move-object v6, v2

    array-length v6, v6

    move v3, v6

    const/4 v6, 0x0

    move v4, v6

    :goto_2
    move v6, v4

    move v7, v3

    if-ge v6, v7, :cond_2

    move-object v6, v2

    move v7, v4

    aget-object v6, v6, v7

    move-object v5, v6

    .line 361
    move-object v6, v1

    move-object v7, v5

    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v6

    .line 360
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 357
    :cond_1
    const/4 v8, 0x0

    goto :goto_1

    .line 364
    :cond_2
    move-object v6, v1

    invoke-static {v6}, Lio/socket/hasbinary/HasBinary;->hasBinary(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v6, 0x6

    :goto_3
    move v2, v6

    .line 366
    new-instance v6, Lio/socket/parser/Packet;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move v8, v2

    move-object v9, v1

    invoke-direct {v7, v8, v9}, Lio/socket/parser/Packet;-><init>(ILjava/lang/Object;)V

    move-object v3, v6

    .line 367
    move-object v6, v3

    move-object v7, v0

    iget-object v7, v7, Lio/socket/client/Socket$7$1;->this$1:Lio/socket/client/Socket$7;

    iget v7, v7, Lio/socket/client/Socket$7;->val$id:I

    iput v7, v6, Lio/socket/parser/Packet;->id:I

    .line 368
    move-object v6, v0

    iget-object v6, v6, Lio/socket/client/Socket$7$1;->this$1:Lio/socket/client/Socket$7;

    iget-object v6, v6, Lio/socket/client/Socket$7;->val$self:Lio/socket/client/Socket;

    move-object v7, v3

    invoke-static {v6, v7}, Lio/socket/client/Socket;->access$1100(Lio/socket/client/Socket;Lio/socket/parser/Packet;)V

    .line 369
    goto :goto_0

    .line 364
    :cond_3
    const/4 v6, 0x3

    goto :goto_3
.end method
