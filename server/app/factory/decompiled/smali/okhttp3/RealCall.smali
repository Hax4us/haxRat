.class final Lokhttp3/RealCall;
.super Ljava/lang/Object;
.source "RealCall.java"

# interfaces
.implements Lokhttp3/Call;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/RealCall$AsyncCall;
    }
.end annotation


# instance fields
.field final client:Lokhttp3/OkHttpClient;

.field private executed:Z

.field final forWebSocket:Z

.field final originalRequest:Lokhttp3/Request;

.field final retryAndFollowUpInterceptor:Lokhttp3/internal/http/RetryAndFollowUpInterceptor;


# direct methods
.method constructor <init>(Lokhttp3/OkHttpClient;Lokhttp3/Request;Z)V
    .locals 10

    .prologue
    .line 44
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 45
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lokhttp3/RealCall;->client:Lokhttp3/OkHttpClient;

    .line 46
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lokhttp3/RealCall;->originalRequest:Lokhttp3/Request;

    .line 47
    move-object v4, v0

    move v5, v3

    iput-boolean v5, v4, Lokhttp3/RealCall;->forWebSocket:Z

    .line 48
    move-object v4, v0

    new-instance v5, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v1

    move v8, v3

    invoke-direct {v6, v7, v8}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;-><init>(Lokhttp3/OkHttpClient;Z)V

    iput-object v5, v4, Lokhttp3/RealCall;->retryAndFollowUpInterceptor:Lokhttp3/internal/http/RetryAndFollowUpInterceptor;

    .line 49
    return-void
.end method

.method private captureCallStackTrace()V
    .locals 4

    .prologue
    .line 72
    move-object v0, p0

    invoke-static {}, Lokhttp3/internal/platform/Platform;->get()Lokhttp3/internal/platform/Platform;

    move-result-object v2

    const-string v3, "response.body().close()"

    invoke-virtual {v2, v3}, Lokhttp3/internal/platform/Platform;->getStackTraceForCloseable(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    .line 73
    move-object v2, v0

    iget-object v2, v2, Lokhttp3/RealCall;->retryAndFollowUpInterceptor:Lokhttp3/internal/http/RetryAndFollowUpInterceptor;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->setCallStackTrace(Ljava/lang/Object;)V

    .line 74
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 86
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/RealCall;->retryAndFollowUpInterceptor:Lokhttp3/internal/http/RetryAndFollowUpInterceptor;

    invoke-virtual {v1}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->cancel()V

    .line 87
    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 33
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lokhttp3/RealCall;->clone()Lokhttp3/RealCall;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public bridge synthetic clone()Lokhttp3/Call;
    .locals 2

    .prologue
    .line 33
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lokhttp3/RealCall;->clone()Lokhttp3/RealCall;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public clone()Lokhttp3/RealCall;
    .locals 7

    .prologue
    .line 99
    move-object v0, p0

    new-instance v1, Lokhttp3/RealCall;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    move-object v3, v0

    iget-object v3, v3, Lokhttp3/RealCall;->client:Lokhttp3/OkHttpClient;

    move-object v4, v0

    iget-object v4, v4, Lokhttp3/RealCall;->originalRequest:Lokhttp3/Request;

    move-object v5, v0

    iget-boolean v5, v5, Lokhttp3/RealCall;->forWebSocket:Z

    invoke-direct {v2, v3, v4, v5}, Lokhttp3/RealCall;-><init>(Lokhttp3/OkHttpClient;Lokhttp3/Request;Z)V

    move-object v0, v1

    return-object v0
.end method

.method public enqueue(Lokhttp3/Callback;)V
    .locals 10

    .prologue
    .line 77
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v2, v5

    monitor-enter v4

    .line 78
    move-object v4, v0

    :try_start_0
    iget-boolean v4, v4, Lokhttp3/RealCall;->executed:Z

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/IllegalStateException;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const-string v6, "Already Executed"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 80
    :catchall_0
    move-exception v4

    move-object v3, v4

    move-object v4, v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v3

    throw v4

    .line 79
    :cond_0
    move-object v4, v0

    const/4 v5, 0x1

    :try_start_1
    iput-boolean v5, v4, Lokhttp3/RealCall;->executed:Z

    .line 80
    move-object v4, v2

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    move-object v4, v0

    invoke-direct {v4}, Lokhttp3/RealCall;->captureCallStackTrace()V

    .line 82
    move-object v4, v0

    iget-object v4, v4, Lokhttp3/RealCall;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v4}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v4

    new-instance v5, Lokhttp3/RealCall$AsyncCall;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    move-object v8, v1

    invoke-direct {v6, v7, v8}, Lokhttp3/RealCall$AsyncCall;-><init>(Lokhttp3/RealCall;Lokhttp3/Callback;)V

    invoke-virtual {v4, v5}, Lokhttp3/Dispatcher;->enqueue(Lokhttp3/RealCall$AsyncCall;)V

    .line 83
    return-void
