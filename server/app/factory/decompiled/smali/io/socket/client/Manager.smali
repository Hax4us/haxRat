.class public Lio/socket/client/Manager;
.super Lio/socket/emitter/Emitter;
.source "Manager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/socket/client/Manager$Options;,
        Lio/socket/client/Manager$Engine;,
        Lio/socket/client/Manager$OpenCallback;,
        Lio/socket/client/Manager$ReadyState;
    }
.end annotation


# static fields
.field public static final EVENT_CLOSE:Ljava/lang/String; = "close"

.field public static final EVENT_CONNECT_ERROR:Ljava/lang/String; = "connect_error"

.field public static final EVENT_CONNECT_TIMEOUT:Ljava/lang/String; = "connect_timeout"

.field public static final EVENT_ERROR:Ljava/lang/String; = "error"

.field public static final EVENT_OPEN:Ljava/lang/String; = "open"

.field public static final EVENT_PACKET:Ljava/lang/String; = "packet"

.field public static final EVENT_PING:Ljava/lang/String; = "ping"

.field public static final EVENT_PONG:Ljava/lang/String; = "pong"

.field public static final EVENT_RECONNECT:Ljava/lang/String; = "reconnect"

.field public static final EVENT_RECONNECTING:Ljava/lang/String; = "reconnecting"

.field public static final EVENT_RECONNECT_ATTEMPT:Ljava/lang/String; = "reconnect_attempt"

.field public static final EVENT_RECONNECT_ERROR:Ljava/lang/String; = "reconnect_error"

.field public static final EVENT_RECONNECT_FAILED:Ljava/lang/String; = "reconnect_failed"

.field public static final EVENT_TRANSPORT:Ljava/lang/String; = "transport"

.field static defaultHostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

.field static defaultSSLContext:Ljavax/net/ssl/SSLContext;

.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private _randomizationFactor:D

.field private _reconnection:Z

.field private _reconnectionAttempts:I

.field private _reconnectionDelay:J

.field private _reconnectionDelayMax:J

.field private _timeout:J

.field private backoff:Lio/socket/backo/Backoff;

.field private connecting:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lio/socket/client/Socket;",
            ">;"
        }
    .end annotation
.end field

.field private decoder:Lio/socket/parser/Parser$Decoder;

.field private encoder:Lio/socket/parser/Parser$Encoder;

.field private encoding:Z

.field engine:Lio/socket/engineio/client/Socket;

.field private lastPing:Ljava/util/Date;

.field nsps:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lio/socket/client/Socket;",
            ">;"
        }
    .end annotation
.end field

.field private opts:Lio/socket/client/Manager$Options;

.field private packetBuffer:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lio/socket/parser/Packet;",
            ">;"
        }
    .end annotation
.end field

.field readyState:Lio/socket/client/Manager$ReadyState;

.field private reconnecting:Z

.field private skipReconnect:Z

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

.field private uri:Ljava/net/URI;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lio/socket/client/Manager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lio/socket/client/Manager;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 108
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lio/socket/client/Manager;-><init>(Ljava/net/URI;Lio/socket/client/Manager$Options;)V

    .line 109
    return-void
.end method

.method public constructor <init>(Lio/socket/client/Manager$Options;)V
    .locals 5

    .prologue
    .line 116
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const/4 v3, 0x0

    move-object v4, v1

    invoke-direct {v2, v3, v4}, Lio/socket/client/Manager;-><init>(Ljava/net/URI;Lio/socket/client/Manager$Options;)V

    .line 117
    return-void
.end method

.method public constructor <init>(Ljava/net/URI;)V
    .locals 5

    .prologue
    .line 112
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lio/socket/client/Manager;-><init>(Ljava/net/URI;Lio/socket/client/Manager$Options;)V

    .line 113
    return-void
.end method

