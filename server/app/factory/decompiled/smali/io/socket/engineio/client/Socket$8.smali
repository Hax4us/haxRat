.class Lio/socket/engineio/client/Socket$8;
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

.field final synthetic val$transport:[Lio/socket/engineio/client/Transport;


# direct methods
.method constructor <init>(Lio/socket/engineio/client/Socket;[Z[Ljava/lang/Runnable;[Lio/socket/engineio/client/Transport;)V
    .locals 7

    .prologue
    .line 390
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lio/socket/engineio/client/Socket$8;->this$0:Lio/socket/engineio/client/Socket;

    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Lio/socket/engineio/client/Socket$8;->val$failed:[Z

    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Lio/socket/engineio/client/Socket$8;->val$cleanup:[Ljava/lang/Runnable;

    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Lio/socket/engineio/client/Socket$8;->val$transport:[Lio/socket/engineio/client/Transport;

    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs call([Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 393
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lio/socket/engineio/client/Socket$8;->val$failed:[Z

    const/4 v3, 0x0

    aget-boolean v2, v2, v3

    if-eqz v2, :cond_0

    .line 401
    :goto_0
    return-void

    .line 395
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lio/socket/engineio/client/Socket$8;->val$failed:[Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    aput-boolean v4, v2, v3

    .line 397
    move-object v2, v0

    iget-object v2, v2, Lio/socket/engineio/client/Socket$8;->val$cleanup:[Ljava/lang/Runnable;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 399
    move-object v2, v0

    iget-object v2, v2, Lio/socket/engineio/client/Socket$8;->val$transport:[Lio/socket/engineio/client/Transport;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lio/socket/engineio/client/Transport;->close()Lio/socket/engineio/client/Transport;

    move-result-object v2

    .line 400
    move-object v2, v0

    iget-object v2, v2, Lio/socket/engineio/client/Socket$8;->val$transport:[Lio/socket/engineio/client/Transport;

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput-object v4, v2, v3

    .line 401
    goto :goto_0
.end method