.end method

.method public execute()Lokhttp3/Response;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    move-object v0, p0

    move-object v4, v0

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v1, v5

    monitor-enter v4

    .line 57
    move-object v4, v0

    :try_start_0
    iget-boolean v4, v4, Lokhttp3/RealCall;->executed:Z

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/IllegalStateException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string v6, "Already Executed"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 59
    :catchall_0
    move-exception v4

    move-object v2, v4

    move-object v4, v1

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v2

    throw v4

    .line 58
    :cond_0
    move-object v4, v0

    const/4 v5, 0x1

    :try_start_1
    iput-boolean v5, v4, Lokhttp3/RealCall;->executed:Z

    .line 59
    move-object v4, v1

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    move-object v4, v0

    invoke-direct {v4}, Lokhttp3/RealCall;->captureCallStackTrace()V

    .line 62
    move-object v4, v0

    :try_start_2
    iget-object v4, v4, Lokhttp3/RealCall;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v4}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v4

    move-object v5, v0

    invoke-virtual {v4, v5}, Lokhttp3/Dispatcher;->executed(Lokhttp3/RealCall;)V

    .line 63
    move-object v4, v0

    invoke-virtual {v4}, Lokhttp3/RealCall;->getResponseWithInterceptorChain()Lokhttp3/Response;

    move-result-object v4

    move-object v1, v4

    .line 64
    move-object v4, v1

    if-nez v4, :cond_1

    new-instance v4, Ljava/io/IOException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string v6, "Canceled"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 67
    :catchall_1
    move-exception v4

    move-object v3, v4

    move-object v4, v0

    iget-object v4, v4, Lokhttp3/RealCall;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v4}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v4

    move-object v5, v0

    invoke-virtual {v4, v5}, Lokhttp3/Dispatcher;->finished(Lokhttp3/RealCall;)V

    move-object v4, v3

    throw v4

    .line 65
    :cond_1
    move-object v4, v1

    move-object v2, v4

    .line 67
    move-object v4, v0

    iget-object v4, v4, Lokhttp3/RealCall;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v4}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v4

    move-object v5, v0

    invoke-virtual {v4, v5}, Lokhttp3/Dispatcher;->finished(Lokhttp3/RealCall;)V

    .line 65
    move-object v4, v2

    move-object v0, v4

    return-object v0
.end method

