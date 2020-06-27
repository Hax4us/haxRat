.class public final Lokhttp3/internal/connection/ConnectInterceptor;
.super Ljava/lang/Object;
.source "ConnectInterceptor.java"

# interfaces
.implements Lokhttp3/Interceptor;


# instance fields
.field public final client:Lokhttp3/OkHttpClient;


# direct methods
.method public constructor <init>(Lokhttp3/OkHttpClient;)V
    .locals 4

    .prologue
    .line 31
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 32
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lokhttp3/internal/connection/ConnectInterceptor;->client:Lokhttp3/OkHttpClient;

    .line 33
    return-void
.end method


# virtual methods
.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 36
    move-object v0, p0

    move-object v1, p1

    move-object v8, v1

    check-cast v8, Lokhttp3/internal/http/RealInterceptorChain;

    move-object v2, v8

    .line 37
    move-object v8, v2

    invoke-virtual {v8}, Lokhttp3/internal/http/RealInterceptorChain;->request()Lokhttp3/Request;

    move-result-object v8

    move-object v3, v8

    .line 38
    move-object v8, v2

    invoke-virtual {v8}, Lokhttp3/internal/http/RealInterceptorChain;->streamAllocation()Lokhttp3/internal/connection/StreamAllocation;

    move-result-object v8

    move-object v4, v8

    .line 41
    move-object v8, v3

    invoke-virtual {v8}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v8

    const-string v9, "GET"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const/4 v8, 0x1

    :goto_0
    move v5, v8

    .line 42
    move-object v8, v4

    move-object v9, v0

    iget-object v9, v9, Lokhttp3/internal/connection/ConnectInterceptor;->client:Lokhttp3/OkHttpClient;

    move v10, v5

    invoke-virtual {v8, v9, v10}, Lokhttp3/internal/connection/StreamAllocation;->newStream(Lokhttp3/OkHttpClient;Z)Lokhttp3/internal/http/HttpCodec;

    move-result-object v8

    move-object v6, v8

    .line 43
    move-object v8, v4

    invoke-virtual {v8}, Lokhttp3/internal/connection/StreamAllocation;->connection()Lokhttp3/internal/connection/RealConnection;

    move-result-object v8

    move-object v7, v8

    .line 45
    move-object v8, v2

    move-object v9, v3

    move-object v10, v4

    move-object v11, v6

    move-object v12, v7

    invoke-virtual {v8, v9, v10, v11, v12}, Lokhttp3/internal/http/RealInterceptorChain;->proceed(Lokhttp3/Request;Lokhttp3/internal/connection/StreamAllocation;Lokhttp3/internal/http/HttpCodec;Lokhttp3/Connection;)Lokhttp3/Response;

    move-result-object v8

    move-object v0, v8

    return-object v0

    .line 41
    :cond_0
    const/4 v8, 0x0

    goto :goto_0
.end method
