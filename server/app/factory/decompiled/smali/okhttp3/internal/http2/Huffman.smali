.class Lokhttp3/internal/http2/Huffman;
.super Ljava/lang/Object;
.source "Huffman.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/http2/Huffman$Node;
    }
.end annotation


# static fields
.field private static final CODES:[I

.field private static final CODE_LENGTHS:[B

.field private static final INSTANCE:Lokhttp3/internal/http2/Huffman;


# instance fields
.field private final root:Lokhttp3/internal/http2/Huffman$Node;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 37
    const/16 v0, 0x100

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lokhttp3/internal/http2/Huffman;->CODES:[I

    .line 65
    const/16 v0, 0x100

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lokhttp3/internal/http2/Huffman;->CODE_LENGTHS:[B

    .line 79
    new-instance v0, Lokhttp3/internal/http2/Huffman;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    invoke-direct {v1}, Lokhttp3/internal/http2/Huffman;-><init>()V

    sput-object v0, Lokhttp3/internal/http2/Huffman;->INSTANCE:Lokhttp3/internal/http2/Huffman;

    return-void

    .line 37
    nop

    :array_0
    .array-data 4
        0x1ff8
        0x7fffd8
        0xfffffe2
        0xfffffe3
        0xfffffe4
        0xfffffe5
        0xfffffe6
        0xfffffe7
        0xfffffe8
        0xffffea
        0x3ffffffc    # 1.9999995f
        0xfffffe9
        0xfffffea
        0x3ffffffd    # 1.9999996f
        0xfffffeb
        0xfffffec
        0xfffffed
        0xfffffee
        0xfffffef
        0xffffff0
        0xffffff1
        0xffffff2
        0x3ffffffe    # 1.9999998f
        0xffffff3
        0xffffff4
        0xffffff5
        0xffffff6
        0xffffff7
        0xffffff8
        0xffffff9
        0xffffffa
        0xffffffb
        0x14
        0x3f8
        0x3f9
        0xffa
        0x1ff9
        0x15
        0xf8
        0x7fa
        0x3fa
        0x3fb
        0xf9
        0x7fb
        0xfa
        0x16
        0x17
        0x18
        0x0
        0x1
        0x2
        0x19
        0x1a
        0x1b
        0x1c
        0x1d
        0x1e
        0x1f
        0x5c
        0xfb
        0x7ffc
        0x20
        0xffb
        0x3fc
        0x1ffa
        0x21
        0x5d
        0x5e
        0x5f
        0x60
        0x61
        0x62
        0x63
        0x64
        0x65
        0x66
        0x67
        0x68
        0x69
        0x6a
        0x6b
        0x6c
        0x6d
        0x6e
        0x6f
        0x70
        0x71
        0x72
        0xfc
        0x73
        0xfd
        0x1ffb
        0x7fff0
        0x1ffc
        0x3ffc
        0x22
        0x7ffd
        0x3
        0x23
        0x4
        0x24
        0x5
        0x25
        0x26
        0x27
        0x6
        0x74
        0x75
        0x28
        0x29
        0x2a
        0x7
        0x2b
        0x76
        0x2c
        0x8
        0x9
        0x2d
        0x77
        0x78
        0x79
        0x7a
        0x7b
        0x7ffe
        0x7fc
        0x3ffd
        0x1ffd
        0xffffffc
        0xfffe6
        0x3fffd2
        0xfffe7
        0xfffe8
        0x3fffd3
        0x3fffd4
        0x3fffd5
        0x7fffd9
        0x3fffd6
        0x7fffda
        0x7fffdb
        0x7fffdc
        0x7fffdd
        0x7fffde
        0xffffeb
        0x7fffdf
        0xffffec
        0xffffed
        0x3fffd7
        0x7fffe0
        0xffffee
        0x7fffe1
        0x7fffe2
        0x7fffe3
        0x7fffe4
        0x1fffdc
        0x3fffd8
        0x7fffe5
        0x3fffd9
        0x7fffe6
        0x7fffe7
        0xffffef
        0x3fffda
        0x1fffdd
        0xfffe9
        0x3fffdb
        0x3fffdc
        0x7fffe8
        0x7fffe9
        0x1fffde
        0x7fffea
        0x3fffdd
        0x3fffde
        0xfffff0
        0x1fffdf
        0x3fffdf
        0x7fffeb
        0x7fffec
        0x1fffe0
        0x1fffe1
        0x3fffe0
        0x1fffe2
        0x7fffed
        0x3fffe1
        0x7fffee
        0x7fffef
        0xfffea
        0x3fffe2
        0x3fffe3
        0x3fffe4
        0x7ffff0
        0x3fffe5
        0x3fffe6
        0x7ffff1
        0x3ffffe0
        0x3ffffe1
        0xfffeb
        0x7fff1
        0x3fffe7
        0x7ffff2
        0x3fffe8
        0x1ffffec
        0x3ffffe2
        0x3ffffe3
        0x3ffffe4
        0x7ffffde
        0x7ffffdf
        0x3ffffe5
        0xfffff1
        0x1ffffed
        0x7fff2
        0x1fffe3
        0x3ffffe6
        0x7ffffe0
        0x7ffffe1
        0x3ffffe7
        0x7ffffe2
        0xfffff2
        0x1fffe4
        0x1fffe5
        0x3ffffe8
        0x3ffffe9
        0xffffffd
        0x7ffffe3
        0x7ffffe4
        0x7ffffe5
        0xfffec
        0xfffff3
        0xfffed
        0x1fffe6
        0x3fffe9
        0x1fffe7
        0x1fffe8
        0x7ffff3
        0x3fffea
        0x3fffeb
        0x1ffffee
        0x1ffffef
        0xfffff4
        0xfffff5
        0x3ffffea
        0x7ffff4
        0x3ffffeb
        0x7ffffe6
        0x3ffffec
        0x3ffffed
        0x7ffffe7
        0x7ffffe8
        0x7ffffe9
        0x7ffffea
        0x7ffffeb
        0xffffffe
        0x7ffffec
        0x7ffffed
        0x7ffffee
        0x7ffffef
        0x7fffff0
        0x3ffffee
    .end array-data

    .line 65
    :array_1
    .array-data 1
        0xdt
        0x17t
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x18t
        0x1et
        0x1ct
        0x1ct
        0x1et
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1et
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x6t
        0xat
        0xat
        0xct
        0xdt
        0x6t
        0x8t
        0xbt
        0xat
        0xat
        0x8t
        0xbt
        0x8t
        0x6t
        0x6t
        0x6t
        0x5t
        0x5t
        0x5t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x7t
        0x8t
        0xft
        0x6t
        0xct
        0xat
        0xdt
        0x6t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x8t
        0x7t
        0x8t
        0xdt
        0x13t
        0xdt
        0xet
        0x6t
        0xft
        0x5t
        0x6t
        0x5t
        0x6t
        0x5t
        0x6t
        0x6t
        0x6t
        0x5t
        0x7t
        0x7t
        0x6t
        0x6t
        0x6t
        0x5t
        0x6t
        0x7t
        0x6t
        0x5t
        0x5t
        0x6t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0xft
        0xbt
        0xet
        0xdt
        0x1ct
        0x14t
        0x16t
        0x14t
        0x14t
        0x16t
        0x16t
        0x16t
        0x17t
        0x16t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x18t
        0x17t
        0x18t
        0x18t
        0x16t
        0x17t
        0x18t
        0x17t
        0x17t
        0x17t
        0x17t
        0x15t
        0x16t
        0x17t
        0x16t
        0x17t
        0x17t
        0x18t
        0x16t
        0x15t
        0x14t
        0x16t
        0x16t
        0x17t
        0x17t
        0x15t
        0x17t
        0x16t
        0x16t
        0x18t
        0x15t
        0x16t
        0x17t
        0x17t
        0x15t
        0x15t
        0x16t
        0x15t
        0x17t
        0x16t
        0x17t
        0x17t
        0x14t
        0x16t
        0x16t
        0x16t
        0x17t
        0x16t
        0x16t
        0x17t
        0x1at
        0x1at
        0x14t
        0x13t
        0x16t
        0x17t
        0x16t
        0x19t
        0x1at
        0x1at
        0x1at
        0x1bt
        0x1bt
        0x1at
        0x18t
        0x19t
        0x13t
        0x15t
        0x1at
        0x1bt
        0x1bt
        0x1at
        0x1bt
        0x18t
        0x15t
        0x15t
        0x1at
        0x1at
        0x1ct
        0x1bt
        0x1bt
        0x1bt
        0x14t
        0x18t
        0x14t
        0x15t
        0x16t
        0x15t
        0x15t
        0x17t
        0x16t
        0x16t
        0x19t
        0x19t
        0x18t
        0x18t
        0x1at
        0x17t
        0x1at
        0x1bt
        0x1at
        0x1at
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1ct
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1at
    .end array-data
.end method

.method private constructor <init>()V
    .locals 5

    .prologue
    .line 87
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 85
    move-object v1, v0

    new-instance v2, Lokhttp3/internal/http2/Huffman$Node;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lokhttp3/internal/http2/Huffman$Node;-><init>()V

    iput-object v2, v1, Lokhttp3/internal/http2/Huffman;->root:Lokhttp3/internal/http2/Huffman$Node;

    .line 88
    move-object v1, v0

    invoke-direct {v1}, Lokhttp3/internal/http2/Huffman;->buildTree()V

    .line 89
    return-void
.end method

.method private addCode(IIB)V
    .locals 15

    .prologue
    .line 173
    move-object v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    new-instance v10, Lokhttp3/internal/http2/Huffman$Node;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    move v12, v1

    move v13, v3

    invoke-direct {v11, v12, v13}, Lokhttp3/internal/http2/Huffman$Node;-><init>(II)V

    move-object v4, v10

    .line 175
    move-object v10, v0

    iget-object v10, v10, Lokhttp3/internal/http2/Huffman;->root:Lokhttp3/internal/http2/Huffman$Node;

    move-object v5, v10

    .line 176
    :goto_0
    move v10, v3

    const/16 v11, 0x8

    if-le v10, v11, :cond_2

    .line 177
    move v10, v3

    const/16 v11, 0x8

    add-int/lit8 v10, v10, -0x8

    int-to-byte v10, v10

    move v3, v10

    .line 178
    move v10, v2

    move v11, v3

    ushr-int/2addr v10, v11

    const/16 v11, 0xff

    and-int/lit16 v10, v10, 0xff

    move v6, v10

    .line 179
    move-object v10, v5

    iget-object v10, v10, Lokhttp3/internal/http2/Huffman$Node;->children:[Lokhttp3/internal/http2/Huffman$Node;

    if-nez v10, :cond_0

    .line 180
    new-instance v10, Ljava/lang/IllegalStateException;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const-string v12, "invalid dictionary: prefix not unique"

    invoke-direct {v11, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 182
    :cond_0
    move-object v10, v5

    iget-object v10, v10, Lokhttp3/internal/http2/Huffman$Node;->children:[Lokhttp3/internal/http2/Huffman$Node;

    move v11, v6

    aget-object v10, v10, v11

    if-nez v10, :cond_1

    .line 183
    move-object v10, v5

    iget-object v10, v10, Lokhttp3/internal/http2/Huffman$Node;->children:[Lokhttp3/internal/http2/Huffman$Node;

    move v11, v6

    new-instance v12, Lokhttp3/internal/http2/Huffman$Node;

    move-object v14, v12

    move-object v12, v14

    move-object v13, v14

    invoke-direct {v13}, Lokhttp3/internal/http2/Huffman$Node;-><init>()V

    aput-object v12, v10, v11

    .line 185
    :cond_1
    move-object v10, v5

    iget-object v10, v10, Lokhttp3/internal/http2/Huffman$Node;->children:[Lokhttp3/internal/http2/Huffman$Node;

    move v11, v6

    aget-object v10, v10, v11

    move-object v5, v10

    .line 186
    goto :goto_0

    .line 188
    :cond_2
    const/16 v10, 0x8

    move v11, v3

    rsub-int/lit8 v10, v11, 0x8

    move v6, v10

    .line 189
    move v10, v2

    move v11, v6

    shl-int/2addr v10, v11

    const/16 v11, 0xff

    and-int/lit16 v10, v10, 0xff

    move v7, v10

    .line 190
    const/4 v10, 0x1

    move v11, v6

    shl-int/2addr v10, v11

    move v8, v10

    .line 191
    move v10, v7

    move v9, v10

    :goto_1
    move v10, v9

    move v11, v7

    move v12, v8

    add-int/2addr v11, v12

    if-ge v10, v11, :cond_3

    .line 192
    move-object v10, v5

    iget-object v10, v10, Lokhttp3/internal/http2/Huffman$Node;->children:[Lokhttp3/internal/http2/Huffman$Node;

    move v11, v9

    move-object v12, v4

    aput-object v12, v10, v11

    .line 191
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 194
    :cond_3
    return-void
.end method

.method private buildTree()V
    .locals 7

    .prologue
    .line 167
    move-object v0, p0

    const/4 v2, 0x0

    move v1, v2

    :goto_0
    move v2, v1

    sget-object v3, Lokhttp3/internal/http2/Huffman;->CODE_LENGTHS:[B

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 168
    move-object v2, v0

    move v3, v1

    sget-object v4, Lokhttp3/internal/http2/Huffman;->CODES:[I

    move v5, v1

    aget v4, v4, v5

    sget-object v5, Lokhttp3/internal/http2/Huffman;->CODE_LENGTHS:[B

    move v6, v1

    aget-byte v5, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lokhttp3/internal/http2/Huffman;->addCode(IIB)V

    .line 167
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 170
    :cond_0
    return-void
.end method

.method public static get()Lokhttp3/internal/http2/Huffman;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lokhttp3/internal/http2/Huffman;->INSTANCE:Lokhttp3/internal/http2/Huffman;

    return-object v0
.end method


# virtual methods
.method decode([B)[B
    .locals 13

    .prologue
    .line 129
    move-object v0, p0

    move-object v1, p1

    new-instance v9, Ljava/io/ByteArrayOutputStream;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v2, v9

    .line 130
    move-object v9, v0

    iget-object v9, v9, Lokhttp3/internal/http2/Huffman;->root:Lokhttp3/internal/http2/Huffman$Node;

    move-object v3, v9

    .line 131
    const/4 v9, 0x0

    move v4, v9

    .line 132
    const/4 v9, 0x0

    move v5, v9

    .line 133
    const/4 v9, 0x0

    move v6, v9

    :goto_0
    move v9, v6

    move-object v10, v1

    array-length v10, v10

    if-ge v9, v10, :cond_3

    .line 134
    move-object v9, v1

    move v10, v6

    aget-byte v9, v9, v10

    const/16 v10, 0xff

    and-int/lit16 v9, v9, 0xff

    move v7, v9

    .line 135
    move v9, v4

    const/16 v10, 0x8

    shl-int/lit8 v9, v9, 0x8

    move v10, v7

    or-int/2addr v9, v10

    move v4, v9

    .line 136
    add-int/lit8 v5, v5, 0x8

    .line 137
    :goto_1
    move v9, v5

    const/16 v10, 0x8

    if-lt v9, v10, :cond_1

    .line 138
    move v9, v4

    move v10, v5

    const/16 v11, 0x8

    add-int/lit8 v10, v10, -0x8

    ushr-int/2addr v9, v10

    const/16 v10, 0xff

    and-int/lit16 v9, v9, 0xff

    move v8, v9

    .line 139
    move-object v9, v3

    iget-object v9, v9, Lokhttp3/internal/http2/Huffman$Node;->children:[Lokhttp3/internal/http2/Huffman$Node;

    move v10, v8

    aget-object v9, v9, v10

    move-object v3, v9

    .line 140
    move-object v9, v3

    iget-object v9, v9, Lokhttp3/internal/http2/Huffman$Node;->children:[Lokhttp3/internal/http2/Huffman$Node;

    if-nez v9, :cond_0

    .line 142
    move-object v9, v2

    move-object v10, v3

    iget v10, v10, Lokhttp3/internal/http2/Huffman$Node;->symbol:I

    invoke-virtual {v9, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 143
    move v9, v5

    move-object v10, v3

    iget v10, v10, Lokhttp3/internal/http2/Huffman$Node;->terminalBits:I

    sub-int/2addr v9, v10

    move v5, v9

    .line 144
    move-object v9, v0

    iget-object v9, v9, Lokhttp3/internal/http2/Huffman;->root:Lokhttp3/internal/http2/Huffman$Node;

    move-object v3, v9

    .line 149
    :goto_2
    goto :goto_1

    .line 147
    :cond_0
    add-int/lit8 v5, v5, -0x8

    goto :goto_2

    .line 133
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 158
    :cond_2
    move-object v9, v2

    move-object v10, v3

    iget v10, v10, Lokhttp3/internal/http2/Huffman$Node;->symbol:I

    invoke-virtual {v9, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 159
    move v9, v5

    move-object v10, v3

    iget v10, v10, Lokhttp3/internal/http2/Huffman$Node;->terminalBits:I

    sub-int/2addr v9, v10

    move v5, v9

    .line 160
    move-object v9, v0

    iget-object v9, v9, Lokhttp3/internal/http2/Huffman;->root:Lokhttp3/internal/http2/Huffman$Node;

    move-object v3, v9

    .line 152
    :cond_3
    move v9, v5

    if-lez v9, :cond_4

    .line 153
    move v9, v4

    const/16 v10, 0x8

    move v11, v5

    rsub-int/lit8 v10, v11, 0x8

    shl-int/2addr v9, v10

    const/16 v10, 0xff

    and-int/lit16 v9, v9, 0xff

    move v6, v9

    .line 154
    move-object v9, v3

    iget-object v9, v9, Lokhttp3/internal/http2/Huffman$Node;->children:[Lokhttp3/internal/http2/Huffman$Node;

    move v10, v6

    aget-object v9, v9, v10

    move-object v3, v9

    .line 155
    move-object v9, v3

    iget-object v9, v9, Lokhttp3/internal/http2/Huffman$Node;->children:[Lokhttp3/internal/http2/Huffman$Node;

    if-nez v9, :cond_4

    move-object v9, v3

    iget v9, v9, Lokhttp3/internal/http2/Huffman$Node;->terminalBits:I

    move v10, v5

    if-le v9, v10, :cond_2

    .line 163
    :cond_4
    move-object v9, v2

    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    move-object v0, v9

    return-object v0
.end method

.method encode(Lokio/ByteString;Lokio/BufferedSink;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 92
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    const-wide/16 v10, 0x0

    move-wide v3, v10

    .line 93
    const/4 v10, 0x0

    move v5, v10

    .line 95
    const/4 v10, 0x0

    move v6, v10

    :goto_0
    move v10, v6

    move-object v11, v1

    invoke-virtual {v11}, Lokio/ByteString;->size()I

    move-result v11

    if-ge v10, v11, :cond_1

    .line 96
    move-object v10, v1

    move v11, v6

    invoke-virtual {v10, v11}, Lokio/ByteString;->getByte(I)B

    move-result v10

    const/16 v11, 0xff

    and-int/lit16 v10, v10, 0xff

    move v7, v10

    .line 97
    sget-object v10, Lokhttp3/internal/http2/Huffman;->CODES:[I

    move v11, v7

    aget v10, v10, v11

    move v8, v10

    .line 98
    sget-object v10, Lokhttp3/internal/http2/Huffman;->CODE_LENGTHS:[B

    move v11, v7

    aget-byte v10, v10, v11

    move v9, v10

    .line 100
    move-wide v10, v3

    move v12, v9

    shl-long/2addr v10, v12

    move-wide v3, v10

    .line 101
    move-wide v10, v3

    move v12, v8

    int-to-long v12, v12

    or-long/2addr v10, v12

    move-wide v3, v10

    .line 102
    move v10, v5

    move v11, v9

    add-int/2addr v10, v11

    move v5, v10

    .line 104
    :goto_1
    move v10, v5

    const/16 v11, 0x8

    if-lt v10, v11, :cond_0

    .line 105
    add-int/lit8 v5, v5, -0x8

    .line 106
    move-object v10, v2

    move-wide v11, v3

    move v13, v5

    shr-long/2addr v11, v13

    long-to-int v11, v11

    invoke-interface {v10, v11}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    move-result-object v10

    goto :goto_1

    .line 95
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 110
    :cond_1
    move v10, v5

    if-lez v10, :cond_2

    .line 111
    move-wide v10, v3

    const/16 v12, 0x8

    move v13, v5

    rsub-int/lit8 v12, v13, 0x8

    shl-long/2addr v10, v12

    move-wide v3, v10

    .line 112
    move-wide v10, v3

    const/16 v12, 0xff

    move v13, v5

    ushr-int/2addr v12, v13

    int-to-long v12, v12

    or-long/2addr v10, v12

    move-wide v3, v10

    .line 113
    move-object v10, v2

    move-wide v11, v3

    long-to-int v11, v11

    invoke-interface {v10, v11}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    move-result-object v10

    .line 115
    :cond_2
    return-void
.end method

.method encodedLength(Lokio/ByteString;)I
    .locals 10

    .prologue
    .line 118
    move-object v0, p0

    move-object v1, p1

    const-wide/16 v6, 0x0

    move-wide v2, v6

    .line 120
    const/4 v6, 0x0

    move v4, v6

    :goto_0
    move v6, v4

    move-object v7, v1

    invoke-virtual {v7}, Lokio/ByteString;->size()I

    move-result v7

    if-ge v6, v7, :cond_0

    .line 121
    move-object v6, v1

    move v7, v4

    invoke-virtual {v6, v7}, Lokio/ByteString;->getByte(I)B

    move-result v6

    const/16 v7, 0xff

    and-int/lit16 v6, v6, 0xff

    move v5, v6

    .line 122
    move-wide v6, v2

    sget-object v8, Lokhttp3/internal/http2/Huffman;->CODE_LENGTHS:[B

    move v9, v5

    aget-byte v8, v8, v9

    int-to-long v8, v8

    add-long/2addr v6, v8

    move-wide v2, v6

    .line 120
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 125
    :cond_0
    move-wide v6, v2

    const-wide/16 v8, 0x7

    add-long/2addr v6, v8

    const/4 v8, 0x3

    shr-long/2addr v6, v8

    long-to-int v6, v6

    move v0, v6

    return v0
.end method
