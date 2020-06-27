.class final Lokhttp3/internal/http2/Hpack$Writer;
.super Ljava/lang/Object;
.source "Hpack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/http2/Hpack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Writer"
.end annotation


# static fields
.field private static final SETTINGS_HEADER_TABLE_SIZE:I = 0x1000

.field private static final SETTINGS_HEADER_TABLE_SIZE_LIMIT:I = 0x4000


# instance fields
.field dynamicTable:[Lokhttp3/internal/http2/Header;

.field dynamicTableByteCount:I

.field private emitDynamicTableSizeUpdate:Z

.field headerCount:I

.field headerTableSizeSetting:I

.field maxDynamicTableByteCount:I

.field nextHeaderIndex:I

.field private final out:Lokio/Buffer;

.field private smallestHeaderTableSizeSetting:I

.field private final useCompression:Z


# direct methods
.method constructor <init>(IZLokio/Buffer;)V
    .locals 7

    .prologue
    .line 395
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 378
    move-object v4, v0

    const v5, 0x7fffffff

    iput v5, v4, Lokhttp3/internal/http2/Hpack$Writer;->smallestHeaderTableSizeSetting:I

    .line 385
    move-object v4, v0

    const/16 v5, 0x8

    new-array v5, v5, [Lokhttp3/internal/http2/Header;

    iput-object v5, v4, Lokhttp3/internal/http2/Hpack$Writer;->dynamicTable:[Lokhttp3/internal/http2/Header;

    .line 387
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lokhttp3/internal/http2/Hpack$Writer;->dynamicTable:[Lokhttp3/internal/http2/Header;

    array-length v5, v5

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    iput v5, v4, Lokhttp3/internal/http2/Hpack$Writer;->nextHeaderIndex:I

    .line 388
    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Lokhttp3/internal/http2/Hpack$Writer;->headerCount:I

    .line 389
    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Lokhttp3/internal/http2/Hpack$Writer;->dynamicTableByteCount:I

    .line 396
    move-object v4, v0

    move v5, v1

    iput v5, v4, Lokhttp3/internal/http2/Hpack$Writer;->headerTableSizeSetting:I

    .line 397
    move-object v4, v0

    move v5, v1

    iput v5, v4, Lokhttp3/internal/http2/Hpack$Writer;->maxDynamicTableByteCount:I

    .line 398
    move-object v4, v0

    move v5, v2

    iput-boolean v5, v4, Lokhttp3/internal/http2/Hpack$Writer;->useCompression:Z

    .line 399
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lokhttp3/internal/http2/Hpack$Writer;->out:Lokio/Buffer;

    .line 400
    return-void
.end method

.method constructor <init>(Lokio/Buffer;)V
    .locals 6

    .prologue
    .line 392
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const/16 v3, 0x1000

    const/4 v4, 0x1

    move-object v5, v1

    invoke-direct {v2, v3, v4, v5}, Lokhttp3/internal/http2/Hpack$Writer;-><init>(IZLokio/Buffer;)V

    .line 393
    return-void
.end method

.method private adjustDynamicTableByteCount()V
    .locals 4

    .prologue
    .line 576
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lokhttp3/internal/http2/Hpack$Writer;->maxDynamicTableByteCount:I

    move-object v2, v0

    iget v2, v2, Lokhttp3/internal/http2/Hpack$Writer;->dynamicTableByteCount:I

    if-ge v1, v2, :cond_0

    .line 577
    move-object v1, v0

    iget v1, v1, Lokhttp3/internal/http2/Hpack$Writer;->maxDynamicTableByteCount:I

    if-nez v1, :cond_1

    .line 578
    move-object v1, v0

    invoke-direct {v1}, Lokhttp3/internal/http2/Hpack$Writer;->clearDynamicTable()V

    .line 583
    :cond_0
    :goto_0
    return-void

    .line 580
    :cond_1
    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Lokhttp3/internal/http2/Hpack$Writer;->dynamicTableByteCount:I

    move-object v3, v0

    iget v3, v3, Lokhttp3/internal/http2/Hpack$Writer;->maxDynamicTableByteCount:I

    sub-int/2addr v2, v3

    invoke-direct {v1, v2}, Lokhttp3/internal/http2/Hpack$Writer;->evictToRecoverBytes(I)I

    move-result v1

    goto :goto_0
.end method

.method private clearDynamicTable()V
    .locals 4

    .prologue
    .line 403
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/internal/http2/Hpack$Writer;->dynamicTable:[Lokhttp3/internal/http2/Header;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 404
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lokhttp3/internal/http2/Hpack$Writer;->dynamicTable:[Lokhttp3/internal/http2/Header;

    array-length v2, v2

    const/4 v3, 0x1

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lokhttp3/internal/http2/Hpack$Writer;->nextHeaderIndex:I

    .line 405
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lokhttp3/internal/http2/Hpack$Writer;->headerCount:I

    .line 406
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lokhttp3/internal/http2/Hpack$Writer;->dynamicTableByteCount:I

    .line 407
    return-void
.end method

.method private evictToRecoverBytes(I)I
    .locals 10

    .prologue
    .line 411
    move-object v0, p0

    move v1, p1

    const/4 v4, 0x0

    move v2, v4

    .line 412
    move v4, v1

    if-lez v4, :cond_1

    .line 414
    move-object v4, v0

    iget-object v4, v4, Lokhttp3/internal/http2/Hpack$Writer;->dynamicTable:[Lokhttp3/internal/http2/Header;

    array-length v4, v4

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    move v3, v4

    :goto_0
    move v4, v3

    move-object v5, v0

    iget v5, v5, Lokhttp3/internal/http2/Hpack$Writer;->nextHeaderIndex:I

    if-lt v4, v5, :cond_0

    move v4, v1

    if-lez v4, :cond_0

    .line 415
    move v4, v1

    move-object v5, v0

    iget-object v5, v5, Lokhttp3/internal/http2/Hpack$Writer;->dynamicTable:[Lokhttp3/internal/http2/Header;

    move v6, v3

    aget-object v5, v5, v6

    iget v5, v5, Lokhttp3/internal/http2/Header;->hpackSize:I

    sub-int/2addr v4, v5

    move v1, v4

    .line 416
    move-object v4, v0

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    iget v5, v5, Lokhttp3/internal/http2/Hpack$Writer;->dynamicTableByteCount:I

    move-object v6, v0

    iget-object v6, v6, Lokhttp3/internal/http2/Hpack$Writer;->dynamicTable:[Lokhttp3/internal/http2/Header;

    move v7, v3

    aget-object v6, v6, v7

    iget v6, v6, Lokhttp3/internal/http2/Header;->hpackSize:I

    sub-int/2addr v5, v6

    iput v5, v4, Lokhttp3/internal/http2/Hpack$Writer;->dynamicTableByteCount:I

    .line 417
    move-object v4, v0

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    iget v5, v5, Lokhttp3/internal/http2/Hpack$Writer;->headerCount:I

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    iput v5, v4, Lokhttp3/internal/http2/Hpack$Writer;->headerCount:I

    .line 418
    add-int/lit8 v2, v2, 0x1

    .line 414
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 420
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lokhttp3/internal/http2/Hpack$Writer;->dynamicTable:[Lokhttp3/internal/http2/Header;

    move-object v5, v0

    iget v5, v5, Lokhttp3/internal/http2/Hpack$Writer;->nextHeaderIndex:I

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    move-object v6, v0

    iget-object v6, v6, Lokhttp3/internal/http2/Hpack$Writer;->dynamicTable:[Lokhttp3/internal/http2/Header;

    move-object v7, v0

    iget v7, v7, Lokhttp3/internal/http2/Hpack$Writer;->nextHeaderIndex:I

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    move v8, v2

    add-int/2addr v7, v8

    move-object v8, v0

    iget v8, v8, Lokhttp3/internal/http2/Hpack$Writer;->headerCount:I

    invoke-static {v4, v5, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 422
    move-object v4, v0

    iget-object v4, v4, Lokhttp3/internal/http2/Hpack$Writer;->dynamicTable:[Lokhttp3/internal/http2/Header;

    move-object v5, v0

    iget v5, v5, Lokhttp3/internal/http2/Hpack$Writer;->nextHeaderIndex:I

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    move-object v6, v0

    iget v6, v6, Lokhttp3/internal/http2/Hpack$Writer;->nextHeaderIndex:I

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    move v7, v2

    add-int/2addr v6, v7

    const/4 v7, 0x0

    invoke-static {v4, v5, v6, v7}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 423
    move-object v4, v0

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    iget v5, v5, Lokhttp3/internal/http2/Hpack$Writer;->nextHeaderIndex:I

    move v6, v2

    add-int/2addr v5, v6

    iput v5, v4, Lokhttp3/internal/http2/Hpack$Writer;->nextHeaderIndex:I

    .line 425
    :cond_1
    move v4, v2

    move v0, v4

    return v0
.end method

.method private insertIntoDynamicTable(Lokhttp3/internal/http2/Header;)V
    .locals 12

    .prologue
    .line 429
    move-object v0, p0

    move-object v1, p1

    move-object v5, v1

    iget v5, v5, Lokhttp3/internal/http2/Header;->hpackSize:I

    move v2, v5

    .line 432
    move v5, v2

    move-object v6, v0

    iget v6, v6, Lokhttp3/internal/http2/Hpack$Writer;->maxDynamicTableByteCount:I

    if-le v5, v6, :cond_0

    .line 433
    move-object v5, v0

    invoke-direct {v5}, Lokhttp3/internal/http2/Hpack$Writer;->clearDynamicTable()V

    .line 451
    :goto_0
    return-void

    .line 438
    :cond_0
    move-object v5, v0

    iget v5, v5, Lokhttp3/internal/http2/Hpack$Writer;->dynamicTableByteCount:I

    move v6, v2

    add-int/2addr v5, v6

    move-object v6, v0

    iget v6, v6, Lokhttp3/internal/http2/Hpack$Writer;->maxDynamicTableByteCount:I

    sub-int/2addr v5, v6

    move v3, v5

    .line 439
    move-object v5, v0

    move v6, v3

    invoke-direct {v5, v6}, Lokhttp3/internal/http2/Hpack$Writer;->evictToRecoverBytes(I)I

    move-result v5

    .line 441
    move-object v5, v0

    iget v5, v5, Lokhttp3/internal/http2/Hpack$Writer;->headerCount:I

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    move-object v6, v0

    iget-object v6, v6, Lokhttp3/internal/http2/Hpack$Writer;->dynamicTable:[Lokhttp3/internal/http2/Header;

    array-length v6, v6

    if-le v5, v6, :cond_1

    .line 442
    move-object v5, v0

    iget-object v5, v5, Lokhttp3/internal/http2/Hpack$Writer;->dynamicTable:[Lokhttp3/internal/http2/Header;

    array-length v5, v5

    const/4 v6, 0x2

    mul-int/lit8 v5, v5, 0x2

    new-array v5, v5, [Lokhttp3/internal/http2/Header;

    move-object v4, v5

    .line 443
    move-object v5, v0

    iget-object v5, v5, Lokhttp3/internal/http2/Hpack$Writer;->dynamicTable:[Lokhttp3/internal/http2/Header;

    const/4 v6, 0x0

    move-object v7, v4

    move-object v8, v0

    iget-object v8, v8, Lokhttp3/internal/http2/Hpack$Writer;->dynamicTable:[Lokhttp3/internal/http2/Header;

    array-length v8, v8

    move-object v9, v0

    iget-object v9, v9, Lokhttp3/internal/http2/Hpack$Writer;->dynamicTable:[Lokhttp3/internal/http2/Header;

    array-length v9, v9

    invoke-static {v5, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 444
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lokhttp3/internal/http2/Hpack$Writer;->dynamicTable:[Lokhttp3/internal/http2/Header;

    array-length v6, v6

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    iput v6, v5, Lokhttp3/internal/http2/Hpack$Writer;->nextHeaderIndex:I

    .line 445
    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Lokhttp3/internal/http2/Hpack$Writer;->dynamicTable:[Lokhttp3/internal/http2/Header;

    .line 447
    :cond_1
    move-object v5, v0

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    iget v6, v6, Lokhttp3/internal/http2/Hpack$Writer;->nextHeaderIndex:I

    move-object v10, v5

    move v11, v6

    move v5, v11

    move-object v6, v10

    move v7, v11

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    iput v7, v6, Lokhttp3/internal/http2/Hpack$Writer;->nextHeaderIndex:I

    move v4, v5

    .line 448
    move-object v5, v0

    iget-object v5, v5, Lokhttp3/internal/http2/Hpack$Writer;->dynamicTable:[Lokhttp3/internal/http2/Header;

    move v6, v4

    move-object v7, v1

    aput-object v7, v5, v6

    .line 449
    move-object v5, v0

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    iget v6, v6, Lokhttp3/internal/http2/Hpack$Writer;->headerCount:I

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lokhttp3/internal/http2/Hpack$Writer;->headerCount:I

    .line 450
    move-object v5, v0

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    iget v6, v6, Lokhttp3/internal/http2/Hpack$Writer;->dynamicTableByteCount:I

    move v7, v2

    add-int/2addr v6, v7

    iput v6, v5, Lokhttp3/internal/http2/Hpack$Writer;->dynamicTableByteCount:I

    .line 451
    goto :goto_0
.end method


# virtual methods
.method setHeaderTableSizeSetting(I)V
    .locals 6

    .prologue
    .line 560
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    move v4, v1

    iput v4, v3, Lokhttp3/internal/http2/Hpack$Writer;->headerTableSizeSetting:I

    .line 561
    move v3, v1

    const/16 v4, 0x4000

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    move v2, v3

    .line 564
    move-object v3, v0

    iget v3, v3, Lokhttp3/internal/http2/Hpack$Writer;->maxDynamicTableByteCount:I

    move v4, v2

    if-ne v3, v4, :cond_0

    .line 573
    :goto_0
    return-void

    .line 566
    :cond_0
    move v3, v2

    move-object v4, v0

    iget v4, v4, Lokhttp3/internal/http2/Hpack$Writer;->maxDynamicTableByteCount:I

    if-ge v3, v4, :cond_1

    .line 567
    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Lokhttp3/internal/http2/Hpack$Writer;->smallestHeaderTableSizeSetting:I

    move v5, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, v3, Lokhttp3/internal/http2/Hpack$Writer;->smallestHeaderTableSizeSetting:I

    .line 570
    :cond_1
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lokhttp3/internal/http2/Hpack$Writer;->emitDynamicTableSizeUpdate:Z

    .line 571
    move-object v3, v0

    move v4, v2

    iput v4, v3, Lokhttp3/internal/http2/Hpack$Writer;->maxDynamicTableByteCount:I

    .line 572
    move-object v3, v0

    invoke-direct {v3}, Lokhttp3/internal/http2/Hpack$Writer;->adjustDynamicTableByteCount()V

    .line 573
    goto :goto_0
.end method

.method writeByteString(Lokio/ByteString;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 547
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    iget-boolean v4, v4, Lokhttp3/internal/http2/Hpack$Writer;->useCompression:Z

    if-eqz v4, :cond_0

    invoke-static {}, Lokhttp3/internal/http2/Huffman;->get()Lokhttp3/internal/http2/Huffman;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v4, v5}, Lokhttp3/internal/http2/Huffman;->encodedLength(Lokio/ByteString;)I

    move-result v4

    move-object v5, v1

    invoke-virtual {v5}, Lokio/ByteString;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 548
    new-instance v4, Lokio/Buffer;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Lokio/Buffer;-><init>()V

    move-object v2, v4

    .line 549
    invoke-static {}, Lokhttp3/internal/http2/Huffman;->get()Lokhttp3/internal/http2/Huffman;

    move-result-object v4

    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Lokhttp3/internal/http2/Huffman;->encode(Lokio/ByteString;Lokio/BufferedSink;)V

    .line 550
    move-object v4, v2

    invoke-virtual {v4}, Lokio/Buffer;->readByteString()Lokio/ByteString;

    move-result-object v4

    move-object v3, v4

    .line 551
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v5}, Lokio/ByteString;->size()I

    move-result v5

    const/16 v6, 0x7f

    const/16 v7, 0x80

    invoke-virtual {v4, v5, v6, v7}, Lokhttp3/internal/http2/Hpack$Writer;->writeInt(III)V

    .line 552
    move-object v4, v0

    iget-object v4, v4, Lokhttp3/internal/http2/Hpack$Writer;->out:Lokio/Buffer;

    move-object v5, v3

    invoke-virtual {v4, v5}, Lokio/Buffer;->write(Lokio/ByteString;)Lokio/Buffer;

    move-result-object v4

    .line 557
    :goto_0
    return-void

    .line 554
    :cond_0
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v5}, Lokio/ByteString;->size()I

    move-result v5

    const/16 v6, 0x7f

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lokhttp3/internal/http2/Hpack$Writer;->writeInt(III)V

    .line 555
    move-object v4, v0

    iget-object v4, v4, Lokhttp3/internal/http2/Hpack$Writer;->out:Lokio/Buffer;

    move-object v5, v1

    invoke-virtual {v4, v5}, Lokio/Buffer;->write(Lokio/ByteString;)Lokio/Buffer;

    move-result-object v4

    goto :goto_0
.end method

.method writeHeaders(Ljava/util/List;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/http2/Header;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 456
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v12, v0

    iget-boolean v12, v12, Lokhttp3/internal/http2/Hpack$Writer;->emitDynamicTableSizeUpdate:Z

    if-eqz v12, :cond_1

    .line 457
    move-object v12, v0

    iget v12, v12, Lokhttp3/internal/http2/Hpack$Writer;->smallestHeaderTableSizeSetting:I

    move-object v13, v0

    iget v13, v13, Lokhttp3/internal/http2/Hpack$Writer;->maxDynamicTableByteCount:I

    if-ge v12, v13, :cond_0

    .line 459
    move-object v12, v0

    move-object v13, v0

    iget v13, v13, Lokhttp3/internal/http2/Hpack$Writer;->smallestHeaderTableSizeSetting:I

    const/16 v14, 0x1f

    const/16 v15, 0x20

    invoke-virtual {v12, v13, v14, v15}, Lokhttp3/internal/http2/Hpack$Writer;->writeInt(III)V

    .line 461
    :cond_0
    move-object v12, v0

    const/4 v13, 0x0

    iput-boolean v13, v12, Lokhttp3/internal/http2/Hpack$Writer;->emitDynamicTableSizeUpdate:Z

    .line 462
    move-object v12, v0

    const v13, 0x7fffffff

    iput v13, v12, Lokhttp3/internal/http2/Hpack$Writer;->smallestHeaderTableSizeSetting:I

    .line 463
    move-object v12, v0

    move-object v13, v0

    iget v13, v13, Lokhttp3/internal/http2/Hpack$Writer;->maxDynamicTableByteCount:I

    const/16 v14, 0x1f

    const/16 v15, 0x20

    invoke-virtual {v12, v13, v14, v15}, Lokhttp3/internal/http2/Hpack$Writer;->writeInt(III)V

    .line 466
    :cond_1
    const/4 v12, 0x0

    move v2, v12

    move-object v12, v1

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    move v3, v12

    :goto_0
    move v12, v2

    move v13, v3

    if-ge v12, v13, :cond_a

    .line 467
    move-object v12, v1

    move v13, v2

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lokhttp3/internal/http2/Header;

    move-object v4, v12

    .line 468
    move-object v12, v4

    iget-object v12, v12, Lokhttp3/internal/http2/Header;->name:Lokio/ByteString;

    invoke-virtual {v12}, Lokio/ByteString;->toAsciiLowercase()Lokio/ByteString;

    move-result-object v12

    move-object v5, v12

    .line 469
    move-object v12, v4

    iget-object v12, v12, Lokhttp3/internal/http2/Header;->value:Lokio/ByteString;

    move-object v6, v12

    .line 470
    const/4 v12, -0x1

    move v7, v12

    .line 471
    const/4 v12, -0x1

    move v8, v12

    .line 473
    sget-object v12, Lokhttp3/internal/http2/Hpack;->NAME_TO_FIRST_INDEX:Ljava/util/Map;

    move-object v13, v5

    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    move-object v9, v12

    .line 474
    move-object v12, v9

    if-eqz v12, :cond_2

    .line 475
    move-object v12, v9

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    const/4 v13, 0x1

    add-int/lit8 v12, v12, 0x1

    move v8, v12

    .line 476
    move v12, v8

    const/4 v13, 0x1

    if-le v12, v13, :cond_2

    move v12, v8

    const/16 v13, 0x8

    if-ge v12, v13, :cond_2

    .line 481
    sget-object v12, Lokhttp3/internal/http2/Hpack;->STATIC_HEADER_TABLE:[Lokhttp3/internal/http2/Header;

    move v13, v8

    const/4 v14, 0x1

    add-int/lit8 v13, v13, -0x1

    aget-object v12, v12, v13

    iget-object v12, v12, Lokhttp3/internal/http2/Header;->value:Lokio/ByteString;

    move-object v13, v6

    invoke-static {v12, v13}, Lokhttp3/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 482
    move v12, v8

    move v7, v12

    .line 489
    :cond_2
    :goto_1
    move v12, v7

    const/4 v13, -0x1

    if-ne v12, v13, :cond_3

    .line 490
    move-object v12, v0

    iget v12, v12, Lokhttp3/internal/http2/Hpack$Writer;->nextHeaderIndex:I

    const/4 v13, 0x1

    add-int/lit8 v12, v12, 0x1

    move v10, v12

    move-object v12, v0

    iget-object v12, v12, Lokhttp3/internal/http2/Hpack$Writer;->dynamicTable:[Lokhttp3/internal/http2/Header;

    array-length v12, v12

    move v11, v12

    :goto_2
    move v12, v10

    move v13, v11

    if-ge v12, v13, :cond_3

    .line 491
    move-object v12, v0

    iget-object v12, v12, Lokhttp3/internal/http2/Hpack$Writer;->dynamicTable:[Lokhttp3/internal/http2/Header;

    move v13, v10

    aget-object v12, v12, v13

    iget-object v12, v12, Lokhttp3/internal/http2/Header;->name:Lokio/ByteString;

    move-object v13, v5

    invoke-static {v12, v13}, Lokhttp3/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 492
    move-object v12, v0

    iget-object v12, v12, Lokhttp3/internal/http2/Hpack$Writer;->dynamicTable:[Lokhttp3/internal/http2/Header;

    move v13, v10

    aget-object v12, v12, v13

    iget-object v12, v12, Lokhttp3/internal/http2/Header;->value:Lokio/ByteString;

    move-object v13, v6

    invoke-static {v12, v13}, Lokhttp3/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 493
    move v12, v10

    move-object v13, v0

    iget v13, v13, Lokhttp3/internal/http2/Hpack$Writer;->nextHeaderIndex:I

    sub-int/2addr v12, v13

    sget-object v13, Lokhttp3/internal/http2/Hpack;->STATIC_HEADER_TABLE:[Lokhttp3/internal/http2/Header;

    array-length v13, v13

    add-int/2addr v12, v13

    move v7, v12

    .line 502
    :cond_3
    move v12, v7

    const/4 v13, -0x1

    if-eq v12, v13, :cond_7

    .line 504
    move-object v12, v0

    move v13, v7

    const/16 v14, 0x7f

    const/16 v15, 0x80

    invoke-virtual {v12, v13, v14, v15}, Lokhttp3/internal/http2/Hpack$Writer;->writeInt(III)V

    .line 466
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 483
    :cond_4
    sget-object v12, Lokhttp3/internal/http2/Hpack;->STATIC_HEADER_TABLE:[Lokhttp3/internal/http2/Header;

    move v13, v8

    aget-object v12, v12, v13

    iget-object v12, v12, Lokhttp3/internal/http2/Header;->value:Lokio/ByteString;

    move-object v13, v6

    invoke-static {v12, v13}, Lokhttp3/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 484
    move v12, v8

    const/4 v13, 0x1

    add-int/lit8 v12, v12, 0x1

    move v7, v12

    goto :goto_1

    .line 495
    :cond_5
    move v12, v8

    const/4 v13, -0x1

    if-ne v12, v13, :cond_6

    .line 496
    move v12, v10

    move-object v13, v0

    iget v13, v13, Lokhttp3/internal/http2/Hpack$Writer;->nextHeaderIndex:I

    sub-int/2addr v12, v13

    sget-object v13, Lokhttp3/internal/http2/Hpack;->STATIC_HEADER_TABLE:[Lokhttp3/internal/http2/Header;

    array-length v13, v13

    add-int/2addr v12, v13

    move v8, v12

    .line 490
    :cond_6
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 505
    :cond_7
    move v12, v8

    const/4 v13, -0x1

    if-ne v12, v13, :cond_8

    .line 507
    move-object v12, v0

    iget-object v12, v12, Lokhttp3/internal/http2/Hpack$Writer;->out:Lokio/Buffer;

    const/16 v13, 0x40

    invoke-virtual {v12, v13}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    move-result-object v12

    .line 508
    move-object v12, v0

    move-object v13, v5

    invoke-virtual {v12, v13}, Lokhttp3/internal/http2/Hpack$Writer;->writeByteString(Lokio/ByteString;)V

    .line 509
    move-object v12, v0

    move-object v13, v6

    invoke-virtual {v12, v13}, Lokhttp3/internal/http2/Hpack$Writer;->writeByteString(Lokio/ByteString;)V

    .line 510
    move-object v12, v0

    move-object v13, v4

    invoke-direct {v12, v13}, Lokhttp3/internal/http2/Hpack$Writer;->insertIntoDynamicTable(Lokhttp3/internal/http2/Header;)V

    goto :goto_3

    .line 511
    :cond_8
    move-object v12, v5

    sget-object v13, Lokhttp3/internal/http2/Header;->PSEUDO_PREFIX:Lokio/ByteString;

    invoke-virtual {v12, v13}, Lokio/ByteString;->startsWith(Lokio/ByteString;)Z

    move-result v12

    if-eqz v12, :cond_9

    sget-object v12, Lokhttp3/internal/http2/Header;->TARGET_AUTHORITY:Lokio/ByteString;

    move-object v13, v5

    invoke-virtual {v12, v13}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_9

    .line 514
    move-object v12, v0

    move v13, v8

    const/16 v14, 0xf

    const/4 v15, 0x0

    invoke-virtual {v12, v13, v14, v15}, Lokhttp3/internal/http2/Hpack$Writer;->writeInt(III)V

    .line 515
    move-object v12, v0

    move-object v13, v6

    invoke-virtual {v12, v13}, Lokhttp3/internal/http2/Hpack$Writer;->writeByteString(Lokio/ByteString;)V

    goto :goto_3

    .line 518
    :cond_9
    move-object v12, v0

    move v13, v8

    const/16 v14, 0x3f

    const/16 v15, 0x40

    invoke-virtual {v12, v13, v14, v15}, Lokhttp3/internal/http2/Hpack$Writer;->writeInt(III)V

    .line 519
    move-object v12, v0

    move-object v13, v6

    invoke-virtual {v12, v13}, Lokhttp3/internal/http2/Hpack$Writer;->writeByteString(Lokio/ByteString;)V

    .line 520
    move-object v12, v0

    move-object v13, v4

    invoke-direct {v12, v13}, Lokhttp3/internal/http2/Hpack$Writer;->insertIntoDynamicTable(Lokhttp3/internal/http2/Header;)V

    goto :goto_3

    .line 523
    :cond_a
    return-void
.end method

.method writeInt(III)V
    .locals 8

    .prologue
    .line 528
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, v1

    move v6, v2

    if-ge v5, v6, :cond_0

    .line 529
    move-object v5, v0

    iget-object v5, v5, Lokhttp3/internal/http2/Hpack$Writer;->out:Lokio/Buffer;

    move v6, v3

    move v7, v1

    or-int/2addr v6, v7

    invoke-virtual {v5, v6}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    move-result-object v5

    .line 544
    :goto_0
    return-void

    .line 534
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Lokhttp3/internal/http2/Hpack$Writer;->out:Lokio/Buffer;

    move v6, v3

    move v7, v2

    or-int/2addr v6, v7

    invoke-virtual {v5, v6}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    move-result-object v5

    .line 535
    move v5, v1

    move v6, v2

    sub-int/2addr v5, v6

    move v1, v5

    .line 538
    :goto_1
    move v5, v1

    const/16 v6, 0x80

    if-lt v5, v6, :cond_1

    .line 539
    move v5, v1

    const/16 v6, 0x7f

    and-int/lit8 v5, v5, 0x7f

    move v4, v5

    .line 540
    move-object v5, v0

    iget-object v5, v5, Lokhttp3/internal/http2/Hpack$Writer;->out:Lokio/Buffer;

    move v6, v4

    const/16 v7, 0x80

    or-int/lit16 v6, v6, 0x80

    invoke-virtual {v5, v6}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    move-result-object v5

    .line 541
    move v5, v1

    const/4 v6, 0x7

    ushr-int/lit8 v5, v5, 0x7

    move v1, v5

    .line 542
    goto :goto_1

    .line 543
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Lokhttp3/internal/http2/Hpack$Writer;->out:Lokio/Buffer;

    move v6, v1

    invoke-virtual {v5, v6}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    move-result-object v5

    .line 544
    goto :goto_0
.end method
