.class public final Lokio/GzipSource;
.super Ljava/lang/Object;
.source "GzipSource.kt"

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
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u00a2\u0006\u0002\u0010\u0003J \u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0012H\u0002J\u0008\u0010\u0014\u001a\u00020\u000eH\u0016J\u0008\u0010\u0015\u001a\u00020\u000eH\u0002J\u0008\u0010\u0016\u001a\u00020\u000eH\u0002J\u0018\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u0018H\u0016J\u0008\u0010\u001c\u001a\u00020\u001dH\u0016J \u0010\u001e\u001a\u00020\u000e2\u0006\u0010\u001f\u001a\u00020\u001a2\u0006\u0010 \u001a\u00020\u00182\u0006\u0010\u001b\u001a\u00020\u0018H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006!"
    }
    d2 = {
        "Lokio/GzipSource;",
        "Lokio/Source;",
        "source",
        "(Lokio/Source;)V",
        "crc",
        "Ljava/util/zip/CRC32;",
        "inflater",
        "Ljava/util/zip/Inflater;",
        "inflaterSource",
        "Lokio/InflaterSource;",
        "section",
        "",
        "Lokio/RealBufferedSource;",
        "checkEqual",
        "",
        "name",
        "",
        "expected",
        "",
        "actual",
        "close",
        "consumeHeader",
        "consumeTrailer",
        "read",
        "",
        "sink",
        "Lokio/Buffer;",
        "byteCount",
        "timeout",
        "Lokio/Timeout;",
        "updateCrc",
        "buffer",
        "offset",
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
.field private final crc:Ljava/util/zip/CRC32;

.field private final inflater:Ljava/util/zip/Inflater;

.field private final inflaterSource:Lokio/InflaterSource;

.field private section:B

.field private final source:Lokio/RealBufferedSource;


# direct methods
.method public constructor <init>(Lokio/Source;)V
    .locals 8
    .param p1    # Lokio/Source;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    const-string v3, "source"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 41
    move-object v2, v0

    new-instance v3, Lokio/RealBufferedSource;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v1

    invoke-direct {v4, v5}, Lokio/RealBufferedSource;-><init>(Lokio/Source;)V

    iput-object v3, v2, Lokio/GzipSource;->source:Lokio/RealBufferedSource;

    .line 44
    move-object v2, v0

    new-instance v3, Ljava/util/zip/Inflater;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Ljava/util/zip/Inflater;-><init>(Z)V

    iput-object v3, v2, Lokio/GzipSource;->inflater:Ljava/util/zip/Inflater;

    .line 50
    move-object v2, v0

    new-instance v3, Lokio/InflaterSource;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    iget-object v5, v5, Lokio/GzipSource;->source:Lokio/RealBufferedSource;

    check-cast v5, Lokio/BufferedSource;

    move-object v6, v0

    iget-object v6, v6, Lokio/GzipSource;->inflater:Ljava/util/zip/Inflater;

    invoke-direct {v4, v5, v6}, Lokio/InflaterSource;-><init>(Lokio/BufferedSource;Ljava/util/zip/Inflater;)V

    iput-object v3, v2, Lokio/GzipSource;->inflaterSource:Lokio/InflaterSource;

    .line 53
    move-object v2, v0

    new-instance v3, Ljava/util/zip/CRC32;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v3, v2, Lokio/GzipSource;->crc:Ljava/util/zip/CRC32;

    return-void
.end method

.method private final checkEqual(Ljava/lang/String;II)V
    .locals 16

    .prologue
    .line 196
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move v11, v3

    move v12, v2

    if-eq v11, v12, :cond_0

    .line 197
    const-string v11, "%s: actual 0x%08x != expected 0x%08x"

    move-object v4, v11

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const/4 v13, 0x0

    move-object v14, v1

    aput-object v14, v12, v13

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const/4 v13, 0x1

    move v14, v3

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const/4 v13, 0x2

    move v14, v2

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    move-object v5, v11

    const/4 v11, 0x0

    move v6, v11

    move-object v11, v4

    move-object v12, v5

    move-object v15, v12

    move-object v12, v15

    move-object v13, v15

    array-length v13, v13

    invoke-static {v12, v13}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v12

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const-string v13, "java.lang.String.format(this, *args)"

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v9, v11

    move-object v11, v9

    move-object v10, v11

    new-instance v11, Ljava/io/IOException;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    move-object v13, v10

    invoke-direct {v12, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    check-cast v11, Ljava/lang/Throwable;

    throw v11

    .line 199
    :cond_0
    return-void
.end method

.method private final consumeHeader()V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 104
    move-object/from16 v0, p0

    move-object v10, v0

    iget-object v10, v10, Lokio/GzipSource;->source:Lokio/RealBufferedSource;

    const-wide/16 v11, 0xa

    invoke-virtual {v10, v11, v12}, Lokio/RealBufferedSource;->require(J)V

    .line 105
    move-object v10, v0

    iget-object v10, v10, Lokio/GzipSource;->source:Lokio/RealBufferedSource;

    move-object v2, v10

    const/4 v10, 0x0

    move v3, v10

    .line 221
    move-object v10, v2

    iget-object v10, v10, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 105
    const-wide/16 v11, 0x3

    invoke-virtual {v10, v11, v12}, Lokio/Buffer;->getByte(J)B

    move-result v10

    move v1, v10

    .line 106
    move v10, v1

    move v3, v10

    const/4 v10, 0x1

    move v4, v10

    const/4 v10, 0x0

    move v5, v10

    .line 222
    move v10, v3

    move v11, v4

    shr-int/2addr v10, v11

    const/4 v11, 0x1

    and-int/lit8 v10, v10, 0x1

    const/4 v11, 0x1

    if-ne v10, v11, :cond_4

    const/4 v10, 0x1

    .line 106
    :goto_0
    move v2, v10

    .line 107
    move v10, v2

    if-eqz v10, :cond_0

    move-object v10, v0

    move-object v11, v0

    iget-object v11, v11, Lokio/GzipSource;->source:Lokio/RealBufferedSource;

    move-object v3, v11

    move-object v8, v10

    const/4 v10, 0x0

    move v4, v10

    .line 223
    move-object v10, v3

    iget-object v10, v10, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    move-object v9, v10

    move-object v10, v8

    move-object v11, v9

    .line 107
    const-wide/16 v12, 0x0

    const-wide/16 v14, 0xa

    invoke-direct/range {v10 .. v15}, Lokio/GzipSource;->updateCrc(Lokio/Buffer;JJ)V

    .line 109
    :cond_0
    move-object v10, v0

    iget-object v10, v10, Lokio/GzipSource;->source:Lokio/RealBufferedSource;

    invoke-virtual {v10}, Lokio/RealBufferedSource;->readShort()S

    move-result v10

    move v3, v10

    .line 110
    move-object v10, v0

    const-string v11, "ID1ID2"

    const/16 v12, 0x1f8b

    move v13, v3

    invoke-direct {v10, v11, v12, v13}, Lokio/GzipSource;->checkEqual(Ljava/lang/String;II)V

    .line 111
    move-object v10, v0

    iget-object v10, v10, Lokio/GzipSource;->source:Lokio/RealBufferedSource;

    const-wide/16 v11, 0x8

    invoke-virtual {v10, v11, v12}, Lokio/RealBufferedSource;->skip(J)V

    .line 117
    move v10, v1

    move v4, v10

    const/4 v10, 0x2

    move v5, v10

    const/4 v10, 0x0

    move v6, v10

    .line 224
    move v10, v4

    move v11, v5

    shr-int/2addr v10, v11

    const/4 v11, 0x1

    and-int/lit8 v10, v10, 0x1

    const/4 v11, 0x1

    if-ne v10, v11, :cond_5

    const/4 v10, 0x1

    :goto_1
    if-eqz v10, :cond_3

    .line 118
    move-object v10, v0

    iget-object v10, v10, Lokio/GzipSource;->source:Lokio/RealBufferedSource;

    const-wide/16 v11, 0x2

    invoke-virtual {v10, v11, v12}, Lokio/RealBufferedSource;->require(J)V

    .line 119
    move v10, v2

    if-eqz v10, :cond_1

    move-object v10, v0

    move-object v11, v0

    iget-object v11, v11, Lokio/GzipSource;->source:Lokio/RealBufferedSource;

    move-object v4, v11

    move-object v8, v10

    const/4 v10, 0x0

    move v5, v10

    .line 225
    move-object v10, v4

    iget-object v10, v10, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    move-object v9, v10

    move-object v10, v8

    move-object v11, v9

    .line 119
    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x2

    invoke-direct/range {v10 .. v15}, Lokio/GzipSource;->updateCrc(Lokio/Buffer;JJ)V

    .line 120
    :cond_1
    move-object v10, v0

    iget-object v10, v10, Lokio/GzipSource;->source:Lokio/RealBufferedSource;

    move-object v6, v10

    const/4 v10, 0x0

    move v7, v10

    .line 226
    move-object v10, v6

    iget-object v10, v10, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 120
    invoke-virtual {v10}, Lokio/Buffer;->readShortLe()S

    move-result v10

    int-to-long v10, v10

    move-wide v4, v10

    .line 121
    move-object v10, v0

    iget-object v10, v10, Lokio/GzipSource;->source:Lokio/RealBufferedSource;

    move-wide v11, v4

    invoke-virtual {v10, v11, v12}, Lokio/RealBufferedSource;->require(J)V

    .line 122
    move v10, v2

    if-eqz v10, :cond_2

    move-object v10, v0

    move-object v11, v0

    iget-object v11, v11, Lokio/GzipSource;->source:Lokio/RealBufferedSource;

    move-object v6, v11

    move-object v8, v10

    const/4 v10, 0x0

    move v7, v10

    .line 227
    move-object v10, v6

    iget-object v10, v10, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    move-object v9, v10

    move-object v10, v8

    move-object v11, v9

    .line 122
    const-wide/16 v12, 0x0

    move-wide v14, v4

    invoke-direct/range {v10 .. v15}, Lokio/GzipSource;->updateCrc(Lokio/Buffer;JJ)V

    .line 123
    :cond_2
    move-object v10, v0

    iget-object v10, v10, Lokio/GzipSource;->source:Lokio/RealBufferedSource;

    move-wide v11, v4

    invoke-virtual {v10, v11, v12}, Lokio/RealBufferedSource;->skip(J)V

    .line 130
    :cond_3
    move v10, v1

    move v4, v10

    const/4 v10, 0x3

    move v5, v10

    const/4 v10, 0x0

    move v6, v10

    .line 228
    move v10, v4

    move v11, v5

    shr-int/2addr v10, v11

    const/4 v11, 0x1

    and-int/lit8 v10, v10, 0x1

    const/4 v11, 0x1

    if-ne v10, v11, :cond_6

    const/4 v10, 0x1

    :goto_2
    if-eqz v10, :cond_9

    .line 131
    move-object v10, v0

    iget-object v10, v10, Lokio/GzipSource;->source:Lokio/RealBufferedSource;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lokio/RealBufferedSource;->indexOf(B)J

    move-result-wide v10

    move-wide v4, v10

    .line 132
    move-wide v10, v4

    const-wide/16 v12, -0x1

    cmp-long v10, v10, v12

    if-nez v10, :cond_7

    new-instance v10, Ljava/io/EOFException;

    move-object/from16 v18, v10

    move-object/from16 v10, v18

    move-object/from16 v11, v18

    invoke-direct {v11}, Ljava/io/EOFException;-><init>()V

    check-cast v10, Ljava/lang/Throwable;

    throw v10

    .line 222
    :cond_4
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 224
    :cond_5
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 228
    :cond_6
    const/4 v10, 0x0

    goto :goto_2

    .line 133
    :cond_7
    move v10, v2

    if-eqz v10, :cond_8

    move-object v10, v0

    move-object v11, v0

    iget-object v11, v11, Lokio/GzipSource;->source:Lokio/RealBufferedSource;

    move-object v6, v11

    move-object v8, v10

    const/4 v10, 0x0

    move v7, v10

    .line 229
    move-object v10, v6

    iget-object v10, v10, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    move-object v9, v10

    move-object v10, v8

    move-object v11, v9

    .line 133
    const-wide/16 v12, 0x0

    move-wide v14, v4

    const-wide/16 v16, 0x1

    add-long v14, v14, v16

    invoke-direct/range {v10 .. v15}, Lokio/GzipSource;->updateCrc(Lokio/Buffer;JJ)V

    .line 134
    :cond_8
    move-object v10, v0

    iget-object v10, v10, Lokio/GzipSource;->source:Lokio/RealBufferedSource;

    move-wide v11, v4

    const-wide/16 v13, 0x1

    add-long/2addr v11, v13

    invoke-virtual {v10, v11, v12}, Lokio/RealBufferedSource;->skip(J)V

    .line 141
    :cond_9
    move v10, v1

    move v4, v10

    const/4 v10, 0x4

    move v5, v10

    const/4 v10, 0x0

    move v6, v10

    .line 230
    move v10, v4

    move v11, v5

    shr-int/2addr v10, v11

    const/4 v11, 0x1

    and-int/lit8 v10, v10, 0x1

    const/4 v11, 0x1

    if-ne v10, v11, :cond_a

    const/4 v10, 0x1

    :goto_3
    if-eqz v10, :cond_d

    .line 142
    move-object v10, v0

    iget-object v10, v10, Lokio/GzipSource;->source:Lokio/RealBufferedSource;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lokio/RealBufferedSource;->indexOf(B)J

    move-result-wide v10

    move-wide v4, v10

    .line 143
    move-wide v10, v4

    const-wide/16 v12, -0x1

    cmp-long v10, v10, v12

    if-nez v10, :cond_b

    new-instance v10, Ljava/io/EOFException;

    move-object/from16 v18, v10

    move-object/from16 v10, v18

    move-object/from16 v11, v18

    invoke-direct {v11}, Ljava/io/EOFException;-><init>()V

    check-cast v10, Ljava/lang/Throwable;

    throw v10

    .line 230
    :cond_a
    const/4 v10, 0x0

    goto :goto_3

    .line 144
    :cond_b
    move v10, v2

    if-eqz v10, :cond_c

    move-object v10, v0

    move-object v11, v0

    iget-object v11, v11, Lokio/GzipSource;->source:Lokio/RealBufferedSource;

    move-object v6, v11

    move-object v8, v10

    const/4 v10, 0x0

    move v7, v10

    .line 231
    move-object v10, v6

    iget-object v10, v10, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    move-object v9, v10

    move-object v10, v8

    move-object v11, v9

    .line 144
    const-wide/16 v12, 0x0

    move-wide v14, v4

    const-wide/16 v16, 0x1

    add-long v14, v14, v16

    invoke-direct/range {v10 .. v15}, Lokio/GzipSource;->updateCrc(Lokio/Buffer;JJ)V

    .line 145
    :cond_c
    move-object v10, v0

    iget-object v10, v10, Lokio/GzipSource;->source:Lokio/RealBufferedSource;

    move-wide v11, v4

    const-wide/16 v13, 0x1

    add-long/2addr v11, v13

    invoke-virtual {v10, v11, v12}, Lokio/RealBufferedSource;->skip(J)V

    .line 152
    :cond_d
    move v10, v2

    if-eqz v10, :cond_e

    .line 153
    move-object v10, v0

    const-string v11, "FHCRC"

    move-object v12, v0

    iget-object v12, v12, Lokio/GzipSource;->source:Lokio/RealBufferedSource;

    invoke-virtual {v12}, Lokio/RealBufferedSource;->readShortLe()S

    move-result v12

    move-object v13, v0

    iget-object v13, v13, Lokio/GzipSource;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v13}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v13

    long-to-int v13, v13

    int-to-short v13, v13

    invoke-direct {v10, v11, v12, v13}, Lokio/GzipSource;->checkEqual(Ljava/lang/String;II)V

    .line 154
    move-object v10, v0

    iget-object v10, v10, Lokio/GzipSource;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v10}, Ljava/util/zip/CRC32;->reset()V

    .line 156
    :cond_e
    return-void
