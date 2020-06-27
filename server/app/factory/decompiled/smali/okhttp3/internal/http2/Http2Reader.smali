.class final Lokhttp3/internal/http2/Http2Reader;
.super Ljava/lang/Object;
.source "Http2Reader.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/http2/Http2Reader$Handler;,
        Lokhttp3/internal/http2/Http2Reader$ContinuationSource;
    }
.end annotation


# static fields
.field static final logger:Ljava/util/logging/Logger;


# instance fields
.field private final client:Z

.field private final continuation:Lokhttp3/internal/http2/Http2Reader$ContinuationSource;

.field final hpackReader:Lokhttp3/internal/http2/Hpack$Reader;

.field private final source:Lokio/BufferedSource;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const-class v0, Lokhttp3/internal/http2/Http2;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/http2/Http2Reader;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lokio/BufferedSource;Z)V
    .locals 9

    .prologue
    .line 70
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 71
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    .line 72
    move-object v3, v0

    move v4, v2

    iput-boolean v4, v3, Lokhttp3/internal/http2/Http2Reader;->client:Z

    .line 73
    move-object v3, v0

    new-instance v4, Lokhttp3/internal/http2/Http2Reader$ContinuationSource;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    iget-object v6, v6, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    invoke-direct {v5, v6}, Lokhttp3/internal/http2/Http2Reader$ContinuationSource;-><init>(Lokio/BufferedSource;)V

    iput-object v4, v3, Lokhttp3/internal/http2/Http2Reader;->continuation:Lokhttp3/internal/http2/Http2Reader$ContinuationSource;

    .line 74
    move-object v3, v0

    new-instance v4, Lokhttp3/internal/http2/Hpack$Reader;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/16 v6, 0x1000

    move-object v7, v0

    iget-object v7, v7, Lokhttp3/internal/http2/Http2Reader;->continuation:Lokhttp3/internal/http2/Http2Reader$ContinuationSource;

    invoke-direct {v5, v6, v7}, Lokhttp3/internal/http2/Hpack$Reader;-><init>(ILokio/Source;)V

    iput-object v4, v3, Lokhttp3/internal/http2/Http2Reader;->hpackReader:Lokhttp3/internal/http2/Hpack$Reader;

    .line 75
    return-void
.end method

.method static lengthWithoutPadding(IBS)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 395
    move v0, p0

    move v1, p1

    move v2, p2

    move v3, v1

    const/16 v4, 0x8

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_0

    add-int/lit8 v0, v0, -0x1

    .line 396
    :cond_0
    move v3, v2

    move v4, v0

    if-le v3, v4, :cond_1

    .line 397
    const-string v3, "PROTOCOL_ERROR padding %s > remaining length %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move v7, v2

    invoke-static {v7}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v7

    aput-object v7, v5, v6

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x1

    move v7, v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4}, Lokhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v3

    throw v3

    .line 399
    :cond_1
    move v3, v0

    move v4, v2

    sub-int/2addr v3, v4

    int-to-short v3, v3

    move v0, v3

    return v0
.end method

.method private readData(Lokhttp3/internal/http2/Http2Reader$Handler;IBI)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 194
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move v8, v3

    const/4 v9, 0x1

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_0

    const/4 v8, 0x1

    :goto_0
    move v5, v8

    .line 195
    move v8, v3

    const/16 v9, 0x20

    and-int/lit8 v8, v8, 0x20

    if-eqz v8, :cond_1

    const/4 v8, 0x1

    :goto_1
    move v6, v8

    .line 196
    move v8, v6

    if-eqz v8, :cond_2

    .line 197
    const-string v8, "PROTOCOL_ERROR: FLAG_COMPRESSED without SETTINGS_COMPRESS_DATA"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v8, v9}, Lokhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v8

    throw v8

    .line 194
    :cond_0
    const/4 v8, 0x0

    goto :goto_0

    .line 195
    :cond_1
    const/4 v8, 0x0

    goto :goto_1

    .line 200
    :cond_2
    move v8, v3

    const/16 v9, 0x8

    and-int/lit8 v8, v8, 0x8

    if-eqz v8, :cond_3

    move-object v8, v0

    iget-object v8, v8, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    invoke-interface {v8}, Lokio/BufferedSource;->readByte()B

    move-result v8

    const/16 v9, 0xff

    and-int/lit16 v8, v8, 0xff

    int-to-short v8, v8

    :goto_2
    move v7, v8

    .line 201
    move v8, v2

    move v9, v3

    move v10, v7

    invoke-static {v8, v9, v10}, Lokhttp3/internal/http2/Http2Reader;->lengthWithoutPadding(IBS)I

    move-result v8

    move v2, v8

    .line 203
    move-object v8, v1

    move v9, v5

    move v10, v4

    move-object v11, v0

    iget-object v11, v11, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    move v12, v2

    invoke-interface {v8, v9, v10, v11, v12}, Lokhttp3/internal/http2/Http2Reader$Handler;->data(ZILokio/BufferedSource;I)V

    .line 204
    move-object v8, v0

    iget-object v8, v8, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    move v9, v7

    int-to-long v9, v9

    invoke-interface {v8, v9, v10}, Lokio/BufferedSource;->skip(J)V

    .line 205
    return-void

    .line 200
    :cond_3
    const/4 v8, 0x0

    goto :goto_2
