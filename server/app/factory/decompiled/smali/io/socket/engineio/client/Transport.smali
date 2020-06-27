.class public abstract Lio/socket/engineio/client/Transport;
.super Lio/socket/emitter/Emitter;
.source "Transport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/socket/engineio/client/Transport$Options;,
        Lio/socket/engineio/client/Transport$ReadyState;
    }
.end annotation


# static fields
.field public static final EVENT_CLOSE:Ljava/lang/String; = "close"

.field public static final EVENT_DRAIN:Ljava/lang/String; = "drain"

.field public static final EVENT_ERROR:Ljava/lang/String; = "error"

.field public static final EVENT_OPEN:Ljava/lang/String; = "open"

.field public static final EVENT_PACKET:Ljava/lang/String; = "packet"

.field public static final EVENT_REQUEST_HEADERS:Ljava/lang/String; = "requestHeaders"

.field public static final EVENT_RESPONSE_HEADERS:Ljava/lang/String; = "responseHeaders"


# instance fields
.field protected hostname:Ljava/lang/String;

.field protected hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

.field public name:Ljava/lang/String;

.field protected path:Ljava/lang/String;

.field protected port:I

.field protected proxy:Ljava/net/Proxy;

.field protected proxyLogin:Ljava/lang/String;

.field protected proxyPassword:Ljava/lang/String;

.field public query:Ljava/util/Map;
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

.field protected readyState:Lio/socket/engineio/client/Transport$ReadyState;

.field protected secure:Z

.field protected socket:Lio/socket/engineio/client/Socket;

.field protected sslContext:Ljavax/net/ssl/SSLContext;

.field protected timestampParam:Ljava/lang/String;

.field protected timestampRequests:Z

.field public writable:Z


# direct methods
.method public constructor <init>(Lio/socket/engineio/client/Transport$Options;)V
    .locals 4

    .prologue
    .line 53
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Lio/socket/emitter/Emitter;-><init>()V

    .line 54
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Lio/socket/engineio/client/Transport$Options;->path:Ljava/lang/String;

    iput-object v3, v2, Lio/socket/engineio/client/Transport;->path:Ljava/lang/String;

    .line 55
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Lio/socket/engineio/client/Transport$Options;->hostname:Ljava/lang/String;

    iput-object v3, v2, Lio/socket/engineio/client/Transport;->hostname:Ljava/lang/String;

    .line 56
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Lio/socket/engineio/client/Transport$Options;->port:I

    iput v3, v2, Lio/socket/engineio/client/Transport;->port:I

    .line 57
    move-object v2, v0

    move-object v3, v1

    iget-boolean v3, v3, Lio/socket/engineio/client/Transport$Options;->secure:Z

    iput-boolean v3, v2, Lio/socket/engineio/client/Transport;->secure:Z

    .line 58
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Lio/socket/engineio/client/Transport$Options;->query:Ljava/util/Map;

    iput-object v3, v2, Lio/socket/engineio/client/Transport;->query:Ljava/util/Map;

    .line 59
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Lio/socket/engineio/client/Transport$Options;->timestampParam:Ljava/lang/String;

    iput-object v3, v2, Lio/socket/engineio/client/Transport;->timestampParam:Ljava/lang/String;

    .line 60
    move-object v2, v0

    move-object v3, v1

    iget-boolean v3, v3, Lio/socket/engineio/client/Transport$Options;->timestampRequests:Z

    iput-boolean v3, v2, Lio/socket/engineio/client/Transport;->timestampRequests:Z

    .line 61
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Lio/socket/engineio/client/Transport$Options;->sslContext:Ljavax/net/ssl/SSLContext;

    iput-object v3, v2, Lio/socket/engineio/client/Transport;->sslContext:Ljavax/net/ssl/SSLContext;

    .line 62
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Lio/socket/engineio/client/Transport$Options;->socket:Lio/socket/engineio/client/Socket;

    iput-object v3, v2, Lio/socket/engineio/client/Transport;->socket:Lio/socket/engineio/client/Socket;

    .line 63
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Lio/socket/engineio/client/Transport$Options;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    iput-object v3, v2, Lio/socket/engineio/client/Transport;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 64
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Lio/socket/engineio/client/Transport$Options;->proxy:Ljava/net/Proxy;

    iput-object v3, v2, Lio/socket/engineio/client/Transport;->proxy:Ljava/net/Proxy;

    .line 65
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Lio/socket/engineio/client/Transport$Options;->proxyLogin:Ljava/lang/String;

    iput-object v3, v2, Lio/socket/engineio/client/Transport;->proxyLogin:Ljava/lang/String;

    .line 66
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Lio/socket/engineio/client/Transport$Options;->proxyPassword:Ljava/lang/String;

    iput-object v3, v2, Lio/socket/engineio/client/Transport;->proxyPassword:Ljava/lang/String;

    .line 67
    return-void
