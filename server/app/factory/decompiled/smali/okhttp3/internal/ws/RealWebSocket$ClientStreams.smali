.class final Lokhttp3/internal/ws/RealWebSocket$ClientStreams;
.super Lokhttp3/internal/ws/RealWebSocket$Streams;
.source "RealWebSocket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/ws/RealWebSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ClientStreams"
.end annotation


# instance fields
.field private final streamAllocation:Lokhttp3/internal/connection/StreamAllocation;


# direct methods
.method constructor <init>(Lokhttp3/internal/connection/StreamAllocation;)V
    .locals 6

    .prologue
    .line 565
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const/4 v3, 0x1

    move-object v4, v1

    invoke-virtual {v4}, Lokhttp3/internal/connection/StreamAllocation;->connection()Lokhttp3/internal/connection/RealConnection;

    move-result-object v4

    iget-object v4, v4, Lokhttp3/internal/connection/RealConnection;->source:Lokio/BufferedSource;

    move-object v5, v1

    invoke-virtual {v5}, Lokhttp3/internal/connection/StreamAllocation;->connection()Lokhttp3/internal/connection/RealConnection;

    move-result-object v5

    iget-object v5, v5, Lokhttp3/internal/connection/RealConnection;->sink:Lokio/BufferedSink;

    invoke-direct {v2, v3, v4, v5}, Lokhttp3/internal/ws/RealWebSocket$Streams;-><init>(ZLokio/BufferedSource;Lokio/BufferedSink;)V

    .line 566
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lokhttp3/internal/ws/RealWebSocket$ClientStreams;->streamAllocation:Lokhttp3/internal/connection/StreamAllocation;

    .line 567
    return-void
.end method


# virtual methods
.method public close()V
    .locals 4

    .prologue
    .line 570
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/internal/ws/RealWebSocket$ClientStreams;->streamAllocation:Lokhttp3/internal/connection/StreamAllocation;

    const/4 v2, 0x1

    move-object v3, v0

    iget-object v3, v3, Lokhttp3/internal/ws/RealWebSocket$ClientStreams;->streamAllocation:Lokhttp3/internal/connection/StreamAllocation;

    invoke-virtual {v3}, Lokhttp3/internal/connection/StreamAllocation;->codec()Lokhttp3/internal/http/HttpCodec;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lokhttp3/internal/connection/StreamAllocation;->streamFinished(ZLokhttp3/internal/http/HttpCodec;)V

    .line 571
    return-void
.end method
