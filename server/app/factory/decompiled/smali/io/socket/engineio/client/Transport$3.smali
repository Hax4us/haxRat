.class Lio/socket/engineio/client/Transport$3;
.super Ljava/lang/Object;
.source "Transport.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/socket/engineio/client/Transport;->send([Lio/socket/engineio/parser/Packet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/socket/engineio/client/Transport;

.field final synthetic val$packets:[Lio/socket/engineio/parser/Packet;


# direct methods
.method constructor <init>(Lio/socket/engineio/client/Transport;[Lio/socket/engineio/parser/Packet;)V
    .locals 5

    .prologue
    .line 103
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lio/socket/engineio/client/Transport$3;->this$0:Lio/socket/engineio/client/Transport;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lio/socket/engineio/client/Transport$3;->val$packets:[Lio/socket/engineio/parser/Packet;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 106
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lio/socket/engineio/client/Transport$3;->this$0:Lio/socket/engineio/client/Transport;

    iget-object v2, v2, Lio/socket/engineio/client/Transport;->readyState:Lio/socket/engineio/client/Transport$ReadyState;

    sget-object v3, Lio/socket/engineio/client/Transport$ReadyState;->OPEN:Lio/socket/engineio/client/Transport$ReadyState;

    if-ne v2, v3, :cond_0

    .line 108
    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lio/socket/engineio/client/Transport$3;->this$0:Lio/socket/engineio/client/Transport;

    move-object v3, v0

    iget-object v3, v3, Lio/socket/engineio/client/Transport$3;->val$packets:[Lio/socket/engineio/parser/Packet;

    invoke-virtual {v2, v3}, Lio/socket/engineio/client/Transport;->write([Lio/socket/engineio/parser/Packet;)V
    :try_end_0
    .catch Lio/socket/utf8/UTF8Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    return-void

    .line 109
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 110
    new-instance v2, Ljava/lang/RuntimeException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 113
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Transport not open"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
