.class Lokhttp3/internal/http2/Http2Stream$StreamTimeout;
.super Lokio/AsyncTimeout;
.source "Http2Stream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/http2/Http2Stream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StreamTimeout"
.end annotation


# instance fields
.field final synthetic this$0:Lokhttp3/internal/http2/Http2Stream;


# direct methods
.method constructor <init>(Lokhttp3/internal/http2/Http2Stream;)V
    .locals 4

    .prologue
    .line 581
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lokhttp3/internal/http2/Http2Stream$StreamTimeout;->this$0:Lokhttp3/internal/http2/Http2Stream;

    move-object v2, v0

    invoke-direct {v2}, Lokio/AsyncTimeout;-><init>()V

    return-void
.end method


# virtual methods
.method public exitAndThrowIfTimedOut()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 595
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lokhttp3/internal/http2/Http2Stream$StreamTimeout;->exit()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lokhttp3/internal/http2/Http2Stream$StreamTimeout;->newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v1

    throw v1

    .line 596
    :cond_0
    return-void
.end method

.method protected newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 7

    .prologue
    .line 587
    move-object v0, p0

    move-object v1, p1

    new-instance v3, Ljava/net/SocketTimeoutException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "timeout"

    invoke-direct {v4, v5}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    .line 588
    move-object v3, v1

    if-eqz v3, :cond_0

    .line 589
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/net/SocketTimeoutException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v3

    .line 591
    :cond_0
    move-object v3, v2

    move-object v0, v3

    return-object v0
.end method

.method protected timedOut()V
    .locals 3

    .prologue
    .line 583
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/internal/http2/Http2Stream$StreamTimeout;->this$0:Lokhttp3/internal/http2/Http2Stream;

    sget-object v2, Lokhttp3/internal/http2/ErrorCode;->CANCEL:Lokhttp3/internal/http2/ErrorCode;

    invoke-virtual {v1, v2}, Lokhttp3/internal/http2/Http2Stream;->closeLater(Lokhttp3/internal/http2/ErrorCode;)V

    .line 584
    return-void
.end method