.method getResponseWithInterceptorChain()Lokhttp3/Response;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 166
    move-object v0, p0

    new-instance v3, Ljava/util/ArrayList;

    move-object v11, v3

    move-object v3, v11

    move-object v4, v11

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v3

    .line 167
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lokhttp3/RealCall;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v4}, Lokhttp3/OkHttpClient;->interceptors()Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v3

    .line 168
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lokhttp3/RealCall;->retryAndFollowUpInterceptor:Lokhttp3/internal/http/RetryAndFollowUpInterceptor;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 169
    move-object v3, v1

    new-instance v4, Lokhttp3/internal/http/BridgeInterceptor;

    move-object v11, v4

    move-object v4, v11

    move-object v5, v11

    move-object v6, v0

    iget-object v6, v6, Lokhttp3/RealCall;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v6}, Lokhttp3/OkHttpClient;->cookieJar()Lokhttp3/CookieJar;

    move-result-object v6

    invoke-direct {v5, v6}, Lokhttp3/internal/http/BridgeInterceptor;-><init>(Lokhttp3/CookieJar;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 170
    move-object v3, v1

    new-instance v4, Lokhttp3/internal/cache/CacheInterceptor;

    move-object v11, v4

    move-object v4, v11

    move-object v5, v11

    move-object v6, v0

    iget-object v6, v6, Lokhttp3/RealCall;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v6}, Lokhttp3/OkHttpClient;->internalCache()Lokhttp3/internal/cache/InternalCache;

    move-result-object v6

    invoke-direct {v5, v6}, Lokhttp3/internal/cache/CacheInterceptor;-><init>(Lokhttp3/internal/cache/InternalCache;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 171
    move-object v3, v1

    new-instance v4, Lokhttp3/internal/connection/ConnectInterceptor;

    move-object v11, v4

    move-object v4, v11

    move-object v5, v11

    move-object v6, v0

    iget-object v6, v6, Lokhttp3/RealCall;->client:Lokhttp3/OkHttpClient;

    invoke-direct {v5, v6}, Lokhttp3/internal/connection/ConnectInterceptor;-><init>(Lokhttp3/OkHttpClient;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 172
    move-object v3, v0

    iget-boolean v3, v3, Lokhttp3/RealCall;->forWebSocket:Z

    if-nez v3, :cond_0

    .line 173
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lokhttp3/RealCall;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v4}, Lokhttp3/OkHttpClient;->networkInterceptors()Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v3

    .line 175
    :cond_0
    move-object v3, v1

    new-instance v4, Lokhttp3/internal/http/CallServerInterceptor;

    move-object v11, v4

    move-object v4, v11

    move-object v5, v11

    move-object v6, v0

    iget-boolean v6, v6, Lokhttp3/RealCall;->forWebSocket:Z

    invoke-direct {v5, v6}, Lokhttp3/internal/http/CallServerInterceptor;-><init>(Z)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 177
    new-instance v3, Lokhttp3/internal/http/RealInterceptorChain;

    move-object v11, v3

    move-object v3, v11

    move-object v4, v11

    move-object v5, v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v10, v0

    iget-object v10, v10, Lokhttp3/RealCall;->originalRequest:Lokhttp3/Request;

    invoke-direct/range {v4 .. v10}, Lokhttp3/internal/http/RealInterceptorChain;-><init>(Ljava/util/List;Lokhttp3/internal/connection/StreamAllocation;Lokhttp3/internal/http/HttpCodec;Lokhttp3/Connection;ILokhttp3/Request;)V

    move-object v2, v3

    .line 179
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lokhttp3/RealCall;->originalRequest:Lokhttp3/Request;

    invoke-interface {v3, v4}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method public isCanceled()Z
    .locals 2

    .prologue
    .line 94
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/RealCall;->retryAndFollowUpInterceptor:Lokhttp3/internal/http/RetryAndFollowUpInterceptor;

    invoke-virtual {v1}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->isCanceled()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public declared-synchronized isExecuted()Z
    .locals 3

    .prologue
    .line 90
    move-object v0, p0

    move-object v2, p0

    monitor-enter v2

    move-object v1, v0

    :try_start_0
    iget-boolean v1, v1, Lokhttp3/RealCall;->executed:Z
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

.method redactedUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 161
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/RealCall;->originalRequest:Lokhttp3/Request;

    invoke-virtual {v1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/HttpUrl;->redact()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public request()Lokhttp3/Request;
    .locals 2

    .prologue
    .line 52
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/RealCall;->originalRequest:Lokhttp3/Request;

    move-object v0, v1

    return-object v0
.end method

.method streamAllocation()Lokhttp3/internal/connection/StreamAllocation;
    .locals 2

    .prologue
    .line 103
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/RealCall;->retryAndFollowUpInterceptor:Lokhttp3/internal/http/RetryAndFollowUpInterceptor;

    invoke-virtual {v1}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation()Lokhttp3/internal/connection/StreamAllocation;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method toLoggableString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 155
    move-object v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v0

    invoke-virtual {v2}, Lokhttp3/RealCall;->isCanceled()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "canceled "

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-boolean v2, v2, Lokhttp3/RealCall;->forWebSocket:Z

    if-eqz v2, :cond_1

    const-string v2, "web socket"

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    .line 157
    invoke-virtual {v2}, Lokhttp3/RealCall;->redactedUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 155
    move-object v0, v1

    return-object v0

    :cond_0
    const-string v2, ""

    goto :goto_0

    :cond_1
    const-string v2, "call"

    goto :goto_1
.end method