.end method

.method private readGoAway(Lokhttp3/internal/http2/Http2Reader$Handler;IBI)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 306
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move v10, v2

    const/16 v11, 0x8

    if-ge v10, v11, :cond_0

    const-string v10, "TYPE_GOAWAY length < 8: %s"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const/4 v13, 0x0

    move v14, v2

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v10, v11}, Lokhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v10

    throw v10

    .line 307
    :cond_0
    move v10, v4

    if-eqz v10, :cond_1

    const-string v10, "TYPE_GOAWAY streamId != 0"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v10, v11}, Lokhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v10

    throw v10

    .line 308
    :cond_1
    move-object v10, v0

    iget-object v10, v10, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    invoke-interface {v10}, Lokio/BufferedSource;->readInt()I

    move-result v10

    move v5, v10

    .line 309
    move-object v10, v0

    iget-object v10, v10, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    invoke-interface {v10}, Lokio/BufferedSource;->readInt()I

    move-result v10

    move v6, v10

    .line 310
    move v10, v2

    const/16 v11, 0x8

    add-int/lit8 v10, v10, -0x8

    move v7, v10

    .line 311
    move v10, v6

    invoke-static {v10}, Lokhttp3/internal/http2/ErrorCode;->fromHttp2(I)Lokhttp3/internal/http2/ErrorCode;

    move-result-object v10

    move-object v8, v10

    .line 312
    move-object v10, v8

    if-nez v10, :cond_2

    .line 313
    const-string v10, "TYPE_GOAWAY unexpected error code: %d"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const/4 v13, 0x0

    move v14, v6

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v10, v11}, Lokhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v10

    throw v10

    .line 315
    :cond_2
    sget-object v10, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    move-object v9, v10

    .line 316
    move v10, v7

    if-lez v10, :cond_3

    .line 317
    move-object v10, v0

    iget-object v10, v10, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    move v11, v7

    int-to-long v11, v11

    invoke-interface {v10, v11, v12}, Lokio/BufferedSource;->readByteString(J)Lokio/ByteString;

    move-result-object v10

    move-object v9, v10

    .line 319
    :cond_3
    move-object v10, v1

    move v11, v5

    move-object v12, v8

    move-object v13, v9

    invoke-interface {v10, v11, v12, v13}, Lokhttp3/internal/http2/Http2Reader$Handler;->goAway(ILokhttp3/internal/http2/ErrorCode;Lokio/ByteString;)V

    .line 320
    return-void
.end method

