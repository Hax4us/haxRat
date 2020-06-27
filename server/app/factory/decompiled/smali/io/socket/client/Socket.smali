.class public Lio/socket/client/Socket;
.super Lio/socket/emitter/Emitter;
.source "Socket.java"


# static fields
.field public static final EVENT_CONNECT:Ljava/lang/String; = "connect"

.field public static final EVENT_CONNECTING:Ljava/lang/String; = "connecting"

.field public static final EVENT_CONNECT_ERROR:Ljava/lang/String; = "connect_error"

.field public static final EVENT_CONNECT_TIMEOUT:Ljava/lang/String; = "connect_timeout"

.field public static final EVENT_DISCONNECT:Ljava/lang/String; = "disconnect"

.field public static final EVENT_ERROR:Ljava/lang/String; = "error"

.field public static final EVENT_MESSAGE:Ljava/lang/String; = "message"

.field public static final EVENT_PING:Ljava/lang/String; = "ping"

.field public static final EVENT_PONG:Ljava/lang/String; = "pong"

.field public static final EVENT_RECONNECT:Ljava/lang/String; = "reconnect"

.field public static final EVENT_RECONNECTING:Ljava/lang/String; = "reconnecting"

.field public static final EVENT_RECONNECT_ATTEMPT:Ljava/lang/String; = "reconnect_attempt"

.field public static final EVENT_RECONNECT_ERROR:Ljava/lang/String; = "reconnect_error"

.field public static final EVENT_RECONNECT_FAILED:Ljava/lang/String; = "reconnect_failed"

.field protected static events:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private acks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lio/socket/client/Ack;",
            ">;"
        }
    .end annotation
.end field

.field private volatile connected:Z

.field id:Ljava/lang/String;

.field private ids:I

.field private io:Lio/socket/client/Manager;

.field private nsp:Ljava/lang/String;

.field private final receiveBuffer:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private final sendBuffer:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lio/socket/parser/Packet",
            "<",
            "Lorg/json/JSONArray;",
            ">;>;"
        }
    .end annotation
.end field

.field private subs:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lio/socket/client/On$Handle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 21
    const-class v0, Lio/socket/client/Socket;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lio/socket/client/Socket;->logger:Ljava/util/logging/Logger;

    .line 65
    new-instance v0, Lio/socket/client/Socket$1;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lio/socket/client/Socket$1;-><init>()V

    sput-object v0, Lio/socket/client/Socket;->events:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lio/socket/client/Manager;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 92
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    invoke-direct {v3}, Lio/socket/emitter/Emitter;-><init>()V

    .line 87
    move-object v3, v0

    new-instance v4, Ljava/util/HashMap;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v4, v3, Lio/socket/client/Socket;->acks:Ljava/util/Map;

    .line 89
    move-object v3, v0

    new-instance v4, Ljava/util/LinkedList;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    iput-object v4, v3, Lio/socket/client/Socket;->receiveBuffer:Ljava/util/Queue;

    .line 90
    move-object v3, v0

    new-instance v4, Ljava/util/LinkedList;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    iput-object v4, v3, Lio/socket/client/Socket;->sendBuffer:Ljava/util/Queue;

    .line 93
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lio/socket/client/Socket;->io:Lio/socket/client/Manager;

    .line 94
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lio/socket/client/Socket;->nsp:Ljava/lang/String;

    .line 95
    return-void
.end method

.method static synthetic access$000(Lio/socket/client/Socket;)V
    .locals 2

    .prologue
    .line 19
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lio/socket/client/Socket;->onopen()V

    return-void
.end method

.method static synthetic access$100(Lio/socket/client/Socket;Lio/socket/parser/Packet;)V
    .locals 4

    .prologue
    .line 19
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lio/socket/client/Socket;->onpacket(Lio/socket/parser/Packet;)V

    return-void
.end method

.method static synthetic access$1000(Lorg/json/JSONArray;I)Lorg/json/JSONArray;
    .locals 4

    .prologue
    .line 19
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-static {v2, v3}, Lio/socket/client/Socket;->remove(Lorg/json/JSONArray;I)Lorg/json/JSONArray;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method static synthetic access$1100(Lio/socket/client/Socket;Lio/socket/parser/Packet;)V
    .locals 4

    .prologue
    .line 19
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lio/socket/client/Socket;->packet(Lio/socket/parser/Packet;)V

    return-void
