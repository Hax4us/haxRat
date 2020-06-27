.class final Lokio/OutputStreamSink;
.super Ljava/lang/Object;
.source "JvmOkio.kt"

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
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\u0008\u0002\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\u0007\u001a\u00020\u0008H\u0016J\u0008\u0010\t\u001a\u00020\u0008H\u0016J\u0008\u0010\u0004\u001a\u00020\u0005H\u0016J\u0008\u0010\n\u001a\u00020\u000bH\u0016J\u0018\u0010\u000c\u001a\u00020\u00082\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lokio/OutputStreamSink;",
        "Lokio/Sink;",
        "out",
        "Ljava/io/OutputStream;",
        "timeout",
        "Lokio/Timeout;",
        "(Ljava/io/OutputStream;Lokio/Timeout;)V",
        "close",
        "",
        "flush",
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
.field private final out:Ljava/io/OutputStream;

.field private final timeout:Lokio/Timeout;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Lokio/Timeout;)V
    .locals 5
    .param p1    # Ljava/io/OutputStream;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lokio/Timeout;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v1

    const-string v4, "out"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v2

    const-string v4, "timeout"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lokio/OutputStreamSink;->out:Ljava/io/OutputStream;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lokio/OutputStreamSink;->timeout:Lokio/Timeout;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 68
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokio/OutputStreamSink;->out:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method public flush()V
    .locals 2

    .prologue
    .line 66
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokio/OutputStreamSink;->out:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public timeout()Lokio/Timeout;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 70
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokio/OutputStreamSink;->timeout:Lokio/Timeout;

    move-object v0, v1

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 72
    move-object v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sink("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lokio/OutputStreamSink;->out:Ljava/io/OutputStream;

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

    .prologue
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-wide/from16 v4, p2

    move-object v15, v3

    const-string v16, "source"

    invoke-static/range {v15 .. v16}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    move-object v15, v3

    invoke-virtual {v15}, Lokio/Buffer;->size()J

    move-result-wide v15

    const-wide/16 v17, 0x0

    move-wide/from16 v19, v4

    invoke-static/range {v15 .. v20}, Lokio/-Util;->checkOffsetAndCount(JJJ)V

    .line 48
    move-wide v15, v4

    move-wide v6, v15

    .line 49
    :goto_0
    move-wide v15, v6

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-lez v15, :cond_2

    .line 50
    move-object v15, v2

    iget-object v15, v15, Lokio/OutputStreamSink;->timeout:Lokio/Timeout;

    invoke-virtual {v15}, Lokio/Timeout;->throwIfReached()V

    .line 51
    move-object v15, v3

    iget-object v15, v15, Lokio/Buffer;->head:Lokio/Segment;

    move-object/from16 v21, v15

    move-object/from16 v15, v21

    move-object/from16 v16, v21

    if-nez v16, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    move-object v8, v15

    .line 52
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

    .line 200
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

    .line 52
    long-to-int v15, v15

    move v9, v15

    .line 53
    move-object v15, v2

    iget-object v15, v15, Lokio/OutputStreamSink;->out:Ljava/io/OutputStream;

    move-object/from16 v16, v8

    move-object/from16 v0, v16

    iget-object v0, v0, Lokio/Segment;->data:[B

    move-object/from16 v16, v0

    move-object/from16 v17, v8

    move-object/from16 v0, v17

    iget v0, v0, Lokio/Segment;->pos:I

    move/from16 v17, v0

    move/from16 v18, v9

    invoke-virtual/range {v15 .. v18}, Ljava/io/OutputStream;->write([BII)V

    .line 55
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

    .line 56
    move-wide v15, v6

    move/from16 v17, v9

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    sub-long v15, v15, v17

    move-wide v6, v15

    .line 57
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

    .line 59
    move-object v15, v8

    iget v15, v15, Lokio/Segment;->pos:I

    move-object/from16 v16, v8

    move-object/from16 v0, v16

    iget v0, v0, Lokio/Segment;->limit:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ne v15, v0, :cond_1

    .line 60
    move-object v15, v3

    move-object/from16 v16, v8

    invoke-virtual/range {v16 .. v16}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v15, Lokio/Buffer;->head:Lokio/Segment;

    .line 61
    move-object v15, v8

    invoke-static {v15}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    .line 49
    :cond_1
    goto/16 :goto_0

    .line 64
    :cond_2
    return-void
.end method
