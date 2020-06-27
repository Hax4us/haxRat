.class public final Lokio/Pipe;
.super Ljava/lang/Object;
.source "Pipe.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u000e\u0010\u001e\u001a\u00020\u001f2\u0006\u0010\u0011\u001a\u00020\nJ\r\u0010\u0011\u001a\u00020\nH\u0007\u00a2\u0006\u0002\u0008 J\r\u0010\u0018\u001a\u00020\u0019H\u0007\u00a2\u0006\u0002\u0008!J&\u0010\"\u001a\u00020\u001f*\u00020\n2\u0017\u0010#\u001a\u0013\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u001f0$\u00a2\u0006\u0002\u0008%H\u0082\u0008R\u0014\u0010\u0005\u001a\u00020\u0006X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u0014\u0010\u0002\u001a\u00020\u0003X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0013\u0010\u0011\u001a\u00020\n8G\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u000cR\u001a\u0010\u0012\u001a\u00020\u0013X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R\u0013\u0010\u0018\u001a\u00020\u00198G\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u001aR\u001a\u0010\u001b\u001a\u00020\u0013X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001c\u0010\u0015\"\u0004\u0008\u001d\u0010\u0017\u00a8\u0006&"
    }
    d2 = {
        "Lokio/Pipe;",
        "",
        "maxBufferSize",
        "",
        "(J)V",
        "buffer",
        "Lokio/Buffer;",
        "getBuffer$okio",
        "()Lokio/Buffer;",
        "foldedSink",
        "Lokio/Sink;",
        "getFoldedSink$okio",
        "()Lokio/Sink;",
        "setFoldedSink$okio",
        "(Lokio/Sink;)V",
        "getMaxBufferSize$okio",
        "()J",
        "sink",
        "sinkClosed",
        "",
        "getSinkClosed$okio",
        "()Z",
        "setSinkClosed$okio",
        "(Z)V",
        "source",
        "Lokio/Source;",
        "()Lokio/Source;",
        "sourceClosed",
        "getSourceClosed$okio",
        "setSourceClosed$okio",
        "fold",
        "",
        "-deprecated_sink",
        "-deprecated_source",
        "forward",
        "block",
        "Lkotlin/Function1;",
        "Lkotlin/ExtensionFunctionType;",
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
.field private final buffer:Lokio/Buffer;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private foldedSink:Lokio/Sink;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final maxBufferSize:J

.field private final sink:Lokio/Sink;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private sinkClosed:Z

.field private final source:Lokio/Source;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private sourceClosed:Z


# direct methods
.method public constructor <init>(J)V
    .locals 12

    .prologue
    .line 36
    move-object v0, p0

    move-wide v1, p1

    move-object v7, v0

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    move-object v7, v0

    move-wide v8, v1

    iput-wide v8, v7, Lokio/Pipe;->maxBufferSize:J

    .line 37
    move-object v7, v0

    new-instance v8, Lokio/Buffer;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Lokio/Buffer;-><init>()V

    iput-object v8, v7, Lokio/Pipe;->buffer:Lokio/Buffer;

    .line 42
    nop

    .line 43
    move-object v7, v0

    iget-wide v7, v7, Lokio/Pipe;->maxBufferSize:J

    const-wide/16 v9, 0x1

    cmp-long v7, v7, v9

    if-ltz v7, :cond_0

    const/4 v7, 0x1

    :goto_0
    move v3, v7

    const/4 v7, 0x0

    move v4, v7

    const/4 v7, 0x0

    move v5, v7

    move v7, v3

    if-nez v7, :cond_1

    const/4 v7, 0x0

    move v6, v7

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "maxBufferSize < 1: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v0

    iget-wide v8, v8, Lokio/Pipe;->maxBufferSize:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    new-instance v7, Ljava/lang/IllegalArgumentException;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v5

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v7, Ljava/lang/Throwable;

    throw v7

    :cond_0
    const/4 v7, 0x0

    goto :goto_0

    .line 44
    :cond_1
    nop

    .line 47
    move-object v7, v0

    new-instance v8, Lokio/Pipe$sink$1;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    move-object v10, v0

    invoke-direct {v9, v10}, Lokio/Pipe$sink$1;-><init>(Lokio/Pipe;)V

    check-cast v8, Lokio/Sink;

    iput-object v8, v7, Lokio/Pipe;->sink:Lokio/Sink;

    .line 120
    move-object v7, v0

    new-instance v8, Lokio/Pipe$source$1;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    move-object v10, v0

    invoke-direct {v9, v10}, Lokio/Pipe$source$1;-><init>(Lokio/Pipe;)V

    check-cast v8, Lokio/Source;

    iput-object v8, v7, Lokio/Pipe;->source:Lokio/Source;

    return-void
.end method

.method public static final synthetic access$forward(Lokio/Pipe;Lokio/Sink;Lkotlin/jvm/functions/Function1;)V
    .locals 6

    .prologue
    .line 36
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lokio/Pipe;->forward(Lokio/Sink;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private final forward(Lokio/Sink;Lkotlin/jvm/functions/Function1;)V
    .locals 20
    .param p1    # Lokio/Sink;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokio/Sink;",
            "Lkotlin/jvm/functions/Function1",
            "<-",
            "Lokio/Sink;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .prologue
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v14, 0x0

    move v3, v14

    .line 199
    move-object v14, v1

    invoke-interface {v14}, Lokio/Sink;->timeout()Lokio/Timeout;

    move-result-object v14

    move-object v4, v14

    move-object v14, v0

    invoke-virtual {v14}, Lokio/Pipe;->sink()Lokio/Sink;

    move-result-object v14

    invoke-interface {v14}, Lokio/Sink;->timeout()Lokio/Timeout;

    move-result-object v14

    move-object v5, v14

    const/4 v14, 0x0

    move v6, v14

    .line 220
    move-object v14, v4

    invoke-virtual {v14}, Lokio/Timeout;->timeoutNanos()J

    move-result-wide v14

    move-wide v7, v14

    .line 221
    move-object v14, v4

    sget-object v15, Lokio/Timeout;->Companion:Lokio/Timeout$Companion;

    move-object/from16 v16, v5

    invoke-virtual/range {v16 .. v16}, Lokio/Timeout;->timeoutNanos()J

    move-result-wide v16

    move-object/from16 v18, v4

    invoke-virtual/range {v18 .. v18}, Lokio/Timeout;->timeoutNanos()J

    move-result-wide v18

    invoke-virtual/range {v15 .. v19}, Lokio/Timeout$Companion;->minTimeout(JJ)J

    move-result-wide v15

    sget-object v17, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v14 .. v17}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    move-result-object v14

    .line 223
    move-object v14, v4

    invoke-virtual {v14}, Lokio/Timeout;->hasDeadline()Z

    move-result v14

    if-eqz v14, :cond_3

    .line 224
    move-object v14, v4

    invoke-virtual {v14}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v14

    move-wide v9, v14

    .line 225
    move-object v14, v5

    invoke-virtual {v14}, Lokio/Timeout;->hasDeadline()Z

    move-result v14

    if-eqz v14, :cond_0

    .line 226
    move-object v14, v4

    move-object v15, v4

    invoke-virtual {v15}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v15

    move-object/from16 v17, v5

    invoke-virtual/range {v17 .. v17}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v17

    invoke-static/range {v15 .. v18}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v15

    invoke-virtual/range {v14 .. v16}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    move-result-object v14

    .line 228
    :cond_0
    nop

    .line 229
    const/4 v14, 0x0

    move v11, v14

    .line 199
    move-object v14, v2

    move-object v15, v1

    :try_start_0
    invoke-interface {v14, v15}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v14

    const/4 v14, 0x1

    invoke-static {v14}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 231
    move-object v14, v4

    move-wide v15, v7

    sget-object v17, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v14 .. v17}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    move-result-object v14

    .line 232
    move-object v14, v5

    invoke-virtual {v14}, Lokio/Timeout;->hasDeadline()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 233
    move-object v14, v4

    move-wide v15, v9

    invoke-virtual/range {v14 .. v16}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    move-result-object v14

    :cond_1
    const/4 v14, 0x1

    invoke-static {v14}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 248
    :goto_0
    nop

    .line 200
    return-void

    .line 235
    :catchall_0
    move-exception v14

    move-object v11, v14

    const/4 v14, 0x1

    invoke-static {v14}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 231
    move-object v14, v4

    move-wide v15, v7

    sget-object v17, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v14 .. v17}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    move-result-object v14

    .line 232
    move-object v14, v5

    invoke-virtual {v14}, Lokio/Timeout;->hasDeadline()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 233
    move-object v14, v4

    move-wide v15, v9

    invoke-virtual/range {v14 .. v16}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    move-result-object v14

    :cond_2
    const/4 v14, 0x1

    invoke-static {v14}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    move-object v14, v11

    throw v14

    .line 237
    :cond_3
    move-object v14, v5

    invoke-virtual {v14}, Lokio/Timeout;->hasDeadline()Z

    move-result v14

    if-eqz v14, :cond_4

    .line 238
    move-object v14, v4

    move-object v15, v5

    invoke-virtual {v15}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v15

    invoke-virtual/range {v14 .. v16}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    move-result-object v14

    .line 240
    :cond_4
    nop

    .line 241
    const/4 v14, 0x0

    move v12, v14

    .line 199
    move-object v14, v2

    move-object v15, v1

    :try_start_1
    invoke-interface {v14, v15}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v14

    const/4 v14, 0x1

    invoke-static {v14}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 243
    move-object v14, v4

    move-wide v15, v7

    sget-object v17, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v14 .. v17}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    move-result-object v14

    .line 244
    move-object v14, v5

    invoke-virtual {v14}, Lokio/Timeout;->hasDeadline()Z

    move-result v14

    if-eqz v14, :cond_5

    .line 245
    move-object v14, v4

    invoke-virtual {v14}, Lokio/Timeout;->clearDeadline()Lokio/Timeout;

    move-result-object v14

    :cond_5
    const/4 v14, 0x1

    invoke-static {v14}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 247
    goto :goto_0

    :catchall_1
    move-exception v14

    move-object v13, v14

    const/4 v14, 0x1

    invoke-static {v14}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 243
    move-object v14, v4

    move-wide v15, v7

    sget-object v17, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v14 .. v17}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    move-result-object v14

    .line 244
    move-object v14, v5

    invoke-virtual {v14}, Lokio/Timeout;->hasDeadline()Z

    move-result v14

    if-eqz v14, :cond_6

    .line 245
    move-object v14, v4

    invoke-virtual {v14}, Lokio/Timeout;->clearDeadline()Lokio/Timeout;

    move-result-object v14

    :cond_6
    const/4 v14, 0x1

    invoke-static {v14}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    move-object v14, v13

    throw v14