.method private readHeaderBlock(ISBI)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ISBI)",
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/http2/Header;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 180
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v0

    iget-object v5, v5, Lokhttp3/internal/http2/Http2Reader;->continuation:Lokhttp3/internal/http2/Http2Reader$ContinuationSource;

    move-object v6, v0

    iget-object v6, v6, Lokhttp3/internal/http2/Http2Reader;->continuation:Lokhttp3/internal/http2/Http2Reader$ContinuationSource;

    move v7, v1

    move-object v9, v6

    move v10, v7

    move v6, v10

    move-object v7, v9

    move v8, v10

    iput v8, v7, Lokhttp3/internal/http2/Http2Reader$ContinuationSource;->left:I

    iput v6, v5, Lokhttp3/internal/http2/Http2Reader$ContinuationSource;->length:I

    .line 181
    move-object v5, v0

    iget-object v5, v5, Lokhttp3/internal/http2/Http2Reader;->continuation:Lokhttp3/internal/http2/Http2Reader$ContinuationSource;

    move v6, v2

    iput-short v6, v5, Lokhttp3/internal/http2/Http2Reader$ContinuationSource;->padding:S

    .line 182
    move-object v5, v0

    iget-object v5, v5, Lokhttp3/internal/http2/Http2Reader;->continuation:Lokhttp3/internal/http2/Http2Reader$ContinuationSource;

    move v6, v3

    iput-byte v6, v5, Lokhttp3/internal/http2/Http2Reader$ContinuationSource;->flags:B

    .line 183
    move-object v5, v0

    iget-object v5, v5, Lokhttp3/internal/http2/Http2Reader;->continuation:Lokhttp3/internal/http2/Http2Reader$ContinuationSource;

    move v6, v4

    iput v6, v5, Lokhttp3/internal/http2/Http2Reader$ContinuationSource;->streamId:I

    .line 187
    move-object v5, v0

    iget-object v5, v5, Lokhttp3/internal/http2/Http2Reader;->hpackReader:Lokhttp3/internal/http2/Hpack$Reader;

    invoke-virtual {v5}, Lokhttp3/internal/http2/Hpack$Reader;->readHeaders()V

    .line 188
    move-object v5, v0

    iget-object v5, v5, Lokhttp3/internal/http2/Http2Reader;->hpackReader:Lokhttp3/internal/http2/Hpack$Reader;

    invoke-virtual {v5}, Lokhttp3/internal/http2/Hpack$Reader;->getAndResetHeaderList()Ljava/util/List;

    move-result-object v5

    move-object v0, v5

    return-object v0
.end method

.method private readHeaders(Lokhttp3/internal/http2/Http2Reader$Handler;IBI)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 160
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move v8, v4

    if-nez v8, :cond_0

    const-string v8, "PROTOCOL_ERROR: TYPE_HEADERS streamId == 0"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v8, v9}, Lokhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v8

    throw v8

    .line 162
    :cond_0
    move v8, v3

    const/4 v9, 0x1

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_2

    const/4 v8, 0x1

    :goto_0
    move v5, v8

    .line 164
    move v8, v3

    const/16 v9, 0x8

    and-int/lit8 v8, v8, 0x8

    if-eqz v8, :cond_3

    move-object v8, v0

    iget-object v8, v8, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    invoke-interface {v8}, Lokio/BufferedSource;->readByte()B

    move-result v8

    const/16 v9, 0xff

    and-int/lit16 v8, v8, 0xff

    int-to-short v8, v8

    :goto_1
    move v6, v8

    .line 166
    move v8, v3

    const/16 v9, 0x20

    and-int/lit8 v8, v8, 0x20

    if-eqz v8, :cond_1

    .line 167
    move-object v8, v0

    move-object v9, v1

    move v10, v4

    invoke-direct {v8, v9, v10}, Lokhttp3/internal/http2/Http2Reader;->readPriority(Lokhttp3/internal/http2/Http2Reader$Handler;I)V

    .line 168
    add-int/lit8 v2, v2, -0x5

    .line 171
    :cond_1
    move v8, v2

    move v9, v3

    move v10, v6

    invoke-static {v8, v9, v10}, Lokhttp3/internal/http2/Http2Reader;->lengthWithoutPadding(IBS)I

    move-result v8

    move v2, v8

    .line 173
    move-object v8, v0

    move v9, v2

    move v10, v6

    move v11, v3

    move v12, v4

    invoke-direct {v8, v9, v10, v11, v12}, Lokhttp3/internal/http2/Http2Reader;->readHeaderBlock(ISBI)Ljava/util/List;

    move-result-object v8

    move-object v7, v8

    .line 175
    move-object v8, v1

    move v9, v5

    move v10, v4

    const/4 v11, -0x1

    move-object v12, v7

    invoke-interface {v8, v9, v10, v11, v12}, Lokhttp3/internal/http2/Http2Reader$Handler;->headers(ZIILjava/util/List;)V

    .line 176
    return-void

    .line 162
    :cond_2
    const/4 v8, 0x0

    goto :goto_0

    .line 164
    :cond_3
    const/4 v8, 0x0

    goto :goto_1