.end method

.method static synthetic access$1200(Lio/socket/client/Socket;)Ljava/util/Queue;
    .locals 2

    .prologue
    .line 19
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lio/socket/client/Socket;->sendBuffer:Ljava/util/Queue;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$1300(Lio/socket/client/Socket;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 19
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lio/socket/client/Socket;->nsp:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$1400(Lio/socket/client/Socket;)V
    .locals 2

    .prologue
    .line 19
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lio/socket/client/Socket;->destroy()V

    return-void
.end method

.method static synthetic access$200(Lio/socket/client/Socket;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 19
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lio/socket/client/Socket;->onclose(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lio/socket/client/Socket;)Z
    .locals 2

    .prologue
    .line 19
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lio/socket/client/Socket;->connected:Z

    move v0, v1

    return v0
.end method

.method static synthetic access$400(Lio/socket/client/Socket;)V
    .locals 2

    .prologue
    .line 19
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lio/socket/client/Socket;->subEvents()V

    return-void
.end method

.method static synthetic access$500(Lio/socket/client/Socket;)Lio/socket/client/Manager;
    .locals 2

    .prologue
    .line 19
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lio/socket/client/Socket;->io:Lio/socket/client/Manager;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$601(Lio/socket/client/Socket;Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/emitter/Emitter;
    .locals 6

    .prologue
    .line 19
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Lio/socket/emitter/Emitter;->emit(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/emitter/Emitter;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method static synthetic access$700(Lio/socket/client/Socket;)I
    .locals 2

    .prologue
    .line 19
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lio/socket/client/Socket;->ids:I

    move v0, v1

    return v0
.end method

.method static synthetic access$708(Lio/socket/client/Socket;)I
    .locals 7

    .prologue
    .line 19
    move-object v0, p0

    move-object v1, v0

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    iget v2, v2, Lio/socket/client/Socket;->ids:I

    move-object v5, v1

    move v6, v2

    move v1, v6

    move-object v2, v5

    move v3, v6

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lio/socket/client/Socket;->ids:I

    move v0, v1

    return v0
.end method

.method static synthetic access$800()Ljava/util/logging/Logger;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lio/socket/client/Socket;->logger:Ljava/util/logging/Logger;

    return-object v0
.end method

.method static synthetic access$900(Lio/socket/client/Socket;)Ljava/util/Map;
    .locals 2

    .prologue
    .line 19
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lio/socket/client/Socket;->acks:Ljava/util/Map;

    move-object v0, v1

    return-object v0
.end method

.method private ack(I)Lio/socket/client/Ack;
    .locals 11

    .prologue
    .line 347
    move-object v0, p0

    move v1, p1

    move-object v4, v0

    move-object v2, v4

    .line 348
    const/4 v4, 0x1

    new-array v4, v4, [Z

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    const/4 v6, 0x0

    const/4 v7, 0x0

    aput-boolean v7, v5, v6

    move-object v3, v4

    .line 349
    new-instance v4, Lio/socket/client/Socket$7;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v0

    move-object v7, v3

    move v8, v1

    move-object v9, v2

    invoke-direct {v5, v6, v7, v8, v9}, Lio/socket/client/Socket$7;-><init>(Lio/socket/client/Socket;[ZILio/socket/client/Socket;)V

    move-object v0, v4

    return-object v0
.end method

.method private destroy()V
    .locals 5

    .prologue
    .line 413
    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lio/socket/client/Socket;->subs:Ljava/util/Queue;

    if-eqz v3, :cond_1

    .line 415
    move-object v3, v0

    iget-object v3, v3, Lio/socket/client/Socket;->subs:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v3

    :goto_0
    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/socket/client/On$Handle;

    move-object v2, v3

    .line 416
    move-object v3, v2

    invoke-interface {v3}, Lio/socket/client/On$Handle;->destroy()V

    .line 417
    goto :goto_0

    .line 418
    :cond_0
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lio/socket/client/Socket;->subs:Ljava/util/Queue;

    .line 421
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lio/socket/client/Socket;->io:Lio/socket/client/Manager;

    move-object v4, v0

    invoke-virtual {v3, v4}, Lio/socket/client/Manager;->destroy(Lio/socket/client/Socket;)V

    .line 422
    return-void
.end method

.method private emitBuffered()V
    .locals 7

    .prologue
    .line 393
    move-object v0, p0

    :goto_0
    move-object v3, v0

    iget-object v3, v3, Lio/socket/client/Socket;->receiveBuffer:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v1, v4

    if-eqz v3, :cond_0

    .line 394
    move-object v3, v1

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object v2, v3

    .line 395
    move-object v3, v0

    move-object v4, v2

    move-object v5, v1

    invoke-interface {v5}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v5

    invoke-super {v3, v4, v5}, Lio/socket/emitter/Emitter;->emit(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/emitter/Emitter;

    move-result-object v3

    .line 396
    goto :goto_0

    .line 397
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lio/socket/client/Socket;->receiveBuffer:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->clear()V

    .line 400
    :goto_1
    move-object v3, v0

    iget-object v3, v3, Lio/socket/client/Socket;->sendBuffer:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/socket/parser/Packet;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v2, v4

    if-eqz v3, :cond_1

    .line 401
    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Lio/socket/client/Socket;->packet(Lio/socket/parser/Packet;)V

    goto :goto_1

    .line 403
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lio/socket/client/Socket;->sendBuffer:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->clear()V

    .line 404
    return-void
.end method

.method private onack(Lio/socket/parser/Packet;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/socket/parser/Packet",
            "<",
            "Lorg/json/JSONArray;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 376
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Lio/socket/client/Socket;->acks:Ljava/util/Map;

    move-object v4, v1

    iget v4, v4, Lio/socket/parser/Packet;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/socket/client/Ack;

    move-object v2, v3

    .line 377
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 378
    sget-object v3, Lio/socket/client/Socket;->logger:Ljava/util/logging/Logger;

    const-string v4, "calling ack %s with %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v1

    iget v8, v8, Lio/socket/parser/Packet;->id:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x1

    move-object v8, v1

    iget-object v8, v8, Lio/socket/parser/Packet;->data:Ljava/lang/Object;

    aput-object v8, v6, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 379
    move-object v3, v2

    move-object v4, v1

    iget-object v4, v4, Lio/socket/parser/Packet;->data:Ljava/lang/Object;

    check-cast v4, Lorg/json/JSONArray;

    invoke-static {v4}, Lio/socket/client/Socket;->toArray(Lorg/json/JSONArray;)[Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Lio/socket/client/Ack;->call([Ljava/lang/Object;)V

    .line 383
    :goto_0
    return-void

    .line 381
    :cond_0
    sget-object v3, Lio/socket/client/Socket;->logger:Ljava/util/logging/Logger;

    const-string v4, "bad ack %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v1

    iget v8, v8, Lio/socket/parser/Packet;->id:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onclose(Ljava/lang/String;)V
    .locals 9

    .prologue
    .line 276
    move-object v0, p0

    move-object v1, p1

    sget-object v2, Lio/socket/client/Socket;->logger:Ljava/util/logging/Logger;

    const-string v3, "close (%s)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v1

    aput-object v7, v5, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 277
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lio/socket/client/Socket;->connected:Z

    .line 278
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lio/socket/client/Socket;->id:Ljava/lang/String;

    .line 279
    move-object v2, v0

    const-string v3, "disconnect"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v1

    aput-object v7, v5, v6

    invoke-virtual {v2, v3, v4}, Lio/socket/client/Socket;->emit(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/emitter/Emitter;

    move-result-object v2

    .line 280
    return-void
.end method

.method private onconnect()V
    .locals 4

    .prologue
    .line 386
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lio/socket/client/Socket;->connected:Z

    .line 387
    move-object v1, v0

    const-string v2, "connect"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lio/socket/client/Socket;->emit(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/emitter/Emitter;

    move-result-object v1

    .line 388
    move-object v1, v0

    invoke-direct {v1}, Lio/socket/client/Socket;->emitBuffered()V

    .line 389
    return-void
.end method

.method private ondisconnect()V
    .locals 8

    .prologue
    .line 407
    move-object v0, p0

    sget-object v1, Lio/socket/client/Socket;->logger:Ljava/util/logging/Logger;

    const-string v2, "server disconnect (%s)"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    move-object v6, v0

    iget-object v6, v6, Lio/socket/client/Socket;->nsp:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 408
    move-object v1, v0

    invoke-direct {v1}, Lio/socket/client/Socket;->destroy()V

    .line 409
    move-object v1, v0

    const-string v2, "io server disconnect"

    invoke-direct {v1, v2}, Lio/socket/client/Socket;->onclose(Ljava/lang/String;)V

    .line 410
    return-void
.end method

.method private onevent(Lio/socket/parser/Packet;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/socket/parser/Packet",
            "<",
            "Lorg/json/JSONArray;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 329
    move-object v0, p0

    move-object v1, p1

    new-instance v4, Ljava/util/ArrayList;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v1

    iget-object v6, v6, Lio/socket/parser/Packet;->data:Ljava/lang/Object;

    check-cast v6, Lorg/json/JSONArray;

    invoke-static {v6}, Lio/socket/client/Socket;->toArray(Lorg/json/JSONArray;)[Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v2, v4

    .line 330
    sget-object v4, Lio/socket/client/Socket;->logger:Ljava/util/logging/Logger;

    const-string v5, "emitting event %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    move-object v9, v2

    aput-object v9, v7, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 332
    move-object v4, v1

    iget v4, v4, Lio/socket/parser/Packet;->id:I

    if-ltz v4, :cond_0

    .line 333
    sget-object v4, Lio/socket/client/Socket;->logger:Ljava/util/logging/Logger;

    const-string v5, "attaching ack callback to event"

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 334
    move-object v4, v2

    move-object v5, v0

    move-object v6, v1

    iget v6, v6, Lio/socket/parser/Packet;->id:I

    invoke-direct {v5, v6}, Lio/socket/client/Socket;->ack(I)Lio/socket/client/Ack;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 337
    :cond_0
    move-object v4, v0

    iget-boolean v4, v4, Lio/socket/client/Socket;->connected:Z

    if-eqz v4, :cond_2

    .line 338
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 344
    :goto_0
    return-void

    .line 339
    :cond_1
    move-object v4, v2

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 340
    move-object v4, v0

    move-object v5, v3

    move-object v6, v2

    invoke-interface {v6}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v6

    invoke-super {v4, v5, v6}, Lio/socket/emitter/Emitter;->emit(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/emitter/Emitter;

    move-result-object v4

    .line 344
    :goto_1
    goto :goto_0

    .line 342
    :cond_2
    move-object v4, v0

    iget-object v4, v4, Lio/socket/client/Socket;->receiveBuffer:Ljava/util/Queue;

    move-object v5, v2

    invoke-interface {v4, v5}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    move-result v4

    goto :goto_1
.end method

.method private onopen()V
    .locals 6

    .prologue
    .line 268
    move-object v0, p0

    sget-object v1, Lio/socket/client/Socket;->logger:Ljava/util/logging/Logger;

    const-string v2, "transport is open - connecting"

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 270
    const-string v1, "/"

    move-object v2, v0

    iget-object v2, v2, Lio/socket/client/Socket;->nsp:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 271
    move-object v1, v0

    new-instance v2, Lio/socket/parser/Packet;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lio/socket/parser/Packet;-><init>(I)V

    invoke-direct {v1, v2}, Lio/socket/client/Socket;->packet(Lio/socket/parser/Packet;)V

    .line 273
    :cond_0
    return-void
.end method

.method private onpacket(Lio/socket/parser/Packet;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/socket/parser/Packet",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 283
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Lio/socket/client/Socket;->nsp:Ljava/lang/String;

    move-object v4, v1

    iget-object v4, v4, Lio/socket/parser/Packet;->nsp:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 326
    :goto_0
    return-void

    .line 285
    :cond_0
    move-object v3, v1

    iget v3, v3, Lio/socket/parser/Packet;->type:I

    packed-switch v3, :pswitch_data_0

    .line 326
    :goto_1
    goto :goto_0

    .line 287
    :pswitch_0
    move-object v3, v0

    invoke-direct {v3}, Lio/socket/client/Socket;->onconnect()V

    .line 288
    goto :goto_1

    .line 292
    :pswitch_1
    move-object v3, v1

    move-object v2, v3

    .line 293
    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Lio/socket/client/Socket;->onevent(Lio/socket/parser/Packet;)V

    .line 294
    goto :goto_1

    .line 299
    :pswitch_2
    move-object v3, v1

    move-object v2, v3

    .line 300
    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Lio/socket/client/Socket;->onevent(Lio/socket/parser/Packet;)V

    .line 301
    goto :goto_1

    .line 306
    :pswitch_3
    move-object v3, v1

    move-object v2, v3

    .line 307
    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Lio/socket/client/Socket;->onack(Lio/socket/parser/Packet;)V

    .line 308
    goto :goto_1

    .line 313
    :pswitch_4
    move-object v3, v1

    move-object v2, v3

    .line 314
    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Lio/socket/client/Socket;->onack(Lio/socket/parser/Packet;)V

    .line 315
    goto :goto_1

    .line 319
    :pswitch_5
    move-object v3, v0

    invoke-direct {v3}, Lio/socket/client/Socket;->ondisconnect()V

    .line 320
    goto :goto_1

    .line 323
    :pswitch_6
    move-object v3, v0

    const-string v4, "error"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v1

    iget-object v8, v8, Lio/socket/parser/Packet;->data:Ljava/lang/Object;

    aput-object v8, v6, v7

    invoke-virtual {v3, v4, v5}, Lio/socket/client/Socket;->emit(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/emitter/Emitter;

    move-result-object v3

    goto :goto_1

    .line 285
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_5
        :pswitch_1
        :pswitch_3
        :pswitch_6
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method private packet(Lio/socket/parser/Packet;)V
    .locals 4

    .prologue
    .line 263
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lio/socket/client/Socket;->nsp:Ljava/lang/String;

    iput-object v3, v2, Lio/socket/parser/Packet;->nsp:Ljava/lang/String;

    .line 264
    move-object v2, v0

    iget-object v2, v2, Lio/socket/client/Socket;->io:Lio/socket/client/Manager;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lio/socket/client/Manager;->packet(Lio/socket/parser/Packet;)V

    .line 265
    return-void
.end method

.method private static remove(Lorg/json/JSONArray;I)Lorg/json/JSONArray;
    .locals 9

    .prologue
    .line 211
    move-object v0, p0

    move v1, p1

    new-instance v6, Lorg/json/JSONArray;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    move-object v2, v6

    .line 212
    const/4 v6, 0x0

    move v3, v6

    :goto_0
    move v6, v3

    move-object v7, v0

    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_1

    .line 213
    move v6, v3

    move v7, v1

    if-eq v6, v7, :cond_0

    .line 216
    move-object v6, v0

    move v7, v3

    :try_start_0
    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    move-object v4, v6

    .line 220
    :goto_1
    move-object v6, v2

    move-object v7, v4

    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v6

    .line 212
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 217
    :catch_0
    move-exception v6

    move-object v5, v6

    .line 218
    const/4 v6, 0x0

    move-object v4, v6

    goto :goto_1

    .line 223
    :cond_1
    move-object v6, v2

    move-object v0, v6

    return-object v0
.end method

.method private subEvents()V
    .locals 8

    .prologue
    .line 98
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lio/socket/client/Socket;->subs:Ljava/util/Queue;

    if-eqz v2, :cond_0

    .line 121
    :goto_0
    return-void

    .line 100
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lio/socket/client/Socket;->io:Lio/socket/client/Manager;

    move-object v1, v2

    .line 101
    move-object v2, v0

    new-instance v3, Lio/socket/client/Socket$2;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Lio/socket/client/Socket$2;-><init>(Lio/socket/client/Socket;Lio/socket/client/Manager;)V

    iput-object v3, v2, Lio/socket/client/Socket;->subs:Ljava/util/Queue;

    .line 121
    goto :goto_0
.end method

.method private static toArray(Lorg/json/JSONArray;)[Ljava/lang/Object;
    .locals 10

    .prologue
    .line 477
    move-object v0, p0

    move-object v6, v0

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v6

    move v1, v6

    .line 478
    move v6, v1

    new-array v6, v6, [Ljava/lang/Object;

    move-object v2, v6

    .line 479
    const/4 v6, 0x0

    move v3, v6

    :goto_0
    move v6, v3

    move v7, v1

    if-ge v6, v7, :cond_1

    .line 482
    move-object v6, v0

    move v7, v3

    :try_start_0
    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    move-object v4, v6

    .line 487
    :goto_1
    move-object v6, v2

    move v7, v3

    sget-object v8, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    move-object v9, v4

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x0

    :goto_2
    aput-object v8, v6, v7

    .line 479
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 483
    :catch_0
    move-exception v6

    move-object v5, v6

    .line 484
    sget-object v6, Lio/socket/client/Socket;->logger:Ljava/util/logging/Logger;

    sget-object v7, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v8, "An error occured while retrieving data from JSONArray"

    move-object v9, v5

    invoke-virtual {v6, v7, v8, v9}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 485
    const/4 v6, 0x0

    move-object v4, v6

    goto :goto_1

    .line 487
    :cond_0
    move-object v8, v4

    goto :goto_2

    .line 489
    :cond_1
    move-object v6, v2

    move-object v0, v6

    return-object v0
.end method


# virtual methods
.method public close()Lio/socket/client/Socket;
    .locals 5

    .prologue
    .line 430
    move-object v0, p0

    new-instance v1, Lio/socket/client/Socket$8;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lio/socket/client/Socket$8;-><init>(Lio/socket/client/Socket;)V

    invoke-static {v1}, Lio/socket/thread/EventThread;->exec(Ljava/lang/Runnable;)V

    .line 445
    move-object v1, v0

    move-object v0, v1

    return-object v0
.end method

.method public connect()Lio/socket/client/Socket;
    .locals 2

    .prologue
    .line 145
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lio/socket/client/Socket;->open()Lio/socket/client/Socket;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public connected()Z
    .locals 2

    .prologue
    .line 462
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lio/socket/client/Socket;->connected:Z

    move v0, v1

    return v0
.end method

.method public disconnect()Lio/socket/client/Socket;
    .locals 2

    .prologue
    .line 454
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lio/socket/client/Socket;->close()Lio/socket/client/Socket;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public varargs emit(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/emitter/Emitter;
    .locals 9

    .prologue
    .line 173
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    new-instance v3, Lio/socket/client/Socket$5;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-direct {v4, v5, v6, v7}, Lio/socket/client/Socket$5;-><init>(Lio/socket/client/Socket;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v3}, Lio/socket/thread/EventThread;->exec(Ljava/lang/Runnable;)V

    .line 207
    move-object v3, v0

    move-object v0, v3

    return-object v0
.end method

.method public emit(Ljava/lang/String;[Ljava/lang/Object;Lio/socket/client/Ack;)Lio/socket/emitter/Emitter;
    .locals 11

    .prologue
    .line 235
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    new-instance v4, Lio/socket/client/Socket$6;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    invoke-direct {v5, v6, v7, v8, v9}, Lio/socket/client/Socket$6;-><init>(Lio/socket/client/Socket;Ljava/lang/String;[Ljava/lang/Object;Lio/socket/client/Ack;)V

    invoke-static {v4}, Lio/socket/thread/EventThread;->exec(Ljava/lang/Runnable;)V

    .line 259
    move-object v4, v0

    move-object v0, v4

    return-object v0
.end method

.method public id()Ljava/lang/String;
    .locals 2

    .prologue
    .line 473
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lio/socket/client/Socket;->id:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public io()Lio/socket/client/Manager;
    .locals 2

    .prologue
    .line 458
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lio/socket/client/Socket;->io:Lio/socket/client/Manager;

    move-object v0, v1

    return-object v0
.end method

.method public open()Lio/socket/client/Socket;
    .locals 5

    .prologue
    .line 127
    move-object v0, p0

    new-instance v1, Lio/socket/client/Socket$3;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lio/socket/client/Socket$3;-><init>(Lio/socket/client/Socket;)V

    invoke-static {v1}, Lio/socket/thread/EventThread;->exec(Ljava/lang/Runnable;)V

    .line 138
    move-object v1, v0

    move-object v0, v1

    return-object v0
.end method

.method public varargs send([Ljava/lang/Object;)Lio/socket/client/Socket;
    .locals 7

    .prologue
    .line 155
    move-object v0, p0

    move-object v1, p1

    new-instance v2, Lio/socket/client/Socket$4;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lio/socket/client/Socket$4;-><init>(Lio/socket/client/Socket;[Ljava/lang/Object;)V

    invoke-static {v2}, Lio/socket/thread/EventThread;->exec(Ljava/lang/Runnable;)V

    .line 161
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method
