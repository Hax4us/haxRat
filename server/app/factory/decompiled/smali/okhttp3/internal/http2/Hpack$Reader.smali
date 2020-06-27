.class final Lokhttp3/internal/http2/Hpack$Reader;
.super Ljava/lang/Object;
.source "Hpack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/http2/Hpack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Reader"
.end annotation


# instance fields
.field dynamicTable:[Lokhttp3/internal/http2/Header;

.field dynamicTableByteCount:I

.field headerCount:I

.field private final headerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/http2/Header;",
            ">;"
        }
    .end annotation
.end field

.field private final headerTableSizeSetting:I

.field private maxDynamicTableByteCount:I

.field nextHeaderIndex:I

.field private final source:Lokio/BufferedSource;


# direct methods
.method constructor <init>(IILokio/Source;)V
    .locals 8

    .prologue
    .line 134
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 117
    move-object v4, v0

    new-instance v5, Ljava/util/ArrayList;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v4, Lokhttp3/internal/http2/Hpack$Reader;->headerList:Ljava/util/List;

    .line 124
    move-object v4, v0

    const/16 v5, 0x8

    new-array v5, v5, [Lokhttp3/internal/http2/Header;

    iput-object v5, v4, Lokhttp3/internal/http2/Hpack$Reader;->dynamicTable:[Lokhttp3/internal/http2/Header;

    .line 126
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lokhttp3/internal/http2/Hpack$Reader;->dynamicTable:[Lokhttp3/internal/http2/Header;

    array-length v5, v5

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    iput v5, v4, Lokhttp3/internal/http2/Hpack$Reader;->nextHeaderIndex:I

    .line 127
    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Lokhttp3/internal/http2/Hpack$Reader;->headerCount:I

    .line 128
    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Lokhttp3/internal/http2/Hpack$Reader;->dynamicTableByteCount:I

    .line 135
    move-object v4, v0

    move v5, v1

    iput v5, v4, Lokhttp3/internal/http2/Hpack$Reader;->headerTableSizeSetting:I

    .line 136
    move-object v4, v0

    move v5, v2

    iput v5, v4, Lokhttp3/internal/http2/Hpack$Reader;->maxDynamicTableByteCount:I

    .line 137
    move-object v4, v0

    move-object v5, v3

    invoke-static {v5}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v5

    iput-object v5, v4, Lokhttp3/internal/http2/Hpack$Reader;->source:Lokio/BufferedSource;

    .line 138
    return-void
.end method

.method constructor <init>(ILokio/Source;)V
    .locals 7

    .prologue
    .line 131
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, v0

    move v4, v1

    move v5, v1

    move-object v6, v2

    invoke-direct {v3, v4, v5, v6}, Lokhttp3/internal/http2/Hpack$Reader;-><init>(IILokio/Source;)V

    .line 132
    return-void
.end method

.method private adjustDynamicTableByteCount()V
    .locals 4

    .prologue
    .line 145
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lokhttp3/internal/http2/Hpack$Reader;->maxDynamicTableByteCount:I

    move-object v2, v0

    iget v2, v2, Lokhttp3/internal/http2/Hpack$Reader;->dynamicTableByteCount:I

    if-ge v1, v2, :cond_0

    .line 146
    move-object v1, v0

    iget v1, v1, Lokhttp3/internal/http2/Hpack$Reader;->maxDynamicTableByteCount:I

    if-nez v1, :cond_1

    .line 147
    move-object v1, v0

    invoke-direct {v1}, Lokhttp3/internal/http2/Hpack$Reader;->clearDynamicTable()V

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Lokhttp3/internal/http2/Hpack$Reader;->dynamicTableByteCount:I

    move-object v3, v0

    iget v3, v3, Lokhttp3/internal/http2/Hpack$Reader;->maxDynamicTableByteCount:I

    sub-int/2addr v2, v3

    invoke-direct {v1, v2}, Lokhttp3/internal/http2/Hpack$Reader;->evictToRecoverBytes(I)I

    move-result v1

    goto :goto_0
.end method

.method private clearDynamicTable()V
    .locals 4

    .prologue
    .line 155
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/internal/http2/Hpack$Reader;->dynamicTable:[Lokhttp3/internal/http2/Header;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 156
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lokhttp3/internal/http2/Hpack$Reader;->dynamicTable:[Lokhttp3/internal/http2/Header;

    array-length v2, v2

    const/4 v3, 0x1

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lokhttp3/internal/http2/Hpack$Reader;->nextHeaderIndex:I

    .line 157
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lokhttp3/internal/http2/Hpack$Reader;->headerCount:I

    .line 158
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lokhttp3/internal/http2/Hpack$Reader;->dynamicTableByteCount:I

    .line 159
    return-void
.end method

.method private dynamicTableIndex(I)I
    .locals 4

    .prologue
    .line 233
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget v2, v2, Lokhttp3/internal/http2/Hpack$Reader;->nextHeaderIndex:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, 0x1

    move v3, v1

    add-int/2addr v2, v3

    move v0, v2

    return v0
.end method

.method private evictToRecoverBytes(I)I
    .locals 10

    .prologue
    .line 163
    move-object v0, p0

    move v1, p1

    const/4 v4, 0x0

    move v2, v4

    .line 164
    move v4, v1

    if-lez v4, :cond_1

    .line 166
    move-object v4, v0

    iget-object v4, v4, Lokhttp3/internal/http2/Hpack$Reader;->dynamicTable:[Lokhttp3/internal/http2/Header;

    array-length v4, v4

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    move v3, v4

    :goto_0
    move v4, v3

    move-object v5, v0

    iget v5, v5, Lokhttp3/internal/http2/Hpack$Reader;->nextHeaderIndex:I

    if-lt v4, v5, :cond_0

    move v4, v1

    if-lez v4, :cond_0

    .line 167
    move v4, v1

    move-object v5, v0

    iget-object v5, v5, Lokhttp3/internal/http2/Hpack$Reader;->dynamicTable:[Lokhttp3/internal/http2/Header;

    move v6, v3

    aget-object v5, v5, v6

    iget v5, v5, Lokhttp3/internal/http2/Header;->hpackSize:I

    sub-int/2addr v4, v5

    move v1, v4

    .line 168
    move-object v4, v0

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    iget v5, v5, Lokhttp3/internal/http2/Hpack$Reader;->dynamicTableByteCount:I

    move-object v6, v0

    iget-object v6, v6, Lokhttp3/internal/http2/Hpack$Reader;->dynamicTable:[Lokhttp3/internal/http2/Header;

    move v7, v3

    aget-object v6, v6, v7

    iget v6, v6, Lokhttp3/internal/http2/Header;->hpackSize:I

    sub-int/2addr v5, v6

    iput v5, v4, Lokhttp3/internal/http2/Hpack$Reader;->dynamicTableByteCount:I

    .line 169
    move-object v4, v0

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    iget v5, v5, Lokhttp3/internal/http2/Hpack$Reader;->headerCount:I

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    iput v5, v4, Lokhttp3/internal/http2/Hpack$Reader;->headerCount:I

    .line 170
    add-int/lit8 v2, v2, 0x1

    .line 166
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 172
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lokhttp3/internal/http2/Hpack$Reader;->dynamicTable:[Lokhttp3/internal/http2/Header;

    move-object v5, v0

    iget v5, v5, Lokhttp3/internal/http2/Hpack$Reader;->nextHeaderIndex:I

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    move-object v6, v0

    iget-object v6, v6, Lokhttp3/internal/http2/Hpack$Reader;->dynamicTable:[Lokhttp3/internal/http2/Header;

    move-object v7, v0

    iget v7, v7, Lokhttp3/internal/http2/Hpack$Reader;->nextHeaderIndex:I

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    move v8, v2

    add-int/2addr v7, v8

    move-object v8, v0

    iget v8, v8, Lokhttp3/internal/http2/Hpack$Reader;->headerCount:I

    invoke-static {v4, v5, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 174
    move-object v4, v0

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    iget v5, v5, Lokhttp3/internal/http2/Hpack$Reader;->nextHeaderIndex:I

    move v6, v2

    add-int/2addr v5, v6

    iput v5, v4, Lokhttp3/internal/http2/Hpack$Reader;->nextHeaderIndex:I

    .line 176
    :cond_1
    move v4, v2

    move v0, v4

    return v0
.end method

.method private getName(I)Lokio/ByteString;
    .locals 6

    .prologue
    .line 262
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Lokhttp3/internal/http2/Hpack$Reader;->isStaticHeader(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 263
    sget-object v2, Lokhttp3/internal/http2/Hpack;->STATIC_HEADER_TABLE:[Lokhttp3/internal/http2/Header;

    move v3, v1

    aget-object v2, v2, v3

    iget-object v2, v2, Lokhttp3/internal/http2/Header;->name:Lokio/ByteString;

    move-object v0, v2

    .line 265
    :goto_0
    return-object v0

    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lokhttp3/internal/http2/Hpack$Reader;->dynamicTable:[Lokhttp3/internal/http2/Header;

    move-object v3, v0

    move v4, v1

    sget-object v5, Lokhttp3/internal/http2/Hpack;->STATIC_HEADER_TABLE:[Lokhttp3/internal/http2/Header;

    array-length v5, v5

    sub-int/2addr v4, v5

    invoke-direct {v3, v4}, Lokhttp3/internal/http2/Hpack$Reader;->dynamicTableIndex(I)I

    move-result v3

    aget-object v2, v2, v3

    iget-object v2, v2, Lokhttp3/internal/http2/Header;->name:Lokio/ByteString;

    move-object v0, v2

    goto :goto_0
.end method

.method private insertIntoDynamicTable(ILokhttp3/internal/http2/Header;)V
    .locals 14

    .prologue
    .line 275
    move-object v0, p0

    move v1, p1

    move-object/from16 v2, p2

    move-object v7, v0

    iget-object v7, v7, Lokhttp3/internal/http2/Hpack$Reader;->headerList:Ljava/util/List;

    move-object v8, v2

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v7

    .line 277
    move-object v7, v2

    iget v7, v7, Lokhttp3/internal/http2/Header;->hpackSize:I

    move v3, v7

    .line 278
    move v7, v1

    const/4 v8, -0x1

    if-eq v7, v8, :cond_0

    .line 279
    move v7, v3

    move-object v8, v0

    iget-object v8, v8, Lokhttp3/internal/http2/Hpack$Reader;->dynamicTable:[Lokhttp3/internal/http2/Header;

    move-object v9, v0

    move v10, v1

    invoke-direct {v9, v10}, Lokhttp3/internal/http2/Hpack$Reader;->dynamicTableIndex(I)I

    move-result v9

    aget-object v8, v8, v9

    iget v8, v8, Lokhttp3/internal/http2/Header;->hpackSize:I

    sub-int/2addr v7, v8

    move v3, v7

    .line 283
    :cond_0
    move v7, v3

    move-object v8, v0

    iget v8, v8, Lokhttp3/internal/http2/Hpack$Reader;->maxDynamicTableByteCount:I

    if-le v7, v8, :cond_1

    .line 284
    move-object v7, v0

    invoke-direct {v7}, Lokhttp3/internal/http2/Hpack$Reader;->clearDynamicTable()V

    .line 307
    :goto_0
    return-void

    .line 289
    :cond_1
    move-object v7, v0

    iget v7, v7, Lokhttp3/internal/http2/Hpack$Reader;->dynamicTableByteCount:I

    move v8, v3

    add-int/2addr v7, v8

    move-object v8, v0

    iget v8, v8, Lokhttp3/internal/http2/Hpack$Reader;->maxDynamicTableByteCount:I

    sub-int/2addr v7, v8

    move v4, v7

    .line 290
    move-object v7, v0

    move v8, v4

    invoke-direct {v7, v8}, Lokhttp3/internal/http2/Hpack$Reader;->evictToRecoverBytes(I)I

    move-result v7

    move v5, v7

    .line 292
    move v7, v1

    const/4 v8, -0x1

    if-ne v7, v8, :cond_3

    .line 293
    move-object v7, v0

    iget v7, v7, Lokhttp3/internal/http2/Hpack$Reader;->headerCount:I

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    move-object v8, v0

    iget-object v8, v8, Lokhttp3/internal/http2/Hpack$Reader;->dynamicTable:[Lokhttp3/internal/http2/Header;

    array-length v8, v8

    if-le v7, v8, :cond_2

    .line 294
    move-object v7, v0

    iget-object v7, v7, Lokhttp3/internal/http2/Hpack$Reader;->dynamicTable:[Lokhttp3/internal/http2/Header;

    array-length v7, v7

    const/4 v8, 0x2

    mul-int/lit8 v7, v7, 0x2

    new-array v7, v7, [Lokhttp3/internal/http2/Header;

    move-object v6, v7

    .line 295
    move-object v7, v0

    iget-object v7, v7, Lokhttp3/internal/http2/Hpack$Reader;->dynamicTable:[Lokhttp3/internal/http2/Header;

    const/4 v8, 0x0

    move-object v9, v6

    move-object v10, v0

    iget-object v10, v10, Lokhttp3/internal/http2/Hpack$Reader;->dynamicTable:[Lokhttp3/internal/http2/Header;

    array-length v10, v10

    move-object v11, v0

    iget-object v11, v11, Lokhttp3/internal/http2/Hpack$Reader;->dynamicTable:[Lokhttp3/internal/http2/Header;

    array-length v11, v11

    invoke-static {v7, v8, v9, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 296
    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Lokhttp3/internal/http2/Hpack$Reader;->dynamicTable:[Lokhttp3/internal/http2/Header;

    array-length v8, v8

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    iput v8, v7, Lokhttp3/internal/http2/Hpack$Reader;->nextHeaderIndex:I

    .line 297
    move-object v7, v0

    move-object v8, v6

    iput-object v8, v7, Lokhttp3/internal/http2/Hpack$Reader;->dynamicTable:[Lokhttp3/internal/http2/Header;

    .line 299
    :cond_2
    move-object v7, v0

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    iget v8, v8, Lokhttp3/internal/http2/Hpack$Reader;->nextHeaderIndex:I

    move-object v12, v7

    move v13, v8

    move v7, v13

    move-object v8, v12

    move v9, v13

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    iput v9, v8, Lokhttp3/internal/http2/Hpack$Reader;->nextHeaderIndex:I

    move v1, v7

    .line 300
    move-object v7, v0

    iget-object v7, v7, Lokhttp3/internal/http2/Hpack$Reader;->dynamicTable:[Lokhttp3/internal/http2/Header;

    move v8, v1

    move-object v9, v2

    aput-object v9, v7, v8

    .line 301
    move-object v7, v0

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    iget v8, v8, Lokhttp3/internal/http2/Hpack$Reader;->headerCount:I

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    iput v8, v7, Lokhttp3/internal/http2/Hpack$Reader;->headerCount:I

    .line 306
    :goto_1
    move-object v7, v0

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    iget v8, v8, Lokhttp3/internal/http2/Hpack$Reader;->dynamicTableByteCount:I

    move v9, v3

    add-int/2addr v8, v9

    iput v8, v7, Lokhttp3/internal/http2/Hpack$Reader;->dynamicTableByteCount:I

    .line 307
    goto :goto_0

    .line 303
    :cond_3
    move v7, v1

    move-object v8, v0

    move v9, v1

    invoke-direct {v8, v9}, Lokhttp3/internal/http2/Hpack$Reader;->dynamicTableIndex(I)I

    move-result v8

    move v9, v5

    add-int/2addr v8, v9

    add-int/2addr v7, v8

    move v1, v7

    .line 304
    move-object v7, v0

    iget-object v7, v7, Lokhttp3/internal/http2/Hpack$Reader;->dynamicTable:[Lokhttp3/internal/http2/Header;

    move v8, v1

    move-object v9, v2

    aput-object v9, v7, v8

    goto :goto_1
.end method

.method private isStaticHeader(I)Z
    .locals 5

    .prologue
    .line 270
    move-object v0, p0

    move v1, p1

    move v2, v1

    if-ltz v2, :cond_0

    move v2, v1

    sget-object v3, Lokhttp3/internal/http2/Hpack;->STATIC_HEADER_TABLE:[Lokhttp3/internal/http2/Header;

    array-length v3, v3

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    if-gt v2, v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    return v0

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private readByte()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 310
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/internal/http2/Hpack$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v1}, Lokio/BufferedSource;->readByte()B

    move-result v1

    const/16 v2, 0xff

    and-int/lit16 v1, v1, 0xff

    move v0, v1

    return v0
.end method

.method private readIndexedHeader(I)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 219
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    move v4, v1

    invoke-direct {v3, v4}, Lokhttp3/internal/http2/Hpack$Reader;->isStaticHeader(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 220
    sget-object v3, Lokhttp3/internal/http2/Hpack;->STATIC_HEADER_TABLE:[Lokhttp3/internal/http2/Header;

    move v4, v1

    aget-object v3, v3, v4

    move-object v2, v3

    .line 221
    move-object v3, v0

    iget-object v3, v3, Lokhttp3/internal/http2/Hpack$Reader;->headerList:Ljava/util/List;

    move-object v4, v2

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 229
    :goto_0
    return-void

    .line 223
    :cond_0
    move-object v3, v0

    move v4, v1

    sget-object v5, Lokhttp3/internal/http2/Hpack;->STATIC_HEADER_TABLE:[Lokhttp3/internal/http2/Header;

    array-length v5, v5

    sub-int/2addr v4, v5

    invoke-direct {v3, v4}, Lokhttp3/internal/http2/Hpack$Reader;->dynamicTableIndex(I)I

    move-result v3

    move v2, v3

    .line 224
    move v3, v2

    if-ltz v3, :cond_1

    move v3, v2

    move-object v4, v0

    iget-object v4, v4, Lokhttp3/internal/http2/Hpack$Reader;->dynamicTable:[Lokhttp3/internal/http2/Header;

    array-length v4, v4

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    if-le v3, v4, :cond_2

    .line 225
    :cond_1
    new-instance v3, Ljava/io/IOException;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Header index too large "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move v6, v1

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 227
    :cond_2
    move-object v3, v0

    iget-object v3, v3, Lokhttp3/internal/http2/Hpack$Reader;->headerList:Ljava/util/List;

    move-object v4, v0

    iget-object v4, v4, Lokhttp3/internal/http2/Hpack$Reader;->dynamicTable:[Lokhttp3/internal/http2/Header;

    move v5, v2

    aget-object v4, v4, v5

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_0
.end method

.method private readLiteralHeaderWithIncrementalIndexingIndexedName(I)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 250
    move-object v0, p0

    move v1, p1

    move-object v4, v0

    move v5, v1

    invoke-direct {v4, v5}, Lokhttp3/internal/http2/Hpack$Reader;->getName(I)Lokio/ByteString;

    move-result-object v4

    move-object v2, v4

    .line 251
    move-object v4, v0

    invoke-virtual {v4}, Lokhttp3/internal/http2/Hpack$Reader;->readByteString()Lokio/ByteString;

    move-result-object v4

    move-object v3, v4

    .line 252
    move-object v4, v0

    const/4 v5, -0x1

    new-instance v6, Lokhttp3/internal/http2/Header;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v2

    move-object v9, v3

    invoke-direct {v7, v8, v9}, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Lokio/ByteString;)V

    invoke-direct {v4, v5, v6}, Lokhttp3/internal/http2/Hpack$Reader;->insertIntoDynamicTable(ILokhttp3/internal/http2/Header;)V

    .line 253
    return-void
.end method

.method private readLiteralHeaderWithIncrementalIndexingNewName()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 256
    move-object v0, p0

    move-object v3, v0

    invoke-virtual {v3}, Lokhttp3/internal/http2/Hpack$Reader;->readByteString()Lokio/ByteString;

    move-result-object v3

    invoke-static {v3}, Lokhttp3/internal/http2/Hpack;->checkLowercase(Lokio/ByteString;)Lokio/ByteString;

    move-result-object v3

    move-object v1, v3

    .line 257
    move-object v3, v0

    invoke-virtual {v3}, Lokhttp3/internal/http2/Hpack$Reader;->readByteString()Lokio/ByteString;

    move-result-object v3

    move-object v2, v3

    .line 258
    move-object v3, v0

    const/4 v4, -0x1

    new-instance v5, Lokhttp3/internal/http2/Header;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v1

    move-object v8, v2

    invoke-direct {v6, v7, v8}, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Lokio/ByteString;)V

    invoke-direct {v3, v4, v5}, Lokhttp3/internal/http2/Hpack$Reader;->insertIntoDynamicTable(ILokhttp3/internal/http2/Header;)V

    .line 259
    return-void
.end method

.method private readLiteralHeaderWithoutIndexingIndexedName(I)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 237
    move-object v0, p0

    move v1, p1

    move-object v4, v0

    move v5, v1

    invoke-direct {v4, v5}, Lokhttp3/internal/http2/Hpack$Reader;->getName(I)Lokio/ByteString;

    move-result-object v4

    move-object v2, v4

    .line 238
    move-object v4, v0

    invoke-virtual {v4}, Lokhttp3/internal/http2/Hpack$Reader;->readByteString()Lokio/ByteString;

    move-result-object v4

    move-object v3, v4

    .line 239
    move-object v4, v0

    iget-object v4, v4, Lokhttp3/internal/http2/Hpack$Reader;->headerList:Ljava/util/List;

    new-instance v5, Lokhttp3/internal/http2/Header;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v2

    move-object v8, v3

    invoke-direct {v6, v7, v8}, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Lokio/ByteString;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 240
    return-void
.end method

.method private readLiteralHeaderWithoutIndexingNewName()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 243
    move-object v0, p0

    move-object v3, v0

    invoke-virtual {v3}, Lokhttp3/internal/http2/Hpack$Reader;->readByteString()Lokio/ByteString;

    move-result-object v3

    invoke-static {v3}, Lokhttp3/internal/http2/Hpack;->checkLowercase(Lokio/ByteString;)Lokio/ByteString;

    move-result-object v3

    move-object v1, v3

    .line 244
    move-object v3, v0

    invoke-virtual {v3}, Lokhttp3/internal/http2/Hpack$Reader;->readByteString()Lokio/ByteString;

    move-result-object v3

    move-object v2, v3

    .line 245
    move-object v3, v0

    iget-object v3, v3, Lokhttp3/internal/http2/Hpack$Reader;->headerList:Ljava/util/List;

    new-instance v4, Lokhttp3/internal/http2/Header;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v1

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Lokio/ByteString;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 246
    return-void
.end method


# virtual methods
.method public getAndResetHeaderList()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/http2/Header;",
            ">;"
        }
    .end annotation

    .prologue
    .line 213
    move-object v0, p0

    new-instance v2, Ljava/util/ArrayList;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    iget-object v4, v4, Lokhttp3/internal/http2/Hpack$Reader;->headerList:Ljava/util/List;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v1, v2

    .line 214
    move-object v2, v0

    iget-object v2, v2, Lokhttp3/internal/http2/Hpack$Reader;->headerList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 215
    move-object v2, v1

    move-object v0, v2

    return-object v0
.end method

.method maxDynamicTableByteCount()I
    .locals 2

    .prologue
    .line 141
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lokhttp3/internal/http2/Hpack$Reader;->maxDynamicTableByteCount:I

    move v0, v1

    return v0
.end method

.method readByteString()Lokio/ByteString;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 337
    move-object v0, p0

    move-object v4, v0

    invoke-direct {v4}, Lokhttp3/internal/http2/Hpack$Reader;->readByte()I

    move-result v4

    move v1, v4

    .line 338
    move v4, v1

    const/16 v5, 0x80

    and-int/lit16 v4, v4, 0x80

    const/16 v5, 0x80

    if-ne v4, v5, :cond_0

    const/4 v4, 0x1

    :goto_0
    move v2, v4

    .line 339
    move-object v4, v0

    move v5, v1

    const/16 v6, 0x7f

    invoke-virtual {v4, v5, v6}, Lokhttp3/internal/http2/Hpack$Reader;->readInt(II)I

    move-result v4

    move v3, v4

    .line 341
    move v4, v2

    if-eqz v4, :cond_1

    .line 342
    invoke-static {}, Lokhttp3/internal/http2/Huffman;->get()Lokhttp3/internal/http2/Huffman;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Lokhttp3/internal/http2/Hpack$Reader;->source:Lokio/BufferedSource;

    move v6, v3

    int-to-long v6, v6

    invoke-interface {v5, v6, v7}, Lokio/BufferedSource;->readByteArray(J)[B

    move-result-object v5

    invoke-virtual {v4, v5}, Lokhttp3/internal/http2/Huffman;->decode([B)[B

    move-result-object v4

    invoke-static {v4}, Lokio/ByteString;->of([B)Lokio/ByteString;

    move-result-object v4

    move-object v0, v4

    .line 344
    :goto_1
    return-object v0

    .line 338
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 344
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Lokhttp3/internal/http2/Hpack$Reader;->source:Lokio/BufferedSource;

    move v5, v3

    int-to-long v5, v5

    invoke-interface {v4, v5, v6}, Lokio/BufferedSource;->readByteString(J)Lokio/ByteString;

    move-result-object v4

    move-object v0, v4

    goto :goto_1
.end method

.method readHeaders()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 184
    move-object v0, p0

    :goto_0
    move-object v3, v0

    iget-object v3, v3, Lokhttp3/internal/http2/Hpack$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v3}, Lokio/BufferedSource;->exhausted()Z

    move-result v3

    if-nez v3, :cond_9

    .line 185
    move-object v3, v0

    iget-object v3, v3, Lokhttp3/internal/http2/Hpack$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v3}, Lokio/BufferedSource;->readByte()B

    move-result v3

    const/16 v4, 0xff

    and-int/lit16 v3, v3, 0xff

    move v1, v3

    .line 186
    move v3, v1

    const/16 v4, 0x80

    if-ne v3, v4, :cond_0

    .line 187
    new-instance v3, Ljava/io/IOException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const-string v5, "index == 0"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 188
    :cond_0
    move v3, v1

    const/16 v4, 0x80

    and-int/lit16 v3, v3, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_1

    .line 189
    move-object v3, v0

    move v4, v1

    const/16 v5, 0x7f

    invoke-virtual {v3, v4, v5}, Lokhttp3/internal/http2/Hpack$Reader;->readInt(II)I

    move-result v3

    move v2, v3

    .line 190
    move-object v3, v0

    move v4, v2

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    invoke-direct {v3, v4}, Lokhttp3/internal/http2/Hpack$Reader;->readIndexedHeader(I)V

    .line 209
    :goto_1
    goto :goto_0

    .line 191
    :cond_1
    move v3, v1

    const/16 v4, 0x40

    if-ne v3, v4, :cond_2

    .line 192
    move-object v3, v0

    invoke-direct {v3}, Lokhttp3/internal/http2/Hpack$Reader;->readLiteralHeaderWithIncrementalIndexingNewName()V

    goto :goto_1

    .line 193
    :cond_2
    move v3, v1

    const/16 v4, 0x40

    and-int/lit8 v3, v3, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_3

    .line 194
    move-object v3, v0

    move v4, v1

    const/16 v5, 0x3f

    invoke-virtual {v3, v4, v5}, Lokhttp3/internal/http2/Hpack$Reader;->readInt(II)I

    move-result v3

    move v2, v3

    .line 195
    move-object v3, v0

    move v4, v2

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    invoke-direct {v3, v4}, Lokhttp3/internal/http2/Hpack$Reader;->readLiteralHeaderWithIncrementalIndexingIndexedName(I)V

    .line 196
    goto :goto_1

    :cond_3
    move v3, v1

    const/16 v4, 0x20

    and-int/lit8 v3, v3, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_6

    .line 197
    move-object v3, v0

    move-object v4, v0

    move v5, v1

    const/16 v6, 0x1f

    invoke-virtual {v4, v5, v6}, Lokhttp3/internal/http2/Hpack$Reader;->readInt(II)I

    move-result v4

    iput v4, v3, Lokhttp3/internal/http2/Hpack$Reader;->maxDynamicTableByteCount:I

    .line 198
    move-object v3, v0

    iget v3, v3, Lokhttp3/internal/http2/Hpack$Reader;->maxDynamicTableByteCount:I

    if-ltz v3, :cond_4

    move-object v3, v0

    iget v3, v3, Lokhttp3/internal/http2/Hpack$Reader;->maxDynamicTableByteCount:I

    move-object v4, v0

    iget v4, v4, Lokhttp3/internal/http2/Hpack$Reader;->headerTableSizeSetting:I

    if-le v3, v4, :cond_5

    .line 200
    :cond_4
    new-instance v3, Ljava/io/IOException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid dynamic table size update "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    iget v6, v6, Lokhttp3/internal/http2/Hpack$Reader;->maxDynamicTableByteCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 202
    :cond_5
    move-object v3, v0

    invoke-direct {v3}, Lokhttp3/internal/http2/Hpack$Reader;->adjustDynamicTableByteCount()V

    goto :goto_1

    .line 203
    :cond_6
    move v3, v1

    const/16 v4, 0x10

    if-eq v3, v4, :cond_7

    move v3, v1

    if-nez v3, :cond_8

    .line 204
    :cond_7
    move-object v3, v0

    invoke-direct {v3}, Lokhttp3/internal/http2/Hpack$Reader;->readLiteralHeaderWithoutIndexingNewName()V

    goto :goto_1

    .line 206
    :cond_8
    move-object v3, v0

    move v4, v1

    const/16 v5, 0xf

    invoke-virtual {v3, v4, v5}, Lokhttp3/internal/http2/Hpack$Reader;->readInt(II)I

    move-result v3

    move v2, v3

    .line 207
    move-object v3, v0

    move v4, v2

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    invoke-direct {v3, v4}, Lokhttp3/internal/http2/Hpack$Reader;->readLiteralHeaderWithoutIndexingIndexedName(I)V

    goto/16 :goto_1

    .line 210
    :cond_9
    return-void
.end method

.method readInt(II)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 314
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v7, v1

    move v8, v2

    and-int/2addr v7, v8

    move v3, v7

    .line 315
    move v7, v3

    move v8, v2

    if-ge v7, v8, :cond_0

    .line 316
    move v7, v3

    move v0, v7

    .line 332
    :goto_0
    return v0

    .line 320
    :cond_0
    move v7, v2

    move v4, v7

    .line 321
    const/4 v7, 0x0

    move v5, v7

    .line 323
    :goto_1
    move-object v7, v0

    invoke-direct {v7}, Lokhttp3/internal/http2/Hpack$Reader;->readByte()I

    move-result v7

    move v6, v7

    .line 324
    move v7, v6

    const/16 v8, 0x80

    and-int/lit16 v7, v7, 0x80

    if-eqz v7, :cond_1

    .line 325
    move v7, v4

    move v8, v6

    const/16 v9, 0x7f

    and-int/lit8 v8, v8, 0x7f

    move v9, v5

    shl-int/2addr v8, v9

    add-int/2addr v7, v8

    move v4, v7

    .line 326
    add-int/lit8 v5, v5, 0x7

    .line 331
    goto :goto_1

    .line 328
    :cond_1
    move v7, v4

    move v8, v6

    move v9, v5

    shl-int/2addr v8, v9

    add-int/2addr v7, v8

    move v4, v7

    .line 332
    move v7, v4

    move v0, v7

    goto :goto_0
.end method
