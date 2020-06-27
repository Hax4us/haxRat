.class public final Lokio/DeflaterSink;
.super Ljava/lang/Object;
.source "DeflaterSink.kt"

# interfaces
.implements Lokio/Sink;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\u0018\u00002\u00020\u0001B\u0017\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005B\u0017\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0006\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0007J\u0008\u0010\n\u001a\u00020\u000bH\u0016J\u0010\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\tH\u0003J\r\u0010\u000e\u001a\u00020\u000bH\u0000\u00a2\u0006\u0002\u0008\u000fJ\u0008\u0010\u0010\u001a\u00020\u000bH\u0016J\u0008\u0010\u0011\u001a\u00020\u0012H\u0016J\u0008\u0010\u0013\u001a\u00020\u0014H\u0016J\u0018\u0010\u0015\u001a\u00020\u000b2\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0019H\u0016R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001a"
    }
    d2 = {
        "Lokio/DeflaterSink;",
        "Lokio/Sink;",
        "sink",
        "deflater",
        "Ljava/util/zip/Deflater;",
        "(Lokio/Sink;Ljava/util/zip/Deflater;)V",
        "Lokio/BufferedSink;",
        "(Lokio/BufferedSink;Ljava/util/zip/Deflater;)V",
        "closed",
        "",
        "close",
        "",
        "deflate",
        "syncFlush",
        "finishDeflate",
        "finishDeflate$okio",
        "flush",
        "timeout",
        "Lokio/Timeout;",
        "toString",
        "",
        "write",
        "source",
        "Lokio/Buffer;",
        "byteCount",
        "",
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
.field private closed:Z

.field private final deflater:Ljava/util/zip/Deflater;

.field private final sink:Lokio/BufferedSink;


# direct methods
.method public constructor <init>(Lokio/BufferedSink;Ljava/util/zip/Deflater;)V
    .locals 5
    .param p1    # Lokio/BufferedSink;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/zip/Deflater;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v1

    const-string v4, "sink"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v2

    const-string v4, "deflater"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lokio/DeflaterSink;->sink:Lokio/BufferedSink;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lokio/DeflaterSink;->deflater:Ljava/util/zip/Deflater;

    return-void
.end method

.method public constructor <init>(Lokio/Sink;Ljava/util/zip/Deflater;)V
    .locals 6
    .param p1    # Lokio/Sink;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/zip/Deflater;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v1

    const-string v4, "sink"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v2

    const-string v4, "deflater"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    move-object v3, v0

    move-object v4, v1

    invoke-static {v4}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v4

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lokio/DeflaterSink;-><init>(Lokio/BufferedSink;Ljava/util/zip/Deflater;)V

    return-void
.end method

.method private final deflate(Z)V
    .locals 11
    .annotation build Lorg/codehaus/mojo/animal_sniffer/IgnoreJRERequirement;
    .end annotation

    .prologue
    .line 80
    move-object v0, p0

    move v1, p1

    move-object v5, v0

    iget-object v5, v5, Lokio/DeflaterSink;->sink:Lokio/BufferedSink;

    invoke-interface {v5}, Lokio/BufferedSink;->getBuffer()Lokio/Buffer;

    move-result-object v5

    move-object v2, v5

    .line 81
    :goto_0
    nop

    .line 82
    move-object v5, v2

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lokio/Buffer;->writableSegment$okio(I)Lokio/Segment;

    move-result-object v5

    move-object v3, v5

    .line 88
    move v5, v1

    if-eqz v5, :cond_1

    .line 89
    move-object v5, v0

    iget-object v5, v5, Lokio/DeflaterSink;->deflater:Ljava/util/zip/Deflater;

    move-object v6, v3

    iget-object v6, v6, Lokio/Segment;->data:[B

    move-object v7, v3

    iget v7, v7, Lokio/Segment;->limit:I

    const/16 v8, 0x2000

    move-object v9, v3

    iget v9, v9, Lokio/Segment;->limit:I

    rsub-int v8, v9, 0x2000

    const/4 v9, 0x2

    invoke-virtual {v5, v6, v7, v8, v9}, Ljava/util/zip/Deflater;->deflate([BIII)I

    move-result v5

    .line 88
    :goto_1
    move v4, v5

    .line 94
    move v5, v4

    if-lez v5, :cond_2

    .line 95
    move-object v5, v3

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    iget v6, v6, Lokio/Segment;->limit:I

    move v7, v4

    add-int/2addr v6, v7

    iput v6, v5, Lokio/Segment;->limit:I

    .line 96
    move-object v5, v2

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    invoke-virtual {v6}, Lokio/Buffer;->size()J

    move-result-wide v6

    move v8, v4

    int-to-long v8, v8

    add-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Lokio/Buffer;->setSize$okio(J)V

    .line 97
    move-object v5, v0

    iget-object v5, v5, Lokio/DeflaterSink;->sink:Lokio/BufferedSink;

    invoke-interface {v5}, Lokio/BufferedSink;->emitCompleteSegments()Lokio/BufferedSink;

    move-result-object v5

    .line 105
    :cond_0
    goto :goto_0

    .line 91
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Lokio/DeflaterSink;->deflater:Ljava/util/zip/Deflater;

    move-object v6, v3

    iget-object v6, v6, Lokio/Segment;->data:[B

    move-object v7, v3

    iget v7, v7, Lokio/Segment;->limit:I

    const/16 v8, 0x2000

    move-object v9, v3

    iget v9, v9, Lokio/Segment;->limit:I

    rsub-int v8, v9, 0x2000

    invoke-virtual {v5, v6, v7, v8}, Ljava/util/zip/Deflater;->deflate([BII)I

    move-result v5

    goto :goto_1

    .line 98
    :cond_2
    move-object v5, v0

    iget-object v5, v5, Lokio/DeflaterSink;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v5}, Ljava/util/zip/Deflater;->needsInput()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 99
    move-object v5, v3

    iget v5, v5, Lokio/Segment;->pos:I

    move-object v6, v3

    iget v6, v6, Lokio/Segment;->limit:I

    if-ne v5, v6, :cond_3

    .line 101
    move-object v5, v2

    move-object v6, v3

    invoke-virtual {v6}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v6

    iput-object v6, v5, Lokio/Buffer;->head:Lokio/Segment;

    .line 102
    move-object v5, v3

    invoke-static {v5}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    .line 104
    :cond_3
    return-void
.end method


# virtual methods
.method public close()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 122
    move-object v0, p0

    move-object v3, v0

    iget-boolean v3, v3, Lokio/DeflaterSink;->closed:Z

    if-eqz v3, :cond_0

    .line 148
    :goto_0
    return-void

    .line 126
    :cond_0
    const/4 v3, 0x0

    check-cast v3, Ljava/lang/Throwable;

    move-object v1, v3

    .line 127
    nop

    .line 128
    move-object v3, v0

    :try_start_0
    invoke-virtual {v3}, Lokio/DeflaterSink;->finishDeflate$okio()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    :goto_1
    nop

    .line 134
    move-object v3, v0

    :try_start_1
    iget-object v3, v3, Lokio/DeflaterSink;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v3}, Ljava/util/zip/Deflater;->end()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 137
    :cond_1
    :goto_2
    nop

    .line 140
    move-object v3, v0

    :try_start_2
    iget-object v3, v3, Lokio/DeflaterSink;->sink:Lokio/BufferedSink;

    invoke-interface {v3}, Lokio/BufferedSink;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 143
    :cond_2
    :goto_3
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lokio/DeflaterSink;->closed:Z

    .line 147
    move-object v3, v1

    if-eqz v3, :cond_3

    move-object v3, v1

    throw v3

    .line 129
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 130
    move-object v3, v2

    move-object v1, v3

    goto :goto_1

    .line 135
    :catch_1
    move-exception v3

    move-object v2, v3

    .line 136
    move-object v3, v1

    if-nez v3, :cond_1

    move-object v3, v2

    move-object v1, v3

    goto :goto_2

    .line 141
    :catch_2
    move-exception v3

    move-object v2, v3

    .line 142
    move-object v3, v1

    if-nez v3, :cond_2

    move-object v3, v2

    move-object v1, v3

    goto :goto_3

    .line 148
    :cond_3
    goto :goto_0
.end method

.method public final finishDeflate$okio()V
    .locals 3

    .prologue
    .line 116
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokio/DeflaterSink;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v1}, Ljava/util/zip/Deflater;->finish()V

    .line 117
    move-object v1, v0

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lokio/DeflaterSink;->deflate(Z)V

    .line 118
    return-void
.end method

.method public flush()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 111
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lokio/DeflaterSink;->deflate(Z)V

    .line 112
    move-object v1, v0

    iget-object v1, v1, Lokio/DeflaterSink;->sink:Lokio/BufferedSink;

    invoke-interface {v1}, Lokio/BufferedSink;->flush()V

    .line 113
    return-void
.end method

.method public timeout()Lokio/Timeout;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 150
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokio/DeflaterSink;->sink:Lokio/BufferedSink;

    invoke-interface {v1}, Lokio/BufferedSink;->timeout()Lokio/Timeout;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 152
    move-object v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DeflaterSink("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lokio/DeflaterSink;->sink:Lokio/BufferedSink;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public write(Lokio/Buffer;J)V
    .locals 22
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
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-wide/from16 v4, p2

    move-object v15, v3

    const-string v16, "source"

    invoke-static/range {v15 .. v16}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    move-object v15, v3

    invoke-virtual {v15}, Lokio/Buffer;->size()J

    move-result-wide v15

    const-wide/16 v17, 0x0

    move-wide/from16 v19, v4

    invoke-static/range {v15 .. v20}, Lokio/-Util;->checkOffsetAndCount(JJJ)V

    .line 56
    move-wide v15, v4

    move-wide v6, v15

    .line 57
    :goto_0
    move-wide v15, v6

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-lez v15, :cond_2

    .line 59
    move-object v15, v3

    iget-object v15, v15, Lokio/Buffer;->head:Lokio/Segment;

    move-object/from16 v21, v15

    move-object/from16 v15, v21

    move-object/from16 v16, v21

    if-nez v16, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    move-object v8, v15

    .line 60
    move-object v15, v8

    iget v15, v15, Lokio/Segment;->limit:I

    move-object/from16 v16, v8

    move-object/from16 v0, v16

    iget v0, v0, Lokio/Segment;->pos:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    move v10, v15

    const/4 v15, 0x0

    move v11, v15

    .line 163
    move v15, v10

    int-to-long v15, v15

    move-wide v12, v15

    const/4 v15, 0x0

    move v14, v15

    move-wide v15, v6

    move-wide/from16 v17, v12

    invoke-static/range {v15 .. v18}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v15

    nop

    .line 60
    long-to-int v15, v15

    move v9, v15

    .line 61
    move-object v15, v2

    iget-object v15, v15, Lokio/DeflaterSink;->deflater:Ljava/util/zip/Deflater;

    move-object/from16 v16, v8

    move-object/from16 v0, v16

    iget-object v0, v0, Lokio/Segment;->data:[B

    move-object/from16 v16, v0

    move-object/from16 v17, v8

    move-object/from16 v0, v17

    iget v0, v0, Lokio/Segment;->pos:I

    move/from16 v17, v0

    move/from16 v18, v9

    invoke-virtual/range {v15 .. v18}, Ljava/util/zip/Deflater;->setInput([BII)V

    .line 64
    move-object v15, v2

    const/16 v16, 0x0

    invoke-direct/range {v15 .. v16}, Lokio/DeflaterSink;->deflate(Z)V

    .line 67
    move-object v15, v3

    move-object/from16 v21, v15

    move-object/from16 v15, v21

    move-object/from16 v16, v21

    invoke-virtual/range {v16 .. v16}, Lokio/Buffer;->size()J

    move-result-wide v16

    move/from16 v18, v9

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    sub-long v16, v16, v18

    invoke-virtual/range {v15 .. v17}, Lokio/Buffer;->setSize$okio(J)V

    .line 68
    move-object v15, v8

    move-object/from16 v21, v15

    move-object/from16 v15, v21

    move-object/from16 v16, v21

    move-object/from16 v0, v16

    iget v0, v0, Lokio/Segment;->pos:I

    move/from16 v16, v0

    move/from16 v17, v9

    add-int v16, v16, v17

    move/from16 v0, v16

    iput v0, v15, Lokio/Segment;->pos:I

    .line 69
    move-object v15, v8

    iget v15, v15, Lokio/Segment;->pos:I

    move-object/from16 v16, v8

    move-object/from16 v0, v16

    iget v0, v0, Lokio/Segment;->limit:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ne v15, v0, :cond_1

    .line 70
    move-object v15, v3

    move-object/from16 v16, v8

    invoke-virtual/range {v16 .. v16}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v15, Lokio/Buffer;->head:Lokio/Segment;

    .line 71
    move-object v15, v8

    invoke-static {v15}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    .line 74
    :cond_1
    move-wide v15, v6

    move/from16 v17, v9

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    sub-long v15, v15, v17

    move-wide v6, v15

    .line 57
    goto/16 :goto_0

    .line 76
    :cond_2
    return-void
.end method
