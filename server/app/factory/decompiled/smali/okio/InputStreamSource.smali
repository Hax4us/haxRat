.class final Lokio/InputStreamSource;
.super Ljava/lang/Object;
.source "JvmOkio.kt"

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
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\u0008\u0002\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\u0007\u001a\u00020\u0008H\u0016J\u0018\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\nH\u0016J\u0008\u0010\u0004\u001a\u00020\u0005H\u0016J\u0008\u0010\u000e\u001a\u00020\u000fH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lokio/InputStreamSource;",
        "Lokio/Source;",
        "input",
        "Ljava/io/InputStream;",
        "timeout",
        "Lokio/Timeout;",
        "(Ljava/io/InputStream;Lokio/Timeout;)V",
        "close",
        "",
        "read",
        "",
        "sink",
        "Lokio/Buffer;",
        "byteCount",
        "toString",
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
.field private final input:Ljava/io/InputStream;

.field private final timeout:Lokio/Timeout;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lokio/Timeout;)V
    .locals 5
    .param p1    # Ljava/io/InputStream;
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

    const-string v4, "input"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v2

    const-string v4, "timeout"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lokio/InputStreamSource;->input:Ljava/io/InputStream;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lokio/InputStreamSource;->timeout:Lokio/Timeout;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 108
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokio/InputStreamSource;->input:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public read(Lokio/Buffer;J)J
    .locals 17
    .param p1    # Lokio/Buffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-object v11, v1

    const-string v12, "sink"

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    move-wide v11, v2

    const-wide/16 v13, 0x0

    cmp-long v11, v11, v13

    if-nez v11, :cond_0

    const-wide/16 v11, 0x0

    move-wide v0, v11

    .line 101
    :goto_0
    return-wide v0

    .line 85
    :cond_0
    move-wide v11, v2

    const-wide/16 v13, 0x0

    cmp-long v11, v11, v13

    if-ltz v11, :cond_1

    const/4 v11, 0x1

    :goto_1
    move v4, v11

    const/4 v11, 0x0

    move v5, v11

    const/4 v11, 0x0

    move v6, v11

    move v11, v4

    if-nez v11, :cond_2

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

    :cond_1
    const/4 v11, 0x0

    goto :goto_1

    .line 86
    :cond_2
    nop

    .line 87
    move-object v11, v0

    :try_start_0
    iget-object v11, v11, Lokio/InputStreamSource;->timeout:Lokio/Timeout;

    invoke-virtual {v11}, Lokio/Timeout;->throwIfReached()V

    .line 88
    move-object v11, v1

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lokio/Buffer;->writableSegment$okio(I)Lokio/Segment;

    move-result-object v11

    move-object v4, v11

    .line 89
    const/16 v11, 0x2000

    move-object v12, v4

    iget v12, v12, Lokio/Segment;->limit:I

    rsub-int v11, v12, 0x2000

    move v6, v11

    const/4 v11, 0x0

    move v7, v11

    .line 200
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

    .line 89
    long-to-int v11, v11

    move v5, v11

    .line 90
    move-object v11, v0

    iget-object v11, v11, Lokio/InputStreamSource;->input:Ljava/io/InputStream;

    move-object v12, v4

    iget-object v12, v12, Lokio/Segment;->data:[B

    move-object v13, v4

    iget v13, v13, Lokio/Segment;->limit:I

    move v14, v5

    invoke-virtual {v11, v12, v13, v14}, Ljava/io/InputStream;->read([BII)I

    move-result v11

    move v6, v11

    .line 91
    move v11, v6

    const/4 v12, -0x1

    if-ne v11, v12, :cond_4

    .line 92
    move-object v11, v4

    iget v11, v11, Lokio/Segment;->pos:I

    move-object v12, v4

    iget v12, v12, Lokio/Segment;->limit:I

    if-ne v11, v12, :cond_3

    .line 94
    move-object v11, v1

    move-object v12, v4

    invoke-virtual {v12}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v12

    iput-object v12, v11, Lokio/Buffer;->head:Lokio/Segment;

    .line 95
    move-object v11, v4

    invoke-static {v11}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    .line 97
    :cond_3
    const-wide/16 v11, -0x1

    move-wide v0, v11

    goto/16 :goto_0

    .line 99
    :cond_4
    move-object v11, v4

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    iget v12, v12, Lokio/Segment;->limit:I

    move v13, v6

    add-int/2addr v12, v13

    iput v12, v11, Lokio/Segment;->limit:I

    .line 100
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
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    move v11, v6

    int-to-long v11, v11

    move-wide v0, v11

    goto/16 :goto_0

    .line 102
    :catch_0
    move-exception v11

    move-object v4, v11

    .line 103
    move-object v11, v4

    invoke-static {v11}, Lokio/Okio;->isAndroidGetsocknameError(Ljava/lang/AssertionError;)Z

    move-result v11

    if-eqz v11, :cond_5

    new-instance v11, Ljava/io/IOException;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    move-object v13, v4

    check-cast v13, Ljava/lang/Throwable;

    invoke-direct {v12, v13}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    check-cast v11, Ljava/lang/Throwable;

    throw v11

    .line 104
    :cond_5
    move-object v11, v4

    check-cast v11, Ljava/lang/Throwable;

    throw v11
.end method

.method public timeout()Lokio/Timeout;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 110
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokio/InputStreamSource;->timeout:Lokio/Timeout;

    move-object v0, v1

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 112
    move-object v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "source("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lokio/InputStreamSource;->input:Ljava/io/InputStream;

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