.end method


# virtual methods
.method public close()Lio/socket/engineio/client/Transport;
    .locals 5

    .prologue
    .line 90
    move-object v0, p0

    new-instance v1, Lio/socket/engineio/client/Transport$2;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lio/socket/engineio/client/Transport$2;-><init>(Lio/socket/engineio/client/Transport;)V

    invoke-static {v1}, Lio/socket/thread/EventThread;->exec(Ljava/lang/Runnable;)V

    .line 99
    move-object v1, v0

    move-object v0, v1

    return-object v0
.end method

.method protected abstract doClose()V
.end method

.method protected abstract doOpen()V
.end method

.method protected onClose()V
    .locals 4

    .prologue
    .line 138
    move-object v0, p0

    move-object v1, v0

    sget-object v2, Lio/socket/engineio/client/Transport$ReadyState;->CLOSED:Lio/socket/engineio/client/Transport$ReadyState;

    iput-object v2, v1, Lio/socket/engineio/client/Transport;->readyState:Lio/socket/engineio/client/Transport$ReadyState;

    .line 139
    move-object v1, v0

    const-string v2, "close"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lio/socket/engineio/client/Transport;->emit(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/emitter/Emitter;

    move-result-object v1

    .line 140
    return-void
.end method

.method protected onData(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 126
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Lio/socket/engineio/parser/Parser;->decodePacket(Ljava/lang/String;)Lio/socket/engineio/parser/Packet;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/socket/engineio/client/Transport;->onPacket(Lio/socket/engineio/parser/Packet;)V

    .line 127
    return-void
.end method

.method protected onData([B)V
    .locals 4

    .prologue
    .line 130
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Lio/socket/engineio/parser/Parser;->decodePacket([B)Lio/socket/engineio/parser/Packet;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/socket/engineio/client/Transport;->onPacket(Lio/socket/engineio/parser/Packet;)V

    .line 131
    return-void
.end method

.method protected onError(Ljava/lang/String;Ljava/lang/Exception;)Lio/socket/engineio/client/Transport;
    .locals 11

    .prologue
    .line 71
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    new-instance v4, Lio/socket/engineio/client/EngineIOException;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v1

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Lio/socket/engineio/client/EngineIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v3, v4

    .line 72
    move-object v4, v0

    const-string v5, "error"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    move-object v9, v3

    aput-object v9, v7, v8

    invoke-virtual {v4, v5, v6}, Lio/socket/engineio/client/Transport;->emit(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/emitter/Emitter;

    move-result-object v4

    .line 73
    move-object v4, v0

    move-object v0, v4

    return-object v0
.end method

.method protected onOpen()V
    .locals 4

    .prologue
    .line 120
    move-object v0, p0

    move-object v1, v0

    sget-object v2, Lio/socket/engineio/client/Transport$ReadyState;->OPEN:Lio/socket/engineio/client/Transport$ReadyState;

    iput-object v2, v1, Lio/socket/engineio/client/Transport;->readyState:Lio/socket/engineio/client/Transport$ReadyState;

    .line 121
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lio/socket/engineio/client/Transport;->writable:Z

    .line 122
    move-object v1, v0

    const-string v2, "open"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lio/socket/engineio/client/Transport;->emit(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/emitter/Emitter;

    move-result-object v1

    .line 123
    return-void
.end method

.method protected onPacket(Lio/socket/engineio/parser/Packet;)V
    .locals 9

    .prologue
    .line 134
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

    invoke-virtual {v2, v3, v4}, Lio/socket/engineio/client/Transport;->emit(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/emitter/Emitter;

    move-result-object v2

    .line 135
    return-void
.end method

.method public open()Lio/socket/engineio/client/Transport;
    .locals 5

    .prologue
    .line 77
    move-object v0, p0

    new-instance v1, Lio/socket/engineio/client/Transport$1;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lio/socket/engineio/client/Transport$1;-><init>(Lio/socket/engineio/client/Transport;)V

    invoke-static {v1}, Lio/socket/thread/EventThread;->exec(Ljava/lang/Runnable;)V

    .line 86
    move-object v1, v0

    move-object v0, v1

    return-object v0
.end method

.method public send([Lio/socket/engineio/parser/Packet;)V
    .locals 7

    .prologue
    .line 103
    move-object v0, p0

    move-object v1, p1

    new-instance v2, Lio/socket/engineio/client/Transport$3;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lio/socket/engineio/client/Transport$3;-><init>(Lio/socket/engineio/client/Transport;[Lio/socket/engineio/parser/Packet;)V

    invoke-static {v2}, Lio/socket/thread/EventThread;->exec(Ljava/lang/Runnable;)V

    .line 117
    return-void
.end method

.method protected abstract write([Lio/socket/engineio/parser/Packet;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/socket/utf8/UTF8Exception;
        }
    .end annotation
.end method
