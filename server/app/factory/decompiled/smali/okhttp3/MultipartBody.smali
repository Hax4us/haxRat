.class public final Lokhttp3/MultipartBody;
.super Lokhttp3/RequestBody;
.source "MultipartBody.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/MultipartBody$Builder;,
        Lokhttp3/MultipartBody$Part;
    }
.end annotation


# static fields
.field public static final ALTERNATIVE:Lokhttp3/MediaType;

.field private static final COLONSPACE:[B

.field private static final CRLF:[B

.field private static final DASHDASH:[B

.field public static final DIGEST:Lokhttp3/MediaType;

.field public static final FORM:Lokhttp3/MediaType;

.field public static final MIXED:Lokhttp3/MediaType;

.field public static final PARALLEL:Lokhttp3/MediaType;


# instance fields
.field private final boundary:Lokio/ByteString;

.field private contentLength:J

.field private final contentType:Lokhttp3/MediaType;

.field private final originalType:Lokhttp3/MediaType;

.field private final parts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokhttp3/MultipartBody$Part;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-string v0, "multipart/mixed"

    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    sput-object v0, Lokhttp3/MultipartBody;->MIXED:Lokhttp3/MediaType;

    .line 41
    const-string v0, "multipart/alternative"

    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    sput-object v0, Lokhttp3/MultipartBody;->ALTERNATIVE:Lokhttp3/MediaType;

    .line 48
    const-string v0, "multipart/digest"

    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    sput-object v0, Lokhttp3/MultipartBody;->DIGEST:Lokhttp3/MediaType;

    .line 54
    const-string v0, "multipart/parallel"

    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    sput-object v0, Lokhttp3/MultipartBody;->PARALLEL:Lokhttp3/MediaType;

    .line 61
    const-string v0, "multipart/form-data"

    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    sput-object v0, Lokhttp3/MultipartBody;->FORM:Lokhttp3/MediaType;

    .line 63
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lokhttp3/MultipartBody;->COLONSPACE:[B

    .line 64
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lokhttp3/MultipartBody;->CRLF:[B

    .line 65
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    sput-object v0, Lokhttp3/MultipartBody;->DASHDASH:[B

    return-void

    .line 63
    nop

    :array_0
    .array-data 1
        0x3at
        0x20t
    .end array-data

    .line 64
    nop

    :array_1
    .array-data 1
        0xdt
        0xat
    .end array-data

    .line 65
    nop

    :array_2
    .array-data 1
        0x2dt
        0x2dt
    .end array-data
.end method

.method constructor <init>(Lokio/ByteString;Lokhttp3/MediaType;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokio/ByteString;",
            "Lokhttp3/MediaType;",
            "Ljava/util/List",
            "<",
            "Lokhttp3/MultipartBody$Part;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 73
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    invoke-direct {v4}, Lokhttp3/RequestBody;-><init>()V

    .line 71
    move-object v4, v0

    const-wide/16 v5, -0x1

    iput-wide v5, v4, Lokhttp3/MultipartBody;->contentLength:J

    .line 74
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lokhttp3/MultipartBody;->boundary:Lokio/ByteString;

    .line 75
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lokhttp3/MultipartBody;->originalType:Lokhttp3/MediaType;

    .line 76
    move-object v4, v0

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; boundary="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v6}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v5

    iput-object v5, v4, Lokhttp3/MultipartBody;->contentType:Lokhttp3/MediaType;

    .line 77
    move-object v4, v0

    move-object v5, v3

    invoke-static {v5}, Lokhttp3/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    iput-object v5, v4, Lokhttp3/MultipartBody;->parts:Ljava/util/List;

    .line 78
    return-void
.end method

.method static appendQuotedString(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 7

    .prologue
    .line 201
    move-object v0, p0

    move-object v1, p1

    move-object v5, v0

    const/16 v6, 0x22

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 202
    const/4 v5, 0x0

    move v2, v5

    move-object v5, v1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    move v3, v5

    :goto_0
    move v5, v2

    move v6, v3

    if-ge v5, v6, :cond_0

    .line 203
    move-object v5, v1

    move v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    move v4, v5

    .line 204
    move v5, v4

    sparse-switch v5, :sswitch_data_0

    .line 215
    move-object v5, v0

    move v6, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 202
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 206
    :sswitch_0
    move-object v5, v0

    const-string v6, "%0A"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 207
    goto :goto_1

    .line 209
    :sswitch_1
    move-object v5, v0

    const-string v6, "%0D"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 210
    goto :goto_1

    .line 212
    :sswitch_2
    move-object v5, v0

    const-string v6, "%22"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 213
    goto :goto_1

    .line 219
    :cond_0
    move-object v5, v0

    const/16 v6, 0x22

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 220
    move-object v5, v0

    move-object v0, v5

    return-object v0

    .line 204
    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0xd -> :sswitch_1
        0x22 -> :sswitch_2
    .end sparse-switch
.end method

.method private writeOrCountBytes(Lokio/BufferedSink;Z)J
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 123
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    const-wide/16 v14, 0x0

    move-wide v3, v14

    .line 125
    const/4 v14, 0x0

    move-object v5, v14

    .line 126
    move v14, v2

    if-eqz v14, :cond_0

    .line 127
    new-instance v14, Lokio/Buffer;

    move-object/from16 v18, v14

    move-object/from16 v14, v18

    move-object/from16 v15, v18

    invoke-direct {v15}, Lokio/Buffer;-><init>()V

    move-object/from16 v18, v14

    move-object/from16 v14, v18

    move-object/from16 v15, v18

    move-object v5, v15

    move-object v1, v14

    .line 130
    :cond_0
    const/4 v14, 0x0

    move v6, v14

    move-object v14, v0

    iget-object v14, v14, Lokhttp3/MultipartBody;->parts:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    move v7, v14

    :goto_0
    move v14, v6

    move v15, v7

    if-ge v14, v15, :cond_6

    .line 131
    move-object v14, v0

    iget-object v14, v14, Lokhttp3/MultipartBody;->parts:Ljava/util/List;

    move v15, v6

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lokhttp3/MultipartBody$Part;

    move-object v8, v14

    .line 132
    move-object v14, v8

    iget-object v14, v14, Lokhttp3/MultipartBody$Part;->headers:Lokhttp3/Headers;

    move-object v9, v14

    .line 133
    move-object v14, v8

    iget-object v14, v14, Lokhttp3/MultipartBody$Part;->body:Lokhttp3/RequestBody;

    move-object v10, v14

    .line 135
    move-object v14, v1

    sget-object v15, Lokhttp3/MultipartBody;->DASHDASH:[B

    invoke-interface {v14, v15}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;

    move-result-object v14

    .line 136
    move-object v14, v1

    move-object v15, v0

    iget-object v15, v15, Lokhttp3/MultipartBody;->boundary:Lokio/ByteString;

    invoke-interface {v14, v15}, Lokio/BufferedSink;->write(Lokio/ByteString;)Lokio/BufferedSink;

    move-result-object v14

    .line 137
    move-object v14, v1

    sget-object v15, Lokhttp3/MultipartBody;->CRLF:[B

    invoke-interface {v14, v15}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;

    move-result-object v14

    .line 139
    move-object v14, v9

    if-eqz v14, :cond_1

    .line 140
    const/4 v14, 0x0

    move v11, v14

    move-object v14, v9

    invoke-virtual {v14}, Lokhttp3/Headers;->size()I

    move-result v14

    move v12, v14

    :goto_1
    move v14, v11

    move v15, v12

    if-ge v14, v15, :cond_1

    .line 141
    move-object v14, v1

    move-object v15, v9

    move/from16 v16, v11

    invoke-virtual/range {v15 .. v16}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v14

    sget-object v15, Lokhttp3/MultipartBody;->COLONSPACE:[B

    .line 142
    invoke-interface {v14, v15}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;

    move-result-object v14

    move-object v15, v9

    move/from16 v16, v11

    .line 143
    invoke-virtual/range {v15 .. v16}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v14

    sget-object v15, Lokhttp3/MultipartBody;->CRLF:[B

    .line 144
    invoke-interface {v14, v15}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;

    move-result-object v14

    .line 140
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 148
    :cond_1
    move-object v14, v10

    invoke-virtual {v14}, Lokhttp3/RequestBody;->contentType()Lokhttp3/MediaType;

    move-result-object v14

    move-object v11, v14

    .line 149
    move-object v14, v11

    if-eqz v14, :cond_2

    .line 150
    move-object v14, v1

    const-string v15, "Content-Type: "

    invoke-interface {v14, v15}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v14

    move-object v15, v11

    .line 151
    invoke-virtual {v15}, Lokhttp3/MediaType;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v14

    sget-object v15, Lokhttp3/MultipartBody;->CRLF:[B

    .line 152
    invoke-interface {v14, v15}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;

    move-result-object v14

    .line 155
    :cond_2
    move-object v14, v10

    invoke-virtual {v14}, Lokhttp3/RequestBody;->contentLength()J

    move-result-wide v14

    move-wide v12, v14

    .line 156
    move-wide v14, v12

    const-wide/16 v16, -0x1

    cmp-long v14, v14, v16

    if-eqz v14, :cond_4

    .line 157
    move-object v14, v1

    const-string v15, "Content-Length: "

    invoke-interface {v14, v15}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v14

    move-wide v15, v12

    .line 158
    invoke-interface/range {v14 .. v16}, Lokio/BufferedSink;->writeDecimalLong(J)Lokio/BufferedSink;

    move-result-object v14

    sget-object v15, Lokhttp3/MultipartBody;->CRLF:[B

    .line 159
    invoke-interface {v14, v15}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;

    move-result-object v14

    .line 166
    :cond_3
    move-object v14, v1

    sget-object v15, Lokhttp3/MultipartBody;->CRLF:[B

    invoke-interface {v14, v15}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;

    move-result-object v14

    .line 168
    move v14, v2

    if-eqz v14, :cond_5

    .line 169
    move-wide v14, v3

    move-wide/from16 v16, v12

    add-long v14, v14, v16

    move-wide v3, v14

    .line 174
    :goto_2
    move-object v14, v1

    sget-object v15, Lokhttp3/MultipartBody;->CRLF:[B

    invoke-interface {v14, v15}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;

    move-result-object v14

    .line 130
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 160
    :cond_4
    move v14, v2

    if-eqz v14, :cond_3

    .line 162
    move-object v14, v5

    invoke-virtual {v14}, Lokio/Buffer;->clear()V

    .line 163
    const-wide/16 v14, -0x1

    move-wide v0, v14

    .line 187
    :goto_3
    return-wide v0

    .line 171
    :cond_5
    move-object v14, v10

    move-object v15, v1

    invoke-virtual {v14, v15}, Lokhttp3/RequestBody;->writeTo(Lokio/BufferedSink;)V

    goto :goto_2

    .line 177
    :cond_6
    move-object v14, v1

    sget-object v15, Lokhttp3/MultipartBody;->DASHDASH:[B

    invoke-interface {v14, v15}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;

    move-result-object v14

    .line 178
    move-object v14, v1

    move-object v15, v0

    iget-object v15, v15, Lokhttp3/MultipartBody;->boundary:Lokio/ByteString;

    invoke-interface {v14, v15}, Lokio/BufferedSink;->write(Lokio/ByteString;)Lokio/BufferedSink;

    move-result-object v14

    .line 179
    move-object v14, v1

    sget-object v15, Lokhttp3/MultipartBody;->DASHDASH:[B

    invoke-interface {v14, v15}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;

    move-result-object v14

    .line 180
    move-object v14, v1

    sget-object v15, Lokhttp3/MultipartBody;->CRLF:[B

    invoke-interface {v14, v15}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;

    move-result-object v14

    .line 182
    move v14, v2

    if-eqz v14, :cond_7

    .line 183
    move-wide v14, v3

    move-object/from16 v16, v5

    invoke-virtual/range {v16 .. v16}, Lokio/Buffer;->size()J

    move-result-wide v16

    add-long v14, v14, v16

    move-wide v3, v14

    .line 184
    move-object v14, v5

    invoke-virtual {v14}, Lokio/Buffer;->clear()V

    .line 187
    :cond_7
    move-wide v14, v3

    move-wide v0, v14

    goto :goto_3
.end method


# virtual methods
.method public boundary()Ljava/lang/String;
    .locals 2

    .prologue
    .line 85
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/MultipartBody;->boundary:Lokio/ByteString;

    invoke-virtual {v1}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public contentLength()J
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 107
    move-object v0, p0

    move-object v3, v0

    iget-wide v3, v3, Lokhttp3/MultipartBody;->contentLength:J

    move-wide v1, v3

    .line 108
    move-wide v3, v1

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    move-wide v3, v1

    move-wide v0, v3

    .line 109
    :goto_0
    return-wide v0

    :cond_0
    move-object v3, v0

    move-object v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Lokhttp3/MultipartBody;->writeOrCountBytes(Lokio/BufferedSink;Z)J

    move-result-wide v4

    move-object v8, v3

    move-wide v9, v4

    move-wide v3, v9

    move-object v5, v8

    move-wide v6, v9

    iput-wide v6, v5, Lokhttp3/MultipartBody;->contentLength:J

    move-wide v0, v3

    goto :goto_0
.end method

.method public contentType()Lokhttp3/MediaType;
    .locals 2

    .prologue
    .line 103
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/MultipartBody;->contentType:Lokhttp3/MediaType;

    move-object v0, v1

    return-object v0
.end method

.method public part(I)Lokhttp3/MultipartBody$Part;
    .locals 4

    .prologue
    .line 98
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lokhttp3/MultipartBody;->parts:Ljava/util/List;

    move v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lokhttp3/MultipartBody$Part;

    move-object v0, v2

    return-object v0
.end method

.method public parts()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lokhttp3/MultipartBody$Part;",
            ">;"
        }
    .end annotation

    .prologue
    .line 94
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/MultipartBody;->parts:Ljava/util/List;

    move-object v0, v1

    return-object v0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 90
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/MultipartBody;->parts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public type()Lokhttp3/MediaType;
    .locals 2

    .prologue
    .line 81
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/MultipartBody;->originalType:Lokhttp3/MediaType;

    move-object v0, v1

    return-object v0
.end method

.method public writeTo(Lokio/BufferedSink;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 113
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lokhttp3/MultipartBody;->writeOrCountBytes(Lokio/BufferedSink;Z)J

    move-result-wide v2

    .line 114
    return-void
.end method
