.class public final Lokio/InflaterSource;
.super Ljava/lang/Object;
.source "InflaterSource.kt"

# interfaces
.implements Lokio/Source;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0017\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005B\u0017\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0006\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0007J\u0008\u0010\u000c\u001a\u00020\rH\u0016J\u0018\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u000fH\u0016J\u0016\u0010\u0013\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u000fJ\u0006\u0010\u0014\u001a\u00020\u000bJ\u0008\u0010\u0015\u001a\u00020\rH\u0002J\u0008\u0010\u0016\u001a\u00020\u0017H\u0016R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "Lokio/InflaterSource;",
        "Lokio/Source;",
        "source",
        "inflater",
        "Ljava/util/zip/Inflater;",
        "(Lokio/Source;Ljava/util/zip/Inflater;)V",
        "Lokio/BufferedSource;",
        "(Lokio/BufferedSource;Ljava/util/zip/Inflater;)V",
        "bufferBytesHeldByInflater",
        "",
        "closed",
        "",
        "close",
        "",
        "read",
        "",
        "sink",
        "Lokio/Buffer;",
        "byteCount",
        "readOrInflate",
        "refill",
        "releaseBytesAfterInflate",
        "timeout",
        "Lokio/Timeout;",
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
.field private bufferBytesHeldByInflater:I

.field private closed:Z

.field private final inflater:Ljava/util/zip/Inflater;

.field private final source:Lokio/BufferedSource;


# direct methods
.method public constructor <init>(Lokio/BufferedSource;Ljava/util/zip/Inflater;)V
    .locals 5
    .param p1    # Lokio/BufferedSource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/zip/Inflater;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v1

    const-string v4, "source"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v2

    const-string v4, "inflater"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lokio/InflaterSource;->source:Lokio/BufferedSource;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lokio/InflaterSource;->inflater:Ljava/util/zip/Inflater;

    return-void
.end method

.method public constructor <init>(Lokio/Source;Ljava/util/zip/Inflater;)V
    .locals 6
    .param p1    # Lokio/Source;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/zip/Inflater;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v1

    const-string v4, "source"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v2

    const-string v4, "inflater"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    move-object v3, v0

    move-object v4, v1

    invoke-static {v4}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v4

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lokio/InflaterSource;-><init>(Lokio/BufferedSource;Ljava/util/zip/Inflater;)V

    return-void
.end method

.method private final releaseBytesAfterInflate()V
    .locals 6

    .prologue
    .line 123
    move-object v0, p0

    move-object v2, v0

    iget v2, v2, Lokio/InflaterSource;->bufferBytesHeldByInflater:I

    if-nez v2, :cond_0

    .line 127
    :goto_0
    return-void

    .line 124
    :cond_0
    move-object v2, v0

    iget v2, v2, Lokio/InflaterSource;->bufferBytesHeldByInflater:I

    move-object v3, v0

    iget-object v3, v3, Lokio/InflaterSource;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v3}, Ljava/util/zip/Inflater;->getRemaining()I

    move-result v3

    sub-int/2addr v2, v3

    move v1, v2

    .line 125
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Lokio/InflaterSource;->bufferBytesHeldByInflater:I

    move v4, v1

    sub-int/2addr v3, v4

    iput v3, v2, Lokio/InflaterSource;->bufferBytesHeldByInflater:I

    .line 126
    move-object v2, v0

    iget-object v2, v2, Lokio/InflaterSource;->source:Lokio/BufferedSource;

    move v3, v1

    int-to-long v3, v3

    invoke-interface {v2, v3, v4}, Lokio/BufferedSource;->skip(J)V

    .line 127
    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 133
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lokio/InflaterSource;->closed:Z

    if-eqz v1, :cond_0

    .line 137
    :goto_0
    return-void

    .line 134
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lokio/InflaterSource;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v1}, Ljava/util/zip/Inflater;->end()V

    .line 135
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lokio/InflaterSource;->closed:Z

    .line 136
    move-object v1, v0

    iget-object v1, v1, Lokio/InflaterSource;->source:Lokio/BufferedSource;

    invoke-interface {v1}, Lokio/BufferedSource;->close()V

    .line 137
    goto :goto_0
.end method

