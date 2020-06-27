.class final Lokhttp3/RealCall$AsyncCall;
.super Lokhttp3/internal/NamedRunnable;
.source "RealCall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/RealCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "AsyncCall"
.end annotation


# instance fields
.field private final responseCallback:Lokhttp3/Callback;

.field final synthetic this$0:Lokhttp3/RealCall;


# direct methods
.method constructor <init>(Lokhttp3/RealCall;Lokhttp3/Callback;)V
    .locals 10

    .prologue
    .line 109
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lokhttp3/RealCall$AsyncCall;->this$0:Lokhttp3/RealCall;

    .line 110
    move-object v3, v0

    const-string v4, "OkHttp %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v1

    invoke-virtual {v8}, Lokhttp3/RealCall;->redactedUrl()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-direct {v3, v4, v5}, Lokhttp3/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 111
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lokhttp3/RealCall$AsyncCall;->responseCallback:Lokhttp3/Callback;

    .line 112
    return-void
.end method


# virtual methods
.method protected execute()V
    .locals 10

    .prologue
    .line 127
    move-object v0, p0

    const/4 v4, 0x0

    move v1, v4

    .line 129
    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Lokhttp3/RealCall$AsyncCall;->this$0:Lokhttp3/RealCall;

    invoke-virtual {v4}, Lokhttp3/RealCall;->getResponseWithInterceptorChain()Lokhttp3/Response;

    move-result-object v4

    move-object v2, v4

    .line 130
    move-object v4, v0

    iget-object v4, v4, Lokhttp3/RealCall$AsyncCall;->this$0:Lokhttp3/RealCall;

    iget-object v4, v4, Lokhttp3/RealCall;->retryAndFollowUpInterceptor:Lokhttp3/internal/http/RetryAndFollowUpInterceptor;

    invoke-virtual {v4}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->isCanceled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 131
    const/4 v4, 0x1

    move v1, v4

    .line 132
    move-object v4, v0

    iget-object v4, v4, Lokhttp3/RealCall$AsyncCall;->responseCallback:Lokhttp3/Callback;

    move-object v5, v0

    iget-object v5, v5, Lokhttp3/RealCall$AsyncCall;->this$0:Lokhttp3/RealCall;

    new-instance v6, Ljava/io/IOException;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    const-string v8, "Canceled"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v5, v6}, Lokhttp3/Callback;->onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    :goto_0
    move-object v4, v0

    iget-object v4, v4, Lokhttp3/RealCall$AsyncCall;->this$0:Lokhttp3/RealCall;

    iget-object v4, v4, Lokhttp3/RealCall;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v4}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v4

    move-object v5, v0

    invoke-virtual {v4, v5}, Lokhttp3/Dispatcher;->finished(Lokhttp3/RealCall$AsyncCall;)V

    .line 147
    :goto_1
    return-void

    .line 134
    :cond_0
    const/4 v4, 0x1

    move v1, v4

    .line 135
    move-object v4, v0

    :try_start_1
    iget-object v4, v4, Lokhttp3/RealCall$AsyncCall;->responseCallback:Lokhttp3/Callback;

    move-object v5, v0

    iget-object v5, v5, Lokhttp3/RealCall$AsyncCall;->this$0:Lokhttp3/RealCall;

    move-object v6, v2

    invoke-interface {v4, v5, v6}, Lokhttp3/Callback;->onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 137
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 138
    move v4, v1

    if-eqz v4, :cond_1

    .line 140
    :try_start_2
    invoke-static {}, Lokhttp3/internal/platform/Platform;->get()Lokhttp3/internal/platform/Platform;

    move-result-object v4

    const/4 v5, 0x4

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Callback failure for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v0

    iget-object v7, v7, Lokhttp3/RealCall$AsyncCall;->this$0:Lokhttp3/RealCall;

    invoke-virtual {v7}, Lokhttp3/RealCall;->toLoggableString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v7, v2

    invoke-virtual {v4, v5, v6, v7}, Lokhttp3/internal/platform/Platform;->log(ILjava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 145
    :goto_2
    move-object v4, v0

    iget-object v4, v4, Lokhttp3/RealCall$AsyncCall;->this$0:Lokhttp3/RealCall;

    iget-object v4, v4, Lokhttp3/RealCall;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v4}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v4

    move-object v5, v0

    invoke-virtual {v4, v5}, Lokhttp3/Dispatcher;->finished(Lokhttp3/RealCall$AsyncCall;)V

    .line 146
    goto :goto_1

    .line 142
    :cond_1
    move-object v4, v0

    :try_start_3
    iget-object v4, v4, Lokhttp3/RealCall$AsyncCall;->responseCallback:Lokhttp3/Callback;

    move-object v5, v0

    iget-object v5, v5, Lokhttp3/RealCall$AsyncCall;->this$0:Lokhttp3/RealCall;

    move-object v6, v2

    invoke-interface {v4, v5, v6}, Lokhttp3/Callback;->onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 145
    :catchall_0
    move-exception v4

    move-object v3, v4

    move-object v4, v0

    iget-object v4, v4, Lokhttp3/RealCall$AsyncCall;->this$0:Lokhttp3/RealCall;

    iget-object v4, v4, Lokhttp3/RealCall;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v4}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v4

    move-object v5, v0

    invoke-virtual {v4, v5}, Lokhttp3/Dispatcher;->finished(Lokhttp3/RealCall$AsyncCall;)V

    move-object v4, v3

    throw v4
.end method

.method get()Lokhttp3/RealCall;
    .locals 2

    .prologue
    .line 123
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/RealCall$AsyncCall;->this$0:Lokhttp3/RealCall;

    move-object v0, v1

    return-object v0
.end method

.method host()Ljava/lang/String;
    .locals 2

    .prologue
    .line 115
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/RealCall$AsyncCall;->this$0:Lokhttp3/RealCall;

    iget-object v1, v1, Lokhttp3/RealCall;->originalRequest:Lokhttp3/Request;

    invoke-virtual {v1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method request()Lokhttp3/Request;
    .locals 2

    .prologue
    .line 119
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/RealCall$AsyncCall;->this$0:Lokhttp3/RealCall;

    iget-object v1, v1, Lokhttp3/RealCall;->originalRequest:Lokhttp3/Request;

    move-object v0, v1

    return-object v0
.end method
