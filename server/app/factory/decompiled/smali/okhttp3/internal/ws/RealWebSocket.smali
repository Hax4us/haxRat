.class public final Lokhttp3/internal/ws/RealWebSocket;
.super Ljava/lang/Object;
.source "RealWebSocket.java"

# interfaces
.implements Lokhttp3/WebSocket;
.implements Lokhttp3/internal/ws/WebSocketReader$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/ws/RealWebSocket$CancelRunnable;,
        Lokhttp3/internal/ws/RealWebSocket$ClientStreams;,
        Lokhttp3/internal/ws/RealWebSocket$Streams;,
        Lokhttp3/internal/ws/RealWebSocket$Close;,
        Lokhttp3/internal/ws/RealWebSocket$Message;,
        Lokhttp3/internal/ws/RealWebSocket$PingRunnable;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final CANCEL_AFTER_CLOSE_MILLIS:J = 0xea60L

.field private static final MAX_QUEUE_SIZE:J = 0x1000000L

.field private static final ONLY_HTTP1:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokhttp3/Protocol;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private call:Lokhttp3/Call;

.field private cancelFuture:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation
.end field

.field private enqueuedClose:Z

.field private executor:Ljava/util/concurrent/ScheduledExecutorService;

.field private failed:Z

.field private final key:Ljava/lang/String;

.field final listener:Lokhttp3/WebSocketListener;

.field private final messageAndCloseQueue:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final originalRequest:Lokhttp3/Request;

.field pingCount:I

.field pongCount:I

.field private final pongQueue:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Lokio/ByteString;",
            ">;"
        }
    .end annotation
.end field

.field private queueSize:J

.field private final random:Ljava/util/Random;

.field private reader:Lokhttp3/internal/ws/WebSocketReader;

.field private receivedCloseCode:I

.field private receivedCloseReason:Ljava/lang/String;

.field private streams:Lokhttp3/internal/ws/RealWebSocket$Streams;

.field private writer:Lokhttp3/internal/ws/WebSocketWriter;

