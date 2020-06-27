.class Lokhttp3/internal/http2/Http2Connection$4;
.super Lokhttp3/internal/NamedRunnable;
.source "Http2Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/internal/http2/Http2Connection;->pushRequestLater(ILjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lokhttp3/internal/http2/Http2Connection;

.field final synthetic val$requestHeaders:Ljava/util/List;

.field final synthetic val$streamId:I


# direct methods
.method varargs constructor <init>(Lokhttp3/internal/http2/Http2Connection;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;)V
    .locals 9

    .prologue
    .line 789
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Lokhttp3/internal/http2/Http2Connection$4;->this$0:Lokhttp3/internal/http2/Http2Connection;

    move-object v6, v0

    move v7, v4

    iput v7, v6, Lokhttp3/internal/http2/Http2Connection$4;->val$streamId:I

    move-object v6, v0

    move-object v7, v5

    iput-object v7, v6, Lokhttp3/internal/http2/Http2Connection$4;->val$requestHeaders:Ljava/util/List;

    move-object v6, v0

    move-object v7, v2

    move-object v8, v3

    invoke-direct {v6, v7, v8}, Lokhttp3/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 8

    .prologue
    .line 791
    move-object v0, p0

    move-object v4, v0

    iget-object v4, v4, Lokhttp3/internal/http2/Http2Connection$4;->this$0:Lokhttp3/internal/http2/Http2Connection;

    iget-object v4, v4, Lokhttp3/internal/http2/Http2Connection;->pushObserver:Lokhttp3/internal/http2/PushObserver;

    move-object v5, v0

    iget v5, v5, Lokhttp3/internal/http2/Http2Connection$4;->val$streamId:I

    move-object v6, v0

    iget-object v6, v6, Lokhttp3/internal/http2/Http2Connection$4;->val$requestHeaders:Ljava/util/List;

    invoke-interface {v4, v5, v6}, Lokhttp3/internal/http2/PushObserver;->onRequest(ILjava/util/List;)Z

    move-result v4

    move v1, v4

    .line 793
    move v4, v1

    if-eqz v4, :cond_0

    .line 794
    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Lokhttp3/internal/http2/Http2Connection$4;->this$0:Lokhttp3/internal/http2/Http2Connection;

    iget-object v4, v4, Lokhttp3/internal/http2/Http2Connection;->writer:Lokhttp3/internal/http2/Http2Writer;

    move-object v5, v0

    iget v5, v5, Lokhttp3/internal/http2/Http2Connection$4;->val$streamId:I

    sget-object v6, Lokhttp3/internal/http2/ErrorCode;->CANCEL:Lokhttp3/internal/http2/ErrorCode;

    invoke-virtual {v4, v5, v6}, Lokhttp3/internal/http2/Http2Writer;->rstStream(ILokhttp3/internal/http2/ErrorCode;)V

    .line 795
    move-object v4, v0

    iget-object v4, v4, Lokhttp3/internal/http2/Http2Connection$4;->this$0:Lokhttp3/internal/http2/Http2Connection;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v2, v5

    monitor-enter v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 796
    move-object v4, v0

    :try_start_1
    iget-object v4, v4, Lokhttp3/internal/http2/Http2Connection$4;->this$0:Lokhttp3/internal/http2/Http2Connection;

    iget-object v4, v4, Lokhttp3/internal/http2/Http2Connection;->currentPushRequests:Ljava/util/Set;

    move-object v5, v0

    iget v5, v5, Lokhttp3/internal/http2/Http2Connection$4;->val$streamId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v4

    .line 797
    move-object v4, v2

    monitor-exit v4

    .line 801
    :cond_0
    :goto_0
    return-void

    .line 797
    :catchall_0
    move-exception v4

    move-object v3, v4

    move-object v4, v2

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v4, v3

    :try_start_2
    throw v4
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 799
    :catch_0
    move-exception v4

    move-object v2, v4

    goto :goto_0
.end method
