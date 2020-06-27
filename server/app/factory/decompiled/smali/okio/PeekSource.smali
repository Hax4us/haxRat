.class public final Lokio/PeekSource;
.super Ljava/lang/Object;
.source "PeekSource.kt"

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
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u000f\u001a\u00020\u0010H\u0016J\u0018\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u0013\u001a\u00020\u000eH\u0016J\u0008\u0010\u0014\u001a\u00020\u0015H\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "Lokio/PeekSource;",
        "Lokio/Source;",
        "upstream",
        "Lokio/BufferedSource;",
        "(Lokio/BufferedSource;)V",
        "buffer",
        "Lokio/Buffer;",
        "closed",
        "",
        "expectedPos",
        "",
        "expectedSegment",
        "Lokio/Segment;",
        "pos",
        "",
        "close",
        "",
        "read",
        "sink",
        "byteCount",
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
.field private final buffer:Lokio/Buffer;

.field private closed:Z

.field private expectedPos:I

.field private expectedSegment:Lokio/Segment;

.field private pos:J

.field private final upstream:Lokio/BufferedSource;


# direct methods
.method public constructor <init>(Lokio/BufferedSource;)V
    .locals 6
    .param p1    # Lokio/BufferedSource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    const-string v3, "upstream"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lokio/PeekSource;->upstream:Lokio/BufferedSource;

    .line 31
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lokio/PeekSource;->upstream:Lokio/BufferedSource;

    invoke-interface {v3}, Lokio/BufferedSource;->getBuffer()Lokio/Buffer;

    move-result-object v3

    iput-object v3, v2, Lokio/PeekSource;->buffer:Lokio/Buffer;

    .line 32
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lokio/PeekSource;->buffer:Lokio/Buffer;

    iget-object v3, v3, Lokio/Buffer;->head:Lokio/Segment;

    iput-object v3, v2, Lokio/PeekSource;->expectedSegment:Lokio/Segment;

    .line 33
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lokio/PeekSource;->buffer:Lokio/Buffer;

    iget-object v3, v3, Lokio/Buffer;->head:Lokio/Segment;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    if-eqz v4, :cond_0

    iget v3, v3, Lokio/Segment;->pos:I

    :goto_0
    iput v3, v2, Lokio/PeekSource;->expectedPos:I

    return-void

    :cond_0
    const/4 v3, -0x1

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    .line 69
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lokio/PeekSource;->closed:Z

    .line 70
    return-void
.end method