.end method

.method static readMedium(Lokio/BufferedSource;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 388
    move-object v0, p0

    move-object v1, v0

    invoke-interface {v1}, Lokio/BufferedSource;->readByte()B

    move-result v1

    const/16 v2, 0xff

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0x10

    shl-int/lit8 v1, v1, 0x10

    move-object v2, v0

    .line 389
    invoke-interface {v2}, Lokio/BufferedSource;->readByte()B

    move-result v2

    const/16 v3, 0xff

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0x8

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    move-object v2, v0

    .line 390
    invoke-interface {v2}, Lokio/BufferedSource;->readByte()B

    move-result v2

    const/16 v3, 0xff

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    .line 388
    move v0, v1

    return v0
.end method

.method private readPing(Lokhttp3/internal/http2/Http2Reader$Handler;IBI)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 296
    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move v8, v2

    const/16 v9, 0x8

    if-eq v8, v9, :cond_0

    const-string v8, "TYPE_PING length != 8: %s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x0

    move v12, v2

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v8, v9}, Lokhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v8

    throw v8

    .line 297
    :cond_0
    move v8, v4

    if-eqz v8, :cond_1

    const-string v8, "TYPE_PING streamId != 0"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v8, v9}, Lokhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v8

    throw v8

    .line 298
    :cond_1
    move-object v8, v0

    iget-object v8, v8, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    invoke-interface {v8}, Lokio/BufferedSource;->readInt()I

    move-result v8

    move v5, v8

    .line 299
    move-object v8, v0

    iget-object v8, v8, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    invoke-interface {v8}, Lokio/BufferedSource;->readInt()I

    move-result v8

    move v6, v8

    .line 300
    move v8, v3

    const/4 v9, 0x1

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_2

    const/4 v8, 0x1

    :goto_0
    move v7, v8

    .line 301
    move-object v8, v1

    move v9, v7

    move v10, v5

    move v11, v6

    invoke-interface {v8, v9, v10, v11}, Lokhttp3/internal/http2/Http2Reader$Handler;->ping(ZII)V

    .line 302
    return-void

    .line 300
    :cond_2
    const/4 v8, 0x0

    goto :goto_0
.end method

.method private readPriority(Lokhttp3/internal/http2/Http2Reader$Handler;I)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 215
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v7, v0

    iget-object v7, v7, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    invoke-interface {v7}, Lokio/BufferedSource;->readInt()I

    move-result v7

    move v3, v7

    .line 216
    move v7, v3

    const/high16 v8, -0x80000000

    and-int/2addr v7, v8

    if-eqz v7, :cond_0

    const/4 v7, 0x1

    :goto_0
    move v4, v7

    .line 217
    move v7, v3

    const v8, 0x7fffffff

    and-int/2addr v7, v8

    move v5, v7

    .line 218
    move-object v7, v0

    iget-object v7, v7, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    invoke-interface {v7}, Lokio/BufferedSource;->readByte()B

    move-result v7

    const/16 v8, 0xff

    and-int/lit16 v7, v7, 0xff

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    move v6, v7

    .line 219
    move-object v7, v1

    move v8, v2

    move v9, v5

    move v10, v6

    move v11, v4

    invoke-interface {v7, v8, v9, v10, v11}, Lokhttp3/internal/http2/Http2Reader$Handler;->priority(IIIZ)V

    .line 220
    return-void

    .line 216
    :cond_0
    const/4 v7, 0x0

    goto :goto_0
.end method

.method private readPriority(Lokhttp3/internal/http2/Http2Reader$Handler;IBI)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 209
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, v2

    const/4 v6, 0x5

    if-eq v5, v6, :cond_0

    const-string v5, "TYPE_PRIORITY length: %d != 5"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    move v9, v2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v5, v6}, Lokhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v5

    throw v5

    .line 210
    :cond_0
    move v5, v4

    if-nez v5, :cond_1

    const-string v5, "TYPE_PRIORITY streamId == 0"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lokhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v5

    throw v5

    .line 211
    :cond_1
    move-object v5, v0

    move-object v6, v1

    move v7, v4

    invoke-direct {v5, v6, v7}, Lokhttp3/internal/http2/Http2Reader;->readPriority(Lokhttp3/internal/http2/Http2Reader$Handler;I)V

    .line 212
    return-void