.end method


# virtual methods
.method public final -deprecated_sink()Lokio/Sink;
    .locals 2
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "moved to val"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "sink"
            imports = {}
        .end subannotation
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
        name = "-deprecated_sink"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 207
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokio/Pipe;->sink:Lokio/Sink;

    move-object v0, v1

    return-object v0
.end method

.method public final -deprecated_source()Lokio/Source;
    .locals 2
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "moved to val"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "source"
            imports = {}
        .end subannotation
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
        name = "-deprecated_source"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 214
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokio/Pipe;->source:Lokio/Source;

    move-object v0, v1

    return-object v0
.end method

.method public final fold(Lokio/Sink;)V
    .locals 18
    .param p1    # Lokio/Sink;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v13, v1

    const-string v14, "sink"

    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    :goto_0
    nop

    .line 161
    const/4 v13, 0x0

    move v2, v13

    .line 162
    const/4 v13, 0x0

    move-object v3, v13

    .line 163
    move-object v13, v0

    iget-object v13, v13, Lokio/Pipe;->buffer:Lokio/Buffer;

    move-object v4, v13

    const/4 v13, 0x0

    move v5, v13

    .line 217
    const/4 v13, 0x0

    move v6, v13

    const/4 v13, 0x0

    move v7, v13

    move-object v13, v4

    monitor-enter v13

    nop

    const/4 v13, 0x0

    move v8, v13

    .line 164
    move-object v13, v0

    :try_start_0
    iget-object v13, v13, Lokio/Pipe;->foldedSink:Lokio/Sink;

    if-nez v13, :cond_0

    const/4 v13, 0x1

    :goto_1
    move v9, v13

    const/4 v13, 0x0

    move v10, v13

    const/4 v13, 0x0

    move v11, v13

    move v13, v9

    if-nez v13, :cond_1

    const/4 v13, 0x0

    move v12, v13

    const-string v13, "sink already folded"

    move-object v11, v13

    new-instance v13, Ljava/lang/IllegalStateException;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    move-object v15, v11

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v13, Ljava/lang/Throwable;

    throw v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    :catchall_0
    move-exception v13

    move-object v7, v13

    move-object v13, v4

    monitor-exit v13

    move-object v13, v7

    throw v13

    .line 164
    :cond_0
    const/4 v13, 0x0

    goto :goto_1

    .line 166
    :cond_1
    move-object v13, v0

    :try_start_1
    iget-object v13, v13, Lokio/Pipe;->buffer:Lokio/Buffer;

    invoke-virtual {v13}, Lokio/Buffer;->exhausted()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 167
    move-object v13, v0

    const/4 v14, 0x1

    iput-boolean v14, v13, Lokio/Pipe;->sourceClosed:Z

    .line 168
    move-object v13, v0

    move-object v14, v1

    iput-object v14, v13, Lokio/Pipe;->foldedSink:Lokio/Sink;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 169
    move-object v13, v4

    monitor-exit v13

    return-void

    .line 172
    :cond_2
    move-object v13, v0

    :try_start_2
    iget-boolean v13, v13, Lokio/Pipe;->sinkClosed:Z

    move v2, v13

    .line 173
    new-instance v13, Lokio/Buffer;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    invoke-direct {v14}, Lokio/Buffer;-><init>()V

    move-object v3, v13

    .line 174
    move-object v13, v3

    move-object v14, v0

    iget-object v14, v14, Lokio/Pipe;->buffer:Lokio/Buffer;

    move-object v15, v0

    iget-object v15, v15, Lokio/Pipe;->buffer:Lokio/Buffer;

    invoke-virtual {v15}, Lokio/Buffer;->size()J

    move-result-wide v15

    invoke-virtual/range {v13 .. v16}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    .line 175
    move-object v13, v0

    iget-object v13, v13, Lokio/Pipe;->buffer:Lokio/Buffer;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    if-nez v14, :cond_3

    new-instance v14, Lkotlin/TypeCastException;

    move-object/from16 v17, v14

    move-object/from16 v14, v17

    move-object/from16 v15, v17

    const-string v16, "null cannot be cast to non-null type java.lang.Object"

    invoke-direct/range {v15 .. v16}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v14

    :cond_3
    check-cast v13, Ljava/lang/Object;

    invoke-virtual {v13}, Ljava/lang/Object;->notifyAll()V

    .line 176
    sget-object v13, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v7, v13

    move-object v13, v4

    monitor-exit v13

    .line 178
    const/4 v13, 0x0

    move v4, v13

    .line 179
    nop

    .line 180
    move-object v13, v1

    move-object v14, v3

    move-object v15, v3

    :try_start_3
    invoke-virtual {v15}, Lokio/Buffer;->size()J

    move-result-wide v15

    invoke-interface/range {v13 .. v16}, Lokio/Sink;->write(Lokio/Buffer;J)V

    .line 181
    move v13, v2

    if-eqz v13, :cond_4

    .line 182
    move-object v13, v1

    invoke-interface {v13}, Lokio/Sink;->close()V

    .line 185
    :goto_2
    const/4 v13, 0x1

    move v4, v13

    .line 188
    nop

    .line 194
    goto/16 :goto_0

    .line 184
    :cond_4
    move-object v13, v1

    invoke-interface {v13}, Lokio/Sink;->flush()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    .line 194
    :catchall_1
    move-exception v13

    move-object v5, v13

    .line 188
    nop

    .line 189
    move-object v13, v0

    iget-object v13, v13, Lokio/Pipe;->buffer:Lokio/Buffer;

    move-object v6, v13

    const/4 v13, 0x0

    move v7, v13

    .line 219
    const/4 v13, 0x0

    move v8, v13

    const/4 v13, 0x0

    move v9, v13

    move-object v13, v6

    monitor-enter v13

    nop

    const/4 v13, 0x0

    move v10, v13

    .line 190
    move-object v13, v0

    const/4 v14, 0x1

    :try_start_4
    iput-boolean v14, v13, Lokio/Pipe;->sourceClosed:Z

    .line 191
    move-object v13, v0

    iget-object v13, v13, Lokio/Pipe;->buffer:Lokio/Buffer;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    if-nez v14, :cond_5

    new-instance v14, Lkotlin/TypeCastException;

    move-object/from16 v17, v14

    move-object/from16 v14, v17

    move-object/from16 v15, v17

    const-string v16, "null cannot be cast to non-null type java.lang.Object"

    invoke-direct/range {v15 .. v16}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v14
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 192
    :catchall_2
    move-exception v13

    move-object v9, v13

    move-object v13, v6

    monitor-exit v13

    move-object v13, v9

    throw v13

    .line 191
    :cond_5
    :try_start_5
    check-cast v13, Ljava/lang/Object;

    invoke-virtual {v13}, Ljava/lang/Object;->notifyAll()V

    .line 192
    sget-object v13, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-object v9, v13

    move-object v13, v6

    monitor-exit v13

    move-object v13, v5

    throw v13
