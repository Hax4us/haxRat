.class public Lokio/ForwardingTimeout;
.super Lokio/Timeout;
.source "ForwardingTimeout.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0016\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0006\u001a\u00020\u0001H\u0016J\u0008\u0010\u0007\u001a\u00020\u0001H\u0016J\u0008\u0010\u0008\u001a\u00020\tH\u0016J\u0010\u0010\u0008\u001a\u00020\u00012\u0006\u0010\u0008\u001a\u00020\tH\u0016J\u0008\u0010\n\u001a\u00020\u000bH\u0016J\u000e\u0010\u0005\u001a\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0001J\u0008\u0010\u000c\u001a\u00020\rH\u0016J\u0018\u0010\u000e\u001a\u00020\u00012\u0006\u0010\u000e\u001a\u00020\t2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\u0008\u0010\u0011\u001a\u00020\tH\u0016R\u001c\u0010\u0002\u001a\u00020\u00018\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0002\u0010\u0004\"\u0004\u0008\u0005\u0010\u0003\u00a8\u0006\u0012"
    }
    d2 = {
        "Lokio/ForwardingTimeout;",
        "Lokio/Timeout;",
        "delegate",
        "(Lokio/Timeout;)V",
        "()Lokio/Timeout;",
        "setDelegate",
        "clearDeadline",
        "clearTimeout",
        "deadlineNanoTime",
        "",
        "hasDeadline",
        "",
        "throwIfReached",
        "",
        "timeout",
        "unit",
        "Ljava/util/concurrent/TimeUnit;",
        "timeoutNanos",
        "okio"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private delegate:Lokio/Timeout;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lokio/Timeout;)V
    .locals 4
    .param p1    # Lokio/Timeout;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    const-string v3, "delegate"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    move-object v2, v0

    .line 26
    invoke-direct {v2}, Lokio/Timeout;-><init>()V

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lokio/ForwardingTimeout;->delegate:Lokio/Timeout;

    return-void
.end method


# virtual methods
.method public clearDeadline()Lokio/Timeout;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 47
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokio/ForwardingTimeout;->delegate:Lokio/Timeout;

    invoke-virtual {v1}, Lokio/Timeout;->clearDeadline()Lokio/Timeout;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public clearTimeout()Lokio/Timeout;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 45
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokio/ForwardingTimeout;->delegate:Lokio/Timeout;

    invoke-virtual {v1}, Lokio/Timeout;->clearTimeout()Lokio/Timeout;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public deadlineNanoTime()J
    .locals 3

    .prologue
    .line 40
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokio/ForwardingTimeout;->delegate:Lokio/Timeout;

    invoke-virtual {v1}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v1

    move-wide v0, v1

    return-wide v0
.end method

.method public deadlineNanoTime(J)Lokio/Timeout;
    .locals 6
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 42
    move-object v0, p0

    move-wide v1, p1

    move-object v3, v0

    iget-object v3, v3, Lokio/ForwardingTimeout;->delegate:Lokio/Timeout;

    .line 43
    move-wide v4, v1

    .line 42
    invoke-virtual {v3, v4, v5}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    move-result-object v3

    .line 43
    move-object v0, v3

    return-object v0
.end method

.method public final delegate()Lokio/Timeout;
    .locals 2
    .annotation build Lkotlin/jvm/JvmName;
        name = "delegate"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 25
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokio/ForwardingTimeout;->delegate:Lokio/Timeout;

    move-object v0, v1

    return-object v0
.end method

.method public hasDeadline()Z
    .locals 2

    .prologue
    .line 38
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokio/ForwardingTimeout;->delegate:Lokio/Timeout;

    invoke-virtual {v1}, Lokio/Timeout;->hasDeadline()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public final setDelegate(Lokio/Timeout;)Lokio/ForwardingTimeout;
    .locals 4
    .param p1    # Lokio/Timeout;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    const-string v3, "delegate"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lokio/ForwardingTimeout;->delegate:Lokio/Timeout;

    .line 31
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public final synthetic setDelegate(Lokio/Timeout;)V
    .locals 4
    .param p1    # Lokio/Timeout;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    const-string v3, "<set-?>"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lokio/ForwardingTimeout;->delegate:Lokio/Timeout;

    return-void
.end method

.method public throwIfReached()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokio/ForwardingTimeout;->delegate:Lokio/Timeout;

    invoke-virtual {v1}, Lokio/Timeout;->throwIfReached()V

    return-void
.end method

.method public timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;
    .locals 8
    .param p3    # Ljava/util/concurrent/TimeUnit;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, v3

    const-string v5, "unit"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    move-object v4, v0

    iget-object v4, v4, Lokio/ForwardingTimeout;->delegate:Lokio/Timeout;

    move-wide v5, v1

    move-object v7, v3

    invoke-virtual {v4, v5, v6, v7}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    move-result-object v4

    move-object v0, v4

    return-object v0
.end method

.method public timeoutNanos()J
    .locals 3

    .prologue
    .line 36
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokio/ForwardingTimeout;->delegate:Lokio/Timeout;

    invoke-virtual {v1}, Lokio/Timeout;->timeoutNanos()J

    move-result-wide v1

    move-wide v0, v1

    return-wide v0
.end method
