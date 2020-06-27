.class public final Lokio/GzipSink;
.super Ljava/lang/Object;
.source "GzipSink.kt"

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
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u000e\u001a\u00020\u000fH\u0016J\r\u0010\u0008\u001a\u00020\tH\u0007\u00a2\u0006\u0002\u0008\u0010J\u0008\u0010\u0011\u001a\u00020\u000fH\u0016J\u0008\u0010\u0012\u001a\u00020\u0013H\u0016J\u0018\u0010\u0014\u001a\u00020\u000f2\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018H\u0002J\u0018\u0010\u0019\u001a\u00020\u000f2\u0006\u0010\u001a\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018H\u0016J\u0008\u0010\u001b\u001a\u00020\u000fH\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0013\u0010\u0008\u001a\u00020\t8G\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\nR\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001c"
    }
    d2 = {
        "Lokio/GzipSink;",
        "Lokio/Sink;",
        "sink",
        "(Lokio/Sink;)V",
        "closed",
        "",
        "crc",
        "Ljava/util/zip/CRC32;",
        "deflater",
        "Ljava/util/zip/Deflater;",
        "()Ljava/util/zip/Deflater;",
        "deflaterSink",
        "Lokio/DeflaterSink;",
        "Lokio/RealBufferedSink;",
        "close",
        "",
        "-deprecated_deflater",
        "flush",
        "timeout",
        "Lokio/Timeout;",
        "updateCrc",
        "buffer",
        "Lokio/Buffer;",
        "byteCount",
        "",
        "write",
        "source",
        "writeFooter",
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

.field private final crc:Ljava/util/zip/CRC32;

.field private final deflater:Ljava/util/zip/Deflater;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final deflaterSink:Lokio/DeflaterSink;

.field private final sink:Lokio/RealBufferedSink;


# direct methods
.method public constructor <init>(Lokio/Sink;)V
    .locals 13
    .param p1    # Lokio/Sink;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v7, v1

    const-string v8, "sink"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    move-object v7, v0

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 45
    move-object v7, v0

    new-instance v8, Lokio/RealBufferedSink;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v10, v1

    invoke-direct {v9, v10}, Lokio/RealBufferedSink;-><init>(Lokio/Sink;)V

    iput-object v8, v7, Lokio/GzipSink;->sink:Lokio/RealBufferedSink;

    .line 49
    move-object v7, v0

    new-instance v8, Ljava/util/zip/Deflater;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, -0x1

    const/4 v11, 0x1

    invoke-direct {v9, v10, v11}, Ljava/util/zip/Deflater;-><init>(IZ)V

    iput-object v8, v7, Lokio/GzipSink;->deflater:Ljava/util/zip/Deflater;

    .line 55
    move-object v7, v0

    new-instance v8, Lokio/DeflaterSink;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v10, v0

    iget-object v10, v10, Lokio/GzipSink;->sink:Lokio/RealBufferedSink;

    check-cast v10, Lokio/BufferedSink;

    move-object v11, v0

    iget-object v11, v11, Lokio/GzipSink;->deflater:Ljava/util/zip/Deflater;

    invoke-direct {v9, v10, v11}, Lokio/DeflaterSink;-><init>(Lokio/BufferedSink;Ljava/util/zip/Deflater;)V

    iput-object v8, v7, Lokio/GzipSink;->deflaterSink:Lokio/DeflaterSink;

    .line 60
    move-object v7, v0

    new-instance v8, Ljava/util/zip/CRC32;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    invoke-direct {v9}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v8, v7, Lokio/GzipSink;->crc:Ljava/util/zip/CRC32;

    .line 62
    nop

    .line 64
    move-object v7, v0

    iget-object v7, v7, Lokio/GzipSink;->sink:Lokio/RealBufferedSink;

    move-object v2, v7

    const/4 v7, 0x0

    move v3, v7

    .line 155
    move-object v7, v2

    iget-object v7, v7, Lokio/RealBufferedSink;->bufferField:Lokio/Buffer;

    move-object v2, v7

    .line 64
    const/4 v7, 0x0

    move v3, v7

    const/4 v7, 0x0

    move v4, v7

    move-object v7, v2

    move-object v5, v7

    const/4 v7, 0x0

    move v6, v7

    .line 65
    move-object v7, v5

    const/16 v8, 0x1f8b

    invoke-virtual {v7, v8}, Lokio/Buffer;->writeShort(I)Lokio/Buffer;

    move-result-object v7

    .line 66
    move-object v7, v5

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    move-result-object v7

    .line 67
    move-object v7, v5

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    move-result-object v7

    .line 68
    move-object v7, v5

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    move-result-object v7

    .line 69
    move-object v7, v5

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    move-result-object v7

    .line 70
    move-object v7, v5

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    move-result-object v7

    .line 71
    nop

    .line 64
    nop

    .line 72
    return-void
.end method

.method private final updateCrc(Lokio/Buffer;J)V
    .locals 18

    .prologue
    .line 129
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-object v13, v1

    iget-object v13, v13, Lokio/Buffer;->head:Lokio/Segment;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    if-nez v14, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    move-object v4, v13

    .line 130
    move-wide v13, v2

    move-wide v5, v13

    .line 131
    :goto_0
    move-wide v13, v5

    const-wide/16 v15, 0x0

    cmp-long v13, v13, v15

    if-lez v13, :cond_2

    .line 132
    move-object v13, v4

    iget v13, v13, Lokio/Segment;->limit:I

    move-object v14, v4

    iget v14, v14, Lokio/Segment;->pos:I

    sub-int/2addr v13, v14

    move v8, v13

    const/4 v13, 0x0

    move v9, v13

    .line 154
    move v13, v8

    int-to-long v13, v13

    move-wide v10, v13

    const/4 v13, 0x0

    move v12, v13

    move-wide v13, v5

    move-wide v15, v10

    invoke-static/range {v13 .. v16}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v13

    nop

    .line 132
    long-to-int v13, v13

    move v7, v13

    .line 133
    move-object v13, v0

    iget-object v13, v13, Lokio/GzipSink;->crc:Ljava/util/zip/CRC32;

    move-object v14, v4

    iget-object v14, v14, Lokio/Segment;->data:[B

    move-object v15, v4

    iget v15, v15, Lokio/Segment;->pos:I

    move/from16 v16, v7

    invoke-virtual/range {v13 .. v16}, Ljava/util/zip/CRC32;->update([BII)V

    .line 134
    move-wide v13, v5

    move v15, v7

    int-to-long v15, v15

    sub-long/2addr v13, v15

    move-wide v5, v13

    .line 135
    move-object v13, v4

    iget-object v13, v13, Lokio/Segment;->next:Lokio/Segment;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    if-nez v14, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    move-object v4, v13

    .line 131
    goto :goto_0

    .line 137
    :cond_2
    return-void
.end method

.method private final writeFooter()V
    .locals 4

    .prologue
    .line 123
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokio/GzipSink;->sink:Lokio/RealBufferedSink;

    move-object v2, v0

    iget-object v2, v2, Lokio/GzipSink;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v2}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {v1, v2}, Lokio/RealBufferedSink;->writeIntLe(I)Lokio/BufferedSink;

    move-result-object v1

    .line 124
    move-object v1, v0

    iget-object v1, v1, Lokio/GzipSink;->sink:Lokio/RealBufferedSink;

    move-object v2, v0

    iget-object v2, v2, Lokio/GzipSink;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v2}, Ljava/util/zip/Deflater;->getBytesRead()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {v1, v2}, Lokio/RealBufferedSink;->writeIntLe(I)Lokio/BufferedSink;

    move-result-object v1

    .line 125
    return-void
.end method


# virtual methods
.method public final -deprecated_deflater()Ljava/util/zip/Deflater;
    .locals 2
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "moved to val"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "deflater"
            imports = {}
        .end subannotation
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
        name = "-deprecated_deflater"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 144
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokio/GzipSink;->deflater:Ljava/util/zip/Deflater;

    move-object v0, v1

    return-object v0
.end method

.method public close()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 90
    move-object v0, p0

    move-object v3, v0

    iget-boolean v3, v3, Lokio/GzipSink;->closed:Z

    if-eqz v3, :cond_0

    .line 120
    :goto_0
    return-void

    .line 97
    :cond_0
    const/4 v3, 0x0

    check-cast v3, Ljava/lang/Throwable;

    move-object v1, v3

    .line 98
    nop

    .line 99
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Lokio/GzipSink;->deflaterSink:Lokio/DeflaterSink;

    invoke-virtual {v3}, Lokio/DeflaterSink;->finishDeflate$okio()V

    .line 100
    move-object v3, v0

    invoke-direct {v3}, Lokio/GzipSink;->writeFooter()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :goto_1
    nop

    .line 106
    move-object v3, v0

    :try_start_1
    iget-object v3, v3, Lokio/GzipSink;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v3}, Ljava/util/zip/Deflater;->end()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 109
    :cond_1
    :goto_2
    nop

    .line 112
    move-object v3, v0

    :try_start_2
    iget-object v3, v3, Lokio/GzipSink;->sink:Lokio/RealBufferedSink;

    invoke-virtual {v3}, Lokio/RealBufferedSink;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 115
    :cond_2
    :goto_3
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lokio/GzipSink;->closed:Z

    .line 119
    move-object v3, v1

    if-eqz v3, :cond_3

    move-object v3, v1

    throw v3

    .line 101
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 102
    move-object v3, v2

    move-object v1, v3

    goto :goto_1

    .line 107
    :catch_1
    move-exception v3

    move-object v2, v3

    .line 108
    move-object v3, v1

    if-nez v3, :cond_1

    move-object v3, v2

    move-object v1, v3

    goto :goto_2

    .line 113
    :catch_2
    move-exception v3

    move-object v2, v3

    .line 114
    move-object v3, v1

    if-nez v3, :cond_2

    move-object v3, v2

    move-object v1, v3

    goto :goto_3

    .line 120
    :cond_3
    goto :goto_0
