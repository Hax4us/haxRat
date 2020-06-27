.class public abstract Lio/socket/engineio/client/transports/Polling;
.super Lio/socket/engineio/client/Transport;
.source "Polling.java"


# static fields
.field public static final EVENT_POLL:Ljava/lang/String; = "poll"

.field public static final EVENT_POLL_COMPLETE:Ljava/lang/String; = "pollComplete"

.field public static final NAME:Ljava/lang/String; = "polling"

.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private polling:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lio/socket/engineio/client/transports/Polling;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lio/socket/engineio/client/transports/Polling;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lio/socket/engineio/client/Transport$Options;)V
    .locals 4

    .prologue
    .line 30
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lio/socket/engineio/client/Transport;-><init>(Lio/socket/engineio/client/Transport$Options;)V

    .line 31
    move-object v2, v0

    const-string v3, "polling"

    iput-object v3, v2, Lio/socket/engineio/client/transports/Polling;->name:Ljava/lang/String;

    .line 32
    return-void
.end method

.method private _onData(Ljava/lang/Object;)V
    .locals 12

    .prologue
    .line 110
    move-object v0, p0

    move-object v1, p1

    move-object v5, v0

    move-object v2, v5

    .line 111
    sget-object v5, Lio/socket/engineio/client/transports/Polling;->logger:Ljava/util/logging/Logger;

    const-string v6, "polling got data %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x0

    move-object v10, v1

    aput-object v10, v8, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 112
    new-instance v5, Lio/socket/engineio/client/transports/Polling$2;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    move-object v7, v0

    move-object v8, v2

    invoke-direct {v6, v7, v8}, Lio/socket/engineio/client/transports/Polling$2;-><init>(Lio/socket/engineio/client/transports/Polling;Lio/socket/engineio/client/transports/Polling;)V

    move-object v3, v5

    .line 129
    move-object v5, v1

    instance-of v5, v5, Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 131
    move-object v5, v3

    move-object v4, v5

    .line 132
    move-object v5, v1

    check-cast v5, Ljava/lang/String;

    move-object v6, v4

    invoke-static {v5, v6}, Lio/socket/engineio/parser/Parser;->decodePayload(Ljava/lang/String;Lio/socket/engineio/parser/Parser$DecodePayloadCallback;)V

    .line 137
    :cond_0
    :goto_0
    move-object v5, v0

    iget-object v5, v5, Lio/socket/engineio/client/transports/Polling;->readyState:Lio/socket/engineio/client/Transport$ReadyState;

    sget-object v6, Lio/socket/engineio/client/Transport$ReadyState;->CLOSED:Lio/socket/engineio/client/Transport$ReadyState;

    if-eq v5, v6, :cond_1

    .line 138
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Lio/socket/engineio/client/transports/Polling;->polling:Z

    .line 139
    move-object v5, v0

    const-string v6, "pollComplete"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v5, v6, v7}, Lio/socket/engineio/client/transports/Polling;->emit(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/emitter/Emitter;

    move-result-object v5

    .line 141
    move-object v5, v0

    iget-object v5, v5, Lio/socket/engineio/client/transports/Polling;->readyState:Lio/socket/engineio/client/Transport$ReadyState;

    sget-object v6, Lio/socket/engineio/client/Transport$ReadyState;->OPEN:Lio/socket/engineio/client/Transport$ReadyState;

    if-ne v5, v6, :cond_3

    .line 142
    move-object v5, v0

    invoke-direct {v5}, Lio/socket/engineio/client/transports/Polling;->poll()V

    .line 147
    :cond_1
    :goto_1
    return-void

    .line 133
    :cond_2
    move-object v5, v1

    instance-of v5, v5, [B

    if-eqz v5, :cond_0

    .line 134
    move-object v5, v1

    check-cast v5, [B

    check-cast v5, [B

    move-object v6, v3

    invoke-static {v5, v6}, Lio/socket/engineio/parser/Parser;->decodePayload([BLio/socket/engineio/parser/Parser$DecodePayloadCallback;)V

    goto :goto_0

    .line 144
    :cond_3
    sget-object v5, Lio/socket/engineio/client/transports/Polling;->logger:Ljava/util/logging/Logger;

    const-string v6, "ignoring poll - transport state \'%s\'"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x0

    move-object v10, v0

    iget-object v10, v10, Lio/socket/engineio/client/transports/Polling;->readyState:Lio/socket/engineio/client/Transport$ReadyState;

    aput-object v10, v8, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    goto :goto_1
.end method

.method static synthetic access$002(Lio/socket/engineio/client/transports/Polling;Lio/socket/engineio/client/Transport$ReadyState;)Lio/socket/engineio/client/Transport$ReadyState;
    .locals 7

    .prologue
    .line 17
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    move-object v5, v2

    move-object v6, v3

    move-object v2, v6

    move-object v3, v5

    move-object v4, v6

    iput-object v4, v3, Lio/socket/engineio/client/transports/Polling;->readyState:Lio/socket/engineio/client/Transport$ReadyState;

    move-object v0, v2

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/logging/Logger;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lio/socket/engineio/client/transports/Polling;->logger:Ljava/util/logging/Logger;

    return-object v0
.end method

.method static synthetic access$202(Lio/socket/engineio/client/transports/Polling;Lio/socket/engineio/client/Transport$ReadyState;)Lio/socket/engineio/client/Transport$ReadyState;
    .locals 7

    .prologue
    .line 17
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    move-object v5, v2

    move-object v6, v3

    move-object v2, v6

    move-object v3, v5

    move-object v4, v6

    iput-object v4, v3, Lio/socket/engineio/client/transports/Polling;->readyState:Lio/socket/engineio/client/Transport$ReadyState;

    move-object v0, v2

    return-object v0
.end method

.method static synthetic access$300(Lio/socket/engineio/client/transports/Polling;)Z
    .locals 2

    .prologue
    .line 17
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lio/socket/engineio/client/transports/Polling;->polling:Z

    move v0, v1

    return v0
.end method

.method static synthetic access$400(Lio/socket/engineio/client/transports/Polling;)Lio/socket/engineio/client/Transport$ReadyState;
    .locals 2

    .prologue
    .line 17
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lio/socket/engineio/client/transports/Polling;->readyState:Lio/socket/engineio/client/Transport$ReadyState;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$500(Lio/socket/engineio/client/transports/Polling;)V
    .locals 2

    .prologue
    .line 17
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lio/socket/engineio/client/transports/Polling;->onOpen()V

    return-void
.end method

.method static synthetic access$600(Lio/socket/engineio/client/transports/Polling;)V
    .locals 2

    .prologue
    .line 17
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lio/socket/engineio/client/transports/Polling;->onClose()V

    return-void
.end method

.method static synthetic access$700(Lio/socket/engineio/client/transports/Polling;Lio/socket/engineio/parser/Packet;)V
    .locals 4

    .prologue
    .line 17
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lio/socket/engineio/client/transports/Polling;->onPacket(Lio/socket/engineio/parser/Packet;)V

    return-void
.end method

.method private poll()V
    .locals 4

    .prologue
    .line 93
    move-object v0, p0

    sget-object v1, Lio/socket/engineio/client/transports/Polling;->logger:Ljava/util/logging/Logger;

    const-string v2, "polling"

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 94
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lio/socket/engineio/client/transports/Polling;->polling:Z

    .line 95
    move-object v1, v0

    invoke-virtual {v1}, Lio/socket/engineio/client/transports/Polling;->doPoll()V

    .line 96
    move-object v1, v0

    const-string v2, "poll"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lio/socket/engineio/client/transports/Polling;->emit(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/emitter/Emitter;

    move-result-object v1

    .line 97
    return-void
.end method


# virtual methods
.method protected doClose()V
    .locals 8

    .prologue
    .line 150
    move-object v0, p0

    move-object v3, v0

    move-object v1, v3

    .line 152
    new-instance v3, Lio/socket/engineio/client/transports/Polling$3;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Lio/socket/engineio/client/transports/Polling$3;-><init>(Lio/socket/engineio/client/transports/Polling;Lio/socket/engineio/client/transports/Polling;)V

    move-object v2, v3

    .line 164
    move-object v3, v0

    iget-object v3, v3, Lio/socket/engineio/client/transports/Polling;->readyState:Lio/socket/engineio/client/Transport$ReadyState;

    sget-object v4, Lio/socket/engineio/client/Transport$ReadyState;->OPEN:Lio/socket/engineio/client/Transport$ReadyState;

    if-ne v3, v4, :cond_0

    .line 165
    sget-object v3, Lio/socket/engineio/client/transports/Polling;->logger:Ljava/util/logging/Logger;

    const-string v4, "transport open - closing"

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 166
    move-object v3, v2

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v3, v4}, Lio/socket/emitter/Emitter$Listener;->call([Ljava/lang/Object;)V

    .line 173
    :goto_0
    return-void

    .line 170
    :cond_0
    sget-object v3, Lio/socket/engineio/client/transports/Polling;->logger:Ljava/util/logging/Logger;

    const-string v4, "transport not open - deferring close"

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 171
    move-object v3, v0

    const-string v4, "open"

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lio/socket/engineio/client/transports/Polling;->once(Ljava/lang/String;Lio/socket/emitter/Emitter$Listener;)Lio/socket/emitter/Emitter;

    move-result-object v3

    goto :goto_0
.end method

.method protected doOpen()V
    .locals 2

    .prologue
    .line 35
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lio/socket/engineio/client/transports/Polling;->poll()V

    .line 36
    return-void
.end method

.method protected abstract doPoll()V
.end method

.method protected abstract doWrite([BLjava/lang/Runnable;)V
.end method

.method protected onData(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 101
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lio/socket/engineio/client/transports/Polling;->_onData(Ljava/lang/Object;)V

    .line 102
    return-void
.end method

.method protected onData([B)V
    .locals 4

    .prologue
    .line 106
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lio/socket/engineio/client/transports/Polling;->_onData(Ljava/lang/Object;)V

    .line 107
    return-void
.end method

.method public pause(Ljava/lang/Runnable;)V
    .locals 7

    .prologue
    .line 39
    move-object v0, p0

    move-object v1, p1

    new-instance v2, Lio/socket/engineio/client/transports/Polling$1;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lio/socket/engineio/client/transports/Polling$1;-><init>(Lio/socket/engineio/client/transports/Polling;Ljava/lang/Runnable;)V

    invoke-static {v2}, Lio/socket/thread/EventThread;->exec(Ljava/lang/Runnable;)V

    .line 90
    return-void
.end method

.method protected uri()Ljava/lang/String;
    .locals 10

    .prologue
    .line 195
    move-object v0, p0

    move-object v6, v0

    iget-object v6, v6, Lio/socket/engineio/client/transports/Polling;->query:Ljava/util/Map;

    move-object v1, v6

    .line 196
    move-object v6, v1

    if-nez v6, :cond_0

    .line 197
    new-instance v6, Ljava/util/HashMap;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    move-object v1, v6

    .line 199
    :cond_0
    move-object v6, v0

    iget-boolean v6, v6, Lio/socket/engineio/client/transports/Polling;->secure:Z

    if-eqz v6, :cond_6

    const-string v6, "https"

    :goto_0
    move-object v2, v6

    .line 200
    const-string v6, ""

    move-object v3, v6

    .line 202
    move-object v6, v0

    iget-boolean v6, v6, Lio/socket/engineio/client/transports/Polling;->timestampRequests:Z

    if-eqz v6, :cond_1

    .line 203
    move-object v6, v1

    move-object v7, v0

    iget-object v7, v7, Lio/socket/engineio/client/transports/Polling;->timestampParam:Ljava/lang/String;

    invoke-static {}, Lio/socket/yeast/Yeast;->yeast()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 206
    :cond_1
    move-object v6, v1

    invoke-static {v6}, Lio/socket/parseqs/ParseQS;->encode(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    .line 208
    move-object v6, v0

    iget v6, v6, Lio/socket/engineio/client/transports/Polling;->port:I

    if-lez v6, :cond_4

    const-string v6, "https"

    move-object v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move-object v6, v0

    iget v6, v6, Lio/socket/engineio/client/transports/Polling;->port:I

    const/16 v7, 0x1bb

    if-ne v6, v7, :cond_3

    :cond_2
    const-string v6, "http"

    move-object v7, v2

    .line 209
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    move-object v6, v0

    iget v6, v6, Lio/socket/engineio/client/transports/Polling;->port:I

    const/16 v7, 0x50

    if-eq v6, v7, :cond_4

    .line 210
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v0

    iget v7, v7, Lio/socket/engineio/client/transports/Polling;->port:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v3, v6

    .line 213
    :cond_4
    move-object v6, v4

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_5

    .line 214
    new-instance v6, Ljava/lang/StringBuilder;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "?"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    .line 217
    :cond_5
    move-object v6, v0

    iget-object v6, v6, Lio/socket/engineio/client/transports/Polling;->hostname:Ljava/lang/String;

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    move v5, v6

    .line 218
    new-instance v6, Ljava/lang/StringBuilder;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "://"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move v7, v5

    if-eqz v7, :cond_7

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v0

    iget-object v8, v8, Lio/socket/engineio/client/transports/Polling;->hostname:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_1
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v0

    iget-object v7, v7, Lio/socket/engineio/client/transports/Polling;->path:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    return-object v0

    .line 199
    :cond_6
    const-string v6, "http"

    goto/16 :goto_0

    .line 218
    :cond_7
    move-object v7, v0

    iget-object v7, v7, Lio/socket/engineio/client/transports/Polling;->hostname:Ljava/lang/String;

    goto :goto_1
.end method

.method protected write([Lio/socket/engineio/parser/Packet;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/socket/utf8/UTF8Exception;
        }
    .end annotation

    .prologue
    .line 176
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    move-object v2, v4

    .line 177
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Lio/socket/engineio/client/transports/Polling;->writable:Z

    .line 178
    new-instance v4, Lio/socket/engineio/client/transports/Polling$4;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v0

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Lio/socket/engineio/client/transports/Polling$4;-><init>(Lio/socket/engineio/client/transports/Polling;Lio/socket/engineio/client/transports/Polling;)V

    move-object v3, v4

    .line 186
    move-object v4, v1

    new-instance v5, Lio/socket/engineio/client/transports/Polling$5;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    move-object v8, v2

    move-object v9, v3

    invoke-direct {v6, v7, v8, v9}, Lio/socket/engineio/client/transports/Polling$5;-><init>(Lio/socket/engineio/client/transports/Polling;Lio/socket/engineio/client/transports/Polling;Ljava/lang/Runnable;)V

    invoke-static {v4, v5}, Lio/socket/engineio/parser/Parser;->encodePayload([Lio/socket/engineio/parser/Packet;Lio/socket/engineio/parser/Parser$EncodeCallback;)V

    .line 192
    return-void
.end method