.method public read(Lokio/Buffer;J)J
    .locals 11
    .param p1    # Lokio/Buffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v6, v1

    const-string v7, "sink"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    :goto_0
    nop

    .line 49
    move-object v6, v0

    move-object v7, v1

    move-wide v8, v2

    invoke-virtual {v6, v7, v8, v9}, Lokio/InflaterSource;->readOrInflate(Lokio/Buffer;J)J

    move-result-wide v6

    move-wide v4, v6

    .line 50
    move-wide v6, v4

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_0

    move-wide v6, v4

    move-wide v0, v6

    .line 51
    :goto_1
    return-wide v0

    :cond_0
    move-object v6, v0

    iget-object v6, v6, Lokio/InflaterSource;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v6}, Ljava/util/zip/Inflater;->finished()Z

    move-result v6

    if-nez v6, :cond_1

    move-object v6, v0

    iget-object v6, v6, Lokio/InflaterSource;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v6}, Ljava/util/zip/Inflater;->needsDictionary()Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_1
    const-wide/16 v6, -0x1

    move-wide v0, v6

    goto :goto_1

    .line 52
    :cond_2
    move-object v6, v0

    iget-object v6, v6, Lokio/InflaterSource;->source:Lokio/BufferedSource;

    invoke-interface {v6}, Lokio/BufferedSource;->exhausted()Z

    move-result v6

    if-eqz v6, :cond_3

    new-instance v6, Ljava/io/EOFException;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const-string v8, "source exhausted prematurely"

    invoke-direct {v7, v8}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    check-cast v6, Ljava/lang/Throwable;

    throw v6

    .line 48
    :cond_3
    goto :goto_0
.end method

