.class final Lokhttp3/internal/http2/Ping;
.super Ljava/lang/Object;
.source "Ping.java"


# instance fields
.field private final latch:Ljava/util/concurrent/CountDownLatch;

.field private received:J

.field private sent:J


# direct methods
.method constructor <init>()V
    .locals 6

    .prologue
    .line 29
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 25
    move-object v1, v0

    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v2, v1, Lokhttp3/internal/http2/Ping;->latch:Ljava/util/concurrent/CountDownLatch;

    .line 26
    move-object v1, v0

    const-wide/16 v2, -0x1

    iput-wide v2, v1, Lokhttp3/internal/http2/Ping;->sent:J

    .line 27
    move-object v1, v0

    const-wide/16 v2, -0x1

    iput-wide v2, v1, Lokhttp3/internal/http2/Ping;->received:J

    .line 30
    return-void
.end method


# virtual methods
.method cancel()V
    .locals 7

    .prologue
    .line 44
    move-object v0, p0

    move-object v1, v0

    iget-wide v1, v1, Lokhttp3/internal/http2/Ping;->received:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    move-object v1, v0

    iget-wide v1, v1, Lokhttp3/internal/http2/Ping;->sent:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 45
    :cond_1
    move-object v1, v0

    move-object v2, v0

    iget-wide v2, v2, Lokhttp3/internal/http2/Ping;->sent:J

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    iput-wide v2, v1, Lokhttp3/internal/http2/Ping;->received:J

    .line 46
    move-object v1, v0

    iget-object v1, v1, Lokhttp3/internal/http2/Ping;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 47
    return-void
.end method

.method receive()V
    .locals 6

    .prologue
    .line 38
    move-object v0, p0

    move-object v1, v0

    iget-wide v1, v1, Lokhttp3/internal/http2/Ping;->received:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    move-object v1, v0

    iget-wide v1, v1, Lokhttp3/internal/http2/Ping;->sent:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 39
    :cond_1
    move-object v1, v0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iput-wide v2, v1, Lokhttp3/internal/http2/Ping;->received:J

    .line 40
    move-object v1, v0

    iget-object v1, v1, Lokhttp3/internal/http2/Ping;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 41
    return-void
.end method

.method public roundTripTime()J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 54
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/internal/http2/Ping;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 55
    move-object v1, v0

    iget-wide v1, v1, Lokhttp3/internal/http2/Ping;->received:J

    move-object v3, v0

    iget-wide v3, v3, Lokhttp3/internal/http2/Ping;->sent:J

    sub-long/2addr v1, v3

    move-wide v0, v1

    return-wide v0
.end method

.method public roundTripTime(JLjava/util/concurrent/TimeUnit;)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 63
    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, v0

    iget-object v4, v4, Lokhttp3/internal/http2/Ping;->latch:Ljava/util/concurrent/CountDownLatch;

    move-wide v5, v1

    move-object v7, v3

    invoke-virtual {v4, v5, v6, v7}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 64
    move-object v4, v0

    iget-wide v4, v4, Lokhttp3/internal/http2/Ping;->received:J

    move-object v6, v0

    iget-wide v6, v6, Lokhttp3/internal/http2/Ping;->sent:J

    sub-long/2addr v4, v6

    move-wide v0, v4

    .line 66
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v4, -0x2

    move-wide v0, v4

    goto :goto_0
.end method

.method send()V
    .locals 6

    .prologue
    .line 33
    move-object v0, p0

    move-object v1, v0

    iget-wide v1, v1, Lokhttp3/internal/http2/Ping;->sent:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 34
    :cond_0
    move-object v1, v0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iput-wide v2, v1, Lokhttp3/internal/http2/Ping;->sent:J

    .line 35
    return-void
.end method
