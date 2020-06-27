.class public final Lokhttp3/internal/http2/Http2;
.super Ljava/lang/Object;
.source "Http2.java"


# static fields
.field static final BINARY:[Ljava/lang/String;

.field static final CONNECTION_PREFACE:Lokio/ByteString;

.field static final FLAGS:[Ljava/lang/String;

.field static final FLAG_ACK:B = 0x1t

.field static final FLAG_COMPRESSED:B = 0x20t

.field static final FLAG_END_HEADERS:B = 0x4t

.field static final FLAG_END_PUSH_PROMISE:B = 0x4t

.field static final FLAG_END_STREAM:B = 0x1t

.field static final FLAG_NONE:B = 0x0t

.field static final FLAG_PADDED:B = 0x8t

.field static final FLAG_PRIORITY:B = 0x20t

.field private static final FRAME_NAMES:[Ljava/lang/String;

.field static final INITIAL_MAX_FRAME_SIZE:I = 0x4000

.field static final TYPE_CONTINUATION:B = 0x9t

.field static final TYPE_DATA:B = 0x0t

.field static final TYPE_GOAWAY:B = 0x7t

.field static final TYPE_HEADERS:B = 0x1t

.field static final TYPE_PING:B = 0x6t

.field static final TYPE_PRIORITY:B = 0x2t

.field static final TYPE_PUSH_PROMISE:B = 0x5t

.field static final TYPE_RST_STREAM:B = 0x3t

.field static final TYPE_SETTINGS:B = 0x4t

.field static final TYPE_WINDOW_UPDATE:B = 0x8t


# direct methods
.method static constructor <clinit>()V
    .locals 18

    .prologue
    .line 24
    const-string v10, "PRI * HTTP/2.0\r\n\r\nSM\r\n\r\n"

    .line 25
    invoke-static {v10}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v10

    sput-object v10, Lokhttp3/internal/http2/Http2;->CONNECTION_PREFACE:Lokio/ByteString;

    .line 51
    const/16 v10, 0xa

    new-array v10, v10, [Ljava/lang/String;

    move-object/from16 v17, v10

    move-object/from16 v10, v17

    move-object/from16 v11, v17

    const/4 v12, 0x0

    const-string v13, "DATA"

    aput-object v13, v11, v12

    move-object/from16 v17, v10

    move-object/from16 v10, v17

    move-object/from16 v11, v17

    const/4 v12, 0x1

    const-string v13, "HEADERS"

    aput-object v13, v11, v12

    move-object/from16 v17, v10

    move-object/from16 v10, v17

    move-object/from16 v11, v17

    const/4 v12, 0x2

    const-string v13, "PRIORITY"

    aput-object v13, v11, v12

    move-object/from16 v17, v10

    move-object/from16 v10, v17

    move-object/from16 v11, v17

    const/4 v12, 0x3

    const-string v13, "RST_STREAM"

    aput-object v13, v11, v12

    move-object/from16 v17, v10

    move-object/from16 v10, v17

    move-object/from16 v11, v17

    const/4 v12, 0x4

    const-string v13, "SETTINGS"

    aput-object v13, v11, v12

    move-object/from16 v17, v10

    move-object/from16 v10, v17

    move-object/from16 v11, v17

    const/4 v12, 0x5

    const-string v13, "PUSH_PROMISE"

    aput-object v13, v11, v12

    move-object/from16 v17, v10

    move-object/from16 v10, v17

    move-object/from16 v11, v17

    const/4 v12, 0x6

    const-string v13, "PING"

    aput-object v13, v11, v12

    move-object/from16 v17, v10

    move-object/from16 v10, v17

    move-object/from16 v11, v17

    const/4 v12, 0x7

    const-string v13, "GOAWAY"

    aput-object v13, v11, v12

    move-object/from16 v17, v10

    move-object/from16 v10, v17

    move-object/from16 v11, v17

    const/16 v12, 0x8

    const-string v13, "WINDOW_UPDATE"

    aput-object v13, v11, v12

    move-object/from16 v17, v10

    move-object/from16 v10, v17

    move-object/from16 v11, v17

    const/16 v12, 0x9

    const-string v13, "CONTINUATION"

    aput-object v13, v11, v12

    sput-object v10, Lokhttp3/internal/http2/Http2;->FRAME_NAMES:[Ljava/lang/String;

    .line 68
    const/16 v10, 0x40

    new-array v10, v10, [Ljava/lang/String;

    sput-object v10, Lokhttp3/internal/http2/Http2;->FLAGS:[Ljava/lang/String;

    .line 69
    const/16 v10, 0x100

    new-array v10, v10, [Ljava/lang/String;

    sput-object v10, Lokhttp3/internal/http2/Http2;->BINARY:[Ljava/lang/String;

    .line 71
    const/4 v10, 0x0

    move v0, v10

    :goto_0
    move v10, v0

    sget-object v11, Lokhttp3/internal/http2/Http2;->BINARY:[Ljava/lang/String;

    array-length v11, v11

    if-ge v10, v11, :cond_0

    .line 72
    sget-object v10, Lokhttp3/internal/http2/Http2;->BINARY:[Ljava/lang/String;

    move v11, v0

    const-string v12, "%8s"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    const/4 v15, 0x0

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v12, v13}, Lokhttp3/internal/Util;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    const/16 v13, 0x20

    const/16 v14, 0x30

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    .line 71
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 75
    :cond_0
    sget-object v10, Lokhttp3/internal/http2/Http2;->FLAGS:[Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, ""

    aput-object v12, v10, v11

    .line 76
    sget-object v10, Lokhttp3/internal/http2/Http2;->FLAGS:[Ljava/lang/String;

    const/4 v11, 0x1

    const-string v12, "END_STREAM"

    aput-object v12, v10, v11

    .line 78
    const/4 v10, 0x1

    new-array v10, v10, [I

    move-object/from16 v17, v10

    move-object/from16 v10, v17

    move-object/from16 v11, v17

    const/4 v12, 0x0

    const/4 v13, 0x1

    aput v13, v11, v12

    move-object v0, v10

    .line 80
    sget-object v10, Lokhttp3/internal/http2/Http2;->FLAGS:[Ljava/lang/String;

    const/16 v11, 0x8

    const-string v12, "PADDED"

    aput-object v12, v10, v11

    .line 81
    move-object v10, v0

    move-object v1, v10

    move-object v10, v1

    array-length v10, v10

    move v2, v10

    const/4 v10, 0x0

    move v3, v10

    :goto_1
    move v10, v3

    move v11, v2

    if-ge v10, v11, :cond_1

    move-object v10, v1

    move v11, v3

    aget v10, v10, v11

    move v4, v10

    .line 82
    sget-object v10, Lokhttp3/internal/http2/Http2;->FLAGS:[Ljava/lang/String;

    move v11, v4

    const/16 v12, 0x8

    or-int/lit8 v11, v11, 0x8

    new-instance v12, Ljava/lang/StringBuilder;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Lokhttp3/internal/http2/Http2;->FLAGS:[Ljava/lang/String;

    move v14, v4

    aget-object v13, v13, v14

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "|PADDED"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    .line 81
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 85
    :cond_1
    sget-object v10, Lokhttp3/internal/http2/Http2;->FLAGS:[Ljava/lang/String;

    const/4 v11, 0x4

    const-string v12, "END_HEADERS"

    aput-object v12, v10, v11

    .line 86
    sget-object v10, Lokhttp3/internal/http2/Http2;->FLAGS:[Ljava/lang/String;

    const/16 v11, 0x20

    const-string v12, "PRIORITY"

    aput-object v12, v10, v11

    .line 87
    sget-object v10, Lokhttp3/internal/http2/Http2;->FLAGS:[Ljava/lang/String;

    const/16 v11, 0x24

    const-string v12, "END_HEADERS|PRIORITY"

    aput-object v12, v10, v11

    .line 88
    const/4 v10, 0x3

    new-array v10, v10, [I

    fill-array-data v10, :array_0

    move-object v1, v10

    .line 92
    move-object v10, v1

    move-object v2, v10

    move-object v10, v2

    array-length v10, v10

    move v3, v10

    const/4 v10, 0x0

    move v4, v10

    :goto_2
    move v10, v4

    move v11, v3

    if-ge v10, v11, :cond_3

    move-object v10, v2

    move v11, v4

    aget v10, v10, v11

    move v5, v10

    .line 93
    move-object v10, v0

    move-object v6, v10

    move-object v10, v6

    array-length v10, v10

    move v7, v10

    const/4 v10, 0x0

    move v8, v10

    :goto_3
    move v10, v8

    move v11, v7

    if-ge v10, v11, :cond_2

    move-object v10, v6

    move v11, v8

    aget v10, v10, v11

    move v9, v10

    .line 94
    sget-object v10, Lokhttp3/internal/http2/Http2;->FLAGS:[Ljava/lang/String;

    move v11, v9

    move v12, v5

    or-int/2addr v11, v12

    new-instance v12, Ljava/lang/StringBuilder;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Lokhttp3/internal/http2/Http2;->FLAGS:[Ljava/lang/String;

    move v14, v9

    aget-object v13, v13, v14

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/16 v13, 0x7c

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Lokhttp3/internal/http2/Http2;->FLAGS:[Ljava/lang/String;

    move v14, v5

    aget-object v13, v13, v14

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    .line 95
    sget-object v10, Lokhttp3/internal/http2/Http2;->FLAGS:[Ljava/lang/String;

    move v11, v9

    move v12, v5

    or-int/2addr v11, v12

    const/16 v12, 0x8

    or-int/lit8 v11, v11, 0x8

    new-instance v12, Ljava/lang/StringBuilder;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Lokhttp3/internal/http2/Http2;->FLAGS:[Ljava/lang/String;

    move v14, v9

    aget-object v13, v13, v14

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/16 v13, 0x7c

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Lokhttp3/internal/http2/Http2;->FLAGS:[Ljava/lang/String;

    move v14, v5

    aget-object v13, v13, v14

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "|PADDED"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    .line 93
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 92
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    .line 100
    :cond_3
    const/4 v10, 0x0

    move v2, v10

    :goto_4
    move v10, v2

    sget-object v11, Lokhttp3/internal/http2/Http2;->FLAGS:[Ljava/lang/String;

    array-length v11, v11

    if-ge v10, v11, :cond_5

    .line 101
    sget-object v10, Lokhttp3/internal/http2/Http2;->FLAGS:[Ljava/lang/String;

    move v11, v2

    aget-object v10, v10, v11

    if-nez v10, :cond_4

    sget-object v10, Lokhttp3/internal/http2/Http2;->FLAGS:[Ljava/lang/String;

    move v11, v2

    sget-object v12, Lokhttp3/internal/http2/Http2;->BINARY:[Ljava/lang/String;

    move v13, v2

    aget-object v12, v12, v13

    aput-object v12, v10, v11

    .line 100
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 103
    :cond_5
    return-void

    .line 88
    :array_0
    .array-data 4
        0x4
        0x20
        0x24
    .end array-data
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 105
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 106
    return-void
.end method

.method static formatFlags(BB)Ljava/lang/String;
    .locals 6

    .prologue
    .line 147
    move v0, p0

    move v1, p1

    move v3, v1

    if-nez v3, :cond_0

    const-string v3, ""

    move-object v0, v3

    .line 165
    :goto_0
    return-object v0

    .line 148
    :cond_0
    move v3, v0

    packed-switch v3, :pswitch_data_0

    .line 158
    :pswitch_0
    move v3, v1

    sget-object v4, Lokhttp3/internal/http2/Http2;->FLAGS:[Ljava/lang/String;

    array-length v4, v4

    if-ge v3, v4, :cond_2

    sget-object v3, Lokhttp3/internal/http2/Http2;->FLAGS:[Ljava/lang/String;

    move v4, v1

    aget-object v3, v3, v4

    :goto_1
    move-object v2, v3

    .line 160
    move v3, v0

    const/4 v4, 0x5

    if-ne v3, v4, :cond_3

    move v3, v1

    const/4 v4, 0x4

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_3

    .line 161
    move-object v3, v2

    const-string v4, "HEADERS"

    const-string v5, "PUSH_PROMISE"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 151
    :pswitch_1
    move v3, v1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    const-string v3, "ACK"

    :goto_2
    move-object v0, v3

    goto :goto_0

    :cond_1
    sget-object v3, Lokhttp3/internal/http2/Http2;->BINARY:[Ljava/lang/String;

    move v4, v1

    aget-object v3, v3, v4

    goto :goto_2

    .line 156
    :pswitch_2
    sget-object v3, Lokhttp3/internal/http2/Http2;->BINARY:[Ljava/lang/String;

    move v4, v1

    aget-object v3, v3, v4

    move-object v0, v3

    goto :goto_0

    .line 158
    :cond_2
    sget-object v3, Lokhttp3/internal/http2/Http2;->BINARY:[Ljava/lang/String;

    move v4, v1

    aget-object v3, v3, v4

    goto :goto_1

    .line 162
    :cond_3
    move v3, v0

    if-nez v3, :cond_4

    move v3, v1

    const/16 v4, 0x20

    and-int/lit8 v3, v3, 0x20

    if-eqz v3, :cond_4

    .line 163
    move-object v3, v2

    const-string v4, "PRIORITY"

    const-string v5, "COMPRESSED"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 165
    :cond_4
    move-object v3, v2

    move-object v0, v3

    goto :goto_0

    .line 148
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method static frameLog(ZIIBB)Ljava/lang/String;
    .locals 13

    .prologue
    .line 135
    move v0, p0

    move v1, p1

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move v7, v3

    sget-object v8, Lokhttp3/internal/http2/Http2;->FRAME_NAMES:[Ljava/lang/String;

    array-length v8, v8

    if-ge v7, v8, :cond_0

    sget-object v7, Lokhttp3/internal/http2/Http2;->FRAME_NAMES:[Ljava/lang/String;

    move v8, v3

    aget-object v7, v7, v8

    :goto_0
    move-object v5, v7

    .line 136
    move v7, v3

    move v8, v4

    invoke-static {v7, v8}, Lokhttp3/internal/http2/Http2;->formatFlags(BB)Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    .line 137
    const-string v7, "%s 0x%08x %5d %-13s %s"

    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/Object;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x0

    move v11, v0

    if-eqz v11, :cond_1

    const-string v11, "<<"

    :goto_1
    aput-object v11, v9, v10

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x1

    move v11, v1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x2

    move v11, v2

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x3

    move-object v11, v5

    aput-object v11, v9, v10

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x4

    move-object v11, v6

    aput-object v11, v9, v10

    invoke-static {v7, v8}, Lokhttp3/internal/Util;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    move-object v0, v7

    return-object v0

    .line 135
    :cond_0
    const-string v7, "0x%02x"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x0

    move v11, v3

    invoke-static {v11}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v7, v8}, Lokhttp3/internal/Util;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 137
    :cond_1
    const-string v11, ">>"

    goto :goto_1
.end method

.method static varargs illegalArgument(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;
    .locals 7

    .prologue
    .line 109
    move-object v0, p0

    move-object v1, p1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-static {v4, v5}, Lokhttp3/internal/Util;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method static varargs ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 113
    move-object v0, p0

    move-object v1, p1

    new-instance v2, Ljava/io/IOException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-static {v4, v5}, Lokhttp3/internal/Util;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
