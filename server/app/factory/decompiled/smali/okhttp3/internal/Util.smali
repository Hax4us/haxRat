.class public final Lokhttp3/internal/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field public static final EMPTY_BYTE_ARRAY:[B

.field public static final EMPTY_REQUEST:Lokhttp3/RequestBody;

.field public static final EMPTY_RESPONSE:Lokhttp3/ResponseBody;

.field public static final EMPTY_STRING_ARRAY:[Ljava/lang/String;

.field public static final UTC:Ljava/util/TimeZone;

.field private static final UTF_16_BE:Ljava/nio/charset/Charset;

.field private static final UTF_16_BE_BOM:Lokio/ByteString;

.field private static final UTF_16_LE:Ljava/nio/charset/Charset;

.field private static final UTF_16_LE_BOM:Lokio/ByteString;

.field private static final UTF_32_BE:Ljava/nio/charset/Charset;

.field private static final UTF_32_BE_BOM:Lokio/ByteString;

.field private static final UTF_32_LE:Ljava/nio/charset/Charset;

.field private static final UTF_32_LE_BOM:Lokio/ByteString;

.field public static final UTF_8:Ljava/nio/charset/Charset;

.field private static final UTF_8_BOM:Lokio/ByteString;

.field private static final VERIFY_AS_IP_ADDRESS:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 45
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lokhttp3/internal/Util;->EMPTY_BYTE_ARRAY:[B

    .line 46
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lokhttp3/internal/Util;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 48
    const/4 v0, 0x0

    sget-object v1, Lokhttp3/internal/Util;->EMPTY_BYTE_ARRAY:[B

    invoke-static {v0, v1}, Lokhttp3/ResponseBody;->create(Lokhttp3/MediaType;[B)Lokhttp3/ResponseBody;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/Util;->EMPTY_RESPONSE:Lokhttp3/ResponseBody;

    .line 49
    const/4 v0, 0x0

    sget-object v1, Lokhttp3/internal/Util;->EMPTY_BYTE_ARRAY:[B

    invoke-static {v0, v1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;[B)Lokhttp3/RequestBody;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/Util;->EMPTY_REQUEST:Lokhttp3/RequestBody;

    .line 51
    const-string v0, "efbbbf"

    invoke-static {v0}, Lokio/ByteString;->decodeHex(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/Util;->UTF_8_BOM:Lokio/ByteString;

    .line 52
    const-string v0, "feff"

    invoke-static {v0}, Lokio/ByteString;->decodeHex(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/Util;->UTF_16_BE_BOM:Lokio/ByteString;

    .line 53
    const-string v0, "fffe"

    invoke-static {v0}, Lokio/ByteString;->decodeHex(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/Util;->UTF_16_LE_BOM:Lokio/ByteString;

    .line 54
    const-string v0, "0000ffff"

    invoke-static {v0}, Lokio/ByteString;->decodeHex(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/Util;->UTF_32_BE_BOM:Lokio/ByteString;

    .line 55
    const-string v0, "ffff0000"

    invoke-static {v0}, Lokio/ByteString;->decodeHex(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/Util;->UTF_32_LE_BOM:Lokio/ByteString;

    .line 57
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/Util;->UTF_8:Ljava/nio/charset/Charset;

    .line 58
    const-string v0, "UTF-16BE"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/Util;->UTF_16_BE:Ljava/nio/charset/Charset;

    .line 59
    const-string v0, "UTF-16LE"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/Util;->UTF_16_LE:Ljava/nio/charset/Charset;

    .line 60
    const-string v0, "UTF-32BE"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/Util;->UTF_32_BE:Ljava/nio/charset/Charset;

    .line 61
    const-string v0, "UTF-32LE"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/Util;->UTF_32_LE:Ljava/nio/charset/Charset;

    .line 64
    const-string v0, "GMT"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/Util;->UTC:Ljava/util/TimeZone;

    .line 76
    const-string v0, "([0-9a-fA-F]*:[0-9a-fA-F:.]*)|([\\d.]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/Util;->VERIFY_AS_IP_ADDRESS:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 79
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 80
    return-void
.end method

.method public static bomAwareCharset(Lokio/BufferedSource;Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 397
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-wide/16 v3, 0x0

    sget-object v5, Lokhttp3/internal/Util;->UTF_8_BOM:Lokio/ByteString;

    invoke-interface {v2, v3, v4, v5}, Lokio/BufferedSource;->rangeEquals(JLokio/ByteString;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 398
    move-object v2, v0

    sget-object v3, Lokhttp3/internal/Util;->UTF_8_BOM:Lokio/ByteString;

    invoke-virtual {v3}, Lokio/ByteString;->size()I

    move-result v3

    int-to-long v3, v3

    invoke-interface {v2, v3, v4}, Lokio/BufferedSource;->skip(J)V

    .line 399
    sget-object v2, Lokhttp3/internal/Util;->UTF_8:Ljava/nio/charset/Charset;

    move-object v0, v2

    .line 417
    :goto_0
    return-object v0

    .line 401
    :cond_0
    move-object v2, v0

    const-wide/16 v3, 0x0

    sget-object v5, Lokhttp3/internal/Util;->UTF_16_BE_BOM:Lokio/ByteString;

    invoke-interface {v2, v3, v4, v5}, Lokio/BufferedSource;->rangeEquals(JLokio/ByteString;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 402
    move-object v2, v0

    sget-object v3, Lokhttp3/internal/Util;->UTF_16_BE_BOM:Lokio/ByteString;

    invoke-virtual {v3}, Lokio/ByteString;->size()I

    move-result v3

    int-to-long v3, v3

    invoke-interface {v2, v3, v4}, Lokio/BufferedSource;->skip(J)V

    .line 403
    sget-object v2, Lokhttp3/internal/Util;->UTF_16_BE:Ljava/nio/charset/Charset;

    move-object v0, v2

    goto :goto_0

    .line 405
    :cond_1
    move-object v2, v0

    const-wide/16 v3, 0x0

    sget-object v5, Lokhttp3/internal/Util;->UTF_16_LE_BOM:Lokio/ByteString;

    invoke-interface {v2, v3, v4, v5}, Lokio/BufferedSource;->rangeEquals(JLokio/ByteString;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 406
    move-object v2, v0

    sget-object v3, Lokhttp3/internal/Util;->UTF_16_LE_BOM:Lokio/ByteString;

    invoke-virtual {v3}, Lokio/ByteString;->size()I

    move-result v3

    int-to-long v3, v3

    invoke-interface {v2, v3, v4}, Lokio/BufferedSource;->skip(J)V

    .line 407
    sget-object v2, Lokhttp3/internal/Util;->UTF_16_LE:Ljava/nio/charset/Charset;

    move-object v0, v2

    goto :goto_0

    .line 409
    :cond_2
    move-object v2, v0

    const-wide/16 v3, 0x0

    sget-object v5, Lokhttp3/internal/Util;->UTF_32_BE_BOM:Lokio/ByteString;

    invoke-interface {v2, v3, v4, v5}, Lokio/BufferedSource;->rangeEquals(JLokio/ByteString;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 410
    move-object v2, v0

    sget-object v3, Lokhttp3/internal/Util;->UTF_32_BE_BOM:Lokio/ByteString;

    invoke-virtual {v3}, Lokio/ByteString;->size()I

    move-result v3

    int-to-long v3, v3

    invoke-interface {v2, v3, v4}, Lokio/BufferedSource;->skip(J)V

    .line 411
    sget-object v2, Lokhttp3/internal/Util;->UTF_32_BE:Ljava/nio/charset/Charset;

    move-object v0, v2

    goto :goto_0

    .line 413
    :cond_3
    move-object v2, v0

    const-wide/16 v3, 0x0

    sget-object v5, Lokhttp3/internal/Util;->UTF_32_LE_BOM:Lokio/ByteString;

    invoke-interface {v2, v3, v4, v5}, Lokio/BufferedSource;->rangeEquals(JLokio/ByteString;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 414
    move-object v2, v0

    sget-object v3, Lokhttp3/internal/Util;->UTF_32_LE_BOM:Lokio/ByteString;

    invoke-virtual {v3}, Lokio/ByteString;->size()I

    move-result v3

    int-to-long v3, v3

    invoke-interface {v2, v3, v4}, Lokio/BufferedSource;->skip(J)V

    .line 415
    sget-object v2, Lokhttp3/internal/Util;->UTF_32_LE:Ljava/nio/charset/Charset;

    move-object v0, v2

    goto :goto_0

    .line 417
    :cond_4
    move-object v2, v1

    move-object v0, v2

    goto :goto_0
.end method

.method public static checkOffsetAndCount(JJJ)V
    .locals 11

    .prologue
    .line 83
    move-wide v0, p0

    move-wide v2, p2

    move-wide v4, p4

    move-wide v6, v2

    move-wide v8, v4

    or-long/2addr v6, v8

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-ltz v6, :cond_0

    move-wide v6, v2

    move-wide v8, v0

    cmp-long v6, v6, v8

    if-gtz v6, :cond_0

    move-wide v6, v0

    move-wide v8, v2

    sub-long/2addr v6, v8

    move-wide v8, v4

    cmp-long v6, v6, v8

    if-gez v6, :cond_1

    .line 84
    :cond_0
    new-instance v6, Ljava/lang/ArrayIndexOutOfBoundsException;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v6

    .line 86
    :cond_1
    return-void
.end method

.method public static closeQuietly(Ljava/io/Closeable;)V
    .locals 3

    .prologue
    .line 98
    move-object v0, p0

    move-object v2, v0

    if-eqz v2, :cond_0

    .line 100
    move-object v2, v0

    :try_start_0
    invoke-interface {v2}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 101
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 102
    move-object v2, v1

    throw v2

    .line 103
    :catch_1
    move-exception v2

    move-object v1, v2

    goto :goto_0
.end method

.method public static closeQuietly(Ljava/net/ServerSocket;)V
    .locals 3

    .prologue
    .line 130
    move-object v0, p0

    move-object v2, v0

    if-eqz v2, :cond_0

    .line 132
    move-object v2, v0

    :try_start_0
    invoke-virtual {v2}, Ljava/net/ServerSocket;->close()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 133
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 134
    move-object v2, v1

    throw v2

    .line 135
    :catch_1
    move-exception v2

    move-object v1, v2

    goto :goto_0
.end method

.method public static closeQuietly(Ljava/net/Socket;)V
    .locals 3

    .prologue
    .line 113
    move-object v0, p0

    move-object v2, v0

    if-eqz v2, :cond_0

    .line 115
    move-object v2, v0

    :try_start_0
    invoke-virtual {v2}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 116
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 117
    move-object v2, v1

    invoke-static {v2}, Lokhttp3/internal/Util;->isAndroidGetsocknameError(Ljava/lang/AssertionError;)Z

    move-result v2

    if-nez v2, :cond_1

    move-object v2, v1

    throw v2

    .line 121
    :cond_1
    goto :goto_0

    .line 118
    :catch_1
    move-exception v2

    move-object v1, v2

    .line 119
    move-object v2, v1

    throw v2

    .line 120
    :catch_2
    move-exception v2

    move-object v1, v2

    goto :goto_0
.end method

.method public static concat([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 8

    .prologue
    .line 270
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    array-length v3, v3

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    move-object v2, v3

    .line 271
    move-object v3, v0

    const/4 v4, 0x0

    move-object v5, v2

    const/4 v6, 0x0

    move-object v7, v0

    array-length v7, v7

    invoke-static {v3, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 272
    move-object v3, v2

    move-object v4, v2

    array-length v4, v4

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    move-object v5, v1

    aput-object v5, v3, v4

    .line 273
    move-object v3, v2

    move-object v0, v3

    return-object v0
.end method

.method private static containsInvalidHostnameAsciiCodes(Ljava/lang/String;)Z
    .locals 5

    .prologue
    .line 368
    move-object v0, p0

    const/4 v3, 0x0

    move v1, v3

    :goto_0
    move v3, v1

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 369
    move-object v3, v0

    move v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    move v2, v3

    .line 373
    move v3, v2

    const/16 v4, 0x1f

    if-le v3, v4, :cond_0

    move v3, v2

    const/16 v4, 0x7f

    if-lt v3, v4, :cond_1

    .line 374
    :cond_0
    const/4 v3, 0x1

    move v0, v3

    .line 383
    :goto_1
    return v0

    .line 379
    :cond_1
    const-string v3, " #%/:?@[\\]"

    move v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 380
    const/4 v3, 0x1

    move v0, v3

    goto :goto_1

    .line 368
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 383
    :cond_3
    const/4 v3, 0x0

    move v0, v3

    goto :goto_1
.end method

.method public static delimiterOffset(Ljava/lang/String;IIC)I
    .locals 7

    .prologue
    .line 339
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, v1

    move v4, v5

    :goto_0
    move v5, v4

    move v6, v2

    if-ge v5, v6, :cond_1

    .line 340
    move-object v5, v0

    move v6, v4

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    move v6, v3

    if-ne v5, v6, :cond_0

    move v5, v4

    move v0, v5

    .line 342
    :goto_1
    return v0

    .line 339
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 342
    :cond_1
    move v5, v2

    move v0, v5

    goto :goto_1
.end method

.method public static delimiterOffset(Ljava/lang/String;IILjava/lang/String;)I
    .locals 8

    .prologue
    .line 328
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v5, v1

    move v4, v5

    :goto_0
    move v5, v4

    move v6, v2

    if-ge v5, v6, :cond_1

    .line 329
    move-object v5, v3

    move-object v6, v0

    move v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    move v5, v4

    move v0, v5

    .line 331
    :goto_1
    return v0

    .line 328
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 331
    :cond_1
    move v5, v2

    move v0, v5

    goto :goto_1
.end method

.method public static discard(Lokio/Source;ILjava/util/concurrent/TimeUnit;)Z
    .locals 7

    .prologue
    .line 147
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, v0

    move v5, v1

    move-object v6, v2

    :try_start_0
    invoke-static {v4, v5, v6}, Lokhttp3/internal/Util;->skipAll(Lokio/Source;ILjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    move v0, v4

    .line 149
    :goto_0
    return v0

    .line 148
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 149
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0
.end method

.method public static domainToAscii(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 353
    move-object v0, p0

    move-object v2, v0

    :try_start_0
    invoke-static {v2}, Ljava/net/IDN;->toASCII(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 354
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    move-object v0, v2

    .line 363
    :goto_0
    return-object v0

    .line 357
    :cond_0
    move-object v2, v1

    invoke-static {v2}, Lokhttp3/internal/Util;->containsInvalidHostnameAsciiCodes(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_1

    .line 358
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0

    .line 361
    :cond_1
    move-object v2, v1

    move-object v0, v2

    goto :goto_0

    .line 362
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 363
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0
.end method

.method public static equal(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 90
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    if-eq v2, v3, :cond_0

    move-object v2, v0

    if-eqz v2, :cond_1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    move v0, v2

    return v0

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static varargs format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 393
    move-object v0, p0

    move-object v1, p1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    move-object v3, v0

    move-object v4, v1

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public static hostHeader(Lokhttp3/HttpUrl;Z)Ljava/lang/String;
    .locals 6

    .prologue
    .line 228
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    invoke-virtual {v3}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    .line 229
    invoke-virtual {v4}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 230
    :goto_0
    move-object v2, v3

    .line 231
    move v3, v1

    if-nez v3, :cond_0

    move-object v3, v0

    invoke-virtual {v3}, Lokhttp3/HttpUrl;->port()I

    move-result v3

    move-object v4, v0

    invoke-virtual {v4}, Lokhttp3/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lokhttp3/HttpUrl;->defaultPort(Ljava/lang/String;)I

    move-result v4

    if-eq v3, v4, :cond_2

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    .line 232
    invoke-virtual {v4}, Lokhttp3/HttpUrl;->port()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 231
    :goto_1
    move-object v0, v3

    return-object v0

    .line 229
    :cond_1
    move-object v3, v0

    .line 230
    invoke-virtual {v3}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 232
    :cond_2
    move-object v3, v2

    goto :goto_1
.end method

.method public static immutableList(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 182
    move-object v0, p0

    new-instance v1, Ljava/util/ArrayList;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static varargs immutableList([Ljava/lang/Object;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 187
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static indexOf([Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)I"
        }
    .end annotation

    .prologue
    .line 263
    move-object v0, p0

    move-object v1, p1

    const/4 v4, 0x0

    move v2, v4

    move-object v4, v0

    array-length v4, v4

    move v3, v4

    :goto_0
    move v4, v2

    move v5, v3

    if-ge v4, v5, :cond_1

    .line 264
    move-object v4, v0

    move v5, v2

    aget-object v4, v4, v5

    move-object v5, v1

    invoke-static {v4, v5}, Lokhttp3/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v2

    move v0, v4

    .line 266
    :goto_1
    return v0

    .line 263
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 266
    :cond_1
    const/4 v4, -0x1

    move v0, v4

    goto :goto_1
.end method

.method private static intersect([Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[TT;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 215
    move-object v0, p0

    move-object v1, p1

    new-instance v11, Ljava/util/ArrayList;

    move-object v13, v11

    move-object v11, v13

    move-object v12, v13

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v11

    .line 216
    move-object v11, v0

    move-object v3, v11

    move-object v11, v3

    array-length v11, v11

    move v4, v11

    const/4 v11, 0x0

    move v5, v11

    :goto_0
    move v11, v5

    move v12, v4

    if-ge v11, v12, :cond_2

    move-object v11, v3

    move v12, v5

    aget-object v11, v11, v12

    move-object v6, v11

    .line 217
    move-object v11, v1

    move-object v7, v11

    move-object v11, v7

    array-length v11, v11

    move v8, v11

    const/4 v11, 0x0

    move v9, v11

    :goto_1
    move v11, v9

    move v12, v8

    if-ge v11, v12, :cond_0

    move-object v11, v7

    move v12, v9

    aget-object v11, v11, v12

    move-object v10, v11

    .line 218
    move-object v11, v6

    move-object v12, v10

    invoke-virtual {v11, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 219
    move-object v11, v2

    move-object v12, v10

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v11

    .line 216
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 217
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 224
    :cond_2
    move-object v11, v2

    move-object v0, v11

    return-object v0
.end method

.method public static intersect(Ljava/lang/Class;[Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;[TT;[TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 206
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v1

    move-object v5, v2

    invoke-static {v4, v5}, Lokhttp3/internal/Util;->intersect([Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    move-object v3, v4

    .line 207
    move-object v4, v3

    move-object v5, v0

    move-object v6, v3

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Object;

    check-cast v5, [Ljava/lang/Object;

    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    return-object v0
.end method

.method public static isAndroidGetsocknameError(Ljava/lang/AssertionError;)Z
    .locals 3

    .prologue
    .line 258
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/AssertionError;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 259
    invoke-virtual {v1}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getsockname failed"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 258
    :goto_0
    move v0, v1

    return v0

    .line 259
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static skipAll(Lokio/Source;ILjava/util/concurrent/TimeUnit;)Z
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 158
    move-object/from16 v2, p0

    move/from16 v3, p1

    move-object/from16 v4, p2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v12

    move-wide v5, v12

    .line 159
    move-object v12, v2

    invoke-interface {v12}, Lokio/Source;->timeout()Lokio/Timeout;

    move-result-object v12

    invoke-virtual {v12}, Lokio/Timeout;->hasDeadline()Z

    move-result v12

    if-eqz v12, :cond_0

    move-object v12, v2

    .line 160
    invoke-interface {v12}, Lokio/Source;->timeout()Lokio/Timeout;

    move-result-object v12

    invoke-virtual {v12}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v12

    move-wide v14, v5

    sub-long/2addr v12, v14

    :goto_0
    move-wide v7, v12

    .line 162
    move-object v12, v2

    invoke-interface {v12}, Lokio/Source;->timeout()Lokio/Timeout;

    move-result-object v12

    move-wide v13, v5

    move-wide v15, v7

    move-object/from16 v17, v4

    move/from16 v18, v3

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    invoke-virtual/range {v17 .. v19}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v17

    invoke-static/range {v15 .. v18}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v15

    add-long/2addr v13, v15

    invoke-virtual {v12, v13, v14}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    move-result-object v12

    .line 164
    :try_start_0
    new-instance v12, Lokio/Buffer;

    move-object/from16 v20, v12

    move-object/from16 v12, v20

    move-object/from16 v13, v20

    invoke-direct {v13}, Lokio/Buffer;-><init>()V

    move-object v9, v12

    .line 165
    :goto_1
    move-object v12, v2

    move-object v13, v9

    const-wide/16 v14, 0x2000

    invoke-interface {v12, v13, v14, v15}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v12

    const-wide/16 v14, -0x1

    cmp-long v12, v12, v14

    if-eqz v12, :cond_1

    .line 166
    move-object v12, v9

    invoke-virtual {v12}, Lokio/Buffer;->clear()V
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 160
    :cond_0
    const-wide v12, 0x7fffffffffffffffL

    goto :goto_0

    .line 168
    :cond_1
    const/4 v12, 0x1

    move v10, v12

    .line 172
    move-wide v12, v7

    const-wide v14, 0x7fffffffffffffffL

    cmp-long v12, v12, v14

    if-nez v12, :cond_2

    .line 173
    move-object v12, v2

    invoke-interface {v12}, Lokio/Source;->timeout()Lokio/Timeout;

    move-result-object v12

    invoke-virtual {v12}, Lokio/Timeout;->clearDeadline()Lokio/Timeout;

    move-result-object v12

    .line 168
    :goto_2
    move v12, v10

    move v2, v12

    .line 170
    :goto_3
    return v2

    .line 175
    :cond_2
    move-object v12, v2

    invoke-interface {v12}, Lokio/Source;->timeout()Lokio/Timeout;

    move-result-object v12

    move-wide v13, v5

    move-wide v15, v7

    add-long/2addr v13, v15

    invoke-virtual {v12, v13, v14}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    move-result-object v12

    goto :goto_2

    .line 169
    :catch_0
    move-exception v12

    move-object v9, v12

    .line 170
    const/4 v12, 0x0

    move v10, v12

    .line 172
    move-wide v12, v7

    const-wide v14, 0x7fffffffffffffffL

    cmp-long v12, v12, v14

    if-nez v12, :cond_3

    .line 173
    move-object v12, v2

    invoke-interface {v12}, Lokio/Source;->timeout()Lokio/Timeout;

    move-result-object v12

    invoke-virtual {v12}, Lokio/Timeout;->clearDeadline()Lokio/Timeout;

    move-result-object v12

    .line 170
    :goto_4
    move v12, v10

    move v2, v12

    goto :goto_3

    .line 175
    :cond_3
    move-object v12, v2

    invoke-interface {v12}, Lokio/Source;->timeout()Lokio/Timeout;

    move-result-object v12

    move-wide v13, v5

    move-wide v15, v7

    add-long/2addr v13, v15

    invoke-virtual {v12, v13, v14}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    move-result-object v12

    goto :goto_4

    .line 172
    :catchall_0
    move-exception v12

    move-object v11, v12

    move-wide v12, v7

    const-wide v14, 0x7fffffffffffffffL

    cmp-long v12, v12, v14

    if-nez v12, :cond_4

    .line 173
    move-object v12, v2

    invoke-interface {v12}, Lokio/Source;->timeout()Lokio/Timeout;

    move-result-object v12

    invoke-virtual {v12}, Lokio/Timeout;->clearDeadline()Lokio/Timeout;

    move-result-object v12

    .line 175
    :goto_5
    move-object v12, v11

    throw v12

    :cond_4
    move-object v12, v2

    invoke-interface {v12}, Lokio/Source;->timeout()Lokio/Timeout;

    move-result-object v12

    move-wide v13, v5

    move-wide v15, v7

    add-long/2addr v13, v15

    invoke-virtual {v12, v13, v14}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    move-result-object v12

    goto :goto_5
.end method

.method public static skipLeadingAsciiWhitespace(Ljava/lang/String;II)I
    .locals 6

    .prologue
    .line 281
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, v1

    move v3, v4

    :goto_0
    move v4, v3

    move v5, v2

    if-ge v4, v5, :cond_0

    .line 282
    move-object v4, v0

    move v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 290
    move v4, v3

    move v0, v4

    .line 293
    :goto_1
    return v0

    .line 281
    :sswitch_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 293
    :cond_0
    move v4, v2

    move v0, v4

    goto :goto_1

    .line 282
    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xc -> :sswitch_0
        0xd -> :sswitch_0
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method public static skipTrailingAsciiWhitespace(Ljava/lang/String;II)I
    .locals 6

    .prologue
    .line 301
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, v2

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    move v3, v4

    :goto_0
    move v4, v3

    move v5, v1

    if-lt v4, v5, :cond_0

    .line 302
    move-object v4, v0

    move v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 310
    move v4, v3

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    move v0, v4

    .line 313
    :goto_1
    return v0

    .line 301
    :sswitch_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 313
    :cond_0
    move v4, v1

    move v0, v4

    goto :goto_1

    .line 302
    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xc -> :sswitch_0
        0xd -> :sswitch_0
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method public static threadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;
    .locals 7

    .prologue
    .line 191
    move-object v0, p0

    move v1, p1

    new-instance v2, Lokhttp3/internal/Util$1;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move v5, v1

    invoke-direct {v3, v4, v5}, Lokhttp3/internal/Util$1;-><init>(Ljava/lang/String;Z)V

    move-object v0, v2

    return-object v0
.end method

.method public static throwIfFatal(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 422
    move-object v0, p0

    move-object v1, v0

    instance-of v1, v1, Ljava/lang/VirtualMachineError;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/lang/VirtualMachineError;

    throw v1

    .line 423
    :cond_0
    move-object v1, v0

    instance-of v1, v1, Ljava/lang/ThreadDeath;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Ljava/lang/ThreadDeath;

    throw v1

    .line 424
    :cond_1
    move-object v1, v0

    instance-of v1, v1, Ljava/lang/LinkageError;

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Ljava/lang/LinkageError;

    throw v1

    .line 425
    :cond_2
    return-void
.end method

.method public static toHumanReadableAscii(Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    .prologue
    .line 238
    move-object v0, p0

    const/4 v6, 0x0

    move v1, v6

    move-object v6, v0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    move v2, v6

    :goto_0
    move v6, v1

    move v7, v2

    if-ge v6, v7, :cond_3

    .line 239
    move-object v6, v0

    move v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/String;->codePointAt(I)I

    move-result v6

    move v3, v6

    .line 240
    move v6, v3

    const/16 v7, 0x1f

    if-le v6, v7, :cond_0

    move v6, v3

    const/16 v7, 0x7f

    if-ge v6, v7, :cond_0

    .line 238
    move v6, v1

    move v7, v3

    invoke-static {v7}, Ljava/lang/Character;->charCount(I)I

    move-result v7

    add-int/2addr v6, v7

    move v1, v6

    goto :goto_0

    .line 242
    :cond_0
    new-instance v6, Lokio/Buffer;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Lokio/Buffer;-><init>()V

    move-object v4, v6

    .line 243
    move-object v6, v4

    move-object v7, v0

    const/4 v8, 0x0

    move v9, v1

    invoke-virtual {v6, v7, v8, v9}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;II)Lokio/Buffer;

    move-result-object v6

    .line 244
    move v6, v1

    move v5, v6

    :goto_1
    move v6, v5

    move v7, v2

    if-ge v6, v7, :cond_2

    .line 245
    move-object v6, v0

    move v7, v5

    invoke-virtual {v6, v7}, Ljava/lang/String;->codePointAt(I)I

    move-result v6

    move v3, v6

    .line 246
    move-object v6, v4

    move v7, v3

    const/16 v8, 0x1f

    if-le v7, v8, :cond_1

    move v7, v3

    const/16 v8, 0x7f

    if-ge v7, v8, :cond_1

    move v7, v3

    :goto_2
    invoke-virtual {v6, v7}, Lokio/Buffer;->writeUtf8CodePoint(I)Lokio/Buffer;

    move-result-object v6

    .line 244
    move v6, v5

    move v7, v3

    invoke-static {v7}, Ljava/lang/Character;->charCount(I)I

    move-result v7

    add-int/2addr v6, v7

    move v5, v6

    goto :goto_1

    .line 246
    :cond_1
    const/16 v7, 0x3f

    goto :goto_2

    .line 248
    :cond_2
    move-object v6, v4

    invoke-virtual {v6}, Lokio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    .line 250
    :goto_3
    return-object v0

    :cond_3
    move-object v6, v0

    move-object v0, v6

    goto :goto_3
.end method

.method public static trimSubstring(Ljava/lang/String;II)Ljava/lang/String;
    .locals 8

    .prologue
    .line 318
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, v0

    move v6, v1

    move v7, v2

    invoke-static {v5, v6, v7}, Lokhttp3/internal/Util;->skipLeadingAsciiWhitespace(Ljava/lang/String;II)I

    move-result v5

    move v3, v5

    .line 319
    move-object v5, v0

    move v6, v3

    move v7, v2

    invoke-static {v5, v6, v7}, Lokhttp3/internal/Util;->skipTrailingAsciiWhitespace(Ljava/lang/String;II)I

    move-result v5

    move v4, v5

    .line 320
    move-object v5, v0

    move v6, v3

    move v7, v4

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    return-object v0
.end method

.method public static verifyAsIpAddress(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 388
    move-object v0, p0

    sget-object v1, Lokhttp3/internal/Util;->VERIFY_AS_IP_ADDRESS:Ljava/util/regex/Pattern;

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    move v0, v1

    return v0
.end method