.end method

.method public final getBuffer$okio()Lokio/Buffer;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 37
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokio/Pipe;->buffer:Lokio/Buffer;

    move-object v0, v1

    return-object v0
.end method

.method public final getFoldedSink$okio()Lokio/Sink;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 40
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokio/Pipe;->foldedSink:Lokio/Sink;

    move-object v0, v1

    return-object v0
.end method

.method public final getMaxBufferSize$okio()J
    .locals 3

    .prologue
    .line 36
    move-object v0, p0

    move-object v1, v0

    iget-wide v1, v1, Lokio/Pipe;->maxBufferSize:J

    move-wide v0, v1

    return-wide v0
.end method

.method public final getSinkClosed$okio()Z
    .locals 2

    .prologue
    .line 38
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lokio/Pipe;->sinkClosed:Z

    move v0, v1

    return v0
.end method

.method public final getSourceClosed$okio()Z
    .locals 2

    .prologue
    .line 39
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lokio/Pipe;->sourceClosed:Z

    move v0, v1

    return v0
.end method

.method public final setFoldedSink$okio(Lokio/Sink;)V
    .locals 4
    .param p1    # Lokio/Sink;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 40
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lokio/Pipe;->foldedSink:Lokio/Sink;

    return-void
.end method

.method public final setSinkClosed$okio(Z)V
    .locals 4

    .prologue
    .line 38
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lokio/Pipe;->sinkClosed:Z

    return-void
.end method

.method public final setSourceClosed$okio(Z)V
    .locals 4

    .prologue
    .line 39
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lokio/Pipe;->sourceClosed:Z

    return-void
.end method

.method public final sink()Lokio/Sink;
    .locals 2
    .annotation build Lkotlin/jvm/JvmName;
        name = "sink"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 47
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokio/Pipe;->sink:Lokio/Sink;

    move-object v0, v1

    return-object v0
.end method

.method public final source()Lokio/Source;
    .locals 2
    .annotation build Lkotlin/jvm/JvmName;
        name = "source"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 120
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokio/Pipe;->source:Lokio/Source;

    move-object v0, v1

    return-object v0
.end method