.end method

.method private final consumeTrailer()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 164
    move-object v0, p0

    move-object v1, v0

    const-string v2, "CRC"

    move-object v3, v0

    iget-object v3, v3, Lokio/GzipSource;->source:Lokio/RealBufferedSource;

    invoke-virtual {v3}, Lokio/RealBufferedSource;->readIntLe()I

    move-result v3

    move-object v4, v0

    iget-object v4, v4, Lokio/GzipSource;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v4}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v4

    long-to-int v4, v4

    invoke-direct {v1, v2, v3, v4}, Lokio/GzipSource;->checkEqual(Ljava/lang/String;II)V

    .line 165
    move-object v1, v0

    const-string v2, "ISIZE"

    move-object v3, v0

    iget-object v3, v3, Lokio/GzipSource;->source:Lokio/RealBufferedSource;

    invoke-virtual {v3}, Lokio/RealBufferedSource;->readIntLe()I

    move-result v3

    move-object v4, v0

    iget-object v4, v4, Lokio/GzipSource;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v4}, Ljava/util/zip/Inflater;->getBytesWritten()J

    move-result-wide v4

    long-to-int v4, v4

    invoke-direct {v1, v2, v3, v4}, Lokio/GzipSource;->checkEqual(Ljava/lang/String;II)V

    .line 166
    return-void