.end method

.method private readPushPromise(Lokhttp3/internal/http2/Http2Reader$Handler;IBI)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 283
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move v8, v4

    if-nez v8, :cond_0

    .line 284
    const-string v8, "PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v8, v9}, Lokhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v8

    throw v8

    .line 286
    :cond_0
    move v8, v3

    const/16 v9, 0x8

    and-int/lit8 v8, v8, 0x8

    if-eqz v8, :cond_1

    move-object v8, v0

    iget-object v8, v8, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    invoke-interface {v8}, Lokio/BufferedSource;->readByte()B

    move-result v8

    const/16 v9, 0xff

    and-int/lit16 v8, v8, 0xff

    int-to-short v8, v8

    :goto_0
    move v5, v8

    .line 287
    move-object v8, v0

    iget-object v8, v8, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    invoke-interface {v8}, Lokio/BufferedSource;->readInt()I

    move-result v8

    const v9, 0x7fffffff

    and-int/2addr v8, v9

    move v6, v8

    .line 288
    add-int/lit8 v2, v2, -0x4

    .line 289
    move v8, v2

    move v9, v3

    move v10, v5

    invoke-static {v8, v9, v10}, Lokhttp3/internal/http2/Http2Reader;->lengthWithoutPadding(IBS)I

    move-result v8

    move v2, v8

    .line 290
    move-object v8, v0

    move v9, v2

    move v10, v5

    move v11, v3

    move v12, v4

    invoke-direct {v8, v9, v10, v11, v12}, Lokhttp3/internal/http2/Http2Reader;->readHeaderBlock(ISBI)Ljava/util/List;

    move-result-object v8

    move-object v7, v8

    .line 291
    move-object v8, v1

    move v9, v4

    move v10, v6

    move-object v11, v7

    invoke-interface {v8, v9, v10, v11}, Lokhttp3/internal/http2/Http2Reader$Handler;->pushPromise(IILjava/util/List;)V

    .line 292
    return-void

    .line 286
    :cond_1
    const/4 v8, 0x0

    goto :goto_0
.end method

.method private readRstStream(Lokhttp3/internal/http2/Http2Reader$Handler;IBI)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 224
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move v7, v2

    const/4 v8, 0x4

    if-eq v7, v8, :cond_0

    const-string v7, "TYPE_RST_STREAM length: %d != 4"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x0

    move v11, v2

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v7, v8}, Lokhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v7

    throw v7

    .line 225
    :cond_0
    move v7, v4

    if-nez v7, :cond_1

    const-string v7, "TYPE_RST_STREAM streamId == 0"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v7, v8}, Lokhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v7

    throw v7

    .line 226
    :cond_1
    move-object v7, v0

    iget-object v7, v7, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    invoke-interface {v7}, Lokio/BufferedSource;->readInt()I

    move-result v7

    move v5, v7

    .line 227
    move v7, v5

    invoke-static {v7}, Lokhttp3/internal/http2/ErrorCode;->fromHttp2(I)Lokhttp3/internal/http2/ErrorCode;

    move-result-object v7

    move-object v6, v7

    .line 228
    move-object v7, v6

    if-nez v7, :cond_2

    .line 229
    const-string v7, "TYPE_RST_STREAM unexpected error code: %d"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x0

    move v11, v5

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v7, v8}, Lokhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v7

    throw v7

    .line 231
    :cond_2
    move-object v7, v1

    move v8, v4

    move-object v9, v6

    invoke-interface {v7, v8, v9}, Lokhttp3/internal/http2/Http2Reader$Handler;->rstStream(ILokhttp3/internal/http2/ErrorCode;)V

    .line 232
    return-void
.end method

