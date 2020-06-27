.class public Lio/socket/engineio/client/Socket;
.super Lio/socket/emitter/Emitter;
.source "Socket.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/socket/engineio/client/Socket$Options;,
        Lio/socket/engineio/client/Socket$ReadyState;
    }
.end annotation


# static fields
.field public static final EVENT_CLOSE:Ljava/lang/String; = "close"

.field public static final EVENT_DATA:Ljava/lang/String; = "data"

.field public static final EVENT_DRAIN:Ljava/lang/String; = "drain"

.field public static final EVENT_ERROR:Ljava/lang/String; = "error"

.field public static final EVENT_FLUSH:Ljava/lang/String; = "flush"

.field public static final EVENT_HANDSHAKE:Ljava/lang/String; = "handshake"

.field public static final EVENT_HEARTBEAT:Ljava/lang/String; = "heartbeat"

.field public static final EVENT_MESSAGE:Ljava/lang/String; = "message"

.field public static final EVENT_OPEN:Ljava/lang/String; = "open"

.field public static final EVENT_PACKET:Ljava/lang/String; = "packet"

.field public static final EVENT_PACKET_CREATE:Ljava/lang/String; = "packetCreate"

.field public static final EVENT_PING:Ljava/lang/String; = "ping"

.field public static final EVENT_PONG:Ljava/lang/String; = "pong"

.field public static final EVENT_TRANSPORT:Ljava/lang/String; = "transport"

.field public static final EVENT_UPGRADE:Ljava/lang/String; = "upgrade"

.field public static final EVENT_UPGRADE_ERROR:Ljava/lang/String; = "upgradeError"

.field public static final EVENT_UPGRADING:Ljava/lang/String; = "upgrading"

.field private static final PROBE_ERROR:Ljava/lang/String; = "probe error"

.field public static final PROTOCOL:I = 0x3

.field private static defaultHostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

.field private static defaultSSLContext:Ljavax/net/ssl/SSLContext;

.field private static final logger:Ljava/util/logging/Logger;

.field private static priorWebsocketSuccess:Z


# instance fields
.field private heartbeatScheduler:Ljava/util/concurrent/ScheduledExecutorService;

.field hostname:Ljava/lang/String;

.field private hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

.field private id:Ljava/lang/String;

.field private final onHeartbeatAsListener:Lio/socket/emitter/Emitter$Listener;

.field private path:Ljava/lang/String;

.field private pingInterval:J

.field private pingIntervalTimer:Ljava/util/concurrent/Future;

.field private pingTimeout:J

.field private pingTimeoutTimer:Ljava/util/concurrent/Future;

.field private policyPort:I

.field port:I

.field private prevBufferLen:I

.field public proxy:Ljava/net/Proxy;

.field public proxyLogin:Ljava/lang/String;

.field public proxyPassword:Ljava/lang/String;

.field private query:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private readyState:Lio/socket/engineio/client/Socket$ReadyState;

.field private rememberUpgrade:Z

.field private secure:Z

.field private sslContext:Ljavax/net/ssl/SSLContext;

.field private timestampParam:Ljava/lang/String;

.field private timestampRequests:Z

.field transport:Lio/socket/engineio/client/Transport;

.field private transports:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private upgrade:Z

.field private upgrades:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private upgrading:Z

.field writeBuffer:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lio/socket/engineio/parser/Packet;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lio/socket/engineio/client/Socket;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lio/socket/engineio/client/Socket;->logger:Ljava/util/logging/Logger;

    .line 99
    const/4 v0, 0x0

    sput-boolean v0, Lio/socket/engineio/client/Socket;->priorWebsocketSuccess:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    .line 141
    move-object v0, p0

    move-object v1, v0

    new-instance v2, Lio/socket/engineio/client/Socket$Options;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lio/socket/engineio/client/Socket$Options;-><init>()V

    invoke-direct {v1, v2}, Lio/socket/engineio/client/Socket;-><init>(Lio/socket/engineio/client/Socket$Options;)V

    .line 142
    return-void
.end method

