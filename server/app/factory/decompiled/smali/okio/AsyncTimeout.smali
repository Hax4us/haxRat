.class public Lokio/AsyncTimeout;
.super Lokio/Timeout;
.source "AsyncTimeout.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokio/AsyncTimeout$Watchdog;,
        Lokio/AsyncTimeout$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0016\u0018\u0000 \u001b2\u00020\u0001:\u0002\u001b\u001cB\u0005\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0008\u001a\u00020\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\tH\u0001J\u0006\u0010\u000b\u001a\u00020\u000cJ\u0006\u0010\r\u001a\u00020\u0004J\u0012\u0010\u000e\u001a\u00020\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\tH\u0014J\u0010\u0010\u000f\u001a\u00020\u00072\u0006\u0010\u0010\u001a\u00020\u0007H\u0002J\u000e\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0011\u001a\u00020\u0012J\u000e\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0013\u001a\u00020\u0014J\u0008\u0010\u0015\u001a\u00020\u000cH\u0014J\"\u0010\u0016\u001a\u0002H\u0017\"\u0004\u0008\u0000\u0010\u00172\u000c\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u0002H\u00170\u0019H\u0086\u0008\u00a2\u0006\u0002\u0010\u001aR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0000X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001d"
    }
    d2 = {
        "Lokio/AsyncTimeout;",
        "Lokio/Timeout;",
        "()V",
        "inQueue",
        "",
        "next",
        "timeoutAt",
        "",
        "access$newTimeoutException",
        "Ljava/io/IOException;",
        "cause",
        "enter",
        "",
        "exit",
        "newTimeoutException",
        "remainingNanos",
        "now",
        "sink",
        "Lokio/Sink;",
        "source",
        "Lokio/Source;",
        "timedOut",
        "withTimeout",
        "T",
        "block",
        "Lkotlin/Function0;",
        "(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;",
        "Companion",
        "Watchdog",
        "okio"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final Companion:Lokio/AsyncTimeout$Companion;

.field private static final IDLE_TIMEOUT_MILLIS:J

.field private static final IDLE_TIMEOUT_NANOS:J

.field private static final TIMEOUT_WRITE_SIZE:I = 0x10000

.field private static head:Lokio/AsyncTimeout;


# instance fields
.field private inQueue:Z

.field private next:Lokio/AsyncTimeout;

.field private timeoutAt:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    new-instance v0, Lokio/AsyncTimeout$Companion;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lokio/AsyncTimeout$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lokio/AsyncTimeout;->Companion:Lokio/AsyncTimeout$Companion;

    .line 214
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3c

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lokio/AsyncTimeout;->IDLE_TIMEOUT_MILLIS:J

    .line 215
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget-wide v1, Lokio/AsyncTimeout;->IDLE_TIMEOUT_MILLIS:J

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lokio/AsyncTimeout;->IDLE_TIMEOUT_NANOS:J

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 38
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lokio/Timeout;-><init>()V

    return-void
.end method

.method public static final synthetic access$getHead$cp()Lokio/AsyncTimeout;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lokio/AsyncTimeout;->head:Lokio/AsyncTimeout;

    return-object v0
.end method

.method public static final synthetic access$getIDLE_TIMEOUT_MILLIS$cp()J
    .locals 2

    .prologue
    .line 38
    sget-wide v0, Lokio/AsyncTimeout;->IDLE_TIMEOUT_MILLIS:J

    return-wide v0
.end method

.method public static final synthetic access$getIDLE_TIMEOUT_NANOS$cp()J
    .locals 2

    .prologue
    .line 38
    sget-wide v0, Lokio/AsyncTimeout;->IDLE_TIMEOUT_NANOS:J

    return-wide v0
.end method

.method public static final synthetic access$getNext$p(Lokio/AsyncTimeout;)Lokio/AsyncTimeout;
    .locals 2

    .prologue
    .line 38
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;

    move-object v0, v1

    return-object v0
.end method

.method public static final synthetic access$getTimeoutAt$p(Lokio/AsyncTimeout;)J
    .locals 3

    .prologue
    .line 38
    move-object v0, p0

    move-object v1, v0

    iget-wide v1, v1, Lokio/AsyncTimeout;->timeoutAt:J

    move-wide v0, v1

    return-wide v0
.end method

.method public static final synthetic access$remainingNanos(Lokio/AsyncTimeout;J)J
    .locals 6

    .prologue
    .line 38
    move-object v0, p0

    move-wide v1, p1

    move-object v3, v0

    move-wide v4, v1

    invoke-direct {v3, v4, v5}, Lokio/AsyncTimeout;->remainingNanos(J)J

    move-result-wide v3

    move-wide v0, v3

    return-wide v0
.end method

.method public static final synthetic access$setHead$cp(Lokio/AsyncTimeout;)V
    .locals 2

    .prologue
    .line 38
    move-object v0, p0

    move-object v1, v0

    sput-object v1, Lokio/AsyncTimeout;->head:Lokio/AsyncTimeout;

    return-void
.end method

.method public static final synthetic access$setNext$p(Lokio/AsyncTimeout;Lokio/AsyncTimeout;)V
    .locals 4

    .prologue
    .line 38
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;

    return-void
.end method

.method public static final synthetic access$setTimeoutAt$p(Lokio/AsyncTimeout;J)V
    .locals 6

    .prologue
    .line 38
    move-object v0, p0

    move-wide v1, p1

    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Lokio/AsyncTimeout;->timeoutAt:J

    return-void
.end method

.method private final remainingNanos(J)J
    .locals 7

    .prologue
    .line 70
    move-object v0, p0

    move-wide v1, p1

    move-object v3, v0

    iget-wide v3, v3, Lokio/AsyncTimeout;->timeoutAt:J

    move-wide v5, v1

    sub-long/2addr v3, v5

    move-wide v0, v3

    return-wide v0
.end method


# virtual methods
.method public final access$newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 4
    .param p1    # Ljava/io/IOException;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lkotlin/PublishedApi;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 162
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lokio/AsyncTimeout;->newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public final enter()V
    .locals 11

    .prologue
    .line 49
    move-object v0, p0

    move-object v5, v0

    iget-boolean v5, v5, Lokio/AsyncTimeout;->inQueue:Z

    if-nez v5, :cond_0

    const/4 v5, 0x1

    :goto_0
    move v1, v5

    const/4 v5, 0x0

    move v2, v5

    const/4 v5, 0x0

    move v3, v5

    move v5, v1

    if-nez v5, :cond_1

    const/4 v5, 0x0

    move v4, v5

    const-string v5, "Unbalanced enter/exit"

    move-object v3, v5

    new-instance v5, Ljava/lang/IllegalStateException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v3

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v5, Ljava/lang/Throwable;

    throw v5

    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 50
    :cond_1
    move-object v5, v0

    invoke-virtual {v5}, Lokio/AsyncTimeout;->timeoutNanos()J

    move-result-wide v5

    move-wide v1, v5

    .line 51
    move-object v5, v0

    invoke-virtual {v5}, Lokio/AsyncTimeout;->hasDeadline()Z

    move-result v5

    move v3, v5

    .line 52
    move-wide v5, v1

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_2

    move v5, v3

    if-nez v5, :cond_2

    .line 57
    :goto_1
    return-void

    .line 55
    :cond_2
    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Lokio/AsyncTimeout;->inQueue:Z

    .line 56
    sget-object v5, Lokio/AsyncTimeout;->Companion:Lokio/AsyncTimeout$Companion;

    move-object v6, v0

    move-wide v7, v1

    move v9, v3

    invoke-static {v5, v6, v7, v8, v9}, Lokio/AsyncTimeout$Companion;->access$scheduleTimeout(Lokio/AsyncTimeout$Companion;Lokio/AsyncTimeout;JZ)V

    .line 57
    goto :goto_1
.end method

.method public final exit()Z
    .locals 3

    .prologue
    .line 61
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lokio/AsyncTimeout;->inQueue:Z

    if-nez v1, :cond_0

    const/4 v1, 0x0

    move v0, v1

    .line 63
    :goto_0
    return v0

    .line 62
    :cond_0
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lokio/AsyncTimeout;->inQueue:Z

    .line 63
    sget-object v1, Lokio/AsyncTimeout;->Companion:Lokio/AsyncTimeout$Companion;

    move-object v2, v0

    invoke-static {v1, v2}, Lokio/AsyncTimeout$Companion;->access$cancelScheduledTimeout(Lokio/AsyncTimeout$Companion;Lokio/AsyncTimeout;)Z

    move-result v1

    move v0, v1

    goto :goto_0
.end method

.method protected newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 7
    .param p1    # Ljava/io/IOException;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 170
    move-object v0, p0

    move-object v1, p1

    new-instance v3, Ljava/io/InterruptedIOException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "timeout"

    invoke-direct {v4, v5}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    .line 171
    move-object v3, v1

    if-eqz v3, :cond_0

    .line 172
    move-object v3, v2

    move-object v4, v1

    check-cast v4, Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/io/InterruptedIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v3

    .line 174
    :cond_0
    move-object v3, v2

    check-cast v3, Ljava/io/IOException;

    move-object v0, v3

    return-object v0
.end method

.method public final sink(Lokio/Sink;)Lokio/Sink;
    .locals 7
    .param p1    # Lokio/Sink;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    const-string v3, "sink"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    new-instance v2, Lokio/AsyncTimeout$sink$1;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lokio/AsyncTimeout$sink$1;-><init>(Lokio/AsyncTimeout;Lokio/Sink;)V

    check-cast v2, Lokio/Sink;

    move-object v0, v2

    return-object v0
.end method

.method public final source(Lokio/Source;)Lokio/Source;
    .locals 7
    .param p1    # Lokio/Source;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    const-string v3, "source"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    new-instance v2, Lokio/AsyncTimeout$source$1;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lokio/AsyncTimeout$source$1;-><init>(Lokio/AsyncTimeout;Lokio/Source;)V

    check-cast v2, Lokio/Source;

    move-object v0, v2

    return-object v0
.end method

.method protected timedOut()V
    .locals 0

    .prologue
    .line 76
    return-void
.end method

.method public final withTimeout(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .locals 9
    .param p1    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function0",
            "<+TT;>;)TT;"
        }
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    const/4 v7, 0x0

    move v2, v7

    move-object v7, v1

    const-string v8, "block"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    const/4 v7, 0x0

    move v3, v7

    .line 148
    move-object v7, v0

    invoke-virtual {v7}, Lokio/AsyncTimeout;->enter()V

    .line 149
    nop

    .line 150
    move-object v7, v1

    :try_start_0
    invoke-interface {v7}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    move-object v4, v7

    .line 151
    const/4 v7, 0x1

    move v3, v7

    .line 152
    move-object v7, v4

    move-object v5, v7

    const/4 v7, 0x1

    invoke-static {v7}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 156
    move-object v7, v0

    invoke-virtual {v7}, Lokio/AsyncTimeout;->exit()Z

    move-result v7

    move v6, v7

    .line 157
    move v7, v6

    if-eqz v7, :cond_0

    move-object v7, v0

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lokio/AsyncTimeout;->access$newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v7

    check-cast v7, Ljava/lang/Throwable;

    throw v7

    :cond_0
    const/4 v7, 0x1

    invoke-static {v7}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    move-object v7, v5

    move-object v0, v7

    return-object v0

    .line 153
    :catch_0
    move-exception v7

    move-object v4, v7

    .line 154
    move-object v7, v0

    :try_start_1
    invoke-virtual {v7}, Lokio/AsyncTimeout;->exit()Z

    move-result v7

    if-nez v7, :cond_1

    move-object v7, v4

    check-cast v7, Ljava/lang/Throwable;

    :goto_0
    throw v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 158
    :catchall_0
    move-exception v7

    move-object v4, v7

    const/4 v7, 0x1

    invoke-static {v7}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 156
    move-object v7, v0

    invoke-virtual {v7}, Lokio/AsyncTimeout;->exit()Z

    move-result v7

    move v5, v7

    .line 157
    move v7, v5

    if-eqz v7, :cond_2

    move v7, v3

    if-eqz v7, :cond_2

    move-object v7, v0

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lokio/AsyncTimeout;->access$newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v7

    check-cast v7, Ljava/lang/Throwable;

    throw v7

    .line 154
    :cond_1
    move-object v7, v0

    move-object v8, v4

    :try_start_2
    invoke-virtual {v7, v8}, Lokio/AsyncTimeout;->access$newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v7

    check-cast v7, Ljava/lang/Throwable;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 157
    :cond_2
    const/4 v7, 0x1

    invoke-static {v7}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    move-object v7, v4

    throw v7
.end method
