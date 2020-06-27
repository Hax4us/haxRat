.class public Lio/socket/engineio/client/transports/PollingXHR;
.super Lio/socket/engineio/client/transports/Polling;
.source "PollingXHR.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/socket/engineio/client/transports/PollingXHR$Request;
    }
.end annotation


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lio/socket/engineio/client/transports/PollingXHR;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lio/socket/engineio/client/transports/PollingXHR;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lio/socket/engineio/client/Transport$Options;)V
    .locals 4

    .prologue
    .line 24
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lio/socket/engineio/client/transports/Polling;-><init>(Lio/socket/engineio/client/Transport$Options;)V

    .line 25
    return-void
.end method

.method static synthetic access$000(Lio/socket/engineio/client/transports/PollingXHR;Ljava/lang/String;Ljava/lang/Exception;)Lio/socket/engineio/client/Transport;
    .locals 6

    .prologue
    .line 19
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lio/socket/engineio/client/transports/PollingXHR;->onError(Ljava/lang/String;Ljava/lang/Exception;)Lio/socket/engineio/client/Transport;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method static synthetic access$100(Lio/socket/engineio/client/transports/PollingXHR;Ljava/lang/String;Ljava/lang/Exception;)Lio/socket/engineio/client/Transport;
    .locals 6

    .prologue
    .line 19
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lio/socket/engineio/client/transports/PollingXHR;->onError(Ljava/lang/String;Ljava/lang/Exception;)Lio/socket/engineio/client/Transport;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method static synthetic access$200()Ljava/util/logging/Logger;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lio/socket/engineio/client/transports/PollingXHR;->logger:Ljava/util/logging/Logger;

    return-object v0
.end method


# virtual methods
.method protected doPoll()V
    .locals 10

    .prologue
    .line 98
    move-object v0, p0

    sget-object v3, Lio/socket/engineio/client/transports/PollingXHR;->logger:Ljava/util/logging/Logger;

    const-string v4, "xhr poll"

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 99
    move-object v3, v0

    invoke-virtual {v3}, Lio/socket/engineio/client/transports/PollingXHR;->request()Lio/socket/engineio/client/transports/PollingXHR$Request;

    move-result-object v3

    move-object v1, v3

    .line 100
    move-object v3, v0

    move-object v2, v3

    .line 101
    move-object v3, v1

    const-string v4, "data"

    new-instance v5, Lio/socket/engineio/client/transports/PollingXHR$5;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    move-object v8, v2

    invoke-direct {v6, v7, v8}, Lio/socket/engineio/client/transports/PollingXHR$5;-><init>(Lio/socket/engineio/client/transports/PollingXHR;Lio/socket/engineio/client/transports/PollingXHR;)V

    invoke-virtual {v3, v4, v5}, Lio/socket/engineio/client/transports/PollingXHR$Request;->on(Ljava/lang/String;Lio/socket/emitter/Emitter$Listener;)Lio/socket/emitter/Emitter;

    move-result-object v3

    .line 117
    move-object v3, v1

    const-string v4, "error"

    new-instance v5, Lio/socket/engineio/client/transports/PollingXHR$6;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    move-object v8, v2

    invoke-direct {v6, v7, v8}, Lio/socket/engineio/client/transports/PollingXHR$6;-><init>(Lio/socket/engineio/client/transports/PollingXHR;Lio/socket/engineio/client/transports/PollingXHR;)V

    invoke-virtual {v3, v4, v5}, Lio/socket/engineio/client/transports/PollingXHR$Request;->on(Ljava/lang/String;Lio/socket/emitter/Emitter$Listener;)Lio/socket/emitter/Emitter;

    move-result-object v3

    .line 129
    move-object v3, v1

    invoke-virtual {v3}, Lio/socket/engineio/client/transports/PollingXHR$Request;->create()V

    .line 130
    return-void
.end method