.method public constructor <init>(Ljava/net/URI;Lio/socket/client/Manager$Options;)V
    .locals 9

    .prologue
    .line 119
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    invoke-direct {v3}, Lio/socket/emitter/Emitter;-><init>()V

    .line 91
    move-object v3, v0

    new-instance v4, Ljava/util/HashSet;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    iput-object v4, v3, Lio/socket/client/Manager;->connecting:Ljava/util/Set;

    .line 120
    move-object v3, v2

    if-nez v3, :cond_0

    .line 121
    new-instance v3, Lio/socket/client/Manager$Options;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    invoke-direct {v4}, Lio/socket/client/Manager$Options;-><init>()V

    move-object v2, v3

    .line 123
    :cond_0
    move-object v3, v2

    iget-object v3, v3, Lio/socket/client/Manager$Options;->path:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 124
    move-object v3, v2

    const-string v4, "/socket.io"

    iput-object v4, v3, Lio/socket/client/Manager$Options;->path:Ljava/lang/String;

    .line 126
    :cond_1
    move-object v3, v2

    iget-object v3, v3, Lio/socket/client/Manager$Options;->sslContext:Ljavax/net/ssl/SSLContext;

    if-nez v3, :cond_2

    .line 127
    move-object v3, v2

    sget-object v4, Lio/socket/client/Manager;->defaultSSLContext:Ljavax/net/ssl/SSLContext;

    iput-object v4, v3, Lio/socket/client/Manager$Options;->sslContext:Ljavax/net/ssl/SSLContext;

    .line 129
    :cond_2
    move-object v3, v2

    iget-object v3, v3, Lio/socket/client/Manager$Options;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    if-nez v3, :cond_3

    .line 130
    move-object v3, v2

    sget-object v4, Lio/socket/client/Manager;->defaultHostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    iput-object v4, v3, Lio/socket/client/Manager$Options;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 132
    :cond_3
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lio/socket/client/Manager;->opts:Lio/socket/client/Manager$Options;

    .line 133
    move-object v3, v0

    new-instance v4, Ljava/util/concurrent/ConcurrentHashMap;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v4, v3, Lio/socket/client/Manager;->nsps:Ljava/util/concurrent/ConcurrentHashMap;

    .line 134
    move-object v3, v0

    new-instance v4, Ljava/util/LinkedList;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    iput-object v4, v3, Lio/socket/client/Manager;->subs:Ljava/util/Queue;

    .line 135
    move-object v3, v0

    move-object v4, v2

    iget-boolean v4, v4, Lio/socket/client/Manager$Options;->reconnection:Z

    invoke-virtual {v3, v4}, Lio/socket/client/Manager;->reconnection(Z)Lio/socket/client/Manager;

    move-result-object v3

    .line 136
    move-object v3, v0

    move-object v4, v2

    iget v4, v4, Lio/socket/client/Manager$Options;->reconnectionAttempts:I

    if-eqz v4, :cond_4

    move-object v4, v2

    iget v4, v4, Lio/socket/client/Manager$Options;->reconnectionAttempts:I

    :goto_0
    invoke-virtual {v3, v4}, Lio/socket/client/Manager;->reconnectionAttempts(I)Lio/socket/client/Manager;

    move-result-object v3

    .line 137
    move-object v3, v0

    move-object v4, v2

    iget-wide v4, v4, Lio/socket/client/Manager$Options;->reconnectionDelay:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_5

    move-object v4, v2

    iget-wide v4, v4, Lio/socket/client/Manager$Options;->reconnectionDelay:J

    :goto_1
    invoke-virtual {v3, v4, v5}, Lio/socket/client/Manager;->reconnectionDelay(J)Lio/socket/client/Manager;

    move-result-object v3

    .line 138
    move-object v3, v0

    move-object v4, v2

    iget-wide v4, v4, Lio/socket/client/Manager$Options;->reconnectionDelayMax:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_6

    move-object v4, v2

    iget-wide v4, v4, Lio/socket/client/Manager$Options;->reconnectionDelayMax:J

    :goto_2
    invoke-virtual {v3, v4, v5}, Lio/socket/client/Manager;->reconnectionDelayMax(J)Lio/socket/client/Manager;

    move-result-object v3

    .line 139
    move-object v3, v0

    move-object v4, v2

    iget-wide v4, v4, Lio/socket/client/Manager$Options;->randomizationFactor:D

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-eqz v4, :cond_7

    move-object v4, v2

    iget-wide v4, v4, Lio/socket/client/Manager$Options;->randomizationFactor:D

    :goto_3
    invoke-virtual {v3, v4, v5}, Lio/socket/client/Manager;->randomizationFactor(D)Lio/socket/client/Manager;

    move-result-object v3

    .line 140
    move-object v3, v0

    new-instance v4, Lio/socket/backo/Backoff;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Lio/socket/backo/Backoff;-><init>()V

    move-object v5, v0

    .line 141
    invoke-virtual {v5}, Lio/socket/client/Manager;->reconnectionDelay()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lio/socket/backo/Backoff;->setMin(J)Lio/socket/backo/Backoff;

    move-result-object v4

    move-object v5, v0

    .line 142
    invoke-virtual {v5}, Lio/socket/client/Manager;->reconnectionDelayMax()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lio/socket/backo/Backoff;->setMax(J)Lio/socket/backo/Backoff;

    move-result-object v4

    move-object v5, v0

    .line 143
    invoke-virtual {v5}, Lio/socket/client/Manager;->randomizationFactor()D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lio/socket/backo/Backoff;->setJitter(D)Lio/socket/backo/Backoff;

    move-result-object v4

    iput-object v4, v3, Lio/socket/client/Manager;->backoff:Lio/socket/backo/Backoff;

    .line 144
    move-object v3, v0

    move-object v4, v2

    iget-wide v4, v4, Lio/socket/client/Manager$Options;->timeout:J

    invoke-virtual {v3, v4, v5}, Lio/socket/client/Manager;->timeout(J)Lio/socket/client/Manager;

    move-result-object v3

    .line 145
    move-object v3, v0

    sget-object v4, Lio/socket/client/Manager$ReadyState;->CLOSED:Lio/socket/client/Manager$ReadyState;

    iput-object v4, v3, Lio/socket/client/Manager;->readyState:Lio/socket/client/Manager$ReadyState;

    .line 146
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lio/socket/client/Manager;->uri:Ljava/net/URI;

    .line 147
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lio/socket/client/Manager;->encoding:Z

    .line 148
    move-object v3, v0

    new-instance v4, Ljava/util/ArrayList;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Lio/socket/client/Manager;->packetBuffer:Ljava/util/List;

    .line 149
    move-object v3, v0

    new-instance v4, Lio/socket/parser/Parser$Encoder;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Lio/socket/parser/Parser$Encoder;-><init>()V

    iput-object v4, v3, Lio/socket/client/Manager;->encoder:Lio/socket/parser/Parser$Encoder;

    .line 150
    move-object v3, v0

    new-instance v4, Lio/socket/parser/Parser$Decoder;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Lio/socket/parser/Parser$Decoder;-><init>()V

    iput-object v4, v3, Lio/socket/client/Manager;->decoder:Lio/socket/parser/Parser$Decoder;

    .line 151
    return-void

    .line 136
    :cond_4
    const v4, 0x7fffffff

    goto/16 :goto_0

    .line 137
    :cond_5
    const-wide/16 v4, 0x3e8

    goto/16 :goto_1

    .line 138
    :cond_6
    const-wide/16 v4, 0x1388

    goto :goto_2

    .line 139
    :cond_7
    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    goto :goto_3
