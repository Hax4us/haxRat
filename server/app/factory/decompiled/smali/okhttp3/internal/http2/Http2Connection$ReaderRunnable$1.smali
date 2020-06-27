.class Lokhttp3/internal/http2/Http2Connection$ReaderRunnable$1;
.super Lokhttp3/internal/NamedRunnable;
.source "Http2Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->headers(ZIILjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;

.field final synthetic val$newStream:Lokhttp3/internal/http2/Http2Stream;


# direct methods
.method varargs constructor <init>(Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;Ljava/lang/String;[Ljava/lang/Object;Lokhttp3/internal/http2/Http2Stream;)V
    .locals 8

    .prologue
    .line 627
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable$1;->this$1:Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;

    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable$1;->val$newStream:Lokhttp3/internal/http2/Http2Stream;

    move-object v5, v0

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v5, v6, v7}, Lokhttp3/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 8

    .prologue
    .line 630
    move-object v0, p0

    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable$1;->this$1:Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;

    iget-object v3, v3, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    iget-object v3, v3, Lokhttp3/internal/http2/Http2Connection;->listener:Lokhttp3/internal/http2/Http2Connection$Listener;

    move-object v4, v0

    iget-object v4, v4, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable$1;->val$newStream:Lokhttp3/internal/http2/Http2Stream;

    invoke-virtual {v3, v4}, Lokhttp3/internal/http2/Http2Connection$Listener;->onStream(Lokhttp3/internal/http2/Http2Stream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 638
    :goto_0
    return-void

    .line 631
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 632
    invoke-static {}, Lokhttp3/internal/platform/Platform;->get()Lokhttp3/internal/platform/Platform;

    move-result-object v3

    const/4 v4, 0x4

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FramedConnection.Listener failure for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable$1;->this$1:Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;

    iget-object v6, v6, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    iget-object v6, v6, Lokhttp3/internal/http2/Http2Connection;->hostname:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v3, v4, v5, v6}, Lokhttp3/internal/platform/Platform;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 634
    move-object v3, v0

    :try_start_1
    iget-object v3, v3, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable$1;->val$newStream:Lokhttp3/internal/http2/Http2Stream;

    sget-object v4, Lokhttp3/internal/http2/ErrorCode;->PROTOCOL_ERROR:Lokhttp3/internal/http2/ErrorCode;

    invoke-virtual {v3, v4}, Lokhttp3/internal/http2/Http2Stream;->close(Lokhttp3/internal/http2/ErrorCode;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 636
    goto :goto_0

    .line 635
    :catch_1
    move-exception v3

    move-object v2, v3

    goto :goto_0
.end method