.end method

.method public final deflater()Ljava/util/zip/Deflater;
    .locals 2
    .annotation build Lkotlin/jvm/JvmName;
        name = "deflater"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 49
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokio/GzipSink;->deflater:Ljava/util/zip/Deflater;

    move-object v0, v1

    return-object v0
.end method

.method public flush()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokio/GzipSink;->deflaterSink:Lokio/DeflaterSink;

    invoke-virtual {v1}, Lokio/DeflaterSink;->flush()V

    return-void
.end method

.method public timeout()Lokio/Timeout;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 86
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokio/GzipSink;->sink:Lokio/RealBufferedSink;

    invoke-virtual {v1}, Lokio/RealBufferedSink;->timeout()Lokio/Timeout;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public write(Lokio/Buffer;J)V
    .locals 13
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

    move-object v8, v1

    const-string v9, "source"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    move-wide v8, v2

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-ltz v8, :cond_0

    const/4 v8, 0x1

    :goto_0
    move v4, v8

    const/4 v8, 0x0

    move v5, v8

    const/4 v8, 0x0

    move v6, v8

    move v8, v4

    if-nez v8, :cond_1

    const/4 v8, 0x0

    move v7, v8

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "byteCount < 0: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide v9, v2

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v6, v8

    new-instance v8, Ljava/lang/IllegalArgumentException;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v10, v6

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v8, Ljava/lang/Throwable;

    throw v8

    :cond_0
    const/4 v8, 0x0

    goto :goto_0

    .line 77
    :cond_1
    move-wide v8, v2

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_2

    .line 81
    :goto_1
    return-void

    .line 79
    :cond_2
    move-object v8, v0

    move-object v9, v1

    move-wide v10, v2

    invoke-direct {v8, v9, v10, v11}, Lokio/GzipSink;->updateCrc(Lokio/Buffer;J)V

    .line 80
    move-object v8, v0

    iget-object v8, v8, Lokio/GzipSink;->deflaterSink:Lokio/DeflaterSink;

    move-object v9, v1

    move-wide v10, v2

    invoke-virtual {v8, v9, v10, v11}, Lokio/DeflaterSink;->write(Lokio/Buffer;J)V

    .line 81
    goto :goto_1
.end method