.method public read(Lokio/Buffer;J)J
    .locals 16
    .param p1    # Lokio/Buffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-object v9, v1

    const-string v10, "sink"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    move-wide v9, v2

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-ltz v9, :cond_0

    const/4 v9, 0x1

    :goto_0
    move v4, v9

    const/4 v9, 0x0

    move v5, v9

    const/4 v9, 0x0

    move v6, v9

    move v9, v4

    if-nez v9, :cond_1

    const/4 v9, 0x0

    move v7, v9

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "byteCount < 0: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-wide v10, v2

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v6, v9

    new-instance v9, Ljava/lang/IllegalArgumentException;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    move-object v11, v6

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v9, Ljava/lang/Throwable;

    throw v9

    :cond_0
    const/4 v9, 0x0

    goto :goto_0

    .line 40
    :cond_1
    move-object v9, v0

    iget-boolean v9, v9, Lokio/PeekSource;->closed:Z

    if-nez v9, :cond_2

    const/4 v9, 0x1

    :goto_1
    move v4, v9

    const/4 v9, 0x0

    move v5, v9

    const/4 v9, 0x0

    move v6, v9

    move v9, v4

    if-nez v9, :cond_3

    const/4 v9, 0x0

    move v7, v9

    const-string v9, "closed"

    move-object v6, v9

    new-instance v9, Ljava/lang/IllegalStateException;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    move-object v11, v6

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v9, Ljava/lang/Throwable;

    throw v9

    :cond_2
    const/4 v9, 0x0

    goto :goto_1

    .line 43
    :cond_3
    move-object v9, v0

    iget-object v9, v9, Lokio/PeekSource;->expectedSegment:Lokio/Segment;

    if-eqz v9, :cond_5

    move-object v9, v0

    iget-object v9, v9, Lokio/PeekSource;->expectedSegment:Lokio/Segment;

    move-object v10, v0

    iget-object v10, v10, Lokio/PeekSource;->buffer:Lokio/Buffer;

    iget-object v10, v10, Lokio/Buffer;->head:Lokio/Segment;

    if-ne v9, v10, :cond_6

    move-object v9, v0

    iget v9, v9, Lokio/PeekSource;->expectedPos:I

    move-object v10, v0

    iget-object v10, v10, Lokio/PeekSource;->buffer:Lokio/Buffer;

    iget-object v10, v10, Lokio/Buffer;->head:Lokio/Segment;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    if-nez v11, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_4
    iget v10, v10, Lokio/Segment;->pos:I

    if-ne v9, v10, :cond_6

    :cond_5
    const/4 v9, 0x1

    :goto_2
    move v4, v9

    const/4 v9, 0x0

    move v5, v9

    const/4 v9, 0x0

    move v6, v9

    move v9, v4

    if-nez v9, :cond_7

    const/4 v9, 0x0

    move v7, v9

    .line 45
    const-string v9, "Peek source is invalid because upstream source was used"

    .line 43
    move-object v6, v9

    new-instance v9, Ljava/lang/IllegalStateException;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    move-object v11, v6

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v9, Ljava/lang/Throwable;

    throw v9

    :cond_6
    const/4 v9, 0x0

    goto :goto_2

    .line 47
    :cond_7
    move-wide v9, v2

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-nez v9, :cond_8

    const-wide/16 v9, 0x0

    move-wide v0, v9

    .line 61
    :goto_3
    return-wide v0

    .line 48
    :cond_8
    move-object v9, v0

    iget-object v9, v9, Lokio/PeekSource;->upstream:Lokio/BufferedSource;

    move-object v10, v0

    iget-wide v10, v10, Lokio/PeekSource;->pos:J

    const-wide/16 v12, 0x1

    add-long/2addr v10, v12

    invoke-interface {v9, v10, v11}, Lokio/BufferedSource;->request(J)Z

    move-result v9

    if-nez v9, :cond_9

    const-wide/16 v9, -0x1

    move-wide v0, v9

    goto :goto_3

    .line 50
    :cond_9
    move-object v9, v0

    iget-object v9, v9, Lokio/PeekSource;->expectedSegment:Lokio/Segment;

    if-nez v9, :cond_b

    move-object v9, v0

    iget-object v9, v9, Lokio/PeekSource;->buffer:Lokio/Buffer;

    iget-object v9, v9, Lokio/Buffer;->head:Lokio/Segment;

    if-eqz v9, :cond_b

    .line 54
    move-object v9, v0

    move-object v10, v0

    iget-object v10, v10, Lokio/PeekSource;->buffer:Lokio/Buffer;

    iget-object v10, v10, Lokio/Buffer;->head:Lokio/Segment;

    iput-object v10, v9, Lokio/PeekSource;->expectedSegment:Lokio/Segment;

    .line 55
    move-object v9, v0

    move-object v10, v0

    iget-object v10, v10, Lokio/PeekSource;->buffer:Lokio/Buffer;

    iget-object v10, v10, Lokio/Buffer;->head:Lokio/Segment;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    if-nez v11, :cond_a

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_a
    iget v10, v10, Lokio/Segment;->pos:I

    iput v10, v9, Lokio/PeekSource;->expectedPos:I

    .line 58
    :cond_b
    move-object v9, v0

    iget-object v9, v9, Lokio/PeekSource;->buffer:Lokio/Buffer;

    invoke-virtual {v9}, Lokio/Buffer;->size()J

    move-result-wide v9

    move-object v11, v0

    iget-wide v11, v11, Lokio/PeekSource;->pos:J

    sub-long/2addr v9, v11

    move-wide v6, v9

    const/4 v9, 0x0

    move v8, v9

    move-wide v9, v2

    move-wide v11, v6

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    move-wide v4, v9

    .line 59
    move-object v9, v0

    iget-object v9, v9, Lokio/PeekSource;->buffer:Lokio/Buffer;

    move-object v10, v1

    move-object v11, v0

    iget-wide v11, v11, Lokio/PeekSource;->pos:J

    move-wide v13, v4

    invoke-virtual/range {v9 .. v14}, Lokio/Buffer;->copyTo(Lokio/Buffer;JJ)Lokio/Buffer;

    move-result-object v9

    .line 60
    move-object v9, v0

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    iget-wide v10, v10, Lokio/PeekSource;->pos:J

    move-wide v12, v4

    add-long/2addr v10, v12

    iput-wide v10, v9, Lokio/PeekSource;->pos:J

    .line 61
    move-wide v9, v4

    move-wide v0, v9

    goto :goto_3
.end method

.method public timeout()Lokio/Timeout;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 65
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokio/PeekSource;->upstream:Lokio/BufferedSource;

    invoke-interface {v1}, Lokio/BufferedSource;->timeout()Lokio/Timeout;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method