.method private readSettings(Lokhttp3/internal/http2/Http2Reader$Handler;IBI)V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 236
    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move v9, v4

    if-eqz v9, :cond_0

    const-string v9, "TYPE_SETTINGS streamId != 0"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v9, v10}, Lokhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v9

    throw v9

    .line 237
    :cond_0
    move v9, v3

    const/4 v10, 0x1

    and-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_2

    .line 238
    move v9, v2

    if-eqz v9, :cond_1

    const-string v9, "FRAME_SIZE_ERROR ack frame should be empty!"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v9, v10}, Lokhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v9

    throw v9

    .line 239
    :cond_1
    move-object v9, v1

    invoke-interface {v9}, Lokhttp3/internal/http2/Http2Reader$Handler;->ackSettings()V

    .line 279
    :goto_0
    return-void

    .line 243
    :cond_2
    move v9, v2

    const/4 v10, 0x6

    rem-int/lit8 v9, v9, 0x6

    if-eqz v9, :cond_3

    const-string v9, "TYPE_SETTINGS length %% 6 != 0: %s"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x0

    move v13, v2

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v9, v10}, Lokhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v9

    throw v9

    .line 244
    :cond_3
    new-instance v9, Lokhttp3/internal/http2/Settings;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    invoke-direct {v10}, Lokhttp3/internal/http2/Settings;-><init>()V

    move-object v5, v9

    .line 245
    const/4 v9, 0x0

    move v6, v9

    :goto_1
    move v9, v6

    move v10, v2

    if-ge v9, v10, :cond_6

    .line 246
    move-object v9, v0

    iget-object v9, v9, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    invoke-interface {v9}, Lokio/BufferedSource;->readShort()S

    move-result v9

    move v7, v9

    .line 247
    move-object v9, v0

    iget-object v9, v9, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    invoke-interface {v9}, Lokio/BufferedSource;->readInt()I

    move-result v9

    move v8, v9

    .line 249
    move v9, v7

    packed-switch v9, :pswitch_data_0

    .line 276
    :cond_4
    :goto_2
    move-object v9, v5

    move v10, v7

    move v11, v8

    invoke-virtual {v9, v10, v11}, Lokhttp3/internal/http2/Settings;->set(II)Lokhttp3/internal/http2/Settings;

    move-result-object v9

    .line 245
    add-int/lit8 v6, v6, 0x6

    goto :goto_1

    .line 251
    :pswitch_0
    goto :goto_2

    .line 253
    :pswitch_1
    move v9, v8

    if-eqz v9, :cond_4

    move v9, v8

    const/4 v10, 0x1

    if-eq v9, v10, :cond_4

    .line 254
    const-string v9, "PROTOCOL_ERROR SETTINGS_ENABLE_PUSH != 0 or 1"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v9, v10}, Lokhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v9

    throw v9

    .line 258
    :pswitch_2
    const/4 v9, 0x4

    move v7, v9

    .line 259
    goto :goto_2

    .line 261
    :pswitch_3
    const/4 v9, 0x7

    move v7, v9

    .line 262
    move v9, v8

    if-gez v9, :cond_4

    .line 263
    const-string v9, "PROTOCOL_ERROR SETTINGS_INITIAL_WINDOW_SIZE > 2^31 - 1"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v9, v10}, Lokhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v9

    throw v9

    .line 267
    :pswitch_4
    move v9, v8

    const/16 v10, 0x4000

    if-lt v9, v10, :cond_5

    move v9, v8

    const v10, 0xffffff

    if-le v9, v10, :cond_4

    .line 268
    :cond_5
    const-string v9, "PROTOCOL_ERROR SETTINGS_MAX_FRAME_SIZE: %s"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x0

    move v13, v8

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v9, v10}, Lokhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v9

    throw v9

    .line 272
    :pswitch_5
    goto :goto_2

    .line 278
    :cond_6
    move-object v9, v1

    const/4 v10, 0x0

    move-object v11, v5

    invoke-interface {v9, v10, v11}, Lokhttp3/internal/http2/Http2Reader$Handler;->settings(ZLokhttp3/internal/http2/Settings;)V

    .line 279
    goto/16 :goto_0

    .line 249
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private readWindowUpdate(Lokhttp3/internal/http2/Http2Reader$Handler;IBI)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 324
    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move v7, v2

    const/4 v8, 0x4

    if-eq v7, v8, :cond_0

    const-string v7, "TYPE_WINDOW_UPDATE length !=4: %s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    const/4 v10, 0x0

    move v11, v2

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v7, v8}, Lokhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v7

    throw v7

    .line 325
    :cond_0
    move-object v7, v0

    iget-object v7, v7, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    invoke-interface {v7}, Lokio/BufferedSource;->readInt()I

    move-result v7

    int-to-long v7, v7

    const-wide/32 v9, 0x7fffffff

    and-long/2addr v7, v9

    move-wide v5, v7

    .line 326
    move-wide v7, v5

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-nez v7, :cond_1

    const-string v7, "windowSizeIncrement was 0"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    const/4 v10, 0x0

    move-wide v11, v5

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v7, v8}, Lokhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v7

    throw v7

    .line 327
    :cond_1
    move-object v7, v1

    move v8, v4

    move-wide v9, v5

    invoke-interface {v7, v8, v9, v10}, Lokhttp3/internal/http2/Http2Reader$Handler;->windowUpdate(IJ)V

    .line 328
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
    .line 331
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    invoke-interface {v1}, Lokio/BufferedSource;->close()V

    .line 332
    return-void