.method public final readOrInflate(Lokio/Buffer;J)J
    .locals 17
    .param p1    # Lokio/Buffer;
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

    move-wide/from16 v2, p2

    move-object v11, v1

    const-string v12, "sink"

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    move-wide v11, v2

    const-wide/16 v13, 0x0

    cmp-long v11, v11, v13

    if-ltz v11, :cond_0

    const/4 v11, 0x1

    :goto_0
    move v4, v11

    const/4 v11, 0x0

    move v5, v11

    const/4 v11, 0x0

    move v6, v11

    move v11, v4

    if-nez v11, :cond_1

    const/4 v11, 0x0

    move v7, v11

    new-instance v11, Ljava/lang/StringBuilder;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "byteCount < 0: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-wide v12, v2

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object v6, v11

    new-instance v11, Ljava/lang/IllegalArgumentException;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    move-object v13, v6

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v11, Ljava/lang/Throwable;

    throw v11

    :cond_0
    const/4 v11, 0x0

    goto :goto_0

    .line 67
    :cond_1
    move-object v11, v0

    iget-boolean v11, v11, Lokio/InflaterSource;->closed:Z

    if-nez v11, :cond_2

    const/4 v11, 0x1

    :goto_1
    move v4, v11

    const/4 v11, 0x0

    move v5, v11

    const/4 v11, 0x0

    move v6, v11

    move v11, v4

    if-nez v11, :cond_3

    const/4 v11, 0x0

    move v7, v11

    const-string v11, "closed"

    move-object v6, v11

    new-instance v11, Ljava/lang/IllegalStateException;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    move-object v13, v6

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v11, Ljava/lang/Throwable;

    throw v11

    :cond_2
    const/4 v11, 0x0

    goto :goto_1

    .line 68
    :cond_3
    move-wide v11, v2

    const-wide/16 v13, 0x0

    cmp-long v11, v11, v13

    if-nez v11, :cond_4

    const-wide/16 v11, 0x0

    move-wide v0, v11

    .line 97
    :goto_2
    return-wide v0

    .line 70
    :cond_4
    nop

    .line 72
    move-object v11, v1

    const/4 v12, 0x1

    :try_start_0
    invoke-virtual {v11, v12}, Lokio/Buffer;->writableSegment$okio(I)Lokio/Segment;

    move-result-object v11

    move-object v4, v11

    .line 73
    const/16 v11, 0x2000

    move-object v12, v4

    iget v12, v12, Lokio/Segment;->limit:I

    rsub-int v11, v12, 0x2000

    move v6, v11

    const/4 v11, 0x0

    move v7, v11

    .line 148
    move v11, v6

    int-to-long v11, v11

    move-wide v8, v11

    const/4 v11, 0x0

    move v10, v11

    move-wide v11, v2

    move-wide v13, v8

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v11

    nop

    .line 73
    long-to-int v11, v11

    move v5, v11

    .line 76
    move-object v11, v0

    invoke-virtual {v11}, Lokio/InflaterSource;->refill()Z

    move-result v11

    .line 79
    move-object v11, v0

    iget-object v11, v11, Lokio/InflaterSource;->inflater:Ljava/util/zip/Inflater;

    move-object v12, v4

    iget-object v12, v12, Lokio/Segment;->data:[B

    move-object v13, v4

    iget v13, v13, Lokio/Segment;->limit:I

    move v14, v5

    invoke-virtual {v11, v12, v13, v14}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result v11

    move v6, v11

    .line 82
    move-object v11, v0

    invoke-direct {v11}, Lokio/InflaterSource;->releaseBytesAfterInflate()V

    .line 85
    move v11, v6

    if-lez v11, :cond_5

    .line 86
    move-object v11, v4

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    iget v12, v12, Lokio/Segment;->limit:I

    move v13, v6

    add-int/2addr v12, v13

    iput v12, v11, Lokio/Segment;->limit:I

    .line 87
    move-object v11, v1

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    invoke-virtual {v12}, Lokio/Buffer;->size()J

    move-result-wide v12

    move v14, v6

    int-to-long v14, v14

    add-long/2addr v12, v14

    invoke-virtual {v11, v12, v13}, Lokio/Buffer;->setSize$okio(J)V

    .line 88
    move v11, v6

    int-to-long v11, v11

    move-wide v0, v11

    goto :goto_2

    .line 92
    :cond_5
    move-object v11, v4

    iget v11, v11, Lokio/Segment;->pos:I

    move-object v12, v4

    iget v12, v12, Lokio/Segment;->limit:I

    if-ne v11, v12, :cond_6

    .line 93
    move-object v11, v1

    move-object v12, v4

    invoke-virtual {v12}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v12

    iput-object v12, v11, Lokio/Buffer;->head:Lokio/Segment;

    .line 94
    move-object v11, v4

    invoke-static {v11}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V
    :try_end_0
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :cond_6
    const-wide/16 v11, 0x0

    move-wide v0, v11

    goto :goto_2

    .line 98
    :catch_0
    move-exception v11

    move-object v4, v11

    .line 99
    new-instance v11, Ljava/io/IOException;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    move-object v13, v4

    check-cast v13, Ljava/lang/Throwable;

    invoke-direct {v12, v13}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    check-cast v11, Ljava/lang/Throwable;

    throw v11
.end method

.method public final refill()Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 109
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lokio/InflaterSource;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v2}, Ljava/util/zip/Inflater;->needsInput()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    move v0, v2

    .line 118
    :goto_0
    return v0

    .line 112
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lokio/InflaterSource;->source:Lokio/BufferedSource;

    invoke-interface {v2}, Lokio/BufferedSource;->exhausted()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    move v0, v2

    goto :goto_0

    .line 115
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lokio/InflaterSource;->source:Lokio/BufferedSource;

    invoke-interface {v2}, Lokio/BufferedSource;->getBuffer()Lokio/Buffer;

    move-result-object v2

    iget-object v2, v2, Lokio/Buffer;->head:Lokio/Segment;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    if-nez v3, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    move-object v1, v2

    .line 116
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Lokio/Segment;->limit:I

    move-object v4, v1

    iget v4, v4, Lokio/Segment;->pos:I

    sub-int/2addr v3, v4

    iput v3, v2, Lokio/InflaterSource;->bufferBytesHeldByInflater:I

    .line 117
    move-object v2, v0

    iget-object v2, v2, Lokio/InflaterSource;->inflater:Ljava/util/zip/Inflater;

    move-object v3, v1

    iget-object v3, v3, Lokio/Segment;->data:[B

    move-object v4, v1

    iget v4, v4, Lokio/Segment;->pos:I

    move-object v5, v0

    iget v5, v5, Lokio/InflaterSource;->bufferBytesHeldByInflater:I

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/zip/Inflater;->setInput([BII)V

    .line 118
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public timeout()Lokio/Timeout;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 129
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokio/InflaterSource;->source:Lokio/BufferedSource;

    invoke-interface {v1}, Lokio/BufferedSource;->timeout()Lokio/Timeout;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method
