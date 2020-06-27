.class final Lokhttp3/internal/http2/Http2Reader$ContinuationSource;
.super Ljava/lang/Object;
.source "Http2Reader.java"

# interfaces
.implements Lokio/Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/http2/Http2Reader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ContinuationSource"
.end annotation


# instance fields
.field flags:B

.field left:I

.field length:I

.field padding:S

.field private final source:Lokio/BufferedSource;

.field streamId:I


# direct methods
.method public constructor <init>(Lokio/BufferedSource;)V
    .locals 4

    .prologue
    .line 348
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 349
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lokhttp3/internal/http2/Http2Reader$ContinuationSource;->source:Lokio/BufferedSource;

    .line 350
    return-void
.end method

.method private readContinuationHeader()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 375
    move-object v0, p0

    move-object v3, v0

    iget v3, v3, Lokhttp3/internal/http2/Http2Reader$ContinuationSource;->streamId:I

    move v1, v3

    .line 377
    move-object v3, v0

    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lokhttp3/internal/http2/Http2Reader$ContinuationSource;->source:Lokio/BufferedSource;

    invoke-static {v5}, Lokhttp3/internal/http2/Http2Reader;->readMedium(Lokio/BufferedSource;)I

    move-result v5

    move-object v9, v4

    move v10, v5

    move v4, v10

    move-object v5, v9

    move v6, v10

    iput v6, v5, Lokhttp3/internal/http2/Http2Reader$ContinuationSource;->left:I

    iput v4, v3, Lokhttp3/internal/http2/Http2Reader$ContinuationSource;->length:I

    .line 378
    move-object v3, v0

    iget-object v3, v3, Lokhttp3/internal/http2/Http2Reader$ContinuationSource;->source:Lokio/BufferedSource;

    invoke-interface {v3}, Lokio/BufferedSource;->readByte()B

    move-result v3

    const/16 v4, 0xff

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    move v2, v3

    .line 379
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lokhttp3/internal/http2/Http2Reader$ContinuationSource;->source:Lokio/BufferedSource;

    invoke-interface {v4}, Lokio/BufferedSource;->readByte()B

    move-result v4

    const/16 v5, 0xff

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    iput-byte v4, v3, Lokhttp3/internal/http2/Http2Reader$ContinuationSource;->flags:B

    .line 380
    sget-object v3, Lokhttp3/internal/http2/Http2Reader;->logger:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lokhttp3/internal/http2/Http2Reader;->logger:Ljava/util/logging/Logger;

    const/4 v4, 0x1

    move-object v5, v0

    iget v5, v5, Lokhttp3/internal/http2/Http2Reader$ContinuationSource;->streamId:I

    move-object v6, v0

    iget v6, v6, Lokhttp3/internal/http2/Http2Reader$ContinuationSource;->length:I

    move v7, v2

    move-object v8, v0

    iget-byte v8, v8, Lokhttp3/internal/http2/Http2Reader$ContinuationSource;->flags:B

    invoke-static {v4, v5, v6, v7, v8}, Lokhttp3/internal/http2/Http2;->frameLog(ZIIBB)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 381
    :cond_0
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lokhttp3/internal/http2/Http2Reader$ContinuationSource;->source:Lokio/BufferedSource;

    invoke-interface {v4}, Lokio/BufferedSource;->readInt()I

    move-result v4

    const v5, 0x7fffffff

    and-int/2addr v4, v5

    iput v4, v3, Lokhttp3/internal/http2/Http2Reader$ContinuationSource;->streamId:I

    .line 382
    move v3, v2

    const/16 v4, 0x9

    if-eq v3, v4, :cond_1

    const-string v3, "%s != TYPE_CONTINUATION"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const/4 v6, 0x0

    move v7, v2

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4}, Lokhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v3

    throw v3

    .line 383
    :cond_1
    move-object v3, v0

    iget v3, v3, Lokhttp3/internal/http2/Http2Reader$ContinuationSource;->streamId:I

    move v4, v1

    if-eq v3, v4, :cond_2

    const-string v3, "TYPE_CONTINUATION streamId changed"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lokhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v3

    throw v3

    .line 384
    :cond_2
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 372
    return-void
.end method

.method public read(Lokio/Buffer;J)J
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 353
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    :goto_0
    move-object v6, v0

    iget v6, v6, Lokhttp3/internal/http2/Http2Reader$ContinuationSource;->left:I

    if-nez v6, :cond_1

    .line 354
    move-object v6, v0

    iget-object v6, v6, Lokhttp3/internal/http2/Http2Reader$ContinuationSource;->source:Lokio/BufferedSource;

    move-object v7, v0

    iget-short v7, v7, Lokhttp3/internal/http2/Http2Reader$ContinuationSource;->padding:S

    int-to-long v7, v7

    invoke-interface {v6, v7, v8}, Lokio/BufferedSource;->skip(J)V

    .line 355
    move-object v6, v0

    const/4 v7, 0x0

    iput-short v7, v6, Lokhttp3/internal/http2/Http2Reader$ContinuationSource;->padding:S

    .line 356
    move-object v6, v0

    iget-byte v6, v6, Lokhttp3/internal/http2/Http2Reader$ContinuationSource;->flags:B

    const/4 v7, 0x4

    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_0

    const-wide/16 v6, -0x1

    move-wide v0, v6

    .line 364
    :goto_1
    return-wide v0

    .line 357
    :cond_0
    move-object v6, v0

    invoke-direct {v6}, Lokhttp3/internal/http2/Http2Reader$ContinuationSource;->readContinuationHeader()V

    goto :goto_0

    .line 361
    :cond_1
    move-object v6, v0

    iget-object v6, v6, Lokhttp3/internal/http2/Http2Reader$ContinuationSource;->source:Lokio/BufferedSource;

    move-object v7, v1

    move-wide v8, v2

    move-object v10, v0

    iget v10, v10, Lokhttp3/internal/http2/Http2Reader$ContinuationSource;->left:I

    int-to-long v10, v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    invoke-interface {v6, v7, v8, v9}, Lokio/BufferedSource;->read(Lokio/Buffer;J)J

    move-result-wide v6

    move-wide v4, v6

    .line 362
    move-wide v6, v4

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-nez v6, :cond_2

    const-wide/16 v6, -0x1

    move-wide v0, v6

    goto :goto_1

    .line 363
    :cond_2
    move-object v6, v0

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    iget v7, v7, Lokhttp3/internal/http2/Http2Reader$ContinuationSource;->left:I

    int-to-long v7, v7

    move-wide v9, v4

    sub-long/2addr v7, v9

    long-to-int v7, v7

    iput v7, v6, Lokhttp3/internal/http2/Http2Reader$ContinuationSource;->left:I

    .line 364
    move-wide v6, v4

    move-wide v0, v6

    goto :goto_1
.end method

.method public timeout()Lokio/Timeout;
    .locals 2

    .prologue
    .line 368
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/internal/http2/Http2Reader$ContinuationSource;->source:Lokio/BufferedSource;

    invoke-interface {v1}, Lokio/BufferedSource;->timeout()Lokio/Timeout;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method