.end method

.method static synthetic access$000()Ljava/util/logging/Logger;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lio/socket/client/Manager;->logger:Ljava/util/logging/Logger;

    return-object v0
.end method

.method static synthetic access$100(Lio/socket/client/Manager;)Ljava/net/URI;
    .locals 2

    .prologue
    .line 20
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lio/socket/client/Manager;->uri:Ljava/net/URI;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$1000(Lio/socket/client/Manager;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 20
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lio/socket/client/Manager;->ondata(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lio/socket/client/Manager;[B)V
    .locals 4

    .prologue
    .line 20
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lio/socket/client/Manager;->ondata([B)V

    return-void
.end method

.method static synthetic access$1200(Lio/socket/client/Manager;)V
    .locals 2

    .prologue
    .line 20
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lio/socket/client/Manager;->onping()V

    return-void
.end method

.method static synthetic access$1300(Lio/socket/client/Manager;)V
    .locals 2

    .prologue
    .line 20
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lio/socket/client/Manager;->onpong()V

    return-void
.end method

.method static synthetic access$1400(Lio/socket/client/Manager;Ljava/lang/Exception;)V
    .locals 4

    .prologue
    .line 20
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lio/socket/client/Manager;->onerror(Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic access$1500(Lio/socket/client/Manager;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 20
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lio/socket/client/Manager;->onclose(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Lio/socket/client/Manager;Lio/socket/parser/Packet;)V
    .locals 4

    .prologue
    .line 20
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lio/socket/client/Manager;->ondecoded(Lio/socket/parser/Packet;)V

    return-void
.end method

.method static synthetic access$1700(Lio/socket/client/Manager;)Ljava/util/Set;
    .locals 2

    .prologue
    .line 20
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lio/socket/client/Manager;->connecting:Ljava/util/Set;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$1802(Lio/socket/client/Manager;Z)Z
    .locals 7

    .prologue
    .line 20
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput-boolean v4, v3, Lio/socket/client/Manager;->encoding:Z

    move v0, v2

    return v0
.end method

.method static synthetic access$1900(Lio/socket/client/Manager;)V
    .locals 2

    .prologue
    .line 20
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lio/socket/client/Manager;->processPacketQueue()V

    return-void
.end method

.method static synthetic access$200(Lio/socket/client/Manager;)Lio/socket/client/Manager$Options;
    .locals 2

    .prologue
    .line 20
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lio/socket/client/Manager;->opts:Lio/socket/client/Manager$Options;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$2000(Lio/socket/client/Manager;)Lio/socket/backo/Backoff;
    .locals 2

    .prologue
    .line 20
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lio/socket/client/Manager;->backoff:Lio/socket/backo/Backoff;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$2102(Lio/socket/client/Manager;Z)Z
    .locals 7

    .prologue
    .line 20
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput-boolean v4, v3, Lio/socket/client/Manager;->reconnecting:Z

    move v0, v2

    return v0
.end method

.method static synthetic access$2200(Lio/socket/client/Manager;)V
    .locals 2

    .prologue
    .line 20
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lio/socket/client/Manager;->reconnect()V

    return-void
.end method

.method static synthetic access$2300(Lio/socket/client/Manager;)V
    .locals 2

    .prologue
    .line 20
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lio/socket/client/Manager;->onreconnect()V

    return-void
.end method

.method static synthetic access$300(Lio/socket/client/Manager;)Z
    .locals 2

    .prologue
    .line 20
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lio/socket/client/Manager;->skipReconnect:Z

    move v0, v1

    return v0
.end method

.method static synthetic access$302(Lio/socket/client/Manager;Z)Z
    .locals 7

    .prologue
    .line 20
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput-boolean v4, v3, Lio/socket/client/Manager;->skipReconnect:Z

    move v0, v2

    return v0
.end method

.method static synthetic access$400(Lio/socket/client/Manager;)V
    .locals 2

    .prologue
    .line 20
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lio/socket/client/Manager;->onopen()V

    return-void
.end method

.method static synthetic access$500(Lio/socket/client/Manager;)V
    .locals 2

    .prologue
    .line 20
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lio/socket/client/Manager;->cleanup()V

    return-void
.end method

.method static synthetic access$600(Lio/socket/client/Manager;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 20
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lio/socket/client/Manager;->emitAll(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$700(Lio/socket/client/Manager;)V
    .locals 2

    .prologue
    .line 20
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lio/socket/client/Manager;->maybeReconnectOnOpen()V

    return-void
.end method

.method static synthetic access$800(Lio/socket/client/Manager;)J
    .locals 3

    .prologue
    .line 20
    move-object v0, p0

    move-object v1, v0

    iget-wide v1, v1, Lio/socket/client/Manager;->_timeout:J

    move-wide v0, v1

    return-wide v0
.end method

.method static synthetic access$900(Lio/socket/client/Manager;)Ljava/util/Queue;
    .locals 2

    .prologue
    .line 20
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lio/socket/client/Manager;->subs:Ljava/util/Queue;

    move-object v0, v1

    return-object v0
.end method

.method private cleanup()V
    .locals 5

    .prologue
    .line 488
    move-object v0, p0

    sget-object v2, Lio/socket/client/Manager;->logger:Ljava/util/logging/Logger;

    const-string v3, "cleanup"

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 491
    :goto_0
    move-object v2, v0

    iget-object v2, v2, Lio/socket/client/Manager;->subs:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/socket/client/On$Handle;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    move-object v1, v3

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-interface {v2}, Lio/socket/client/On$Handle;->destroy()V

    goto :goto_0

    .line 493
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lio/socket/client/Manager;->packetBuffer:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 494
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lio/socket/client/Manager;->encoding:Z

    .line 495
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lio/socket/client/Manager;->lastPing:Ljava/util/Date;

    .line 497
    move-object v2, v0

    iget-object v2, v2, Lio/socket/client/Manager;->decoder:Lio/socket/parser/Parser$Decoder;

    invoke-virtual {v2}, Lio/socket/parser/Parser$Decoder;->destroy()V

    .line 498
    return-void
.end method

.method private varargs emitAll(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 8

    .prologue
    .line 154
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-virtual {v5, v6, v7}, Lio/socket/client/Manager;->emit(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/emitter/Emitter;

    move-result-object v5

    .line 155
    move-object v5, v0

    iget-object v5, v5, Lio/socket/client/Manager;->nsps:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v3, v5

    :goto_0
    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/socket/client/Socket;

    move-object v4, v5

    .line 156
    move-object v5, v4

    move-object v6, v1

    move-object v7, v2

    invoke-virtual {v5, v6, v7}, Lio/socket/client/Socket;->emit(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/emitter/Emitter;

    move-result-object v5

    .line 157
    goto :goto_0

    .line 158
    :cond_0
    return-void
.end method

.method private maybeReconnectOnOpen()V
    .locals 2

    .prologue
    .line 234
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lio/socket/client/Manager;->reconnecting:Z

    if-nez v1, :cond_0

    move-object v1, v0

    iget-boolean v1, v1, Lio/socket/client/Manager;->_reconnection:Z

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lio/socket/client/Manager;->backoff:Lio/socket/backo/Backoff;

    invoke-virtual {v1}, Lio/socket/backo/Backoff;->getAttempts()I

    move-result v1

    if-nez v1, :cond_0

    .line 235
    move-object v1, v0

    invoke-direct {v1}, Lio/socket/client/Manager;->reconnect()V

    .line 237
    :cond_0
    return-void
.end method

.method private onclose(Ljava/lang/String;)V
    .locals 9

    .prologue
    .line 517
    move-object v0, p0

    move-object v1, p1

    sget-object v2, Lio/socket/client/Manager;->logger:Ljava/util/logging/Logger;

    const-string v3, "onclose"

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 518
    move-object v2, v0

    invoke-direct {v2}, Lio/socket/client/Manager;->cleanup()V

    .line 519
    move-object v2, v0

    iget-object v2, v2, Lio/socket/client/Manager;->backoff:Lio/socket/backo/Backoff;

    invoke-virtual {v2}, Lio/socket/backo/Backoff;->reset()V

    .line 520
    move-object v2, v0

    sget-object v3, Lio/socket/client/Manager$ReadyState;->CLOSED:Lio/socket/client/Manager$ReadyState;

    iput-object v3, v2, Lio/socket/client/Manager;->readyState:Lio/socket/client/Manager$ReadyState;

    .line 521
    move-object v2, v0

    const-string v3, "close"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v1

    aput-object v7, v5, v6

    invoke-virtual {v2, v3, v4}, Lio/socket/client/Manager;->emit(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/emitter/Emitter;

    move-result-object v2

    .line 523
    move-object v2, v0

    iget-boolean v2, v2, Lio/socket/client/Manager;->_reconnection:Z

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-boolean v2, v2, Lio/socket/client/Manager;->skipReconnect:Z

    if-nez v2, :cond_0

    .line 524
    move-object v2, v0

    invoke-direct {v2}, Lio/socket/client/Manager;->reconnect()V

    .line 526
    :cond_0
    return-void
.end method

.method private ondata(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 399
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lio/socket/client/Manager;->decoder:Lio/socket/parser/Parser$Decoder;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lio/socket/parser/Parser$Decoder;->add(Ljava/lang/String;)V

    .line 400
    return-void
.end method

.method private ondata([B)V
    .locals 4

    .prologue
    .line 403
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lio/socket/client/Manager;->decoder:Lio/socket/parser/Parser$Decoder;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lio/socket/parser/Parser$Decoder;->add([B)V

    .line 404
    return-void
.end method

.method private ondecoded(Lio/socket/parser/Packet;)V
    .locals 9

    .prologue
    .line 407
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string v3, "packet"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v1

    aput-object v7, v5, v6

    invoke-virtual {v2, v3, v4}, Lio/socket/client/Manager;->emit(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/emitter/Emitter;

    move-result-object v2

    .line 408
    return-void
.end method

.method private onerror(Ljava/lang/Exception;)V
    .locals 9

    .prologue
    .line 411
    move-object v0, p0

    move-object v1, p1

    sget-object v2, Lio/socket/client/Manager;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v4, "error"

    move-object v5, v1

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 412
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

    invoke-direct {v2, v3, v4}, Lio/socket/client/Manager;->emitAll(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 413
    return-void
.end method

.method private onopen()V
    .locals 9

    .prologue
    .line 337
    move-object v0, p0

    sget-object v2, Lio/socket/client/Manager;->logger:Ljava/util/logging/Logger;

    const-string v3, "open"

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 339
    move-object v2, v0

    invoke-direct {v2}, Lio/socket/client/Manager;->cleanup()V

    .line 341
    move-object v2, v0

    sget-object v3, Lio/socket/client/Manager$ReadyState;->OPEN:Lio/socket/client/Manager$ReadyState;

    iput-object v3, v2, Lio/socket/client/Manager;->readyState:Lio/socket/client/Manager$ReadyState;

    .line 342
    move-object v2, v0

    const-string v3, "open"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lio/socket/client/Manager;->emit(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/emitter/Emitter;

    move-result-object v2

    .line 344
    move-object v2, v0

    iget-object v2, v2, Lio/socket/client/Manager;->engine:Lio/socket/engineio/client/Socket;

    move-object v1, v2

    .line 345
    move-object v2, v0

    iget-object v2, v2, Lio/socket/client/Manager;->subs:Ljava/util/Queue;

    move-object v3, v1

    const-string v4, "data"

    new-instance v5, Lio/socket/client/Manager$2;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v0

    invoke-direct {v6, v7}, Lio/socket/client/Manager$2;-><init>(Lio/socket/client/Manager;)V

    invoke-static {v3, v4, v5}, Lio/socket/client/On;->on(Lio/socket/emitter/Emitter;Ljava/lang/String;Lio/socket/emitter/Emitter$Listener;)Lio/socket/client/On$Handle;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 356
    move-object v2, v0

    iget-object v2, v2, Lio/socket/client/Manager;->subs:Ljava/util/Queue;

    move-object v3, v1

    const-string v4, "ping"

    new-instance v5, Lio/socket/client/Manager$3;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v0

    invoke-direct {v6, v7}, Lio/socket/client/Manager$3;-><init>(Lio/socket/client/Manager;)V

    invoke-static {v3, v4, v5}, Lio/socket/client/On;->on(Lio/socket/emitter/Emitter;Ljava/lang/String;Lio/socket/emitter/Emitter$Listener;)Lio/socket/client/On$Handle;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 362
    move-object v2, v0

    iget-object v2, v2, Lio/socket/client/Manager;->subs:Ljava/util/Queue;

    move-object v3, v1

    const-string v4, "pong"

    new-instance v5, Lio/socket/client/Manager$4;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v0

    invoke-direct {v6, v7}, Lio/socket/client/Manager$4;-><init>(Lio/socket/client/Manager;)V

    invoke-static {v3, v4, v5}, Lio/socket/client/On;->on(Lio/socket/emitter/Emitter;Ljava/lang/String;Lio/socket/emitter/Emitter$Listener;)Lio/socket/client/On$Handle;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 368
    move-object v2, v0

    iget-object v2, v2, Lio/socket/client/Manager;->subs:Ljava/util/Queue;

    move-object v3, v1

    const-string v4, "error"

    new-instance v5, Lio/socket/client/Manager$5;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v0

    invoke-direct {v6, v7}, Lio/socket/client/Manager$5;-><init>(Lio/socket/client/Manager;)V

    invoke-static {v3, v4, v5}, Lio/socket/client/On;->on(Lio/socket/emitter/Emitter;Ljava/lang/String;Lio/socket/emitter/Emitter$Listener;)Lio/socket/client/On$Handle;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 374
    move-object v2, v0

    iget-object v2, v2, Lio/socket/client/Manager;->subs:Ljava/util/Queue;

    move-object v3, v1

    const-string v4, "close"

    new-instance v5, Lio/socket/client/Manager$6;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v0

    invoke-direct {v6, v7}, Lio/socket/client/Manager$6;-><init>(Lio/socket/client/Manager;)V

    invoke-static {v3, v4, v5}, Lio/socket/client/On;->on(Lio/socket/emitter/Emitter;Ljava/lang/String;Lio/socket/emitter/Emitter$Listener;)Lio/socket/client/On$Handle;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 380
    move-object v2, v0

    iget-object v2, v2, Lio/socket/client/Manager;->subs:Ljava/util/Queue;

    move-object v3, v0

    iget-object v3, v3, Lio/socket/client/Manager;->decoder:Lio/socket/parser/Parser$Decoder;

    sget-object v4, Lio/socket/parser/Parser$Decoder;->EVENT_DECODED:Ljava/lang/String;

    new-instance v5, Lio/socket/client/Manager$7;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v0

    invoke-direct {v6, v7}, Lio/socket/client/Manager$7;-><init>(Lio/socket/client/Manager;)V

    invoke-static {v3, v4, v5}, Lio/socket/client/On;->on(Lio/socket/emitter/Emitter;Ljava/lang/String;Lio/socket/emitter/Emitter$Listener;)Lio/socket/client/On$Handle;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 386
    return-void
.end method

.method private onping()V
    .locals 5

    .prologue
    .line 389
    move-object v0, p0

    move-object v1, v0

    new-instance v2, Ljava/util/Date;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    iput-object v2, v1, Lio/socket/client/Manager;->lastPing:Ljava/util/Date;

    .line 390
    move-object v1, v0

    const-string v2, "ping"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Lio/socket/client/Manager;->emitAll(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 391
    return-void
.end method

.method private onpong()V
    .locals 11

    .prologue
    .line 394
    move-object v0, p0

    move-object v1, v0

    const-string v2, "pong"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v7, v0

    iget-object v7, v7, Lio/socket/client/Manager;->lastPing:Ljava/util/Date;

    if-eq v6, v7, :cond_0

    new-instance v6, Ljava/util/Date;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    .line 395
    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    move-object v8, v0

    iget-object v8, v8, Lio/socket/client/Manager;->lastPing:Ljava/util/Date;

    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    sub-long/2addr v6, v8

    :goto_0
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    .line 394
    invoke-direct {v1, v2, v3}, Lio/socket/client/Manager;->emitAll(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 396
    return-void

    .line 395
    :cond_0
    const-wide/16 v6, 0x0

    goto :goto_0
.end method

.method private onreconnect()V
    .locals 9

    .prologue
    .line 589
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lio/socket/client/Manager;->backoff:Lio/socket/backo/Backoff;

    invoke-virtual {v2}, Lio/socket/backo/Backoff;->getAttempts()I

    move-result v2

    move v1, v2

    .line 590
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lio/socket/client/Manager;->reconnecting:Z

    .line 591
    move-object v2, v0

    iget-object v2, v2, Lio/socket/client/Manager;->backoff:Lio/socket/backo/Backoff;

    invoke-virtual {v2}, Lio/socket/backo/Backoff;->reset()V

    .line 592
    move-object v2, v0

    invoke-direct {v2}, Lio/socket/client/Manager;->updateSocketIds()V

    .line 593
    move-object v2, v0

    const-string v3, "reconnect"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move v7, v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4}, Lio/socket/client/Manager;->emitAll(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 594
    return-void
.end method

.method private processPacketQueue()V
    .locals 4

    .prologue
    .line 481
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lio/socket/client/Manager;->packetBuffer:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    move-object v2, v0

    iget-boolean v2, v2, Lio/socket/client/Manager;->encoding:Z

    if-nez v2, :cond_0

    .line 482
    move-object v2, v0

    iget-object v2, v2, Lio/socket/client/Manager;->packetBuffer:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/socket/parser/Packet;

    move-object v1, v2

    .line 483
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lio/socket/client/Manager;->packet(Lio/socket/parser/Packet;)V

    .line 485
    :cond_0
    return-void
.end method

.method private reconnect()V
    .locals 13

    .prologue
    .line 529
    move-object v0, p0

    move-object v5, v0

    iget-boolean v5, v5, Lio/socket/client/Manager;->reconnecting:Z

    if-nez v5, :cond_0

    move-object v5, v0

    iget-boolean v5, v5, Lio/socket/client/Manager;->skipReconnect:Z

    if-eqz v5, :cond_1

    .line 586
    :cond_0
    :goto_0
    return-void

    .line 531
    :cond_1
    move-object v5, v0

    move-object v1, v5

    .line 533
    move-object v5, v0

    iget-object v5, v5, Lio/socket/client/Manager;->backoff:Lio/socket/backo/Backoff;

    invoke-virtual {v5}, Lio/socket/backo/Backoff;->getAttempts()I

    move-result v5

    move-object v6, v0

    iget v6, v6, Lio/socket/client/Manager;->_reconnectionAttempts:I

    if-lt v5, v6, :cond_2

    .line 534
    sget-object v5, Lio/socket/client/Manager;->logger:Ljava/util/logging/Logger;

    const-string v6, "reconnect failed"

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 535
    move-object v5, v0

    iget-object v5, v5, Lio/socket/client/Manager;->backoff:Lio/socket/backo/Backoff;

    invoke-virtual {v5}, Lio/socket/backo/Backoff;->reset()V

    .line 536
    move-object v5, v0

    const-string v6, "reconnect_failed"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-direct {v5, v6, v7}, Lio/socket/client/Manager;->emitAll(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 537
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Lio/socket/client/Manager;->reconnecting:Z

    .line 586
    :goto_1
    goto :goto_0

    .line 539
    :cond_2
    move-object v5, v0

    iget-object v5, v5, Lio/socket/client/Manager;->backoff:Lio/socket/backo/Backoff;

    invoke-virtual {v5}, Lio/socket/backo/Backoff;->duration()J

    move-result-wide v5

    move-wide v2, v5

    .line 540
    sget-object v5, Lio/socket/client/Manager;->logger:Ljava/util/logging/Logger;

    const-string v6, "will wait %dms before reconnect attempt"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const/4 v9, 0x0

    move-wide v10, v2

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 542
    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Lio/socket/client/Manager;->reconnecting:Z

    .line 543
    new-instance v5, Ljava/util/Timer;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    invoke-direct {v6}, Ljava/util/Timer;-><init>()V

    move-object v4, v5

    .line 544
    move-object v5, v4

    new-instance v6, Lio/socket/client/Manager$11;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v8, v0

    move-object v9, v1

    invoke-direct {v7, v8, v9}, Lio/socket/client/Manager$11;-><init>(Lio/socket/client/Manager;Lio/socket/client/Manager;)V

    move-wide v7, v2

    invoke-virtual {v5, v6, v7, v8}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 579
    move-object v5, v0

    iget-object v5, v5, Lio/socket/client/Manager;->subs:Ljava/util/Queue;

    new-instance v6, Lio/socket/client/Manager$12;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v8, v0

    move-object v9, v4

    invoke-direct {v7, v8, v9}, Lio/socket/client/Manager$12;-><init>(Lio/socket/client/Manager;Ljava/util/Timer;)V

    invoke-interface {v5, v6}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    move-result v5

    goto :goto_1
.end method

.method private updateSocketIds()V
    .locals 5

    .prologue
    .line 164
    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lio/socket/client/Manager;->nsps:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

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

    check-cast v3, Lio/socket/client/Socket;

    move-object v2, v3

    .line 165
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lio/socket/client/Manager;->engine:Lio/socket/engineio/client/Socket;

    invoke-virtual {v4}, Lio/socket/engineio/client/Socket;->id()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lio/socket/client/Socket;->id:Ljava/lang/String;

    .line 166
    goto :goto_0

    .line 167
    :cond_0
    return-void
.end method


# virtual methods
.method close()V
    .locals 3

    .prologue
    .line 501
    move-object v0, p0

    sget-object v1, Lio/socket/client/Manager;->logger:Ljava/util/logging/Logger;

    const-string v2, "disconnect"

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 502
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lio/socket/client/Manager;->skipReconnect:Z

    .line 503
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lio/socket/client/Manager;->reconnecting:Z

    .line 504
    move-object v1, v0

    iget-object v1, v1, Lio/socket/client/Manager;->readyState:Lio/socket/client/Manager$ReadyState;

    sget-object v2, Lio/socket/client/Manager$ReadyState;->OPEN:Lio/socket/client/Manager$ReadyState;

    if-eq v1, v2, :cond_0

    .line 507
    move-object v1, v0

    invoke-direct {v1}, Lio/socket/client/Manager;->cleanup()V

    .line 509
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lio/socket/client/Manager;->backoff:Lio/socket/backo/Backoff;

    invoke-virtual {v1}, Lio/socket/backo/Backoff;->reset()V

    .line 510
    move-object v1, v0

    sget-object v2, Lio/socket/client/Manager$ReadyState;->CLOSED:Lio/socket/client/Manager$ReadyState;

    iput-object v2, v1, Lio/socket/client/Manager;->readyState:Lio/socket/client/Manager$ReadyState;

    .line 511
    move-object v1, v0

    iget-object v1, v1, Lio/socket/client/Manager;->engine:Lio/socket/engineio/client/Socket;

    if-eqz v1, :cond_1

    .line 512
    move-object v1, v0

    iget-object v1, v1, Lio/socket/client/Manager;->engine:Lio/socket/engineio/client/Socket;

    invoke-virtual {v1}, Lio/socket/engineio/client/Socket;->close()Lio/socket/engineio/client/Socket;

    move-result-object v1

    .line 514
    :cond_1
    return-void
.end method

.method destroy(Lio/socket/client/Socket;)V
    .locals 4

    .prologue
    .line 449
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lio/socket/client/Manager;->connecting:Ljava/util/Set;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v2

    .line 450
    move-object v2, v0

    iget-object v2, v2, Lio/socket/client/Manager;->connecting:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 453
    :goto_0
    return-void

    .line 452
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Lio/socket/client/Manager;->close()V

    .line 453
    goto :goto_0
.end method

.method public open()Lio/socket/client/Manager;
    .locals 3

    .prologue
    .line 240
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lio/socket/client/Manager;->open(Lio/socket/client/Manager$OpenCallback;)Lio/socket/client/Manager;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public open(Lio/socket/client/Manager$OpenCallback;)Lio/socket/client/Manager;
    .locals 7

    .prologue
    .line 250
    move-object v0, p0

    move-object v1, p1

    new-instance v2, Lio/socket/client/Manager$1;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lio/socket/client/Manager$1;-><init>(Lio/socket/client/Manager;Lio/socket/client/Manager$OpenCallback;)V

    invoke-static {v2}, Lio/socket/thread/EventThread;->exec(Ljava/lang/Runnable;)V

    .line 333
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method packet(Lio/socket/parser/Packet;)V
    .locals 10

    .prologue
    .line 456
    move-object v0, p0

    move-object v1, p1

    sget-object v3, Lio/socket/client/Manager;->logger:Ljava/util/logging/Logger;

    const-string v4, "writing packet %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v1

    aput-object v8, v6, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 457
    move-object v3, v0

    move-object v2, v3

    .line 459
    move-object v3, v2

    iget-boolean v3, v3, Lio/socket/client/Manager;->encoding:Z

    if-nez v3, :cond_0

    .line 460
    move-object v3, v2

    const/4 v4, 0x1

    iput-boolean v4, v3, Lio/socket/client/Manager;->encoding:Z

    .line 461
    move-object v3, v0

    iget-object v3, v3, Lio/socket/client/Manager;->encoder:Lio/socket/parser/Parser$Encoder;

    move-object v4, v1

    new-instance v5, Lio/socket/client/Manager$10;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    move-object v8, v2

    invoke-direct {v6, v7, v8}, Lio/socket/client/Manager$10;-><init>(Lio/socket/client/Manager;Lio/socket/client/Manager;)V

    invoke-virtual {v3, v4, v5}, Lio/socket/parser/Parser$Encoder;->encode(Lio/socket/parser/Packet;Lio/socket/parser/Parser$Encoder$Callback;)V

    .line 478
    :goto_0
    return-void

    .line 476
    :cond_0
    move-object v3, v2

    iget-object v3, v3, Lio/socket/client/Manager;->packetBuffer:Ljava/util/List;

    move-object v4, v1

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_0
.end method

.method public final randomizationFactor()D
    .locals 3

    .prologue
    .line 200
    move-object v0, p0

    move-object v1, v0

    iget-wide v1, v1, Lio/socket/client/Manager;->_randomizationFactor:D

    move-wide v0, v1

    return-wide v0
.end method

.method public randomizationFactor(D)Lio/socket/client/Manager;
    .locals 6

    .prologue
    .line 204
    move-object v0, p0

    move-wide v1, p1

    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Lio/socket/client/Manager;->_randomizationFactor:D

    .line 205
    move-object v3, v0

    iget-object v3, v3, Lio/socket/client/Manager;->backoff:Lio/socket/backo/Backoff;

    if-eqz v3, :cond_0

    .line 206
    move-object v3, v0

    iget-object v3, v3, Lio/socket/client/Manager;->backoff:Lio/socket/backo/Backoff;

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Lio/socket/backo/Backoff;->setJitter(D)Lio/socket/backo/Backoff;

    move-result-object v3

    .line 208
    :cond_0
    move-object v3, v0

    move-object v0, v3

    return-object v0
.end method

.method public reconnection(Z)Lio/socket/client/Manager;
    .locals 4

    .prologue
    .line 174
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lio/socket/client/Manager;->_reconnection:Z

    .line 175
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public reconnection()Z
    .locals 2

    .prologue
    .line 170
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lio/socket/client/Manager;->_reconnection:Z

    move v0, v1

    return v0
.end method

.method public reconnectionAttempts()I
    .locals 2

    .prologue
    .line 179
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lio/socket/client/Manager;->_reconnectionAttempts:I

    move v0, v1

    return v0
.end method

.method public reconnectionAttempts(I)Lio/socket/client/Manager;
    .locals 4

    .prologue
    .line 183
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lio/socket/client/Manager;->_reconnectionAttempts:I

    .line 184
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public final reconnectionDelay()J
    .locals 3

    .prologue
    .line 188
    move-object v0, p0

    move-object v1, v0

    iget-wide v1, v1, Lio/socket/client/Manager;->_reconnectionDelay:J

    move-wide v0, v1

    return-wide v0
.end method

.method public reconnectionDelay(J)Lio/socket/client/Manager;
    .locals 6

    .prologue
    .line 192
    move-object v0, p0

    move-wide v1, p1

    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Lio/socket/client/Manager;->_reconnectionDelay:J

    .line 193
    move-object v3, v0

    iget-object v3, v3, Lio/socket/client/Manager;->backoff:Lio/socket/backo/Backoff;

    if-eqz v3, :cond_0

    .line 194
    move-object v3, v0

    iget-object v3, v3, Lio/socket/client/Manager;->backoff:Lio/socket/backo/Backoff;

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Lio/socket/backo/Backoff;->setMin(J)Lio/socket/backo/Backoff;

    move-result-object v3

    .line 196
    :cond_0
    move-object v3, v0

    move-object v0, v3

    return-object v0
.end method

.method public final reconnectionDelayMax()J
    .locals 3

    .prologue
    .line 212
    move-object v0, p0

    move-object v1, v0

    iget-wide v1, v1, Lio/socket/client/Manager;->_reconnectionDelayMax:J

    move-wide v0, v1

    return-wide v0
.end method

.method public reconnectionDelayMax(J)Lio/socket/client/Manager;
    .locals 6

    .prologue
    .line 216
    move-object v0, p0

    move-wide v1, p1

    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Lio/socket/client/Manager;->_reconnectionDelayMax:J

    .line 217
    move-object v3, v0

    iget-object v3, v3, Lio/socket/client/Manager;->backoff:Lio/socket/backo/Backoff;

    if-eqz v3, :cond_0

    .line 218
    move-object v3, v0

    iget-object v3, v3, Lio/socket/client/Manager;->backoff:Lio/socket/backo/Backoff;

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Lio/socket/backo/Backoff;->setMax(J)Lio/socket/backo/Backoff;

    move-result-object v3

    .line 220
    :cond_0
    move-object v3, v0

    move-object v0, v3

    return-object v0
.end method

.method public socket(Ljava/lang/String;)Lio/socket/client/Socket;
    .locals 14

    .prologue
    .line 422
    move-object v0, p0

    move-object v1, p1

    move-object v6, v0

    iget-object v6, v6, Lio/socket/client/Manager;->nsps:Ljava/util/concurrent/ConcurrentHashMap;

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/socket/client/Socket;

    move-object v2, v6

    .line 423
    move-object v6, v2

    if-nez v6, :cond_0

    .line 424
    new-instance v6, Lio/socket/client/Socket;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    move-object v8, v0

    move-object v9, v1

    invoke-direct {v7, v8, v9}, Lio/socket/client/Socket;-><init>(Lio/socket/client/Manager;Ljava/lang/String;)V

    move-object v2, v6

    .line 425
    move-object v6, v0

    iget-object v6, v6, Lio/socket/client/Manager;->nsps:Ljava/util/concurrent/ConcurrentHashMap;

    move-object v7, v1

    move-object v8, v2

    invoke-virtual {v6, v7, v8}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/socket/client/Socket;

    move-object v3, v6

    .line 426
    move-object v6, v3

    if-eqz v6, :cond_1

    .line 427
    move-object v6, v3

    move-object v2, v6

    .line 445
    :cond_0
    :goto_0
    move-object v6, v2

    move-object v0, v6

    return-object v0

    .line 429
    :cond_1
    move-object v6, v0

    move-object v4, v6

    .line 430
    move-object v6, v2

    move-object v5, v6

    .line 431
    move-object v6, v2

    const-string v7, "connecting"

    new-instance v8, Lio/socket/client/Manager$8;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    move-object v10, v0

    move-object v11, v4

    move-object v12, v5

    invoke-direct {v9, v10, v11, v12}, Lio/socket/client/Manager$8;-><init>(Lio/socket/client/Manager;Lio/socket/client/Manager;Lio/socket/client/Socket;)V

    invoke-virtual {v6, v7, v8}, Lio/socket/client/Socket;->on(Ljava/lang/String;Lio/socket/emitter/Emitter$Listener;)Lio/socket/emitter/Emitter;

    move-result-object v6

    .line 437
    move-object v6, v2

    const-string v7, "connect"

    new-instance v8, Lio/socket/client/Manager$9;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    move-object v10, v0

    move-object v11, v5

    move-object v12, v4

    invoke-direct {v9, v10, v11, v12}, Lio/socket/client/Manager$9;-><init>(Lio/socket/client/Manager;Lio/socket/client/Socket;Lio/socket/client/Manager;)V

    invoke-virtual {v6, v7, v8}, Lio/socket/client/Socket;->on(Ljava/lang/String;Lio/socket/emitter/Emitter$Listener;)Lio/socket/emitter/Emitter;

    move-result-object v6

    goto :goto_0
.end method

.method public timeout()J
    .locals 3

    .prologue
    .line 224
    move-object v0, p0

    move-object v1, v0

    iget-wide v1, v1, Lio/socket/client/Manager;->_timeout:J

    move-wide v0, v1

    return-wide v0
.end method

.method public timeout(J)Lio/socket/client/Manager;
    .locals 6

    .prologue
    .line 228
    move-object v0, p0

    move-wide v1, p1

    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Lio/socket/client/Manager;->_timeout:J

    .line 229
    move-object v3, v0

    move-object v0, v3

    return-object v0
.end method