.end method

.method public nextFrame(Lokhttp3/internal/http2/Http2Reader$Handler;)Z
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 88
    move-object v0, p0

    move-object v1, p1

    move-object v6, v0

    :try_start_0
    iget-object v6, v6, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    const-wide/16 v7, 0x9

    invoke-interface {v6, v7, v8}, Lokio/BufferedSource;->require(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    move-object v6, v0

    iget-object v6, v6, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    invoke-static {v6}, Lokhttp3/internal/http2/Http2Reader;->readMedium(Lokio/BufferedSource;)I

    move-result v6

    move v2, v6

    .line 106
    move v6, v2

    if-ltz v6, :cond_0

    move v6, v2

    const/16 v7, 0x4000

    if-le v6, v7, :cond_1

    .line 107
    :cond_0
    const-string v6, "FRAME_SIZE_ERROR: %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const/4 v9, 0x0

    move v10, v2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v6, v7}, Lokhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v6

    throw v6

    .line 89
    :catch_0
    move-exception v6

    move-object v2, v6

    .line 90
    const/4 v6, 0x0

    move v0, v6

    .line 155
    :goto_0
    return v0

    .line 109
    :cond_1
    move-object v6, v0

    iget-object v6, v6, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    invoke-interface {v6}, Lokio/BufferedSource;->readByte()B

    move-result v6

    const/16 v7, 0xff

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    move v3, v6

    .line 110
    move-object v6, v0

    iget-object v6, v6, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    invoke-interface {v6}, Lokio/BufferedSource;->readByte()B

    move-result v6

    const/16 v7, 0xff

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    move v4, v6

    .line 111
    move-object v6, v0

    iget-object v6, v6, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    invoke-interface {v6}, Lokio/BufferedSource;->readInt()I

    move-result v6

    const v7, 0x7fffffff

    and-int/2addr v6, v7

    move v5, v6

    .line 112
    sget-object v6, Lokhttp3/internal/http2/Http2Reader;->logger:Ljava/util/logging/Logger;

    sget-object v7, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v6, v7}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v6

    if-eqz v6, :cond_2

    sget-object v6, Lokhttp3/internal/http2/Http2Reader;->logger:Ljava/util/logging/Logger;

    const/4 v7, 0x1

    move v8, v5

    move v9, v2

    move v10, v3

    move v11, v4

    invoke-static {v7, v8, v9, v10, v11}, Lokhttp3/internal/http2/Http2;->frameLog(ZIIBB)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 114
    :cond_2
    move v6, v3

    packed-switch v6, :pswitch_data_0

    .line 153
    move-object v6, v0

    iget-object v6, v6, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    move v7, v2

    int-to-long v7, v7

    invoke-interface {v6, v7, v8}, Lokio/BufferedSource;->skip(J)V

    .line 155
    :goto_1
    const/4 v6, 0x1

    move v0, v6

    goto :goto_0

    .line 116
    :pswitch_0
    move-object v6, v0

    move-object v7, v1

    move v8, v2

    move v9, v4

    move v10, v5

    invoke-direct {v6, v7, v8, v9, v10}, Lokhttp3/internal/http2/Http2Reader;->readData(Lokhttp3/internal/http2/Http2Reader$Handler;IBI)V

    .line 117
    goto :goto_1

    .line 120
    :pswitch_1
    move-object v6, v0

    move-object v7, v1

    move v8, v2

    move v9, v4

    move v10, v5

    invoke-direct {v6, v7, v8, v9, v10}, Lokhttp3/internal/http2/Http2Reader;->readHeaders(Lokhttp3/internal/http2/Http2Reader$Handler;IBI)V

    .line 121
    goto :goto_1

    .line 124
    :pswitch_2
    move-object v6, v0

    move-object v7, v1

    move v8, v2

    move v9, v4

    move v10, v5

    invoke-direct {v6, v7, v8, v9, v10}, Lokhttp3/internal/http2/Http2Reader;->readPriority(Lokhttp3/internal/http2/Http2Reader$Handler;IBI)V

    .line 125
    goto :goto_1

    .line 128
    :pswitch_3
    move-object v6, v0

    move-object v7, v1

    move v8, v2

    move v9, v4

    move v10, v5

    invoke-direct {v6, v7, v8, v9, v10}, Lokhttp3/internal/http2/Http2Reader;->readRstStream(Lokhttp3/internal/http2/Http2Reader$Handler;IBI)V

    .line 129
    goto :goto_1

    .line 132
    :pswitch_4
    move-object v6, v0

    move-object v7, v1

    move v8, v2

    move v9, v4

    move v10, v5

    invoke-direct {v6, v7, v8, v9, v10}, Lokhttp3/internal/http2/Http2Reader;->readSettings(Lokhttp3/internal/http2/Http2Reader$Handler;IBI)V

    .line 133
    goto :goto_1

    .line 136
    :pswitch_5
    move-object v6, v0

    move-object v7, v1

    move v8, v2

    move v9, v4

    move v10, v5

    invoke-direct {v6, v7, v8, v9, v10}, Lokhttp3/internal/http2/Http2Reader;->readPushPromise(Lokhttp3/internal/http2/Http2Reader$Handler;IBI)V

    .line 137
    goto :goto_1

    .line 140
    :pswitch_6
    move-object v6, v0

    move-object v7, v1

    move v8, v2

    move v9, v4

    move v10, v5

    invoke-direct {v6, v7, v8, v9, v10}, Lokhttp3/internal/http2/Http2Reader;->readPing(Lokhttp3/internal/http2/Http2Reader$Handler;IBI)V

    .line 141
    goto :goto_1

    .line 144
    :pswitch_7
    move-object v6, v0

    move-object v7, v1

    move v8, v2

    move v9, v4

    move v10, v5

    invoke-direct {v6, v7, v8, v9, v10}, Lokhttp3/internal/http2/Http2Reader;->readGoAway(Lokhttp3/internal/http2/Http2Reader$Handler;IBI)V

    .line 145
    goto :goto_1

    .line 148
    :pswitch_8
    move-object v6, v0

    move-object v7, v1

    move v8, v2

    move v9, v4

    move v10, v5

    invoke-direct {v6, v7, v8, v9, v10}, Lokhttp3/internal/http2/Http2Reader;->readWindowUpdate(Lokhttp3/internal/http2/Http2Reader$Handler;IBI)V

    .line 149
    goto :goto_1

    .line 114
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public readConnectionPreface()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 78
    move-object v0, p0

    move-object v2, v0

    iget-boolean v2, v2, Lokhttp3/internal/http2/Http2Reader;->client:Z

    if-eqz v2, :cond_0

    .line 84
    :goto_0
    return-void

    .line 79
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    sget-object v3, Lokhttp3/internal/http2/Http2;->CONNECTION_PREFACE:Lokio/ByteString;

    invoke-virtual {v3}, Lokio/ByteString;->size()I

    move-result v3

    int-to-long v3, v3

    invoke-interface {v2, v3, v4}, Lokio/BufferedSource;->readByteString(J)Lokio/ByteString;

    move-result-object v2

    move-object v1, v2

    .line 80
    sget-object v2, Lokhttp3/internal/http2/Http2Reader;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lokhttp3/internal/http2/Http2Reader;->logger:Ljava/util/logging/Logger;

    const-string v3, "<< CONNECTION %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v1

    invoke-virtual {v7}, Lokio/ByteString;->hex()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4}, Lokhttp3/internal/Util;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 81
    :cond_1
    sget-object v2, Lokhttp3/internal/http2/Http2;->CONNECTION_PREFACE:Lokio/ByteString;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 82
    const-string v2, "Expected a connection header but was %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const/4 v5, 0x0

    move-object v6, v1

    invoke-virtual {v6}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3}, Lokhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v2

    throw v2

    .line 84
    :cond_2
    goto :goto_0
.end method