.method protected doWrite([BLjava/lang/Runnable;)V
    .locals 13

    .prologue
    .line 65
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    new-instance v6, Lio/socket/engineio/client/transports/PollingXHR$Request$Options;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    invoke-direct {v7}, Lio/socket/engineio/client/transports/PollingXHR$Request$Options;-><init>()V

    move-object v3, v6

    .line 66
    move-object v6, v3

    const-string v7, "POST"

    iput-object v7, v6, Lio/socket/engineio/client/transports/PollingXHR$Request$Options;->method:Ljava/lang/String;

    .line 67
    move-object v6, v3

    move-object v7, v1

    iput-object v7, v6, Lio/socket/engineio/client/transports/PollingXHR$Request$Options;->data:[B

    .line 68
    move-object v6, v0

    move-object v7, v3

    invoke-virtual {v6, v7}, Lio/socket/engineio/client/transports/PollingXHR;->request(Lio/socket/engineio/client/transports/PollingXHR$Request$Options;)Lio/socket/engineio/client/transports/PollingXHR$Request;

    move-result-object v6

    move-object v4, v6

    .line 69
    move-object v6, v0

    move-object v5, v6

    .line 70
    move-object v6, v4

    const-string v7, "success"

    new-instance v8, Lio/socket/engineio/client/transports/PollingXHR$3;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v10, v0

    move-object v11, v2

    invoke-direct {v9, v10, v11}, Lio/socket/engineio/client/transports/PollingXHR$3;-><init>(Lio/socket/engineio/client/transports/PollingXHR;Ljava/lang/Runnable;)V

    invoke-virtual {v6, v7, v8}, Lio/socket/engineio/client/transports/PollingXHR$Request;->on(Ljava/lang/String;Lio/socket/emitter/Emitter$Listener;)Lio/socket/emitter/Emitter;

    move-result-object v6

    .line 81
    move-object v6, v4

    const-string v7, "error"

    new-instance v8, Lio/socket/engineio/client/transports/PollingXHR$4;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v10, v0

    move-object v11, v5

    invoke-direct {v9, v10, v11}, Lio/socket/engineio/client/transports/PollingXHR$4;-><init>(Lio/socket/engineio/client/transports/PollingXHR;Lio/socket/engineio/client/transports/PollingXHR;)V

    invoke-virtual {v6, v7, v8}, Lio/socket/engineio/client/transports/PollingXHR$Request;->on(Ljava/lang/String;Lio/socket/emitter/Emitter$Listener;)Lio/socket/emitter/Emitter;

    move-result-object v6

    .line 93
    move-object v6, v4

    invoke-virtual {v6}, Lio/socket/engineio/client/transports/PollingXHR$Request;->create()V

    .line 94
    return-void
.end method

.method protected request()Lio/socket/engineio/client/transports/PollingXHR$Request;
    .locals 3

    .prologue
    .line 28
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lio/socket/engineio/client/transports/PollingXHR;->request(Lio/socket/engineio/client/transports/PollingXHR$Request$Options;)Lio/socket/engineio/client/transports/PollingXHR$Request;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method protected request(Lio/socket/engineio/client/transports/PollingXHR$Request$Options;)Lio/socket/engineio/client/transports/PollingXHR$Request;
    .locals 11

    .prologue
    .line 32
    move-object v0, p0

    move-object v1, p1

    move-object v4, v1

    if-nez v4, :cond_0

    .line 33
    new-instance v4, Lio/socket/engineio/client/transports/PollingXHR$Request$Options;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    invoke-direct {v5}, Lio/socket/engineio/client/transports/PollingXHR$Request$Options;-><init>()V

    move-object v1, v4

    .line 35
    :cond_0
    move-object v4, v1

    move-object v5, v0

    invoke-virtual {v5}, Lio/socket/engineio/client/transports/PollingXHR;->uri()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lio/socket/engineio/client/transports/PollingXHR$Request$Options;->uri:Ljava/lang/String;

    .line 36
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Lio/socket/engineio/client/transports/PollingXHR;->sslContext:Ljavax/net/ssl/SSLContext;

    iput-object v5, v4, Lio/socket/engineio/client/transports/PollingXHR$Request$Options;->sslContext:Ljavax/net/ssl/SSLContext;

    .line 37
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Lio/socket/engineio/client/transports/PollingXHR;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    iput-object v5, v4, Lio/socket/engineio/client/transports/PollingXHR$Request$Options;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 38
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Lio/socket/engineio/client/transports/PollingXHR;->proxy:Ljava/net/Proxy;

    iput-object v5, v4, Lio/socket/engineio/client/transports/PollingXHR$Request$Options;->proxy:Ljava/net/Proxy;

    .line 40
    new-instance v4, Lio/socket/engineio/client/transports/PollingXHR$Request;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v1

    invoke-direct {v5, v6}, Lio/socket/engineio/client/transports/PollingXHR$Request;-><init>(Lio/socket/engineio/client/transports/PollingXHR$Request$Options;)V

    move-object v2, v4

    .line 42
    move-object v4, v0

    move-object v3, v4

    .line 43
    move-object v4, v2

    const-string v5, "requestHeaders"

    new-instance v6, Lio/socket/engineio/client/transports/PollingXHR$2;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v0

    move-object v9, v3

    invoke-direct {v7, v8, v9}, Lio/socket/engineio/client/transports/PollingXHR$2;-><init>(Lio/socket/engineio/client/transports/PollingXHR;Lio/socket/engineio/client/transports/PollingXHR;)V

    invoke-virtual {v4, v5, v6}, Lio/socket/engineio/client/transports/PollingXHR$Request;->on(Ljava/lang/String;Lio/socket/emitter/Emitter$Listener;)Lio/socket/emitter/Emitter;

    move-result-object v4

    const-string v5, "responseHeaders"

    new-instance v6, Lio/socket/engineio/client/transports/PollingXHR$1;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v0

    move-object v9, v3

    invoke-direct {v7, v8, v9}, Lio/socket/engineio/client/transports/PollingXHR$1;-><init>(Lio/socket/engineio/client/transports/PollingXHR;Lio/socket/engineio/client/transports/PollingXHR;)V

    .line 49
    invoke-virtual {v4, v5, v6}, Lio/socket/emitter/Emitter;->on(Ljava/lang/String;Lio/socket/emitter/Emitter$Listener;)Lio/socket/emitter/Emitter;

    move-result-object v4

    .line 60
    move-object v4, v2

    move-object v0, v4

    return-object v0
.end method
