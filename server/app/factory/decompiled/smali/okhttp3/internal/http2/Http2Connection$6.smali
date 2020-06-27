.class Lokhttp3/internal/http2/Http2Connection$6;
.super Lokhttp3/internal/NamedRunnable;
.source "Http2Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/internal/http2/Http2Connection;->pushDataLater(ILokio/BufferedSource;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lokhttp3/internal/http2/Http2Connection;

.field final synthetic val$buffer:Lokio/Buffer;

.field final synthetic val$byteCount:I

.field final synthetic val$inFinished:Z

.field final synthetic val$streamId:I


# direct methods
.method varargs constructor <init>(Lokhttp3/internal/http2/Http2Connection;Ljava/lang/String;[Ljava/lang/Object;ILokio/Buffer;IZ)V
    .locals 11

    .prologue
    .line 833
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object v8, v0

    move-object v9, v1

    iput-object v9, v8, Lokhttp3/internal/http2/Http2Connection$6;->this$0:Lokhttp3/internal/http2/Http2Connection;

    move-object v8, v0

    move v9, v4

    iput v9, v8, Lokhttp3/internal/http2/Http2Connection$6;->val$streamId:I

    move-object v8, v0

    move-object v9, v5

    iput-object v9, v8, Lokhttp3/internal/http2/Http2Connection$6;->val$buffer:Lokio/Buffer;

    move-object v8, v0

    move v9, v6

    iput v9, v8, Lokhttp3/internal/http2/Http2Connection$6;->val$byteCount:I

    move-object v8, v0

    move v9, v7

    iput-boolean v9, v8, Lokhttp3/internal/http2/Http2Connection$6;->val$inFinished:Z

    move-object v8, v0

    move-object v9, v2

    move-object v10, v3

    invoke-direct {v8, v9, v10}, Lokhttp3/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 10

    .prologue
    .line 836
    move-object v0, p0

    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Lokhttp3/internal/http2/Http2Connection$6;->this$0:Lokhttp3/internal/http2/Http2Connection;

    iget-object v4, v4, Lokhttp3/internal/http2/Http2Connection;->pushObserver:Lokhttp3/internal/http2/PushObserver;

    move-object v5, v0

    iget v5, v5, Lokhttp3/internal/http2/Http2Connection$6;->val$streamId:I

    move-object v6, v0

    iget-object v6, v6, Lokhttp3/internal/http2/Http2Connection$6;->val$buffer:Lokio/Buffer;

    move-object v7, v0

    iget v7, v7, Lokhttp3/internal/http2/Http2Connection$6;->val$byteCount:I

    move-object v8, v0

    iget-boolean v8, v8, Lokhttp3/internal/http2/Http2Connection$6;->val$inFinished:Z

    invoke-interface {v4, v5, v6, v7, v8}, Lokhttp3/internal/http2/PushObserver;->onData(ILokio/BufferedSource;IZ)Z

    move-result v4

    move v1, v4

    .line 837
    move v4, v1

    if-eqz v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Lokhttp3/internal/http2/Http2Connection$6;->this$0:Lokhttp3/internal/http2/Http2Connection;

    iget-object v4, v4, Lokhttp3/internal/http2/Http2Connection;->writer:Lokhttp3/internal/http2/Http2Writer;

    move-object v5, v0

    iget v5, v5, Lokhttp3/internal/http2/Http2Connection$6;->val$streamId:I

    sget-object v6, Lokhttp3/internal/http2/ErrorCode;->CANCEL:Lokhttp3/internal/http2/ErrorCode;

    invoke-virtual {v4, v5, v6}, Lokhttp3/internal/http2/Http2Writer;->rstStream(ILokhttp3/internal/http2/ErrorCode;)V

    .line 838
    :cond_0
    move v4, v1

    if-nez v4, :cond_1

    move-object v4, v0

    iget-boolean v4, v4, Lokhttp3/internal/http2/Http2Connection$6;->val$inFinished:Z

    if-eqz v4, :cond_2

    .line 839
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Lokhttp3/internal/http2/Http2Connection$6;->this$0:Lokhttp3/internal/http2/Http2Connection;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v2, v5

    monitor-enter v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 840
    move-object v4, v0

    :try_start_1
    iget-object v4, v4, Lokhttp3/internal/http2/Http2Connection$6;->this$0:Lokhttp3/internal/http2/Http2Connection;

    iget-object v4, v4, Lokhttp3/internal/http2/Http2Connection;->currentPushRequests:Ljava/util/Set;

    move-object v5, v0

    iget v5, v5, Lokhttp3/internal/http2/Http2Connection$6;->val$streamId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v4

    .line 841
    move-object v4, v2

    monitor-exit v4

    .line 845
    :cond_2
    :goto_0
    return-void

    .line 841
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

    .line 843
    :catch_0
    move-exception v4

    move-object v1, v4

    goto :goto_0
.end method