.field private final writerRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const-class v0, Lokhttp3/internal/ws/RealWebSocket;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lokhttp3/internal/ws/RealWebSocket;->$assertionsDisabled:Z

    .line 53
    sget-object v0, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/ws/RealWebSocket;->ONLY_HTTP1:Ljava/util/List;

    return-void

    .line 52
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lokhttp3/Request;Lokhttp3/WebSocketListener;Ljava/util/Random;)V
    .locals 10

    .prologue
    .line 131
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 99
    move-object v5, v0

    new-instance v6, Ljava/util/ArrayDeque;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v6, v5, Lokhttp3/internal/ws/RealWebSocket;->pongQueue:Ljava/util/ArrayDeque;

    .line 102
    move-object v5, v0

    new-instance v6, Ljava/util/ArrayDeque;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v6, v5, Lokhttp3/internal/ws/RealWebSocket;->messageAndCloseQueue:Ljava/util/ArrayDeque;

    .line 117
    move-object v5, v0

    const/4 v6, -0x1

    iput v6, v5, Lokhttp3/internal/ws/RealWebSocket;->receivedCloseCode:I

    .line 132
    const-string v5, "GET"

    move-object v6, v1

    invoke-virtual {v6}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 133
    new-instance v5, Ljava/lang/IllegalArgumentException;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Request must be GET: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v1

    invoke-virtual {v8}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 135
    :cond_0
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lokhttp3/internal/ws/RealWebSocket;->originalRequest:Lokhttp3/Request;

    .line 136
    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Lokhttp3/internal/ws/RealWebSocket;->listener:Lokhttp3/WebSocketListener;

    .line 137
    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Lokhttp3/internal/ws/RealWebSocket;->random:Ljava/util/Random;

    .line 139
    const/16 v5, 0x10

    new-array v5, v5, [B

    move-object v4, v5

    .line 140
    move-object v5, v3

    move-object v6, v4

    invoke-virtual {v5, v6}, Ljava/util/Random;->nextBytes([B)V

    .line 141
    move-object v5, v0

    move-object v6, v4

    invoke-static {v6}, Lokio/ByteString;->of([B)Lokio/ByteString;

    move-result-object v6

    invoke-virtual {v6}, Lokio/ByteString;->base64()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lokhttp3/internal/ws/RealWebSocket;->key:Ljava/lang/String;

    .line 143
    move-object v5, v0

    new-instance v6, Lokhttp3/internal/ws/RealWebSocket$1;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v0

    invoke-direct {v7, v8}, Lokhttp3/internal/ws/RealWebSocket$1;-><init>(Lokhttp3/internal/ws/RealWebSocket;)V

    iput-object v6, v5, Lokhttp3/internal/ws/RealWebSocket;->writerRunnable:Ljava/lang/Runnable;

    .line 153
    return-void
.end method

.method static synthetic access$100(Lokhttp3/internal/ws/RealWebSocket;)V
    .locals 2

    .prologue
    .line 52
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lokhttp3/internal/ws/RealWebSocket;->writePingFrame()V

    return-void
.end method

.method private runWriter()V
    .locals 4

    .prologue
    .line 401
    move-object v0, p0

    sget-boolean v1, Lokhttp3/internal/ws/RealWebSocket;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    move-object v1, v0

    invoke-static {v1}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 403
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lokhttp3/internal/ws/RealWebSocket;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v1, :cond_1

    .line 404
    move-object v1, v0

    iget-object v1, v1, Lokhttp3/internal/ws/RealWebSocket;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    move-object v2, v0

    iget-object v2, v2, Lokhttp3/internal/ws/RealWebSocket;->writerRunnable:Ljava/lang/Runnable;

    invoke-interface {v1, v2}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 406
    :cond_1
    return-void
.end method

.method private declared-synchronized send(Lokio/ByteString;I)Z
    .locals 10

    .prologue
    .line 350
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v8, p0

    monitor-enter v8

    move-object v3, v0

    :try_start_0
    iget-boolean v3, v3, Lokhttp3/internal/ws/RealWebSocket;->failed:Z

    if-nez v3, :cond_0

    move-object v3, v0

    iget-boolean v3, v3, Lokhttp3/internal/ws/RealWebSocket;->enqueuedClose:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    :cond_0
    const/4 v3, 0x0

    move v0, v3

    .line 362
    :goto_0
    monitor-exit v8

    return v0

    .line 353
    :cond_1
    move-object v3, v0

    :try_start_1
    iget-wide v3, v3, Lokhttp3/internal/ws/RealWebSocket;->queueSize:J

    move-object v5, v1

    invoke-virtual {v5}, Lokio/ByteString;->size()I

    move-result v5

    int-to-long v5, v5

    add-long/2addr v3, v5

    const-wide/32 v5, 0x1000000

    cmp-long v3, v3, v5

    if-lez v3, :cond_2

    .line 354
    move-object v3, v0

    const/16 v4, 0x3e9

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lokhttp3/internal/ws/RealWebSocket;->close(ILjava/lang/String;)Z

    move-result v3

    .line 355
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 359
    :cond_2
    move-object v3, v0

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    iget-wide v4, v4, Lokhttp3/internal/ws/RealWebSocket;->queueSize:J

    move-object v6, v1

    invoke-virtual {v6}, Lokio/ByteString;->size()I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    iput-wide v4, v3, Lokhttp3/internal/ws/RealWebSocket;->queueSize:J

    .line 360
    move-object v3, v0

    iget-object v3, v3, Lokhttp3/internal/ws/RealWebSocket;->messageAndCloseQueue:Ljava/util/ArrayDeque;

    new-instance v4, Lokhttp3/internal/ws/RealWebSocket$Message;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move v6, v2

    move-object v7, v1

    invoke-direct {v5, v6, v7}, Lokhttp3/internal/ws/RealWebSocket$Message;-><init>(ILokio/ByteString;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 361
    move-object v3, v0

    invoke-direct {v3}, Lokhttp3/internal/ws/RealWebSocket;->runWriter()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 362
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0

    .line 350
    :catchall_0
    move-exception v0

    monitor-exit v8

    throw v0
.end method

.method private writePingFrame()V
    .locals 8

    .prologue
    .line 497
    move-object v0, p0

    move-object v4, v0

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v2, v5

    monitor-enter v4

    .line 498
    move-object v4, v0

    :try_start_0
    iget-boolean v4, v4, Lokhttp3/internal/ws/RealWebSocket;->failed:Z

    if-eqz v4, :cond_0

    move-object v4, v2

    monitor-exit v4

    .line 507
    :goto_0
    return-void

    .line 499
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lokhttp3/internal/ws/RealWebSocket;->writer:Lokhttp3/internal/ws/WebSocketWriter;

    move-object v1, v4

    .line 500
    move-object v4, v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 503
    move-object v4, v1

    :try_start_1
    sget-object v5, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    invoke-virtual {v4, v5}, Lokhttp3/internal/ws/WebSocketWriter;->writePing(Lokio/ByteString;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 507
    :goto_1
    goto :goto_0

    .line 500
    :catchall_0
    move-exception v4

    move-object v3, v4

    move-object v4, v2

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v4, v3

    throw v4

    .line 504
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 505
    move-object v4, v0

    move-object v5, v2

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lokhttp3/internal/ws/RealWebSocket;->failWebSocket(Ljava/lang/Exception;Lokhttp3/Response;)V

    goto :goto_1
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 164
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/internal/ws/RealWebSocket;->call:Lokhttp3/Call;

    invoke-interface {v1}, Lokhttp3/Call;->cancel()V

    .line 165
    return-void
.end method

.method checkResponse(Lokhttp3/Response;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    .prologue
    .line 213
    move-object v0, p0

    move-object v1, p1

    move-object v6, v1

    invoke-virtual {v6}, Lokhttp3/Response;->code()I

    move-result v6

    const/16 v7, 0x65

    if-eq v6, v7, :cond_0

    .line 214
    new-instance v6, Ljava/net/ProtocolException;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v10, v8

    move-object v8, v10

    move-object v9, v10

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Expected HTTP 101 response but was \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v1

    .line 215
    invoke-virtual {v9}, Lokhttp3/Response;->code()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v1

    invoke-virtual {v9}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 218
    :cond_0
    move-object v6, v1

    const-string v7, "Connection"

    invoke-virtual {v6, v7}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v2, v6

    .line 219
    const-string v6, "Upgrade"

    move-object v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 220
    new-instance v6, Ljava/net/ProtocolException;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v10, v8

    move-object v8, v10

    move-object v9, v10

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Expected \'Connection\' header value \'Upgrade\' but was \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 224
    :cond_1
    move-object v6, v1

    const-string v7, "Upgrade"

    invoke-virtual {v6, v7}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v3, v6

    .line 225
    const-string v6, "websocket"

    move-object v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 226
    new-instance v6, Ljava/net/ProtocolException;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v10, v8

    move-object v8, v10

    move-object v9, v10

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Expected \'Upgrade\' header value \'websocket\' but was \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 230
    :cond_2
    move-object v6, v1

    const-string v7, "Sec-WebSocket-Accept"

    invoke-virtual {v6, v7}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    .line 231
    new-instance v6, Ljava/lang/StringBuilder;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v7, v0

    iget-object v7, v7, Lokhttp3/internal/ws/RealWebSocket;->key:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "258EAFA5-E914-47DA-95CA-C5AB0DC85B11"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v6

    .line 232
    invoke-virtual {v6}, Lokio/ByteString;->sha1()Lokio/ByteString;

    move-result-object v6

    invoke-virtual {v6}, Lokio/ByteString;->base64()Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    .line 233
    move-object v6, v5

    move-object v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 234
    new-instance v6, Ljava/net/ProtocolException;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v10, v8

    move-object v8, v10

    move-object v9, v10

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Expected \'Sec-WebSocket-Accept\' header value \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v5

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\' but was \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v4

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 237
    :cond_3
    return-void
.end method

.method public close(ILjava/lang/String;)Z
    .locals 8

    .prologue
    .line 375
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, v0

    move v4, v1

    move-object v5, v2

    const-wide/32 v6, 0xea60

    invoke-virtual {v3, v4, v5, v6, v7}, Lokhttp3/internal/ws/RealWebSocket;->close(ILjava/lang/String;J)Z

    move-result v3

    move v0, v3

    return v0
.end method

.method declared-synchronized close(ILjava/lang/String;J)Z
    .locals 15

    .prologue
    .line 379
    move-object v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    move-object v13, p0

    monitor-enter v13

    move v6, v1

    :try_start_0
    invoke-static {v6}, Lokhttp3/internal/ws/WebSocketProtocol;->validateCloseCode(I)V

    .line 381
    const/4 v6, 0x0

    move-object v5, v6

    .line 382
    move-object v6, v2

    if-eqz v6, :cond_0

    .line 383
    move-object v6, v2

    invoke-static {v6}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v6

    move-object v5, v6

    .line 384
    move-object v6, v5

    invoke-virtual {v6}, Lokio/ByteString;->size()I

    move-result v6

    int-to-long v6, v6

    const-wide/16 v8, 0x7b

    cmp-long v6, v6, v8

    if-lez v6, :cond_0

    .line 385
    new-instance v6, Ljava/lang/IllegalArgumentException;

    move-object v14, v6

    move-object v6, v14

    move-object v7, v14

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "reason.size() > 123: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 379
    :catchall_0
    move-exception v0

    monitor-exit v13

    throw v0

    .line 389
    :cond_0
    move-object v6, v0

    :try_start_1
    iget-boolean v6, v6, Lokhttp3/internal/ws/RealWebSocket;->failed:Z

    if-nez v6, :cond_1

    move-object v6, v0

    iget-boolean v6, v6, Lokhttp3/internal/ws/RealWebSocket;->enqueuedClose:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v6, :cond_2

    :cond_1
    const/4 v6, 0x0

    move v0, v6

    .line 397
    :goto_0
    monitor-exit v13

    return v0

    .line 392
    :cond_2
    move-object v6, v0

    const/4 v7, 0x1

    :try_start_2
    iput-boolean v7, v6, Lokhttp3/internal/ws/RealWebSocket;->enqueuedClose:Z

    .line 395
    move-object v6, v0

    iget-object v6, v6, Lokhttp3/internal/ws/RealWebSocket;->messageAndCloseQueue:Ljava/util/ArrayDeque;

    new-instance v7, Lokhttp3/internal/ws/RealWebSocket$Close;

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    move v9, v1

    move-object v10, v5

    move-wide v11, v3

    invoke-direct {v8, v9, v10, v11, v12}, Lokhttp3/internal/ws/RealWebSocket$Close;-><init>(ILokio/ByteString;J)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    move-result v6

    .line 396
    move-object v6, v0

    invoke-direct {v6}, Lokhttp3/internal/ws/RealWebSocket;->runWriter()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 397
    const/4 v6, 0x1

    move v0, v6

    goto :goto_0
.end method

.method public connect(Lokhttp3/OkHttpClient;)V
    .locals 11

    .prologue
    .line 168
    move-object v0, p0

    move-object v1, p1

    move-object v4, v1

    invoke-virtual {v4}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v4

    sget-object v5, Lokhttp3/internal/ws/RealWebSocket;->ONLY_HTTP1:Ljava/util/List;

    .line 169
    invoke-virtual {v4, v5}, Lokhttp3/OkHttpClient$Builder;->protocols(Ljava/util/List;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v4

    .line 170
    invoke-virtual {v4}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v4

    move-object v1, v4

    .line 171
    move-object v4, v1

    invoke-virtual {v4}, Lokhttp3/OkHttpClient;->pingIntervalMillis()I

    move-result v4

    move v2, v4

    .line 172
    move-object v4, v0

    iget-object v4, v4, Lokhttp3/internal/ws/RealWebSocket;->originalRequest:Lokhttp3/Request;

    invoke-virtual {v4}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v4

    const-string v5, "Upgrade"

    const-string v6, "websocket"

    .line 173
    invoke-virtual {v4, v5, v6}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v4

    const-string v5, "Connection"

    const-string v6, "Upgrade"

    .line 174
    invoke-virtual {v4, v5, v6}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v4

    const-string v5, "Sec-WebSocket-Key"

    move-object v6, v0

    iget-object v6, v6, Lokhttp3/internal/ws/RealWebSocket;->key:Ljava/lang/String;

    .line 175
    invoke-virtual {v4, v5, v6}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v4

    const-string v5, "Sec-WebSocket-Version"

    const-string v6, "13"

    .line 176
    invoke-virtual {v4, v5, v6}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v4

    .line 177
    invoke-virtual {v4}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v4

    move-object v3, v4

    .line 178
    move-object v4, v0

    sget-object v5, Lokhttp3/internal/Internal;->instance:Lokhttp3/internal/Internal;

    move-object v6, v1

    move-object v7, v3

    invoke-virtual {v5, v6, v7}, Lokhttp3/internal/Internal;->newWebSocketCall(Lokhttp3/OkHttpClient;Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v5

    iput-object v5, v4, Lokhttp3/internal/ws/RealWebSocket;->call:Lokhttp3/Call;

    .line 179
    move-object v4, v0

    iget-object v4, v4, Lokhttp3/internal/ws/RealWebSocket;->call:Lokhttp3/Call;

    new-instance v5, Lokhttp3/internal/ws/RealWebSocket$2;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    move-object v8, v3

    move v9, v2

    invoke-direct {v6, v7, v8, v9}, Lokhttp3/internal/ws/RealWebSocket$2;-><init>(Lokhttp3/internal/ws/RealWebSocket;Lokhttp3/Request;I)V

    invoke-interface {v4, v5}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 210
    return-void
.end method

.method failWebSocket(Ljava/lang/Exception;Lokhttp3/Response;)V
    .locals 12

    .prologue
    .line 511
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v7, v0

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v4, v8

    monitor-enter v7

    .line 512
    move-object v7, v0

    :try_start_0
    iget-boolean v7, v7, Lokhttp3/internal/ws/RealWebSocket;->failed:Z

    if-eqz v7, :cond_0

    move-object v7, v4

    monitor-exit v7

    .line 525
    :goto_0
    return-void

    .line 513
    :cond_0
    move-object v7, v0

    const/4 v8, 0x1

    iput-boolean v8, v7, Lokhttp3/internal/ws/RealWebSocket;->failed:Z

    .line 514
    move-object v7, v0

    iget-object v7, v7, Lokhttp3/internal/ws/RealWebSocket;->streams:Lokhttp3/internal/ws/RealWebSocket$Streams;

    move-object v3, v7

    .line 515
    move-object v7, v0

    const/4 v8, 0x0

    iput-object v8, v7, Lokhttp3/internal/ws/RealWebSocket;->streams:Lokhttp3/internal/ws/RealWebSocket$Streams;

    .line 516
    move-object v7, v0

    iget-object v7, v7, Lokhttp3/internal/ws/RealWebSocket;->cancelFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v7, :cond_1

    move-object v7, v0

    iget-object v7, v7, Lokhttp3/internal/ws/RealWebSocket;->cancelFuture:Ljava/util/concurrent/ScheduledFuture;

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    move-result v7

    .line 517
    :cond_1
    move-object v7, v0

    iget-object v7, v7, Lokhttp3/internal/ws/RealWebSocket;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v7, :cond_2

    move-object v7, v0

    iget-object v7, v7, Lokhttp3/internal/ws/RealWebSocket;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v7}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    .line 518
    :cond_2
    move-object v7, v4

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 521
    move-object v7, v0

    :try_start_1
    iget-object v7, v7, Lokhttp3/internal/ws/RealWebSocket;->listener:Lokhttp3/WebSocketListener;

    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    invoke-virtual {v7, v8, v9, v10}, Lokhttp3/WebSocketListener;->onFailure(Lokhttp3/WebSocket;Ljava/lang/Throwable;Lokhttp3/Response;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 523
    move-object v7, v3

    invoke-static {v7}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 525
    goto :goto_0

    .line 518
    :catchall_0
    move-exception v7

    move-object v5, v7

    move-object v7, v4

    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v7, v5

    throw v7

    .line 523
    :catchall_1
    move-exception v7

    move-object v6, v7

    move-object v7, v3

    invoke-static {v7}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    move-object v7, v6

    throw v7
.end method

.method public initReaderAndWriter(Ljava/lang/String;JLokhttp3/internal/ws/RealWebSocket$Streams;)V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 241
    move-object v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-object/from16 v4, p4

    move-object v7, v0

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    move-object v5, v8

    monitor-enter v7

    .line 242
    move-object v7, v0

    move-object v8, v4

    :try_start_0
    iput-object v8, v7, Lokhttp3/internal/ws/RealWebSocket;->streams:Lokhttp3/internal/ws/RealWebSocket$Streams;

    .line 243
    move-object v7, v0

    new-instance v8, Lokhttp3/internal/ws/WebSocketWriter;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move-object v10, v4

    iget-boolean v10, v10, Lokhttp3/internal/ws/RealWebSocket$Streams;->client:Z

    move-object v11, v4

    iget-object v11, v11, Lokhttp3/internal/ws/RealWebSocket$Streams;->sink:Lokio/BufferedSink;

    move-object v12, v0

    iget-object v12, v12, Lokhttp3/internal/ws/RealWebSocket;->random:Ljava/util/Random;

    invoke-direct {v9, v10, v11, v12}, Lokhttp3/internal/ws/WebSocketWriter;-><init>(ZLokio/BufferedSink;Ljava/util/Random;)V

    iput-object v8, v7, Lokhttp3/internal/ws/RealWebSocket;->writer:Lokhttp3/internal/ws/WebSocketWriter;

    .line 244
    move-object v7, v0

    new-instance v8, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    const/4 v10, 0x1

    move-object v11, v1

    const/4 v12, 0x0

    invoke-static {v11, v12}, Lokhttp3/internal/Util;->threadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    iput-object v8, v7, Lokhttp3/internal/ws/RealWebSocket;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 245
    move-wide v7, v2

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-eqz v7, :cond_0

    .line 246
    move-object v7, v0

    iget-object v7, v7, Lokhttp3/internal/ws/RealWebSocket;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v8, Lokhttp3/internal/ws/RealWebSocket$PingRunnable;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move-object v10, v0

    const/4 v11, 0x0

    invoke-direct {v9, v10, v11}, Lokhttp3/internal/ws/RealWebSocket$PingRunnable;-><init>(Lokhttp3/internal/ws/RealWebSocket;Lokhttp3/internal/ws/RealWebSocket$1;)V

    move-wide v9, v2

    move-wide v11, v2

    sget-object v13, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v7 .. v13}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v7

    .line 249
    :cond_0
    move-object v7, v0

    iget-object v7, v7, Lokhttp3/internal/ws/RealWebSocket;->messageAndCloseQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v7}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    .line 250
    move-object v7, v0

    invoke-direct {v7}, Lokhttp3/internal/ws/RealWebSocket;->runWriter()V

    .line 252
    :cond_1
    move-object v7, v5

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    move-object v7, v0

    new-instance v8, Lokhttp3/internal/ws/WebSocketReader;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move-object v10, v4

    iget-boolean v10, v10, Lokhttp3/internal/ws/RealWebSocket$Streams;->client:Z

    move-object v11, v4

    iget-object v11, v11, Lokhttp3/internal/ws/RealWebSocket$Streams;->source:Lokio/BufferedSource;

    move-object v12, v0

    invoke-direct {v9, v10, v11, v12}, Lokhttp3/internal/ws/WebSocketReader;-><init>(ZLokio/BufferedSource;Lokhttp3/internal/ws/WebSocketReader$FrameCallback;)V

    iput-object v8, v7, Lokhttp3/internal/ws/RealWebSocket;->reader:Lokhttp3/internal/ws/WebSocketReader;

    .line 255
    return-void

    .line 252
    :catchall_0
    move-exception v7

    move-object v6, v7

    move-object v7, v5

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v7, v6

    throw v7
.end method

.method public loopReader()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 259
    move-object v0, p0

    :goto_0
    move-object v1, v0

    iget v1, v1, Lokhttp3/internal/ws/RealWebSocket;->receivedCloseCode:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 261
    move-object v1, v0

    iget-object v1, v1, Lokhttp3/internal/ws/RealWebSocket;->reader:Lokhttp3/internal/ws/WebSocketReader;

    invoke-virtual {v1}, Lokhttp3/internal/ws/WebSocketReader;->processNextFrame()V

    goto :goto_0

    .line 263
    :cond_0
    return-void
.end method

.method public onReadClose(ILjava/lang/String;)V
    .locals 12

    .prologue
    .line 310
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v7, v1

    const/4 v8, -0x1

    if-ne v7, v8, :cond_0

    new-instance v7, Ljava/lang/IllegalArgumentException;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    invoke-direct {v8}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v7

    .line 312
    :cond_0
    const/4 v7, 0x0

    move-object v3, v7

    .line 313
    move-object v7, v0

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v4, v8

    monitor-enter v7

    .line 314
    move-object v7, v0

    :try_start_0
    iget v7, v7, Lokhttp3/internal/ws/RealWebSocket;->receivedCloseCode:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_1

    new-instance v7, Ljava/lang/IllegalStateException;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const-string v9, "already closed"

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 323
    :catchall_0
    move-exception v7

    move-object v5, v7

    move-object v7, v4

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v7, v5

    throw v7

    .line 315
    :cond_1
    move-object v7, v0

    move v8, v1

    :try_start_1
    iput v8, v7, Lokhttp3/internal/ws/RealWebSocket;->receivedCloseCode:I

    .line 316
    move-object v7, v0

    move-object v8, v2

    iput-object v8, v7, Lokhttp3/internal/ws/RealWebSocket;->receivedCloseReason:Ljava/lang/String;

    .line 317
    move-object v7, v0

    iget-boolean v7, v7, Lokhttp3/internal/ws/RealWebSocket;->enqueuedClose:Z

    if-eqz v7, :cond_3

    move-object v7, v0

    iget-object v7, v7, Lokhttp3/internal/ws/RealWebSocket;->messageAndCloseQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v7}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 318
    move-object v7, v0

    iget-object v7, v7, Lokhttp3/internal/ws/RealWebSocket;->streams:Lokhttp3/internal/ws/RealWebSocket$Streams;

    move-object v3, v7

    .line 319
    move-object v7, v0

    const/4 v8, 0x0

    iput-object v8, v7, Lokhttp3/internal/ws/RealWebSocket;->streams:Lokhttp3/internal/ws/RealWebSocket$Streams;

    .line 320
    move-object v7, v0

    iget-object v7, v7, Lokhttp3/internal/ws/RealWebSocket;->cancelFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v7, :cond_2

    move-object v7, v0

    iget-object v7, v7, Lokhttp3/internal/ws/RealWebSocket;->cancelFuture:Ljava/util/concurrent/ScheduledFuture;

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    move-result v7

    .line 321
    :cond_2
    move-object v7, v0

    iget-object v7, v7, Lokhttp3/internal/ws/RealWebSocket;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v7}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    .line 323
    :cond_3
    move-object v7, v4

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 326
    move-object v7, v0

    :try_start_2
    iget-object v7, v7, Lokhttp3/internal/ws/RealWebSocket;->listener:Lokhttp3/WebSocketListener;

    move-object v8, v0

    move v9, v1

    move-object v10, v2

    invoke-virtual {v7, v8, v9, v10}, Lokhttp3/WebSocketListener;->onClosing(Lokhttp3/WebSocket;ILjava/lang/String;)V

    .line 328
    move-object v7, v3

    if-eqz v7, :cond_4

    .line 329
    move-object v7, v0

    iget-object v7, v7, Lokhttp3/internal/ws/RealWebSocket;->listener:Lokhttp3/WebSocketListener;

    move-object v8, v0

    move v9, v1

    move-object v10, v2

    invoke-virtual {v7, v8, v9, v10}, Lokhttp3/WebSocketListener;->onClosed(Lokhttp3/WebSocket;ILjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 332
    :cond_4
    move-object v7, v3

    invoke-static {v7}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 334
    return-void

    .line 332
    :catchall_1
    move-exception v7

    move-object v6, v7

    move-object v7, v3

    invoke-static {v7}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    move-object v7, v6

    throw v7
.end method

.method public onReadMessage(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 288
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lokhttp3/internal/ws/RealWebSocket;->listener:Lokhttp3/WebSocketListener;

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lokhttp3/WebSocketListener;->onMessage(Lokhttp3/WebSocket;Ljava/lang/String;)V

    .line 289
    return-void
.end method

.method public onReadMessage(Lokio/ByteString;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 292
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lokhttp3/internal/ws/RealWebSocket;->listener:Lokhttp3/WebSocketListener;

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lokhttp3/WebSocketListener;->onMessage(Lokhttp3/WebSocket;Lokio/ByteString;)V

    .line 293
    return-void
.end method

.method public declared-synchronized onReadPing(Lokio/ByteString;)V
    .locals 7

    .prologue
    .line 297
    move-object v0, p0

    move-object v1, p1

    move-object v5, p0

    monitor-enter v5

    move-object v2, v0

    :try_start_0
    iget-boolean v2, v2, Lokhttp3/internal/ws/RealWebSocket;->failed:Z

    if-nez v2, :cond_0

    move-object v2, v0

    iget-boolean v2, v2, Lokhttp3/internal/ws/RealWebSocket;->enqueuedClose:Z

    if-eqz v2, :cond_1

    move-object v2, v0

    iget-object v2, v2, Lokhttp3/internal/ws/RealWebSocket;->messageAndCloseQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_1

    .line 302
    :cond_0
    :goto_0
    monitor-exit v5

    return-void

    .line 299
    :cond_1
    move-object v2, v0

    :try_start_1
    iget-object v2, v2, Lokhttp3/internal/ws/RealWebSocket;->pongQueue:Ljava/util/ArrayDeque;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 300
    move-object v2, v0

    invoke-direct {v2}, Lokhttp3/internal/ws/RealWebSocket;->runWriter()V

    .line 301
    move-object v2, v0

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    iget v3, v3, Lokhttp3/internal/ws/RealWebSocket;->pingCount:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lokhttp3/internal/ws/RealWebSocket;->pingCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 302
    goto :goto_0

    .line 297
    :catchall_0
    move-exception v0

    monitor-exit v5

    throw v0
.end method

.method public declared-synchronized onReadPong(Lokio/ByteString;)V
    .locals 7

    .prologue
    .line 306
    move-object v0, p0

    move-object v1, p1

    move-object v5, p0

    monitor-enter v5

    move-object v2, v0

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    :try_start_0
    iget v3, v3, Lokhttp3/internal/ws/RealWebSocket;->pongCount:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lokhttp3/internal/ws/RealWebSocket;->pongCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 307
    monitor-exit v5

    return-void

    .line 306
    :catchall_0
    move-exception v0

    monitor-exit v5

    throw v0
.end method

.method declared-synchronized pingCount()I
    .locals 3

    .prologue
    .line 280
    move-object v0, p0

    move-object v2, p0

    monitor-enter v2

    move-object v1, v0

    :try_start_0
    iget v1, v1, Lokhttp3/internal/ws/RealWebSocket;->pingCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v1

    monitor-exit v2

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method declared-synchronized pong(Lokio/ByteString;)Z
    .locals 5

    .prologue
    .line 367
    move-object v0, p0

    move-object v1, p1

    move-object v4, p0

    monitor-enter v4

    move-object v2, v0

    :try_start_0
    iget-boolean v2, v2, Lokhttp3/internal/ws/RealWebSocket;->failed:Z

    if-nez v2, :cond_0

    move-object v2, v0

    iget-boolean v2, v2, Lokhttp3/internal/ws/RealWebSocket;->enqueuedClose:Z

    if-eqz v2, :cond_1

    move-object v2, v0

    iget-object v2, v2, Lokhttp3/internal/ws/RealWebSocket;->messageAndCloseQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x0

    move v0, v2

    .line 371
    :goto_0
    monitor-exit v4

    return v0

    .line 369
    :cond_1
    move-object v2, v0

    :try_start_1
    iget-object v2, v2, Lokhttp3/internal/ws/RealWebSocket;->pongQueue:Ljava/util/ArrayDeque;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 370
    move-object v2, v0

    invoke-direct {v2}, Lokhttp3/internal/ws/RealWebSocket;->runWriter()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 371
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0

    .line 367
    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0
.end method

.method declared-synchronized pongCount()I
    .locals 3

    .prologue
    .line 284
    move-object v0, p0

    move-object v2, p0

    monitor-enter v2

    move-object v1, v0

    :try_start_0
    iget v1, v1, Lokhttp3/internal/ws/RealWebSocket;->pongCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v1

    monitor-exit v2

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method processNextFrame()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 271
    move-object v0, p0

    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lokhttp3/internal/ws/RealWebSocket;->reader:Lokhttp3/internal/ws/WebSocketReader;

    invoke-virtual {v2}, Lokhttp3/internal/ws/WebSocketReader;->processNextFrame()V

    .line 272
    move-object v2, v0

    iget v2, v2, Lokhttp3/internal/ws/RealWebSocket;->receivedCloseCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .line 275
    :goto_1
    return v0

    .line 272
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 273
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 274
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lokhttp3/internal/ws/RealWebSocket;->failWebSocket(Ljava/lang/Exception;Lokhttp3/Response;)V

    .line 275
    const/4 v2, 0x0

    move v0, v2

    goto :goto_1
.end method

.method public declared-synchronized queueSize()J
    .locals 4

    .prologue
    .line 160
    move-object v0, p0

    move-object v3, p0

    monitor-enter v3

    move-object v1, v0

    :try_start_0
    iget-wide v1, v1, Lokhttp3/internal/ws/RealWebSocket;->queueSize:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-wide v0, v1

    monitor-exit v3

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0
.end method

.method public request()Lokhttp3/Request;
    .locals 2

    .prologue
    .line 156
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/internal/ws/RealWebSocket;->originalRequest:Lokhttp3/Request;

    move-object v0, v1

    return-object v0
.end method

.method public send(Ljava/lang/String;)Z
    .locals 6

    .prologue
    .line 339
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/NullPointerException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "text == null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 340
    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/ws/RealWebSocket;->send(Lokio/ByteString;I)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method public send(Lokio/ByteString;)Z
    .locals 6

    .prologue
    .line 344
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/NullPointerException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "bytes == null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 345
    :cond_0
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/ws/RealWebSocket;->send(Lokio/ByteString;I)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method writeOneFrame()Z
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 424
    move-object/from16 v0, p0

    const/4 v12, 0x0

    move-object v3, v12

    .line 425
    const/4 v12, -0x1

    move v4, v12

    .line 426
    const/4 v12, 0x0

    move-object v5, v12

    .line 427
    const/4 v12, 0x0

    move-object v6, v12

    .line 429
    move-object v12, v0

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    move-object v7, v13

    monitor-enter v12

    .line 430
    move-object v12, v0

    :try_start_0
    iget-boolean v12, v12, Lokhttp3/internal/ws/RealWebSocket;->failed:Z

    if-eqz v12, :cond_0

    .line 431
    const/4 v12, 0x0

    move-object v13, v7

    monitor-exit v13

    move v0, v12

    .line 483
    :goto_0
    return v0

    .line 434
    :cond_0
    move-object v12, v0

    iget-object v12, v12, Lokhttp3/internal/ws/RealWebSocket;->writer:Lokhttp3/internal/ws/WebSocketWriter;

    move-object v1, v12

    .line 435
    move-object v12, v0

    iget-object v12, v12, Lokhttp3/internal/ws/RealWebSocket;->pongQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v12}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lokio/ByteString;

    move-object v2, v12

    .line 436
    move-object v12, v2

    if-nez v12, :cond_1

    .line 437
    move-object v12, v0

    iget-object v12, v12, Lokhttp3/internal/ws/RealWebSocket;->messageAndCloseQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v12}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v12

    move-object v3, v12

    .line 438
    move-object v12, v3

    instance-of v12, v12, Lokhttp3/internal/ws/RealWebSocket$Close;

    if-eqz v12, :cond_3

    .line 439
    move-object v12, v0

    iget v12, v12, Lokhttp3/internal/ws/RealWebSocket;->receivedCloseCode:I

    move v4, v12

    .line 440
    move-object v12, v0

    iget-object v12, v12, Lokhttp3/internal/ws/RealWebSocket;->receivedCloseReason:Ljava/lang/String;

    move-object v5, v12

    .line 441
    move v12, v4

    const/4 v13, -0x1

    if-eq v12, v13, :cond_2

    .line 442
    move-object v12, v0

    iget-object v12, v12, Lokhttp3/internal/ws/RealWebSocket;->streams:Lokhttp3/internal/ws/RealWebSocket$Streams;

    move-object v6, v12

    .line 443
    move-object v12, v0

    const/4 v13, 0x0

    iput-object v13, v12, Lokhttp3/internal/ws/RealWebSocket;->streams:Lokhttp3/internal/ws/RealWebSocket$Streams;

    .line 444
    move-object v12, v0

    iget-object v12, v12, Lokhttp3/internal/ws/RealWebSocket;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v12}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    .line 454
    :cond_1
    :goto_1
    move-object v12, v7

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 457
    move-object v12, v2

    if-eqz v12, :cond_4

    .line 458
    move-object v12, v1

    move-object v13, v2

    :try_start_1
    invoke-virtual {v12, v13}, Lokhttp3/internal/ws/WebSocketWriter;->writePong(Lokio/ByteString;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 483
    :goto_2
    const/4 v12, 0x1

    move v7, v12

    .line 485
    move-object v12, v6

    invoke-static {v12}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 483
    move v12, v7

    move v0, v12

    goto :goto_0

    .line 447
    :cond_2
    move-object v12, v0

    move-object v13, v0

    :try_start_2
    iget-object v13, v13, Lokhttp3/internal/ws/RealWebSocket;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v14, Lokhttp3/internal/ws/RealWebSocket$CancelRunnable;

    move-object/from16 v18, v14

    move-object/from16 v14, v18

    move-object/from16 v15, v18

    move-object/from16 v16, v0

    invoke-direct/range {v15 .. v16}, Lokhttp3/internal/ws/RealWebSocket$CancelRunnable;-><init>(Lokhttp3/internal/ws/RealWebSocket;)V

    move-object v15, v3

    check-cast v15, Lokhttp3/internal/ws/RealWebSocket$Close;

    iget-wide v15, v15, Lokhttp3/internal/ws/RealWebSocket$Close;->cancelAfterCloseMillis:J

    sget-object v17, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v13 .. v17}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v13

    iput-object v13, v12, Lokhttp3/internal/ws/RealWebSocket;->cancelFuture:Ljava/util/concurrent/ScheduledFuture;

    goto :goto_1

    .line 450
    :cond_3
    move-object v12, v3

    if-nez v12, :cond_1

    .line 451
    const/4 v12, 0x0

    move-object v13, v7

    monitor-exit v13

    move v0, v12

    goto :goto_0

    .line 454
    :catchall_0
    move-exception v12

    move-object v8, v12

    move-object v12, v7

    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v12, v8

    throw v12

    .line 460
    :cond_4
    move-object v12, v3

    :try_start_3
    instance-of v12, v12, Lokhttp3/internal/ws/RealWebSocket$Message;

    if-eqz v12, :cond_5

    .line 461
    move-object v12, v3

    check-cast v12, Lokhttp3/internal/ws/RealWebSocket$Message;

    iget-object v12, v12, Lokhttp3/internal/ws/RealWebSocket$Message;->data:Lokio/ByteString;

    move-object v7, v12

    .line 462
    move-object v12, v1

    move-object v13, v3

    check-cast v13, Lokhttp3/internal/ws/RealWebSocket$Message;

    iget v13, v13, Lokhttp3/internal/ws/RealWebSocket$Message;->formatOpcode:I

    move-object v14, v7

    .line 463
    invoke-virtual {v14}, Lokio/ByteString;->size()I

    move-result v14

    int-to-long v14, v14

    .line 462
    invoke-virtual {v12, v13, v14, v15}, Lokhttp3/internal/ws/WebSocketWriter;->newMessageSink(IJ)Lokio/Sink;

    move-result-object v12

    invoke-static {v12}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v12

    move-object v8, v12

    .line 464
    move-object v12, v8

    move-object v13, v7

    invoke-interface {v12, v13}, Lokio/BufferedSink;->write(Lokio/ByteString;)Lokio/BufferedSink;

    move-result-object v12

    .line 465
    move-object v12, v8

    invoke-interface {v12}, Lokio/BufferedSink;->close()V

    .line 466
    move-object v12, v0

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    move-object v9, v13

    monitor-enter v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 467
    move-object v12, v0

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    :try_start_4
    iget-wide v13, v13, Lokhttp3/internal/ws/RealWebSocket;->queueSize:J

    move-object v15, v7

    invoke-virtual {v15}, Lokio/ByteString;->size()I

    move-result v15

    int-to-long v15, v15

    sub-long/2addr v13, v15

    iput-wide v13, v12, Lokhttp3/internal/ws/RealWebSocket;->queueSize:J

    .line 468
    move-object v12, v9

    monitor-exit v12

    .line 470
    goto :goto_2

    .line 468
    :catchall_1
    move-exception v12

    move-object v10, v12

    move-object v12, v9

    monitor-exit v12
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object v12, v10

    :try_start_5
    throw v12
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 485
    :catchall_2
    move-exception v12

    move-object v11, v12

    move-object v12, v6

    invoke-static {v12}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    move-object v12, v11

    throw v12

    .line 470
    :cond_5
    move-object v12, v3

    :try_start_6
    instance-of v12, v12, Lokhttp3/internal/ws/RealWebSocket$Close;

    if-eqz v12, :cond_7

    .line 471
    move-object v12, v3

    check-cast v12, Lokhttp3/internal/ws/RealWebSocket$Close;

    move-object v7, v12

    .line 472
    move-object v12, v1

    move-object v13, v7

    iget v13, v13, Lokhttp3/internal/ws/RealWebSocket$Close;->code:I

    move-object v14, v7

    iget-object v14, v14, Lokhttp3/internal/ws/RealWebSocket$Close;->reason:Lokio/ByteString;

    invoke-virtual {v12, v13, v14}, Lokhttp3/internal/ws/WebSocketWriter;->writeClose(ILokio/ByteString;)V

    .line 475
    move-object v12, v6

    if-eqz v12, :cond_6

    .line 476
    move-object v12, v0

    iget-object v12, v12, Lokhttp3/internal/ws/RealWebSocket;->listener:Lokhttp3/WebSocketListener;

    move-object v13, v0

    move v14, v4

    move-object v15, v5

    invoke-virtual {v12, v13, v14, v15}, Lokhttp3/WebSocketListener;->onClosed(Lokhttp3/WebSocket;ILjava/lang/String;)V

    .line 479
    :cond_6
    goto/16 :goto_2

    .line 480
    :cond_7
    new-instance v12, Ljava/lang/AssertionError;

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    invoke-direct {v13}, Ljava/lang/AssertionError;-><init>()V

    throw v12
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
.end method