.end method

.method private final updateCrc(Lokio/Buffer;JJ)V
    .locals 25

    .prologue
    .line 175
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-wide/from16 v4, p2

    move-wide/from16 v6, p4

    move-wide/from16 v20, v4

    move-wide/from16 v8, v20

    .line 176
    move-wide/from16 v20, v6

    move-wide/from16 v10, v20

    .line 178
    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Lokio/Buffer;->head:Lokio/Segment;

    move-object/from16 v20, v0

    move-object/from16 v24, v20

    move-object/from16 v20, v24

    move-object/from16 v21, v24

    if-nez v21, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    move-object/from16 v12, v20

    .line 179
    :goto_0
    move-wide/from16 v20, v8

    move-object/from16 v22, v12

    move-object/from16 v0, v22

    iget v0, v0, Lokio/Segment;->limit:I

    move/from16 v22, v0

    move-object/from16 v23, v12

    move-object/from16 v0, v23

    iget v0, v0, Lokio/Segment;->pos:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    cmp-long v20, v20, v22

    if-ltz v20, :cond_2

    .line 180
    move-wide/from16 v20, v8

    move-object/from16 v22, v12

    move-object/from16 v0, v22

    iget v0, v0, Lokio/Segment;->limit:I

    move/from16 v22, v0

    move-object/from16 v23, v12

    move-object/from16 v0, v23

    iget v0, v0, Lokio/Segment;->pos:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    sub-long v20, v20, v22

    move-wide/from16 v8, v20

    .line 181
    move-object/from16 v20, v12

    move-object/from16 v0, v20

    iget-object v0, v0, Lokio/Segment;->next:Lokio/Segment;

    move-object/from16 v20, v0

    move-object/from16 v24, v20

    move-object/from16 v20, v24

    move-object/from16 v21, v24

    if-nez v21, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    move-object/from16 v12, v20

    .line 179
    goto :goto_0

    .line 185
    :cond_2
    :goto_1
    move-wide/from16 v20, v10

    const-wide/16 v22, 0x0

    cmp-long v20, v20, v22

    if-lez v20, :cond_4

    .line 186
    move-object/from16 v20, v12

    move-object/from16 v0, v20

    iget v0, v0, Lokio/Segment;->pos:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    move-wide/from16 v22, v8

    add-long v20, v20, v22

    move-wide/from16 v0, v20

    long-to-int v0, v0

    move/from16 v20, v0

    move/from16 v13, v20

    .line 187
    move-object/from16 v20, v12

    move-object/from16 v0, v20

    iget v0, v0, Lokio/Segment;->limit:I

    move/from16 v20, v0

    move/from16 v21, v13

    sub-int v20, v20, v21

    move/from16 v15, v20

    const/16 v20, 0x0

    move/from16 v16, v20

    .line 232
    move/from16 v20, v15

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    move-wide/from16 v17, v20

    const/16 v20, 0x0

    move/from16 v19, v20

    move-wide/from16 v20, v17

    move-wide/from16 v22, v10

    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v20

    nop

    .line 187
    move-wide/from16 v0, v20

    long-to-int v0, v0

    move/from16 v20, v0

    move/from16 v14, v20

    .line 188
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lokio/GzipSource;->crc:Ljava/util/zip/CRC32;

    move-object/from16 v20, v0

    move-object/from16 v21, v12

    move-object/from16 v0, v21

    iget-object v0, v0, Lokio/Segment;->data:[B

    move-object/from16 v21, v0

    move/from16 v22, v13

    move/from16 v23, v14

    invoke-virtual/range {v20 .. v23}, Ljava/util/zip/CRC32;->update([BII)V

    .line 189
    move-wide/from16 v20, v10

    move/from16 v22, v14

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    sub-long v20, v20, v22

    move-wide/from16 v10, v20

    .line 190
    const-wide/16 v20, 0x0

    move-wide/from16 v8, v20

    .line 191
    move-object/from16 v20, v12

    move-object/from16 v0, v20

    iget-object v0, v0, Lokio/Segment;->next:Lokio/Segment;

    move-object/from16 v20, v0

    move-object/from16 v24, v20

    move-object/from16 v20, v24

    move-object/from16 v21, v24

    if-nez v21, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    move-object/from16 v12, v20

    .line 185
    goto/16 :goto_1

    .line 193
    :cond_4
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 171
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokio/GzipSource;->inflaterSource:Lokio/InflaterSource;

    invoke-virtual {v1}, Lokio/InflaterSource;->close()V

    return-void
.end method

.method public read(Lokio/Buffer;J)J
    .locals 15
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

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-object v8, v1

    const-string v9, "sink"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
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

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

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

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move-object v10, v6

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v8, Ljava/lang/Throwable;

    throw v8

    :cond_0
    const/4 v8, 0x0

    goto :goto_0

    .line 58
    :cond_1
    move-wide v8, v2

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_2

    const-wide/16 v8, 0x0

    move-wide v0, v8

    .line 93
    :goto_1
    return-wide v0

    .line 61
    :cond_2
    move-object v8, v0

    iget-byte v8, v8, Lokio/GzipSource;->section:B

    if-nez v8, :cond_3

    .line 62
    move-object v8, v0

    invoke-direct {v8}, Lokio/GzipSource;->consumeHeader()V

    .line 63
    move-object v8, v0

    const/4 v9, 0x1

    iput-byte v9, v8, Lokio/GzipSource;->section:B

    .line 67
    :cond_3
    move-object v8, v0

    iget-byte v8, v8, Lokio/GzipSource;->section:B

    const/4 v9, 0x1

    if-ne v8, v9, :cond_5

    .line 68
    move-object v8, v1

    invoke-virtual {v8}, Lokio/Buffer;->size()J

    move-result-wide v8

    move-wide v4, v8

    .line 69
    move-object v8, v0

    iget-object v8, v8, Lokio/GzipSource;->inflaterSource:Lokio/InflaterSource;

    move-object v9, v1

    move-wide v10, v2

    invoke-virtual {v8, v9, v10, v11}, Lokio/InflaterSource;->read(Lokio/Buffer;J)J

    move-result-wide v8

    move-wide v6, v8

    .line 70
    move-wide v8, v6

    const-wide/16 v10, -0x1

    cmp-long v8, v8, v10

    if-eqz v8, :cond_4

    .line 71
    move-object v8, v0

    move-object v9, v1

    move-wide v10, v4

    move-wide v12, v6

    invoke-direct/range {v8 .. v13}, Lokio/GzipSource;->updateCrc(Lokio/Buffer;JJ)V

    .line 72
    move-wide v8, v6

    move-wide v0, v8

    goto :goto_1

    .line 74
    :cond_4
    move-object v8, v0

    const/4 v9, 0x2

    iput-byte v9, v8, Lokio/GzipSource;->section:B

    .line 80
    :cond_5
    move-object v8, v0

    iget-byte v8, v8, Lokio/GzipSource;->section:B

    const/4 v9, 0x2

    if-ne v8, v9, :cond_6

    .line 81
    move-object v8, v0

    invoke-direct {v8}, Lokio/GzipSource;->consumeTrailer()V

    .line 82
    move-object v8, v0

    const/4 v9, 0x3

    iput-byte v9, v8, Lokio/GzipSource;->section:B

    .line 88
    move-object v8, v0

    iget-object v8, v8, Lokio/GzipSource;->source:Lokio/RealBufferedSource;

    invoke-virtual {v8}, Lokio/RealBufferedSource;->exhausted()Z

    move-result v8

    if-nez v8, :cond_6

    .line 89
    new-instance v8, Ljava/io/IOException;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    const-string v10, "gzip finished without exhausting source"

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    check-cast v8, Ljava/lang/Throwable;

    throw v8

    .line 93
    :cond_6
    const-wide/16 v8, -0x1

    move-wide v0, v8

    goto :goto_1
.end method

.method public timeout()Lokio/Timeout;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 168
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokio/GzipSource;->source:Lokio/RealBufferedSource;

    invoke-virtual {v1}, Lokio/RealBufferedSource;->timeout()Lokio/Timeout;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method
