.class Lokhttp3/internal/ws/RealWebSocket$2;
.super Ljava/lang/Object;
.source "RealWebSocket.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/internal/ws/RealWebSocket;->connect(Lokhttp3/OkHttpClient;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lokhttp3/internal/ws/RealWebSocket;

.field final synthetic val$pingIntervalMillis:I

.field final synthetic val$request:Lokhttp3/Request;


# direct methods
.method constructor <init>(Lokhttp3/internal/ws/RealWebSocket;Lokhttp3/Request;I)V
    .locals 6

    .prologue
    .line 179
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lokhttp3/internal/ws/RealWebSocket$2;->this$0:Lokhttp3/internal/ws/RealWebSocket;

    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lokhttp3/internal/ws/RealWebSocket$2;->val$request:Lokhttp3/Request;

    move-object v4, v0

    move v5, v3

    iput v5, v4, Lokhttp3/internal/ws/RealWebSocket$2;->val$pingIntervalMillis:I

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 6

    .prologue
    .line 207
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Lokhttp3/internal/ws/RealWebSocket$2;->this$0:Lokhttp3/internal/ws/RealWebSocket;

    move-object v4, v2

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lokhttp3/internal/ws/RealWebSocket;->failWebSocket(Ljava/lang/Exception;Lokhttp3/Response;)V

    .line 208
    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 12

    .prologue
    .line 182
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, v0

    :try_start_0
    iget-object v6, v6, Lokhttp3/internal/ws/RealWebSocket$2;->this$0:Lokhttp3/internal/ws/RealWebSocket;

    move-object v7, v2

    invoke-virtual {v6, v7}, Lokhttp3/internal/ws/RealWebSocket;->checkResponse(Lokhttp3/Response;)V
    :try_end_0
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    sget-object v6, Lokhttp3/internal/Internal;->instance:Lokhttp3/internal/Internal;

    move-object v7, v1

    invoke-virtual {v6, v7}, Lokhttp3/internal/Internal;->streamAllocation(Lokhttp3/Call;)Lokhttp3/internal/connection/StreamAllocation;

    move-result-object v6

    move-object v3, v6

    .line 191
    move-object v6, v3

    invoke-virtual {v6}, Lokhttp3/internal/connection/StreamAllocation;->noNewStreams()V

    .line 192
    new-instance v6, Lokhttp3/internal/ws/RealWebSocket$ClientStreams;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v3

    invoke-direct {v7, v8}, Lokhttp3/internal/ws/RealWebSocket$ClientStreams;-><init>(Lokhttp3/internal/connection/StreamAllocation;)V

    move-object v4, v6

    .line 196
    move-object v6, v0

    :try_start_1
    iget-object v6, v6, Lokhttp3/internal/ws/RealWebSocket$2;->this$0:Lokhttp3/internal/ws/RealWebSocket;

    iget-object v6, v6, Lokhttp3/internal/ws/RealWebSocket;->listener:Lokhttp3/WebSocketListener;

    move-object v7, v0

    iget-object v7, v7, Lokhttp3/internal/ws/RealWebSocket$2;->this$0:Lokhttp3/internal/ws/RealWebSocket;

    move-object v8, v2

    invoke-virtual {v6, v7, v8}, Lokhttp3/WebSocketListener;->onOpen(Lokhttp3/WebSocket;Lokhttp3/Response;)V

    .line 197
    new-instance v6, Ljava/lang/StringBuilder;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OkHttp WebSocket "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v0

    iget-object v7, v7, Lokhttp3/internal/ws/RealWebSocket$2;->val$request:Lokhttp3/Request;

    invoke-virtual {v7}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v7

    invoke-virtual {v7}, Lokhttp3/HttpUrl;->redact()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    .line 198
    move-object v6, v0

    iget-object v6, v6, Lokhttp3/internal/ws/RealWebSocket$2;->this$0:Lokhttp3/internal/ws/RealWebSocket;

    move-object v7, v5

    move-object v8, v0

    iget v8, v8, Lokhttp3/internal/ws/RealWebSocket$2;->val$pingIntervalMillis:I

    int-to-long v8, v8

    move-object v10, v4

    invoke-virtual {v6, v7, v8, v9, v10}, Lokhttp3/internal/ws/RealWebSocket;->initReaderAndWriter(Ljava/lang/String;JLokhttp3/internal/ws/RealWebSocket$Streams;)V

    .line 199
    move-object v6, v3

    invoke-virtual {v6}, Lokhttp3/internal/connection/StreamAllocation;->connection()Lokhttp3/internal/connection/RealConnection;

    move-result-object v6

    invoke-virtual {v6}, Lokhttp3/internal/connection/RealConnection;->socket()Ljava/net/Socket;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 200
    move-object v6, v0

    iget-object v6, v6, Lokhttp3/internal/ws/RealWebSocket$2;->this$0:Lokhttp3/internal/ws/RealWebSocket;

    invoke-virtual {v6}, Lokhttp3/internal/ws/RealWebSocket;->loopReader()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 204
    :goto_0
    return-void

    .line 183
    :catch_0
    move-exception v6

    move-object v3, v6

    .line 184
    move-object v6, v0

    iget-object v6, v6, Lokhttp3/internal/ws/RealWebSocket$2;->this$0:Lokhttp3/internal/ws/RealWebSocket;

    move-object v7, v3

    move-object v8, v2

    invoke-virtual {v6, v7, v8}, Lokhttp3/internal/ws/RealWebSocket;->failWebSocket(Ljava/lang/Exception;Lokhttp3/Response;)V

    .line 185
    move-object v6, v2

    invoke-static {v6}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 186
    goto :goto_0

    .line 201
    :catch_1
    move-exception v6

    move-object v5, v6

    .line 202
    move-object v6, v0

    iget-object v6, v6, Lokhttp3/internal/ws/RealWebSocket$2;->this$0:Lokhttp3/internal/ws/RealWebSocket;

    move-object v7, v5

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lokhttp3/internal/ws/RealWebSocket;->failWebSocket(Ljava/lang/Exception;Lokhttp3/Response;)V

    goto :goto_0
.end method