.method public constructor <init>(Lio/socket/engineio/client/Socket$Options;)V
    .locals 14

    .prologue
    .line 173
    move-object v0, p0

    move-object v1, p1

    move-object v6, v0

    invoke-direct {v6}, Lio/socket/emitter/Emitter;-><init>()V

    .line 121
    move-object v6, v0

    new-instance v7, Ljava/util/LinkedList;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    invoke-direct {v8}, Ljava/util/LinkedList;-><init>()V

    iput-object v7, v6, Lio/socket/engineio/client/Socket;->writeBuffer:Ljava/util/LinkedList;

    .line 133
    move-object v6, v0

    new-instance v7, Lio/socket/engineio/client/Socket$1;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    move-object v9, v0

    invoke-direct {v8, v9}, Lio/socket/engineio/client/Socket$1;-><init>(Lio/socket/engineio/client/Socket;)V

    iput-object v7, v6, Lio/socket/engineio/client/Socket;->onHeartbeatAsListener:Lio/socket/emitter/Emitter$Listener;

    .line 174
    move-object v6, v1

    iget-object v6, v6, Lio/socket/engineio/client/Socket$Options;->host:Ljava/lang/String;

    if-eqz v6, :cond_2

    .line 175
    move-object v6, v1

    iget-object v6, v6, Lio/socket/engineio/client/Socket$Options;->host:Ljava/lang/String;

    move-object v2, v6

    .line 176
    move-object v6, v2

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v6, v6

    const/4 v7, 0x2

    if-le v6, v7, :cond_4

    const/4 v6, 0x1

    :goto_0
    move v3, v6

    .line 177
    move v6, v3

    if-eqz v6, :cond_1

    .line 178
    move-object v6, v2

    const/16 v7, 0x5b

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    move v4, v6

    .line 179
    move v6, v4

    const/4 v7, -0x1

    if-eq v6, v7, :cond_0

    move-object v6, v2

    move v7, v4

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    move-object v2, v6

    .line 180
    :cond_0
    move-object v6, v2

    const/16 v7, 0x5d

    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    move v5, v6

    .line 181
    move v6, v5

    const/4 v7, -0x1

    if-eq v6, v7, :cond_1

    move-object v6, v2

    const/4 v7, 0x0

    move v8, v5

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    move-object v2, v6

    .line 183
    :cond_1
    move-object v6, v1

    move-object v7, v2

    iput-object v7, v6, Lio/socket/engineio/client/Socket$Options;->hostname:Ljava/lang/String;

    .line 186
    :cond_2
    move-object v6, v0

    move-object v7, v1

    iget-boolean v7, v7, Lio/socket/engineio/client/Socket$Options;->secure:Z

    iput-boolean v7, v6, Lio/socket/engineio/client/Socket;->secure:Z

    .line 188
    move-object v6, v1

    iget v6, v6, Lio/socket/engineio/client/Socket$Options;->port:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_3

    .line 190
    move-object v6, v1

    move-object v7, v0

    iget-boolean v7, v7, Lio/socket/engineio/client/Socket;->secure:Z

    if-eqz v7, :cond_5

    const/16 v7, 0x1bb

    :goto_1
    iput v7, v6, Lio/socket/engineio/client/Socket$Options;->port:I

    .line 193
    :cond_3
    move-object v6, v0

    move-object v7, v1

    iget-object v7, v7, Lio/socket/engineio/client/Socket$Options;->sslContext:Ljavax/net/ssl/SSLContext;

    if-eqz v7, :cond_6

    move-object v7, v1

    iget-object v7, v7, Lio/socket/engineio/client/Socket$Options;->sslContext:Ljavax/net/ssl/SSLContext;

    :goto_2
    iput-object v7, v6, Lio/socket/engineio/client/Socket;->sslContext:Ljavax/net/ssl/SSLContext;

    .line 194
    move-object v6, v0

    move-object v7, v1

    iget-object v7, v7, Lio/socket/engineio/client/Socket$Options;->hostname:Ljava/lang/String;

    if-eqz v7, :cond_7

    move-object v7, v1

    iget-object v7, v7, Lio/socket/engineio/client/Socket$Options;->hostname:Ljava/lang/String;

    :goto_3
    iput-object v7, v6, Lio/socket/engineio/client/Socket;->hostname:Ljava/lang/String;

    .line 195
    move-object v6, v0

    move-object v7, v1

    iget v7, v7, Lio/socket/engineio/client/Socket$Options;->port:I

    iput v7, v6, Lio/socket/engineio/client/Socket;->port:I

    .line 196
    move-object v6, v0

    move-object v7, v1

    iget-object v7, v7, Lio/socket/engineio/client/Socket$Options;->query:Ljava/lang/String;

    if-eqz v7, :cond_8

    move-object v7, v1

    iget-object v7, v7, Lio/socket/engineio/client/Socket$Options;->query:Ljava/lang/String;

    .line 197
    invoke-static {v7}, Lio/socket/parseqs/ParseQS;->decode(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v7

    :goto_4
    iput-object v7, v6, Lio/socket/engineio/client/Socket;->query:Ljava/util/Map;

    .line 198
    move-object v6, v0

    move-object v7, v1

    iget-boolean v7, v7, Lio/socket/engineio/client/Socket$Options;->upgrade:Z

    iput-boolean v7, v6, Lio/socket/engineio/client/Socket;->upgrade:Z

    .line 199
    move-object v6, v0

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object v8, v1

    iget-object v8, v8, Lio/socket/engineio/client/Socket$Options;->path:Ljava/lang/String;

    if-eqz v8, :cond_9

    move-object v8, v1

    iget-object v8, v8, Lio/socket/engineio/client/Socket$Options;->path:Ljava/lang/String;

    :goto_5
    const-string v9, "/$"

    const-string v10, ""

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lio/socket/engineio/client/Socket;->path:Ljava/lang/String;

    .line 200
    move-object v6, v0

    move-object v7, v1

    iget-object v7, v7, Lio/socket/engineio/client/Socket$Options;->timestampParam:Ljava/lang/String;

    if-eqz v7, :cond_a

    move-object v7, v1

    iget-object v7, v7, Lio/socket/engineio/client/Socket$Options;->timestampParam:Ljava/lang/String;

    :goto_6
    iput-object v7, v6, Lio/socket/engineio/client/Socket;->timestampParam:Ljava/lang/String;

    .line 201
    move-object v6, v0

    move-object v7, v1

    iget-boolean v7, v7, Lio/socket/engineio/client/Socket$Options;->timestampRequests:Z

    iput-boolean v7, v6, Lio/socket/engineio/client/Socket;->timestampRequests:Z

    .line 202
    move-object v6, v0

    new-instance v7, Ljava/util/ArrayList;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    move-object v9, v1

    iget-object v9, v9, Lio/socket/engineio/client/Socket$Options;->transports:[Ljava/lang/String;

    if-eqz v9, :cond_b

    move-object v9, v1

    iget-object v9, v9, Lio/socket/engineio/client/Socket$Options;->transports:[Ljava/lang/String;

    :goto_7
    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v7, v6, Lio/socket/engineio/client/Socket;->transports:Ljava/util/List;

    .line 204
    move-object v6, v0

    move-object v7, v1

    iget v7, v7, Lio/socket/engineio/client/Socket$Options;->policyPort:I

    if-eqz v7, :cond_c

    move-object v7, v1

    iget v7, v7, Lio/socket/engineio/client/Socket$Options;->policyPort:I

    :goto_8
    iput v7, v6, Lio/socket/engineio/client/Socket;->policyPort:I

    .line 205
    move-object v6, v0

    move-object v7, v1

    iget-boolean v7, v7, Lio/socket/engineio/client/Socket$Options;->rememberUpgrade:Z

    iput-boolean v7, v6, Lio/socket/engineio/client/Socket;->rememberUpgrade:Z

    .line 206
    move-object v6, v0

    move-object v7, v1

    iget-object v7, v7, Lio/socket/engineio/client/Socket$Options;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    if-eqz v7, :cond_d

    move-object v7, v1

    iget-object v7, v7, Lio/socket/engineio/client/Socket$Options;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    :goto_9
    iput-object v7, v6, Lio/socket/engineio/client/Socket;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 207
    move-object v6, v0

    move-object v7, v1

    iget-object v7, v7, Lio/socket/engineio/client/Socket$Options;->proxy:Ljava/net/Proxy;

    iput-object v7, v6, Lio/socket/engineio/client/Socket;->proxy:Ljava/net/Proxy;

    .line 208
    move-object v6, v0

    move-object v7, v1

    iget-object v7, v7, Lio/socket/engineio/client/Socket$Options;->proxyLogin:Ljava/lang/String;

    iput-object v7, v6, Lio/socket/engineio/client/Socket;->proxyLogin:Ljava/lang/String;

    .line 209
    move-object v6, v0

    move-object v7, v1

    iget-object v7, v7, Lio/socket/engineio/client/Socket$Options;->proxyPassword:Ljava/lang/String;

    iput-object v7, v6, Lio/socket/engineio/client/Socket;->proxyPassword:Ljava/lang/String;

    .line 210
    return-void

    .line 176
    :cond_4
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 190
    :cond_5
    const/16 v7, 0x50

    goto/16 :goto_1

    .line 193
    :cond_6
    sget-object v7, Lio/socket/engineio/client/Socket;->defaultSSLContext:Ljavax/net/ssl/SSLContext;

    goto/16 :goto_2

    .line 194
    :cond_7
    const-string v7, "localhost"

    goto/16 :goto_3

    .line 197
    :cond_8
    new-instance v7, Ljava/util/HashMap;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    goto/16 :goto_4

    .line 199
    :cond_9
    const-string v8, "/engine.io"

    goto/16 :goto_5

    .line 200
    :cond_a
    const-string v7, "t"

    goto :goto_6

    .line 202
    :cond_b
    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x0

    const-string v12, "polling"

    aput-object v12, v10, v11

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x1

    const-string v12, "websocket"

    aput-object v12, v10, v11

    goto :goto_7

    .line 204
    :cond_c
    const/16 v7, 0x34b

    goto :goto_8

    .line 206
    :cond_d
    sget-object v7, Lio/socket/engineio/client/Socket;->defaultHostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    goto :goto_9
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 151
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lio/socket/engineio/client/Socket;-><init>(Ljava/lang/String;Lio/socket/engineio/client/Socket$Options;)V

    .line 152
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lio/socket/engineio/client/Socket$Options;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 166
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    if-nez v4, :cond_0

    const/4 v4, 0x0

    :goto_0
    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lio/socket/engineio/client/Socket;-><init>(Ljava/net/URI;Lio/socket/engineio/client/Socket$Options;)V

    .line 167
    return-void

    .line 166
    :cond_0
    new-instance v4, Ljava/net/URI;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v1

    invoke-direct {v5, v6}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public constructor <init>(Ljava/net/URI;)V
    .locals 5

    .prologue
    .line 155
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lio/socket/engineio/client/Socket;-><init>(Ljava/net/URI;Lio/socket/engineio/client/Socket$Options;)V

    .line 156
    return-void
.end method

.method public constructor <init>(Ljava/net/URI;Lio/socket/engineio/client/Socket$Options;)V
    .locals 6

    .prologue
    .line 170
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    if-nez v4, :cond_0

    move-object v4, v2

    :goto_0
    invoke-direct {v3, v4}, Lio/socket/engineio/client/Socket;-><init>(Lio/socket/engineio/client/Socket$Options;)V

    .line 171
    return-void

    .line 170
    :cond_0
    move-object v4, v1

    move-object v5, v2

    invoke-static {v4, v5}, Lio/socket/engineio/client/Socket$Options;->access$100(Ljava/net/URI;Lio/socket/engineio/client/Socket$Options;)Lio/socket/engineio/client/Socket$Options;

    move-result-object v4

    goto :goto_0
.end method

.method static synthetic access$000(Lio/socket/engineio/client/Socket;J)V
    .locals 6

    .prologue
    .line 31
    move-object v0, p0

    move-wide v1, p1

    move-object v3, v0

    move-wide v4, v1

    invoke-direct {v3, v4, v5}, Lio/socket/engineio/client/Socket;->onHeartbeat(J)V

    return-void
.end method

.method static synthetic access$1000(Lio/socket/engineio/client/Socket;Lio/socket/engineio/parser/Packet;)V
    .locals 4

    .prologue
    .line 31
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lio/socket/engineio/client/Socket;->onPacket(Lio/socket/engineio/parser/Packet;)V

    return-void
.end method

.method static synthetic access$1100(Lio/socket/engineio/client/Socket;)V
    .locals 2

    .prologue
    .line 31
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lio/socket/engineio/client/Socket;->onDrain()V

    return-void
.end method

.method static synthetic access$1200()Ljava/util/logging/Logger;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lio/socket/engineio/client/Socket;->logger:Ljava/util/logging/Logger;

    return-object v0
.end method

.method static synthetic access$1300(Lio/socket/engineio/client/Socket;)Z
    .locals 2

    .prologue
    .line 31
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lio/socket/engineio/client/Socket;->upgrading:Z

    move v0, v1

    return v0
.end method

.method static synthetic access$1302(Lio/socket/engineio/client/Socket;Z)Z
    .locals 7

    .prologue
    .line 31
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput-boolean v4, v3, Lio/socket/engineio/client/Socket;->upgrading:Z

    move v0, v2

    return v0
.end method

.method static synthetic access$1400(Lio/socket/engineio/client/Socket;)V
    .locals 2

    .prologue
    .line 31
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lio/socket/engineio/client/Socket;->flush()V

    return-void
.end method

.method static synthetic access$1500(Lio/socket/engineio/client/Socket;)J
    .locals 3

    .prologue
    .line 31
    move-object v0, p0

    move-object v1, v0

    iget-wide v1, v1, Lio/socket/engineio/client/Socket;->pingTimeout:J

    move-wide v0, v1

    return-wide v0
.end method

.method static synthetic access$1600(Lio/socket/engineio/client/Socket;)V
    .locals 2

    .prologue
    .line 31
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lio/socket/engineio/client/Socket;->ping()V

    return-void
.end method

.method static synthetic access$1700(Lio/socket/engineio/client/Socket;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 6

    .prologue
    .line 31
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lio/socket/engineio/client/Socket;->sendPacket(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$1800(Lio/socket/engineio/client/Socket;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 8

    .prologue
    .line 31
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Lio/socket/engineio/client/Socket;->sendPacket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$1900(Lio/socket/engineio/client/Socket;Ljava/lang/String;[BLjava/lang/Runnable;)V
    .locals 8

    .prologue
    .line 31
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Lio/socket/engineio/client/Socket;->sendPacket(Ljava/lang/String;[BLjava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$200(Lio/socket/engineio/client/Socket;)Z
    .locals 2

    .prologue
    .line 31
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lio/socket/engineio/client/Socket;->rememberUpgrade:Z

    move v0, v1

    return v0
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 31
    sget-boolean v0, Lio/socket/engineio/client/Socket;->priorWebsocketSuccess:Z

    return v0
.end method

.method static synthetic access$302(Z)Z
    .locals 4

    .prologue
    .line 31
    move v0, p0

    move v1, v0

    move v3, v1

    move v1, v3

    move v2, v3

    sput-boolean v2, Lio/socket/engineio/client/Socket;->priorWebsocketSuccess:Z

    move v0, v1

    return v0
.end method

.method static synthetic access$400(Lio/socket/engineio/client/Socket;)Ljava/util/List;
    .locals 2

    .prologue
    .line 31
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lio/socket/engineio/client/Socket;->transports:Ljava/util/List;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$500(Lio/socket/engineio/client/Socket;)Lio/socket/engineio/client/Socket$ReadyState;
    .locals 2

    .prologue
    .line 31
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lio/socket/engineio/client/Socket;->readyState:Lio/socket/engineio/client/Socket$ReadyState;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$502(Lio/socket/engineio/client/Socket;Lio/socket/engineio/client/Socket$ReadyState;)Lio/socket/engineio/client/Socket$ReadyState;
    .locals 7

    .prologue
    .line 31
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    move-object v5, v2

    move-object v6, v3

    move-object v2, v6

    move-object v3, v5

    move-object v4, v6

    iput-object v4, v3, Lio/socket/engineio/client/Socket;->readyState:Lio/socket/engineio/client/Socket$ReadyState;

    move-object v0, v2

    return-object v0
.end method

.method static synthetic access$600(Lio/socket/engineio/client/Socket;Ljava/lang/String;)Lio/socket/engineio/client/Transport;
    .locals 4

    .prologue
    .line 31
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lio/socket/engineio/client/Socket;->createTransport(Ljava/lang/String;)Lio/socket/engineio/client/Transport;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method static synthetic access$700(Lio/socket/engineio/client/Socket;Lio/socket/engineio/client/Transport;)V
    .locals 4

    .prologue
    .line 31
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lio/socket/engineio/client/Socket;->setTransport(Lio/socket/engineio/client/Transport;)V

    return-void
.end method

.method static synthetic access$800(Lio/socket/engineio/client/Socket;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 31
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lio/socket/engineio/client/Socket;->onClose(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lio/socket/engineio/client/Socket;Ljava/lang/Exception;)V
    .locals 4

    .prologue
    .line 31
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lio/socket/engineio/client/Socket;->onError(Ljava/lang/Exception;)V

    return-void
.end method

.method private createTransport(Ljava/lang/String;)Lio/socket/engineio/client/Transport;
    .locals 12

    .prologue
    .line 255
    move-object v0, p0

    move-object v1, p1

    sget-object v5, Lio/socket/engineio/client/Socket;->logger:Ljava/util/logging/Logger;

    const-string v6, "creating transport \'%s\'"

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

    .line 256
    new-instance v5, Ljava/util/HashMap;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    move-object v7, v0

    iget-object v7, v7, Lio/socket/engineio/client/Socket;->query:Ljava/util/Map;

    invoke-direct {v6, v7}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    move-object v2, v5

    .line 258
    move-object v5, v2

    const-string v6, "EIO"

    const/4 v7, 0x3

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 259
    move-object v5, v2

    const-string v6, "transport"

    move-object v7, v1

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 260
    move-object v5, v0

    iget-object v5, v5, Lio/socket/engineio/client/Socket;->id:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 261
    move-object v5, v2

    const-string v6, "sid"

    move-object v7, v0

    iget-object v7, v7, Lio/socket/engineio/client/Socket;->id:Ljava/lang/String;

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 264
    :cond_0
    new-instance v5, Lio/socket/engineio/client/Transport$Options;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    invoke-direct {v6}, Lio/socket/engineio/client/Transport$Options;-><init>()V

    move-object v3, v5

    .line 265
    move-object v5, v3

    move-object v6, v0

    iget-object v6, v6, Lio/socket/engineio/client/Socket;->sslContext:Ljavax/net/ssl/SSLContext;

    iput-object v6, v5, Lio/socket/engineio/client/Transport$Options;->sslContext:Ljavax/net/ssl/SSLContext;

    .line 266
    move-object v5, v3

    move-object v6, v0

    iget-object v6, v6, Lio/socket/engineio/client/Socket;->hostname:Ljava/lang/String;

    iput-object v6, v5, Lio/socket/engineio/client/Transport$Options;->hostname:Ljava/lang/String;

    .line 267
    move-object v5, v3

    move-object v6, v0

    iget v6, v6, Lio/socket/engineio/client/Socket;->port:I

    iput v6, v5, Lio/socket/engineio/client/Transport$Options;->port:I

    .line 268
    move-object v5, v3

    move-object v6, v0

    iget-boolean v6, v6, Lio/socket/engineio/client/Socket;->secure:Z

    iput-boolean v6, v5, Lio/socket/engineio/client/Transport$Options;->secure:Z

    .line 269
    move-object v5, v3

    move-object v6, v0

    iget-object v6, v6, Lio/socket/engineio/client/Socket;->path:Ljava/lang/String;

    iput-object v6, v5, Lio/socket/engineio/client/Transport$Options;->path:Ljava/lang/String;

    .line 270
    move-object v5, v3

    move-object v6, v2

    iput-object v6, v5, Lio/socket/engineio/client/Transport$Options;->query:Ljava/util/Map;

    .line 271
    move-object v5, v3

    move-object v6, v0

    iget-boolean v6, v6, Lio/socket/engineio/client/Socket;->timestampRequests:Z

    iput-boolean v6, v5, Lio/socket/engineio/client/Transport$Options;->timestampRequests:Z

    .line 272
    move-object v5, v3

    move-object v6, v0

    iget-object v6, v6, Lio/socket/engineio/client/Socket;->timestampParam:Ljava/lang/String;

    iput-object v6, v5, Lio/socket/engineio/client/Transport$Options;->timestampParam:Ljava/lang/String;

    .line 273
    move-object v5, v3

    move-object v6, v0

    iget v6, v6, Lio/socket/engineio/client/Socket;->policyPort:I

    iput v6, v5, Lio/socket/engineio/client/Transport$Options;->policyPort:I

    .line 274
    move-object v5, v3

    move-object v6, v0

    iput-object v6, v5, Lio/socket/engineio/client/Transport$Options;->socket:Lio/socket/engineio/client/Socket;

    .line 275
    move-object v5, v3

    move-object v6, v0

    iget-object v6, v6, Lio/socket/engineio/client/Socket;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    iput-object v6, v5, Lio/socket/engineio/client/Transport$Options;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 276
    move-object v5, v3

    move-object v6, v0

    iget-object v6, v6, Lio/socket/engineio/client/Socket;->proxy:Ljava/net/Proxy;

    iput-object v6, v5, Lio/socket/engineio/client/Transport$Options;->proxy:Ljava/net/Proxy;

    .line 277
    move-object v5, v3

    move-object v6, v0

    iget-object v6, v6, Lio/socket/engineio/client/Socket;->proxyLogin:Ljava/lang/String;

    iput-object v6, v5, Lio/socket/engineio/client/Transport$Options;->proxyLogin:Ljava/lang/String;

    .line 278
    move-object v5, v3

    move-object v6, v0

    iget-object v6, v6, Lio/socket/engineio/client/Socket;->proxyPassword:Ljava/lang/String;

    iput-object v6, v5, Lio/socket/engineio/client/Transport$Options;->proxyPassword:Ljava/lang/String;

    .line 281
    const-string v5, "websocket"

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 282
    new-instance v5, Lio/socket/engineio/client/transports/WebSocket;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    move-object v7, v3

    invoke-direct {v6, v7}, Lio/socket/engineio/client/transports/WebSocket;-><init>(Lio/socket/engineio/client/Transport$Options;)V

    move-object v4, v5

    .line 289
    :goto_0
    move-object v5, v0

    const-string v6, "transport"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x0

    move-object v10, v4

    aput-object v10, v8, v9

    invoke-virtual {v5, v6, v7}, Lio/socket/engineio/client/Socket;->emit(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/emitter/Emitter;

    move-result-object v5

    .line 291
    move-object v5, v4

    move-object v0, v5

    return-object v0

    .line 283
    :cond_1
    const-string v5, "polling"

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 284
    new-instance v5, Lio/socket/engineio/client/transports/PollingXHR;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    move-object v7, v3

    invoke-direct {v6, v7}, Lio/socket/engineio/client/transports/PollingXHR;-><init>(Lio/socket/engineio/client/Transport$Options;)V

    move-object v4, v5

    goto :goto_0

    .line 286
    :cond_2
    new-instance v5, Ljava/lang/RuntimeException;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    invoke-direct {v6}, Ljava/lang/RuntimeException;-><init>()V

    throw v5
.end method

.method private flush()V
    .locals 8

    .prologue
    .line 611
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lio/socket/engineio/client/Socket;->readyState:Lio/socket/engineio/client/Socket$ReadyState;

    sget-object v2, Lio/socket/engineio/client/Socket$ReadyState;->CLOSED:Lio/socket/engineio/client/Socket$ReadyState;

    if-eq v1, v2, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lio/socket/engineio/client/Socket;->transport:Lio/socket/engineio/client/Transport;

    iget-boolean v1, v1, Lio/socket/engineio/client/Transport;->writable:Z

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-boolean v1, v1, Lio/socket/engineio/client/Socket;->upgrading:Z

    if-nez v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lio/socket/engineio/client/Socket;->writeBuffer:Ljava/util/LinkedList;

    .line 612
    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 613
    sget-object v1, Lio/socket/engineio/client/Socket;->logger:Ljava/util/logging/Logger;

    const-string v2, "flushing %d packets in socket"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    move-object v6, v0

    iget-object v6, v6, Lio/socket/engineio/client/Socket;->writeBuffer:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 614
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lio/socket/engineio/client/Socket;->writeBuffer:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    iput v2, v1, Lio/socket/engineio/client/Socket;->prevBufferLen:I

    .line 615
    move-object v1, v0

    iget-object v1, v1, Lio/socket/engineio/client/Socket;->transport:Lio/socket/engineio/client/Transport;

    move-object v2, v0

    iget-object v2, v2, Lio/socket/engineio/client/Socket;->writeBuffer:Ljava/util/LinkedList;

    move-object v3, v0

    iget-object v3, v3, Lio/socket/engineio/client/Socket;->writeBuffer:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    new-array v3, v3, [Lio/socket/engineio/parser/Packet;

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lio/socket/engineio/parser/Packet;

    invoke-virtual {v1, v2}, Lio/socket/engineio/client/Transport;->send([Lio/socket/engineio/parser/Packet;)V

    .line 616
    move-object v1, v0

    const-string v2, "flush"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lio/socket/engineio/client/Socket;->emit(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/emitter/Emitter;

    move-result-object v1

    .line 618
    :cond_0
    return-void
.end method

.method private getHeartbeatScheduler()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 3

    .prologue
    .line 838
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lio/socket/engineio/client/Socket;->heartbeatScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lio/socket/engineio/client/Socket;->heartbeatScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 839
    :cond_0
    move-object v1, v0

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    iput-object v2, v1, Lio/socket/engineio/client/Socket;->heartbeatScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    .line 841
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Lio/socket/engineio/client/Socket;->heartbeatScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    move-object v0, v1

    return-object v0
.end method

.method private onClose(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 777
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lio/socket/engineio/client/Socket;->onClose(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 778
    return-void
.end method

.method private onClose(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 11

    .prologue
    .line 781
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    sget-object v4, Lio/socket/engineio/client/Socket$ReadyState;->OPENING:Lio/socket/engineio/client/Socket$ReadyState;

    move-object v5, v0

    iget-object v5, v5, Lio/socket/engineio/client/Socket;->readyState:Lio/socket/engineio/client/Socket$ReadyState;

    if-eq v4, v5, :cond_0

    sget-object v4, Lio/socket/engineio/client/Socket$ReadyState;->OPEN:Lio/socket/engineio/client/Socket$ReadyState;

    move-object v5, v0

    iget-object v5, v5, Lio/socket/engineio/client/Socket;->readyState:Lio/socket/engineio/client/Socket$ReadyState;

    if-eq v4, v5, :cond_0

    sget-object v4, Lio/socket/engineio/client/Socket$ReadyState;->CLOSING:Lio/socket/engineio/client/Socket$ReadyState;

    move-object v5, v0

    iget-object v5, v5, Lio/socket/engineio/client/Socket;->readyState:Lio/socket/engineio/client/Socket$ReadyState;

    if-ne v4, v5, :cond_4

    .line 782
    :cond_0
    sget-object v4, Lio/socket/engineio/client/Socket;->logger:Ljava/util/logging/Logger;

    const-string v5, "socket close with reason: %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    move-object v9, v1

    aput-object v9, v7, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 783
    move-object v4, v0

    move-object v3, v4

    .line 786
    move-object v4, v0

    iget-object v4, v4, Lio/socket/engineio/client/Socket;->pingIntervalTimer:Ljava/util/concurrent/Future;

    if-eqz v4, :cond_1

    .line 787
    move-object v4, v0

    iget-object v4, v4, Lio/socket/engineio/client/Socket;->pingIntervalTimer:Ljava/util/concurrent/Future;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/concurrent/Future;->cancel(Z)Z

    move-result v4

    .line 789
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Lio/socket/engineio/client/Socket;->pingTimeoutTimer:Ljava/util/concurrent/Future;

    if-eqz v4, :cond_2

    .line 790
    move-object v4, v0

    iget-object v4, v4, Lio/socket/engineio/client/Socket;->pingTimeoutTimer:Ljava/util/concurrent/Future;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/concurrent/Future;->cancel(Z)Z

    move-result v4

    .line 792
    :cond_2
    move-object v4, v0

    iget-object v4, v4, Lio/socket/engineio/client/Socket;->heartbeatScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v4, :cond_3

    .line 793
    move-object v4, v0

    iget-object v4, v4, Lio/socket/engineio/client/Socket;->heartbeatScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v4}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    .line 797
    :cond_3
    move-object v4, v0

    iget-object v4, v4, Lio/socket/engineio/client/Socket;->transport:Lio/socket/engineio/client/Transport;

    const-string v5, "close"

    invoke-virtual {v4, v5}, Lio/socket/engineio/client/Transport;->off(Ljava/lang/String;)Lio/socket/emitter/Emitter;

    move-result-object v4

    .line 800
    move-object v4, v0

    iget-object v4, v4, Lio/socket/engineio/client/Socket;->transport:Lio/socket/engineio/client/Transport;

    invoke-virtual {v4}, Lio/socket/engineio/client/Transport;->close()Lio/socket/engineio/client/Transport;

    move-result-object v4

    .line 803
    move-object v4, v0

    iget-object v4, v4, Lio/socket/engineio/client/Socket;->transport:Lio/socket/engineio/client/Transport;

    invoke-virtual {v4}, Lio/socket/engineio/client/Transport;->off()Lio/socket/emitter/Emitter;

    move-result-object v4

    .line 806
    move-object v4, v0

    sget-object v5, Lio/socket/engineio/client/Socket$ReadyState;->CLOSED:Lio/socket/engineio/client/Socket$ReadyState;

    iput-object v5, v4, Lio/socket/engineio/client/Socket;->readyState:Lio/socket/engineio/client/Socket$ReadyState;

    .line 809
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Lio/socket/engineio/client/Socket;->id:Ljava/lang/String;

    .line 812
    move-object v4, v0

    const-string v5, "close"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    move-object v9, v1

    aput-object v9, v7, v8

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x1

    move-object v9, v2

    aput-object v9, v7, v8

    invoke-virtual {v4, v5, v6}, Lio/socket/engineio/client/Socket;->emit(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/emitter/Emitter;

    move-result-object v4

    .line 816
    move-object v4, v3

    iget-object v4, v4, Lio/socket/engineio/client/Socket;->writeBuffer:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->clear()V

    .line 817
    move-object v4, v3

    const/4 v5, 0x0

    iput v5, v4, Lio/socket/engineio/client/Socket;->prevBufferLen:I

    .line 819
    :cond_4
    return-void
.end method

.method private onDrain()V
    .locals 5

    .prologue
    .line 598
    move-object v0, p0

    const/4 v2, 0x0

    move v1, v2

    :goto_0
    move v2, v1

    move-object v3, v0

    iget v3, v3, Lio/socket/engineio/client/Socket;->prevBufferLen:I

    if-ge v2, v3, :cond_0

    .line 599
    move-object v2, v0

    iget-object v2, v2, Lio/socket/engineio/client/Socket;->writeBuffer:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v2

    .line 598
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 602
    :cond_0
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lio/socket/engineio/client/Socket;->prevBufferLen:I

    .line 603
    const/4 v2, 0x0

    move-object v3, v0

    iget-object v3, v3, Lio/socket/engineio/client/Socket;->writeBuffer:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 604
    move-object v2, v0

    const-string v3, "drain"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lio/socket/engineio/client/Socket;->emit(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/emitter/Emitter;

    move-result-object v2

    .line 608
    :goto_1
    return-void

    .line 606
    :cond_1
    move-object v2, v0

    invoke-direct {v2}, Lio/socket/engineio/client/Socket;->flush()V

    goto :goto_1
.end method

.method private onError(Ljava/lang/Exception;)V
    .locals 9

    .prologue
    .line 770
    move-object v0, p0

    move-object v1, p1

    sget-object v2, Lio/socket/engineio/client/Socket;->logger:Ljava/util/logging/Logger;

    const-string v3, "socket error %s"

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

    .line 771
    const/4 v2, 0x0

    sput-boolean v2, Lio/socket/engineio/client/Socket;->priorWebsocketSuccess:Z

    .line 772
    move-object v2, v0

    const-string v3, "error"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v1

    aput-object v7, v5, v6

    invoke-virtual {v2, v3, v4}, Lio/socket/engineio/client/Socket;->emit(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/emitter/Emitter;

    move-result-object v2

    .line 773
    move-object v2, v0

    const-string v3, "transport error"

    move-object v4, v1

    invoke-direct {v2, v3, v4}, Lio/socket/engineio/client/Socket;->onClose(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 774
    return-void
.end method

.method private onHandshake(Lio/socket/engineio/client/HandshakeData;)V
    .locals 9

    .prologue
    .line 520
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string v3, "handshake"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v1

    aput-object v7, v5, v6

    invoke-virtual {v2, v3, v4}, Lio/socket/engineio/client/Socket;->emit(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/emitter/Emitter;

    move-result-object v2

    .line 521
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Lio/socket/engineio/client/HandshakeData;->sid:Ljava/lang/String;

    iput-object v3, v2, Lio/socket/engineio/client/Socket;->id:Ljava/lang/String;

    .line 522
    move-object v2, v0

    iget-object v2, v2, Lio/socket/engineio/client/Socket;->transport:Lio/socket/engineio/client/Transport;

    iget-object v2, v2, Lio/socket/engineio/client/Transport;->query:Ljava/util/Map;

    const-string v3, "sid"

    move-object v4, v1

    iget-object v4, v4, Lio/socket/engineio/client/HandshakeData;->sid:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 523
    move-object v2, v0

    move-object v3, v0

    move-object v4, v1

    iget-object v4, v4, Lio/socket/engineio/client/HandshakeData;->upgrades:[Ljava/lang/String;

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/socket/engineio/client/Socket;->filterUpgrades(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v2, Lio/socket/engineio/client/Socket;->upgrades:Ljava/util/List;

    .line 524
    move-object v2, v0

    move-object v3, v1

    iget-wide v3, v3, Lio/socket/engineio/client/HandshakeData;->pingInterval:J

    iput-wide v3, v2, Lio/socket/engineio/client/Socket;->pingInterval:J

    .line 525
    move-object v2, v0

    move-object v3, v1

    iget-wide v3, v3, Lio/socket/engineio/client/HandshakeData;->pingTimeout:J

    iput-wide v3, v2, Lio/socket/engineio/client/Socket;->pingTimeout:J

    .line 526
    move-object v2, v0

    invoke-direct {v2}, Lio/socket/engineio/client/Socket;->onOpen()V

    .line 528
    sget-object v2, Lio/socket/engineio/client/Socket$ReadyState;->CLOSED:Lio/socket/engineio/client/Socket$ReadyState;

    move-object v3, v0

    iget-object v3, v3, Lio/socket/engineio/client/Socket;->readyState:Lio/socket/engineio/client/Socket$ReadyState;

    if-ne v2, v3, :cond_0

    .line 533
    :goto_0
    return-void

    .line 529
    :cond_0
    move-object v2, v0

    invoke-direct {v2}, Lio/socket/engineio/client/Socket;->setPing()V

    .line 531
    move-object v2, v0

    const-string v3, "heartbeat"

    move-object v4, v0

    iget-object v4, v4, Lio/socket/engineio/client/Socket;->onHeartbeatAsListener:Lio/socket/emitter/Emitter$Listener;

    invoke-virtual {v2, v3, v4}, Lio/socket/engineio/client/Socket;->off(Ljava/lang/String;Lio/socket/emitter/Emitter$Listener;)Lio/socket/emitter/Emitter;

    move-result-object v2

    .line 532
    move-object v2, v0

    const-string v3, "heartbeat"

    move-object v4, v0

    iget-object v4, v4, Lio/socket/engineio/client/Socket;->onHeartbeatAsListener:Lio/socket/emitter/Emitter$Listener;

    invoke-virtual {v2, v3, v4}, Lio/socket/engineio/client/Socket;->on(Ljava/lang/String;Lio/socket/emitter/Emitter$Listener;)Lio/socket/emitter/Emitter;

    move-result-object v2

    .line 533
    goto :goto_0
.end method

.method private onHeartbeat(J)V
    .locals 11

    .prologue
    .line 536
    move-object v0, p0

    move-wide v1, p1

    move-object v4, v0

    iget-object v4, v4, Lio/socket/engineio/client/Socket;->pingTimeoutTimer:Ljava/util/concurrent/Future;

    if-eqz v4, :cond_0

    .line 537
    move-object v4, v0

    iget-object v4, v4, Lio/socket/engineio/client/Socket;->pingTimeoutTimer:Ljava/util/concurrent/Future;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/concurrent/Future;->cancel(Z)Z

    move-result v4

    .line 540
    :cond_0
    move-wide v4, v1

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-gtz v4, :cond_1

    .line 541
    move-object v4, v0

    iget-wide v4, v4, Lio/socket/engineio/client/Socket;->pingInterval:J

    move-object v6, v0

    iget-wide v6, v6, Lio/socket/engineio/client/Socket;->pingTimeout:J

    add-long/2addr v4, v6

    move-wide v1, v4

    .line 544
    :cond_1
    move-object v4, v0

    move-object v3, v4

    .line 545
    move-object v4, v0

    move-object v5, v0

    invoke-direct {v5}, Lio/socket/engineio/client/Socket;->getHeartbeatScheduler()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v5

    new-instance v6, Lio/socket/engineio/client/Socket$14;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v0

    move-object v9, v3

    invoke-direct {v7, v8, v9}, Lio/socket/engineio/client/Socket$14;-><init>(Lio/socket/engineio/client/Socket;Lio/socket/engineio/client/Socket;)V

    move-wide v7, v1

    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v5, v6, v7, v8, v9}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v5

    iput-object v5, v4, Lio/socket/engineio/client/Socket;->pingTimeoutTimer:Ljava/util/concurrent/Future;

    .line 557
    return-void
.end method

.method private onOpen()V
    .locals 6

    .prologue
    .line 476
    move-object v0, p0

    sget-object v3, Lio/socket/engineio/client/Socket;->logger:Ljava/util/logging/Logger;

    const-string v4, "socket open"

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 477
    move-object v3, v0

    sget-object v4, Lio/socket/engineio/client/Socket$ReadyState;->OPEN:Lio/socket/engineio/client/Socket$ReadyState;

    iput-object v4, v3, Lio/socket/engineio/client/Socket;->readyState:Lio/socket/engineio/client/Socket$ReadyState;

    .line 478
    const-string v3, "websocket"

    move-object v4, v0

    iget-object v4, v4, Lio/socket/engineio/client/Socket;->transport:Lio/socket/engineio/client/Transport;

    iget-object v4, v4, Lio/socket/engineio/client/Transport;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    sput-boolean v3, Lio/socket/engineio/client/Socket;->priorWebsocketSuccess:Z

    .line 479
    move-object v3, v0

    const-string v4, "open"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lio/socket/engineio/client/Socket;->emit(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/emitter/Emitter;

    move-result-object v3

    .line 480
    move-object v3, v0

    invoke-direct {v3}, Lio/socket/engineio/client/Socket;->flush()V

    .line 482
    move-object v3, v0

    iget-object v3, v3, Lio/socket/engineio/client/Socket;->readyState:Lio/socket/engineio/client/Socket$ReadyState;

    sget-object v4, Lio/socket/engineio/client/Socket$ReadyState;->OPEN:Lio/socket/engineio/client/Socket$ReadyState;

    if-ne v3, v4, :cond_0

    move-object v3, v0

    iget-boolean v3, v3, Lio/socket/engineio/client/Socket;->upgrade:Z

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lio/socket/engineio/client/Socket;->transport:Lio/socket/engineio/client/Transport;

    instance-of v3, v3, Lio/socket/engineio/client/transports/Polling;

    if-eqz v3, :cond_0

    .line 483
    sget-object v3, Lio/socket/engineio/client/Socket;->logger:Ljava/util/logging/Logger;

    const-string v4, "starting upgrade probes"

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 484
    move-object v3, v0

    iget-object v3, v3, Lio/socket/engineio/client/Socket;->upgrades:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

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

    check-cast v3, Ljava/lang/String;

    move-object v2, v3

    .line 485
    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Lio/socket/engineio/client/Socket;->probe(Ljava/lang/String;)V

    .line 486
    goto :goto_0

    .line 488
    :cond_0
    return-void
.end method

.method private onPacket(Lio/socket/engineio/parser/Packet;)V
    .locals 12

    .prologue
    .line 491
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Lio/socket/engineio/client/Socket;->readyState:Lio/socket/engineio/client/Socket$ReadyState;

    sget-object v4, Lio/socket/engineio/client/Socket$ReadyState;->OPENING:Lio/socket/engineio/client/Socket$ReadyState;

    if-eq v3, v4, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lio/socket/engineio/client/Socket;->readyState:Lio/socket/engineio/client/Socket$ReadyState;

    sget-object v4, Lio/socket/engineio/client/Socket$ReadyState;->OPEN:Lio/socket/engineio/client/Socket$ReadyState;

    if-ne v3, v4, :cond_5

    .line 492
    :cond_0
    sget-object v3, Lio/socket/engineio/client/Socket;->logger:Ljava/util/logging/Logger;

    const-string v4, "socket received: type \'%s\', data \'%s\'"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    const/4 v7, 0x0

    move-object v8, v1

    iget-object v8, v8, Lio/socket/engineio/parser/Packet;->type:Ljava/lang/String;

    aput-object v8, v6, v7

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    const/4 v7, 0x1

    move-object v8, v1

    iget-object v8, v8, Lio/socket/engineio/parser/Packet;->data:Ljava/lang/Object;

    aput-object v8, v6, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 494
    move-object v3, v0

    const-string v4, "packet"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    const/4 v7, 0x0

    move-object v8, v1

    aput-object v8, v6, v7

    invoke-virtual {v3, v4, v5}, Lio/socket/engineio/client/Socket;->emit(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/emitter/Emitter;

    move-result-object v3

    .line 495
    move-object v3, v0

    const-string v4, "heartbeat"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lio/socket/engineio/client/Socket;->emit(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/emitter/Emitter;

    move-result-object v3

    .line 497
    const-string v3, "open"

    move-object v4, v1

    iget-object v4, v4, Lio/socket/engineio/parser/Packet;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 499
    move-object v3, v0

    :try_start_0
    new-instance v4, Lio/socket/engineio/client/HandshakeData;

    move-object v11, v4

    move-object v4, v11

    move-object v5, v11

    move-object v6, v1

    iget-object v6, v6, Lio/socket/engineio/parser/Packet;->data:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-direct {v5, v6}, Lio/socket/engineio/client/HandshakeData;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lio/socket/engineio/client/Socket;->onHandshake(Lio/socket/engineio/client/HandshakeData;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 517
    :cond_1
    :goto_0
    return-void

    .line 500
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 501
    move-object v3, v0

    const-string v4, "error"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    const/4 v7, 0x0

    new-instance v8, Lio/socket/engineio/client/EngineIOException;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    move-object v10, v2

    invoke-direct {v9, v10}, Lio/socket/engineio/client/EngineIOException;-><init>(Ljava/lang/Throwable;)V

    aput-object v8, v6, v7

    invoke-virtual {v3, v4, v5}, Lio/socket/engineio/client/Socket;->emit(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/emitter/Emitter;

    move-result-object v3

    .line 502
    goto :goto_0

    .line 503
    :cond_2
    const-string v3, "pong"

    move-object v4, v1

    iget-object v4, v4, Lio/socket/engineio/parser/Packet;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 504
    move-object v3, v0

    invoke-direct {v3}, Lio/socket/engineio/client/Socket;->setPing()V

    .line 505
    move-object v3, v0

    const-string v4, "pong"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lio/socket/engineio/client/Socket;->emit(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/emitter/Emitter;

    move-result-object v3

    goto :goto_0

    .line 506
    :cond_3
    const-string v3, "error"

    move-object v4, v1

    iget-object v4, v4, Lio/socket/engineio/parser/Packet;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 507
    new-instance v3, Lio/socket/engineio/client/EngineIOException;

    move-object v11, v3

    move-object v3, v11

    move-object v4, v11

    const-string v5, "server error"

    invoke-direct {v4, v5}, Lio/socket/engineio/client/EngineIOException;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    .line 508
    move-object v3, v2

    move-object v4, v1

    iget-object v4, v4, Lio/socket/engineio/parser/Packet;->data:Ljava/lang/Object;

    iput-object v4, v3, Lio/socket/engineio/client/EngineIOException;->code:Ljava/lang/Object;

    .line 509
    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Lio/socket/engineio/client/Socket;->onError(Ljava/lang/Exception;)V

    .line 510
    goto :goto_0

    :cond_4
    const-string v3, "message"

    move-object v4, v1

    iget-object v4, v4, Lio/socket/engineio/parser/Packet;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 511
    move-object v3, v0

    const-string v4, "data"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    const/4 v7, 0x0

    move-object v8, v1

    iget-object v8, v8, Lio/socket/engineio/parser/Packet;->data:Ljava/lang/Object;

    aput-object v8, v6, v7

    invoke-virtual {v3, v4, v5}, Lio/socket/engineio/client/Socket;->emit(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/emitter/Emitter;

    move-result-object v3

    .line 512
    move-object v3, v0

    const-string v4, "message"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    const/4 v7, 0x0

    move-object v8, v1

    iget-object v8, v8, Lio/socket/engineio/parser/Packet;->data:Ljava/lang/Object;

    aput-object v8, v6, v7

    invoke-virtual {v3, v4, v5}, Lio/socket/engineio/client/Socket;->emit(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/emitter/Emitter;

    move-result-object v3

    goto/16 :goto_0

    .line 515
    :cond_5
    sget-object v3, Lio/socket/engineio/client/Socket;->logger:Ljava/util/logging/Logger;

    const-string v4, "packet received with socket readyState \'%s\'"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    const/4 v7, 0x0

    move-object v8, v0

    iget-object v8, v8, Lio/socket/engineio/client/Socket;->readyState:Lio/socket/engineio/client/Socket$ReadyState;

    aput-object v8, v6, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private ping()V
    .locals 5

    .prologue
    .line 584
    move-object v0, p0

    new-instance v1, Lio/socket/engineio/client/Socket$16;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lio/socket/engineio/client/Socket$16;-><init>(Lio/socket/engineio/client/Socket;)V

    invoke-static {v1}, Lio/socket/thread/EventThread;->exec(Ljava/lang/Runnable;)V

    .line 595
    return-void
.end method

.method private probe(Ljava/lang/String;)V
    .locals 25

    .prologue
    .line 329
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    sget-object v12, Lio/socket/engineio/client/Socket;->logger:Ljava/util/logging/Logger;

    const-string v13, "probing transport \'%s\'"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    move-object/from16 v24, v14

    move-object/from16 v14, v24

    move-object/from16 v15, v24

    const/16 v16, 0x0

    move-object/from16 v17, v1

    aput-object v17, v15, v16

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 330
    const/4 v12, 0x1

    new-array v12, v12, [Lio/socket/engineio/client/Transport;

    move-object/from16 v24, v12

    move-object/from16 v12, v24

    move-object/from16 v13, v24

    const/4 v14, 0x0

    move-object v15, v0

    move-object/from16 v16, v1

    invoke-direct/range {v15 .. v16}, Lio/socket/engineio/client/Socket;->createTransport(Ljava/lang/String;)Lio/socket/engineio/client/Transport;

    move-result-object v15

    aput-object v15, v13, v14

    move-object v2, v12

    .line 331
    const/4 v12, 0x1

    new-array v12, v12, [Z

    move-object/from16 v24, v12

    move-object/from16 v12, v24

    move-object/from16 v13, v24

    const/4 v14, 0x0

    const/4 v15, 0x0

    aput-boolean v15, v13, v14

    move-object v3, v12

    .line 332
    move-object v12, v0

    move-object v4, v12

    .line 334
    const/4 v12, 0x0

    sput-boolean v12, Lio/socket/engineio/client/Socket;->priorWebsocketSuccess:Z

    .line 336
    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Runnable;

    move-object v5, v12

    .line 338
    new-instance v12, Lio/socket/engineio/client/Socket$7;

    move-object/from16 v24, v12

    move-object/from16 v12, v24

    move-object/from16 v13, v24

    move-object v14, v0

    move-object v15, v3

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    move-object/from16 v18, v4

    move-object/from16 v19, v5

    invoke-direct/range {v13 .. v19}, Lio/socket/engineio/client/Socket$7;-><init>(Lio/socket/engineio/client/Socket;[ZLjava/lang/String;[Lio/socket/engineio/client/Transport;Lio/socket/engineio/client/Socket;[Ljava/lang/Runnable;)V

    move-object v6, v12

    .line 390
    new-instance v12, Lio/socket/engineio/client/Socket$8;

    move-object/from16 v24, v12

    move-object/from16 v12, v24

    move-object/from16 v13, v24

    move-object v14, v0

    move-object v15, v3

    move-object/from16 v16, v5

    move-object/from16 v17, v2

    invoke-direct/range {v13 .. v17}, Lio/socket/engineio/client/Socket$8;-><init>(Lio/socket/engineio/client/Socket;[Z[Ljava/lang/Runnable;[Lio/socket/engineio/client/Transport;)V

    move-object v7, v12

    .line 405
    new-instance v12, Lio/socket/engineio/client/Socket$9;

    move-object/from16 v24, v12

    move-object/from16 v12, v24

    move-object/from16 v13, v24

    move-object v14, v0

    move-object v15, v2

    move-object/from16 v16, v7

    move-object/from16 v17, v1

    move-object/from16 v18, v4

    invoke-direct/range {v13 .. v18}, Lio/socket/engineio/client/Socket$9;-><init>(Lio/socket/engineio/client/Socket;[Lio/socket/engineio/client/Transport;Lio/socket/emitter/Emitter$Listener;Ljava/lang/String;Lio/socket/engineio/client/Socket;)V

    move-object v8, v12

    .line 427
    new-instance v12, Lio/socket/engineio/client/Socket$10;

    move-object/from16 v24, v12

    move-object/from16 v12, v24

    move-object/from16 v13, v24

    move-object v14, v0

    move-object v15, v8

    invoke-direct {v13, v14, v15}, Lio/socket/engineio/client/Socket$10;-><init>(Lio/socket/engineio/client/Socket;Lio/socket/emitter/Emitter$Listener;)V

    move-object v9, v12

    .line 435
    new-instance v12, Lio/socket/engineio/client/Socket$11;

    move-object/from16 v24, v12

    move-object/from16 v12, v24

    move-object/from16 v13, v24

    move-object v14, v0

    move-object v15, v8

    invoke-direct {v13, v14, v15}, Lio/socket/engineio/client/Socket$11;-><init>(Lio/socket/engineio/client/Socket;Lio/socket/emitter/Emitter$Listener;)V

    move-object v10, v12

    .line 443
    new-instance v12, Lio/socket/engineio/client/Socket$12;

    move-object/from16 v24, v12

    move-object/from16 v12, v24

    move-object/from16 v13, v24

    move-object v14, v0

    move-object v15, v2

    move-object/from16 v16, v7

    invoke-direct/range {v13 .. v16}, Lio/socket/engineio/client/Socket$12;-><init>(Lio/socket/engineio/client/Socket;[Lio/socket/engineio/client/Transport;Lio/socket/emitter/Emitter$Listener;)V

    move-object v11, v12

    .line 454
    move-object v12, v5

    const/4 v13, 0x0

    new-instance v14, Lio/socket/engineio/client/Socket$13;

    move-object/from16 v24, v14

    move-object/from16 v14, v24

    move-object/from16 v15, v24

    move-object/from16 v16, v0

    move-object/from16 v17, v2

    move-object/from16 v18, v6

    move-object/from16 v19, v8

    move-object/from16 v20, v9

    move-object/from16 v21, v4

    move-object/from16 v22, v10

    move-object/from16 v23, v11

    invoke-direct/range {v15 .. v23}, Lio/socket/engineio/client/Socket$13;-><init>(Lio/socket/engineio/client/Socket;[Lio/socket/engineio/client/Transport;Lio/socket/emitter/Emitter$Listener;Lio/socket/emitter/Emitter$Listener;Lio/socket/emitter/Emitter$Listener;Lio/socket/engineio/client/Socket;Lio/socket/emitter/Emitter$Listener;Lio/socket/emitter/Emitter$Listener;)V

    aput-object v14, v12, v13

    .line 465
    move-object v12, v2

    const/4 v13, 0x0

    aget-object v12, v12, v13

    const-string v13, "open"

    move-object v14, v6

    invoke-virtual {v12, v13, v14}, Lio/socket/engineio/client/Transport;->once(Ljava/lang/String;Lio/socket/emitter/Emitter$Listener;)Lio/socket/emitter/Emitter;

    move-result-object v12

    .line 466
    move-object v12, v2

    const/4 v13, 0x0

    aget-object v12, v12, v13

    const-string v13, "error"

    move-object v14, v8

    invoke-virtual {v12, v13, v14}, Lio/socket/engineio/client/Transport;->once(Ljava/lang/String;Lio/socket/emitter/Emitter$Listener;)Lio/socket/emitter/Emitter;

    move-result-object v12

    .line 467
    move-object v12, v2

    const/4 v13, 0x0

    aget-object v12, v12, v13

    const-string v13, "close"

    move-object v14, v9

    invoke-virtual {v12, v13, v14}, Lio/socket/engineio/client/Transport;->once(Ljava/lang/String;Lio/socket/emitter/Emitter$Listener;)Lio/socket/emitter/Emitter;

    move-result-object v12

    .line 469
    move-object v12, v0

    const-string v13, "close"

    move-object v14, v10

    invoke-virtual {v12, v13, v14}, Lio/socket/engineio/client/Socket;->once(Ljava/lang/String;Lio/socket/emitter/Emitter$Listener;)Lio/socket/emitter/Emitter;

    move-result-object v12

    .line 470
    move-object v12, v0

    const-string v13, "upgrading"

    move-object v14, v11

    invoke-virtual {v12, v13, v14}, Lio/socket/engineio/client/Socket;->once(Ljava/lang/String;Lio/socket/emitter/Emitter$Listener;)Lio/socket/emitter/Emitter;

    move-result-object v12

    .line 472
    move-object v12, v2

    const/4 v13, 0x0

    aget-object v12, v12, v13

    invoke-virtual {v12}, Lio/socket/engineio/client/Transport;->open()Lio/socket/engineio/client/Transport;

    move-result-object v12

    .line 473
    return-void
.end method

.method private sendPacket(Lio/socket/engineio/parser/Packet;Ljava/lang/Runnable;)V
    .locals 10

    .prologue
    .line 688
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    sget-object v3, Lio/socket/engineio/client/Socket$ReadyState;->CLOSING:Lio/socket/engineio/client/Socket$ReadyState;

    move-object v4, v0

    iget-object v4, v4, Lio/socket/engineio/client/Socket;->readyState:Lio/socket/engineio/client/Socket$ReadyState;

    if-eq v3, v4, :cond_0

    sget-object v3, Lio/socket/engineio/client/Socket$ReadyState;->CLOSED:Lio/socket/engineio/client/Socket$ReadyState;

    move-object v4, v0

    iget-object v4, v4, Lio/socket/engineio/client/Socket;->readyState:Lio/socket/engineio/client/Socket$ReadyState;

    if-ne v3, v4, :cond_1

    .line 703
    :cond_0
    :goto_0
    return-void

    .line 692
    :cond_1
    move-object v3, v0

    const-string v4, "packetCreate"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v1

    aput-object v8, v6, v7

    invoke-virtual {v3, v4, v5}, Lio/socket/engineio/client/Socket;->emit(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/emitter/Emitter;

    move-result-object v3

    .line 693
    move-object v3, v0

    iget-object v3, v3, Lio/socket/engineio/client/Socket;->writeBuffer:Ljava/util/LinkedList;

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    move-result v3

    .line 694
    const/4 v3, 0x0

    move-object v4, v2

    if-eq v3, v4, :cond_2

    .line 695
    move-object v3, v0

    const-string v4, "flush"

    new-instance v5, Lio/socket/engineio/client/Socket$19;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    move-object v8, v2

    invoke-direct {v6, v7, v8}, Lio/socket/engineio/client/Socket$19;-><init>(Lio/socket/engineio/client/Socket;Ljava/lang/Runnable;)V

    invoke-virtual {v3, v4, v5}, Lio/socket/engineio/client/Socket;->once(Ljava/lang/String;Lio/socket/emitter/Emitter$Listener;)Lio/socket/emitter/Emitter;

    move-result-object v3

    .line 702
    :cond_2
    move-object v3, v0

    invoke-direct {v3}, Lio/socket/engineio/client/Socket;->flush()V

    .line 703
    goto :goto_0
.end method

.method private sendPacket(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 8

    .prologue
    .line 674
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    new-instance v4, Lio/socket/engineio/parser/Packet;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v1

    invoke-direct {v5, v6}, Lio/socket/engineio/parser/Packet;-><init>(Ljava/lang/String;)V

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lio/socket/engineio/client/Socket;->sendPacket(Lio/socket/engineio/parser/Packet;Ljava/lang/Runnable;)V

    .line 675
    return-void
.end method

.method private sendPacket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 10

    .prologue
    .line 678
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    new-instance v5, Lio/socket/engineio/parser/Packet;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v1

    move-object v8, v2

    invoke-direct {v6, v7, v8}, Lio/socket/engineio/parser/Packet;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v4, v5

    .line 679
    move-object v5, v0

    move-object v6, v4

    move-object v7, v3

    invoke-direct {v5, v6, v7}, Lio/socket/engineio/client/Socket;->sendPacket(Lio/socket/engineio/parser/Packet;Ljava/lang/Runnable;)V

    .line 680
    return-void
.end method

.method private sendPacket(Ljava/lang/String;[BLjava/lang/Runnable;)V
    .locals 10

    .prologue
    .line 683
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    new-instance v5, Lio/socket/engineio/parser/Packet;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v1

    move-object v8, v2

    invoke-direct {v6, v7, v8}, Lio/socket/engineio/parser/Packet;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v4, v5

    .line 684
    move-object v5, v0

    move-object v6, v4

    move-object v7, v3

    invoke-direct {v5, v6, v7}, Lio/socket/engineio/client/Socket;->sendPacket(Lio/socket/engineio/parser/Packet;Ljava/lang/Runnable;)V

    .line 685
    return-void
.end method

.method public static setDefaultHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V
    .locals 2

    .prologue
    .line 217
    move-object v0, p0

    move-object v1, v0

    sput-object v1, Lio/socket/engineio/client/Socket;->defaultHostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 218
    return-void
.end method

.method public static setDefaultSSLContext(Ljavax/net/ssl/SSLContext;)V
    .locals 2

    .prologue
    .line 213
    move-object v0, p0

    move-object v1, v0

    sput-object v1, Lio/socket/engineio/client/Socket;->defaultSSLContext:Ljavax/net/ssl/SSLContext;

    .line 214
    return-void
.end method

.method private setPing()V
    .locals 9

    .prologue
    .line 560
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lio/socket/engineio/client/Socket;->pingIntervalTimer:Ljava/util/concurrent/Future;

    if-eqz v2, :cond_0

    .line 561
    move-object v2, v0

    iget-object v2, v2, Lio/socket/engineio/client/Socket;->pingIntervalTimer:Ljava/util/concurrent/Future;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/concurrent/Future;->cancel(Z)Z

    move-result v2

    .line 564
    :cond_0
    move-object v2, v0

    move-object v1, v2

    .line 565
    move-object v2, v0

    move-object v3, v0

    invoke-direct {v3}, Lio/socket/engineio/client/Socket;->getHeartbeatScheduler()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v3

    new-instance v4, Lio/socket/engineio/client/Socket$15;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    move-object v7, v1

    invoke-direct {v5, v6, v7}, Lio/socket/engineio/client/Socket$15;-><init>(Lio/socket/engineio/client/Socket;Lio/socket/engineio/client/Socket;)V

    move-object v5, v0

    iget-wide v5, v5, Lio/socket/engineio/client/Socket;->pingInterval:J

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v3, v4, v5, v6, v7}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v3

    iput-object v3, v2, Lio/socket/engineio/client/Socket;->pingIntervalTimer:Ljava/util/concurrent/Future;

    .line 578
    return-void
.end method

.method private setTransport(Lio/socket/engineio/client/Transport;)V
    .locals 10

    .prologue
    .line 295
    move-object v0, p0

    move-object v1, p1

    sget-object v3, Lio/socket/engineio/client/Socket;->logger:Ljava/util/logging/Logger;

    const-string v4, "setting transport %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v1

    iget-object v8, v8, Lio/socket/engineio/client/Transport;->name:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 296
    move-object v3, v0

    move-object v2, v3

    .line 298
    move-object v3, v0

    iget-object v3, v3, Lio/socket/engineio/client/Socket;->transport:Lio/socket/engineio/client/Transport;

    if-eqz v3, :cond_0

    .line 299
    sget-object v3, Lio/socket/engineio/client/Socket;->logger:Ljava/util/logging/Logger;

    const-string v4, "clearing existing transport %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v0

    iget-object v8, v8, Lio/socket/engineio/client/Socket;->transport:Lio/socket/engineio/client/Transport;

    iget-object v8, v8, Lio/socket/engineio/client/Transport;->name:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 300
    move-object v3, v0

    iget-object v3, v3, Lio/socket/engineio/client/Socket;->transport:Lio/socket/engineio/client/Transport;

    invoke-virtual {v3}, Lio/socket/engineio/client/Transport;->off()Lio/socket/emitter/Emitter;

    move-result-object v3

    .line 303
    :cond_0
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lio/socket/engineio/client/Socket;->transport:Lio/socket/engineio/client/Transport;

    .line 305
    move-object v3, v1

    const-string v4, "drain"

    new-instance v5, Lio/socket/engineio/client/Socket$6;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    move-object v8, v2

    invoke-direct {v6, v7, v8}, Lio/socket/engineio/client/Socket$6;-><init>(Lio/socket/engineio/client/Socket;Lio/socket/engineio/client/Socket;)V

    invoke-virtual {v3, v4, v5}, Lio/socket/engineio/client/Transport;->on(Ljava/lang/String;Lio/socket/emitter/Emitter$Listener;)Lio/socket/emitter/Emitter;

    move-result-object v3

    const-string v4, "packet"

    new-instance v5, Lio/socket/engineio/client/Socket$5;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    move-object v8, v2

    invoke-direct {v6, v7, v8}, Lio/socket/engineio/client/Socket$5;-><init>(Lio/socket/engineio/client/Socket;Lio/socket/engineio/client/Socket;)V

    .line 310
    invoke-virtual {v3, v4, v5}, Lio/socket/emitter/Emitter;->on(Ljava/lang/String;Lio/socket/emitter/Emitter$Listener;)Lio/socket/emitter/Emitter;

    move-result-object v3

    const-string v4, "error"

    new-instance v5, Lio/socket/engineio/client/Socket$4;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    move-object v8, v2

    invoke-direct {v6, v7, v8}, Lio/socket/engineio/client/Socket$4;-><init>(Lio/socket/engineio/client/Socket;Lio/socket/engineio/client/Socket;)V

    .line 315
    invoke-virtual {v3, v4, v5}, Lio/socket/emitter/Emitter;->on(Ljava/lang/String;Lio/socket/emitter/Emitter$Listener;)Lio/socket/emitter/Emitter;

    move-result-object v3

    const-string v4, "close"

    new-instance v5, Lio/socket/engineio/client/Socket$3;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    move-object v8, v2

    invoke-direct {v6, v7, v8}, Lio/socket/engineio/client/Socket$3;-><init>(Lio/socket/engineio/client/Socket;Lio/socket/engineio/client/Socket;)V

    .line 320
    invoke-virtual {v3, v4, v5}, Lio/socket/emitter/Emitter;->on(Ljava/lang/String;Lio/socket/emitter/Emitter$Listener;)Lio/socket/emitter/Emitter;

    move-result-object v3

    .line 326
    return-void
.end method


# virtual methods
.method public close()Lio/socket/engineio/client/Socket;
    .locals 5

    .prologue
    .line 711
    move-object v0, p0

    new-instance v1, Lio/socket/engineio/client/Socket$20;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lio/socket/engineio/client/Socket$20;-><init>(Lio/socket/engineio/client/Socket;)V

    invoke-static {v1}, Lio/socket/thread/EventThread;->exec(Ljava/lang/Runnable;)V

    .line 766
    move-object v1, v0

    move-object v0, v1

    return-object v0
.end method

.method filterUpgrades(Ljava/util/List;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 822
    move-object v0, p0

    move-object v1, p1

    new-instance v5, Ljava/util/ArrayList;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v5

    .line 823
    move-object v5, v1

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v3, v5

    :goto_0
    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object v4, v5

    .line 824
    move-object v5, v0

    iget-object v5, v5, Lio/socket/engineio/client/Socket;->transports:Ljava/util/List;

    move-object v6, v4

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 825
    move-object v5, v2

    move-object v6, v4

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 827
    :cond_0
    goto :goto_0

    .line 830
    :cond_1
    move-object v5, v2

    move-object v0, v5

    return-object v0
.end method

.method public id()Ljava/lang/String;
    .locals 2

    .prologue
    .line 834
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lio/socket/engineio/client/Socket;->id:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public open()Lio/socket/engineio/client/Socket;
    .locals 5

    .prologue
    .line 226
    move-object v0, p0

    new-instance v1, Lio/socket/engineio/client/Socket$2;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lio/socket/engineio/client/Socket$2;-><init>(Lio/socket/engineio/client/Socket;)V

    invoke-static {v1}, Lio/socket/thread/EventThread;->exec(Ljava/lang/Runnable;)V

    .line 251
    move-object v1, v0

    move-object v0, v1

    return-object v0
.end method

.method public send(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 642
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lio/socket/engineio/client/Socket;->send(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 643
    return-void
.end method

.method public send(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 9

    .prologue
    .line 656
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    new-instance v3, Lio/socket/engineio/client/Socket$17;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-direct {v4, v5, v6, v7}, Lio/socket/engineio/client/Socket$17;-><init>(Lio/socket/engineio/client/Socket;Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-static {v3}, Lio/socket/thread/EventThread;->exec(Ljava/lang/Runnable;)V

    .line 662
    return-void
.end method

.method public send([B)V
    .locals 5

    .prologue
    .line 646
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lio/socket/engineio/client/Socket;->send([BLjava/lang/Runnable;)V

    .line 647
    return-void
.end method

.method public send([BLjava/lang/Runnable;)V
    .locals 9

    .prologue
    .line 665
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    new-instance v3, Lio/socket/engineio/client/Socket$18;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-direct {v4, v5, v6, v7}, Lio/socket/engineio/client/Socket$18;-><init>(Lio/socket/engineio/client/Socket;[BLjava/lang/Runnable;)V

    invoke-static {v3}, Lio/socket/thread/EventThread;->exec(Ljava/lang/Runnable;)V

    .line 671
    return-void
.end method

.method public write(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 621
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lio/socket/engineio/client/Socket;->write(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 622
    return-void
.end method

.method public write(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 6

    .prologue
    .line 625
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lio/socket/engineio/client/Socket;->send(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 626
    return-void
.end method

.method public write([B)V
    .locals 5

    .prologue
    .line 629
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lio/socket/engineio/client/Socket;->write([BLjava/lang/Runnable;)V

    .line 630
    return-void
.end method

.method public write([BLjava/lang/Runnable;)V
    .locals 6

    .prologue
    .line 633
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lio/socket/engineio/client/Socket;->send([BLjava/lang/Runnable;)V

    .line 634
    return-void
.end method
