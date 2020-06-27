.class public final Lkotlin/io/ByteStreamsKt;
.super Ljava/lang/Object;
.source "IOStreams.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000Z\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u0012\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u0017\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0004H\u0087\u0008\u001a\u0017\u0010\u0000\u001a\u00020\u0005*\u00020\u00062\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0004H\u0087\u0008\u001a\u0017\u0010\u0007\u001a\u00020\u0008*\u00020\u00022\u0008\u0008\u0002\u0010\t\u001a\u00020\nH\u0087\u0008\u001a\u0017\u0010\u000b\u001a\u00020\u000c*\u00020\u00062\u0008\u0008\u0002\u0010\t\u001a\u00020\nH\u0087\u0008\u001a\u0017\u0010\r\u001a\u00020\u000e*\u00020\u000f2\u0008\u0008\u0002\u0010\t\u001a\u00020\nH\u0087\u0008\u001a\u001c\u0010\u0010\u001a\u00020\u0011*\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0004\u001a\r\u0010\u0013\u001a\u00020\u000e*\u00020\u0014H\u0087\u0008\u001a\u001d\u0010\u0013\u001a\u00020\u000e*\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0016\u001a\u00020\u0004H\u0087\u0008\u001a\r\u0010\u0017\u001a\u00020\u0018*\u00020\u0001H\u0086\u0002\u001a\u0014\u0010\u0019\u001a\u00020\u0014*\u00020\u00022\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u0004\u001a\u0017\u0010\u001b\u001a\u00020\u001c*\u00020\u00022\u0008\u0008\u0002\u0010\t\u001a\u00020\nH\u0087\u0008\u001a\u0017\u0010\u001d\u001a\u00020\u001e*\u00020\u00062\u0008\u0008\u0002\u0010\t\u001a\u00020\nH\u0087\u0008\u00a8\u0006\u001f"
    }
    d2 = {
        "buffered",
        "Ljava/io/BufferedInputStream;",
        "Ljava/io/InputStream;",
        "bufferSize",
        "",
        "Ljava/io/BufferedOutputStream;",
        "Ljava/io/OutputStream;",
        "bufferedReader",
        "Ljava/io/BufferedReader;",
        "charset",
        "Ljava/nio/charset/Charset;",
        "bufferedWriter",
        "Ljava/io/BufferedWriter;",
        "byteInputStream",
        "Ljava/io/ByteArrayInputStream;",
        "",
        "copyTo",
        "",
        "out",
        "inputStream",
        "",
        "offset",
        "length",
        "iterator",
        "Lkotlin/collections/ByteIterator;",
        "readBytes",
        "estimatedSize",
        "reader",
        "Ljava/io/InputStreamReader;",
        "writer",
        "Ljava/io/OutputStreamWriter;",
        "kotlin-stdlib"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0xa
    }
.end annotation

.annotation build Lkotlin/jvm/JvmName;
    name = "ByteStreamsKt"
.end annotation


# direct methods
.method private static final buffered(Ljava/io/InputStream;I)Ljava/io/BufferedInputStream;
    .locals 8
    .param p0    # Ljava/io/InputStream;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .prologue
    .line 72
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    instance-of v3, v3, Ljava/io/BufferedInputStream;

    if-eqz v3, :cond_0

    move-object v3, v0

    check-cast v3, Ljava/io/BufferedInputStream;

    :goto_0
    move-object v0, v3

    return-object v0

    :cond_0
    new-instance v3, Ljava/io/BufferedInputStream;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move v6, v1

    invoke-direct {v4, v5, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    goto :goto_0
.end method

.method private static final buffered(Ljava/io/OutputStream;I)Ljava/io/BufferedOutputStream;
    .locals 8
    .param p0    # Ljava/io/OutputStream;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .prologue
    .line 88
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    instance-of v3, v3, Ljava/io/BufferedOutputStream;

    if-eqz v3, :cond_0

    move-object v3, v0

    check-cast v3, Ljava/io/BufferedOutputStream;

    :goto_0
    move-object v0, v3

    return-object v0

    :cond_0
    new-instance v3, Ljava/io/BufferedOutputStream;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move v6, v1

    invoke-direct {v4, v5, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    goto :goto_0
.end method

.method static bridge synthetic buffered$default(Ljava/io/InputStream;IILjava/lang/Object;)Ljava/io/BufferedInputStream;
    .locals 9
    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .prologue
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, v2

    const/4 v5, 0x1

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_0

    .line 71
    const/16 v4, 0x2000

    move v1, v4

    .line 128
    :cond_0
    move-object v4, v0

    instance-of v4, v4, Ljava/io/BufferedInputStream;

    if-eqz v4, :cond_1

    move-object v4, v0

    check-cast v4, Ljava/io/BufferedInputStream;

    :goto_0
    move-object v0, v4

    return-object v0

    :cond_1
    new-instance v4, Ljava/io/BufferedInputStream;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    move v7, v1

    invoke-direct {v5, v6, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    goto :goto_0
.end method

.method static bridge synthetic buffered$default(Ljava/io/OutputStream;IILjava/lang/Object;)Ljava/io/BufferedOutputStream;
    .locals 9
    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .prologue
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, v2

    const/4 v5, 0x1

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_0

    .line 87
    const/16 v4, 0x2000

    move v1, v4

    .line 141
    :cond_0
    move-object v4, v0

    instance-of v4, v4, Ljava/io/BufferedOutputStream;

    if-eqz v4, :cond_1

    move-object v4, v0

    check-cast v4, Ljava/io/BufferedOutputStream;

    :goto_0
    move-object v0, v4

    return-object v0

    :cond_1
    new-instance v4, Ljava/io/BufferedOutputStream;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    move v7, v1

    invoke-direct {v5, v6, v7}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    goto :goto_0
.end method

.method private static final bufferedReader(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Ljava/io/BufferedReader;
    .locals 10
    .param p0    # Ljava/io/InputStream;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .prologue
    .line 80
    move-object v0, p0

    move-object v1, p1

    move-object v5, v0

    move-object v3, v5

    new-instance v5, Ljava/io/InputStreamReader;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v3

    move-object v8, v1

    invoke-direct {v6, v7, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    check-cast v5, Ljava/io/Reader;

    move-object v3, v5

    const/16 v5, 0x2000

    move v4, v5

    move-object v5, v3

    instance-of v5, v5, Ljava/io/BufferedReader;

    if-eqz v5, :cond_0

    move-object v5, v3

    check-cast v5, Ljava/io/BufferedReader;

    :goto_0
    move-object v0, v5

    return-object v0

    :cond_0
    new-instance v5, Ljava/io/BufferedReader;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v3

    move v8, v4

    invoke-direct {v6, v7, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    goto :goto_0
.end method

.method static bridge synthetic bufferedReader$default(Ljava/io/InputStream;Ljava/nio/charset/Charset;ILjava/lang/Object;)Ljava/io/BufferedReader;
    .locals 10
    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v5, v2

    const/4 v6, 0x1

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_0

    .line 80
    sget-object v5, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    move-object v1, v5

    .line 133
    :cond_0
    move-object v5, v0

    move-object v3, v5

    new-instance v5, Ljava/io/InputStreamReader;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v3

    move-object v8, v1

    invoke-direct {v6, v7, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    check-cast v5, Ljava/io/Reader;

    move-object v3, v5

    const/16 v5, 0x2000

    move v4, v5

    move-object v5, v3

    instance-of v5, v5, Ljava/io/BufferedReader;

    if-eqz v5, :cond_1

    move-object v5, v3

    check-cast v5, Ljava/io/BufferedReader;

    :goto_0
    move-object v0, v5

    return-object v0

    :cond_1
    new-instance v5, Ljava/io/BufferedReader;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v3

    move v8, v4

    invoke-direct {v6, v7, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    goto :goto_0
.end method

.method private static final bufferedWriter(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)Ljava/io/BufferedWriter;
    .locals 10
    .param p0    # Ljava/io/OutputStream;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .prologue
    .line 96
    move-object v0, p0

    move-object v1, p1

    move-object v5, v0

    move-object v3, v5

    new-instance v5, Ljava/io/OutputStreamWriter;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v3

    move-object v8, v1

    invoke-direct {v6, v7, v8}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    check-cast v5, Ljava/io/Writer;

    move-object v3, v5

    const/16 v5, 0x2000

    move v4, v5

    move-object v5, v3

    instance-of v5, v5, Ljava/io/BufferedWriter;

    if-eqz v5, :cond_0

    move-object v5, v3

    check-cast v5, Ljava/io/BufferedWriter;

    :goto_0
    move-object v0, v5

    return-object v0

    :cond_0
    new-instance v5, Ljava/io/BufferedWriter;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v3

    move v8, v4

    invoke-direct {v6, v7, v8}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    goto :goto_0
.end method

.method static bridge synthetic bufferedWriter$default(Ljava/io/OutputStream;Ljava/nio/charset/Charset;ILjava/lang/Object;)Ljava/io/BufferedWriter;
    .locals 10
    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v5, v2

    const/4 v6, 0x1

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_0

    .line 96
    sget-object v5, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    move-object v1, v5

    .line 146
    :cond_0
    move-object v5, v0

    move-object v3, v5

    new-instance v5, Ljava/io/OutputStreamWriter;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v3

    move-object v8, v1

    invoke-direct {v6, v7, v8}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    check-cast v5, Ljava/io/Writer;

    move-object v3, v5

    const/16 v5, 0x2000

    move v4, v5

    move-object v5, v3

    instance-of v5, v5, Ljava/io/BufferedWriter;

    if-eqz v5, :cond_1

    move-object v5, v3

    check-cast v5, Ljava/io/BufferedWriter;

    :goto_0
    move-object v0, v5

    return-object v0

    :cond_1
    new-instance v5, Ljava/io/BufferedWriter;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v3

    move v8, v4

    invoke-direct {v6, v7, v8}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    goto :goto_0
.end method

.method private static final byteInputStream(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/io/ByteArrayInputStream;
    .locals 13
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .prologue
    .line 50
    move-object v0, p0

    move-object v1, p1

    move-object v8, v0

    move-object v3, v8

    move-object v8, v3

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    if-nez v9, :cond_0

    new-instance v9, Lkotlin/TypeCastException;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    const-string v11, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {v10, v11}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_0
    move-object v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v8

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const-string v10, "(this as java.lang.String).getBytes(charset)"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v6, v8

    move-object v8, v6

    move-object v7, v8

    new-instance v8, Ljava/io/ByteArrayInputStream;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v10, v7

    invoke-direct {v9, v10}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v0, v8

    return-object v0
.end method

.method static bridge synthetic byteInputStream$default(Ljava/lang/String;Ljava/nio/charset/Charset;ILjava/lang/Object;)Ljava/io/ByteArrayInputStream;
    .locals 13
    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object/from16 v3, p3

    move v8, v2

    const/4 v9, 0x1

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_0

    .line 50
    sget-object v8, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    move-object v1, v8

    .line 127
    :cond_0
    move-object v8, v0

    move-object v3, v8

    move-object v8, v3

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    if-nez v9, :cond_1

    new-instance v9, Lkotlin/TypeCastException;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    const-string v11, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {v10, v11}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_1
    move-object v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v8

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const-string v10, "(this as java.lang.String).getBytes(charset)"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v6, v8

    move-object v8, v6

    move-object v7, v8

    new-instance v8, Ljava/io/ByteArrayInputStream;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v10, v7

    invoke-direct {v9, v10}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v0, v8

    return-object v0
.end method

.method public static final copyTo(Ljava/io/InputStream;Ljava/io/OutputStream;I)J
    .locals 11
    .param p0    # Ljava/io/InputStream;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/io/OutputStream;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v7, v0

    const-string v8, "$receiver"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v7, v1

    const-string v8, "out"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    const-wide/16 v7, 0x0

    move-wide v3, v7

    .line 105
    move v7, v2

    new-array v7, v7, [B

    move-object v5, v7

    .line 106
    move-object v7, v0

    move-object v8, v5

    invoke-virtual {v7, v8}, Ljava/io/InputStream;->read([B)I

    move-result v7

    move v6, v7

    .line 107
    :goto_0
    move v7, v6

    if-ltz v7, :cond_0

    .line 108
    move-object v7, v1

    move-object v8, v5

    const/4 v9, 0x0

    move v10, v6

    invoke-virtual {v7, v8, v9, v10}, Ljava/io/OutputStream;->write([BII)V

    .line 109
    move-wide v7, v3

    move v9, v6

    int-to-long v9, v9

    add-long/2addr v7, v9

    move-wide v3, v7

    .line 110
    move-object v7, v0

    move-object v8, v5

    invoke-virtual {v7, v8}, Ljava/io/InputStream;->read([B)I

    move-result v7

    move v6, v7

    .line 107
    goto :goto_0

    .line 112
    :cond_0
    move-wide v7, v3

    move-wide v0, v7

    return-wide v0
.end method

.method public static bridge synthetic copyTo$default(Ljava/io/InputStream;Ljava/io/OutputStream;IILjava/lang/Object;)J
    .locals 8

    .prologue
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, v3

    const/4 v6, 0x2

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_0

    .line 103
    const/16 v5, 0x2000

    move v2, v5

    :cond_0
    move-object v5, v0

    move-object v6, v1

    move v7, v2

    invoke-static {v5, v6, v7}, Lkotlin/io/ByteStreamsKt;->copyTo(Ljava/io/InputStream;Ljava/io/OutputStream;I)J

    move-result-wide v5

    move-wide v0, v5

    return-wide v0
.end method

.method private static final inputStream([B)Ljava/io/ByteArrayInputStream;
    .locals 6
    .param p0    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .prologue
    .line 56
    move-object v0, p0

    new-instance v2, Ljava/io/ByteArrayInputStream;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v0, v2

    return-object v0
.end method

.method private static final inputStream([BII)Ljava/io/ByteArrayInputStream;
    .locals 10
    .param p0    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .prologue
    .line 64
    move-object v0, p0

    move v1, p1

    move v2, p2

    new-instance v4, Ljava/io/ByteArrayInputStream;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    move v7, v1

    move v8, v2

    invoke-direct {v5, v6, v7, v8}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    move-object v0, v4

    return-object v0
.end method

.method public static final iterator(Ljava/io/BufferedInputStream;)Lkotlin/collections/ByteIterator;
    .locals 5
    .param p0    # Ljava/io/BufferedInputStream;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, v0

    const-string v2, "$receiver"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    new-instance v1, Lkotlin/io/ByteStreamsKt$iterator$1;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lkotlin/io/ByteStreamsKt$iterator$1;-><init>(Ljava/io/BufferedInputStream;)V

    check-cast v1, Lkotlin/collections/ByteIterator;

    .line 45
    move-object v0, v1

    return-object v0
.end method

.method public static final readBytes(Ljava/io/InputStream;I)[B
    .locals 9
    .param p0    # Ljava/io/InputStream;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    const-string v4, "$receiver"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move v5, v1

    move-object v6, v0

    invoke-virtual {v6}, Ljava/io/InputStream;->available()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    move-object v2, v3

    .line 122
    move-object v3, v0

    move-object v4, v2

    check-cast v4, Ljava/io/OutputStream;

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static {v3, v4, v5, v6, v7}, Lkotlin/io/ByteStreamsKt;->copyTo$default(Ljava/io/InputStream;Ljava/io/OutputStream;IILjava/lang/Object;)J

    move-result-wide v3

    .line 123
    move-object v3, v2

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const-string v5, "buffer.toByteArray()"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v3

    return-object v0
.end method

.method public static bridge synthetic readBytes$default(Ljava/io/InputStream;IILjava/lang/Object;)[B
    .locals 6
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, v2

    const/4 v5, 0x1

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_0

    .line 120
    const/16 v4, 0x2000

    move v1, v4

    :cond_0
    move-object v4, v0

    move v5, v1

    invoke-static {v4, v5}, Lkotlin/io/ByteStreamsKt;->readBytes(Ljava/io/InputStream;I)[B

    move-result-object v4

    move-object v0, v4

    return-object v0
.end method

.method private static final reader(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Ljava/io/InputStreamReader;
    .locals 8
    .param p0    # Ljava/io/InputStream;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .prologue
    .line 76
    move-object v0, p0

    move-object v1, p1

    new-instance v3, Ljava/io/InputStreamReader;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    move-object v0, v3

    return-object v0
.end method

.method static bridge synthetic reader$default(Ljava/io/InputStream;Ljava/nio/charset/Charset;ILjava/lang/Object;)Ljava/io/InputStreamReader;
    .locals 9
    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, v2

    const/4 v5, 0x1

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_0

    .line 76
    sget-object v4, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    move-object v1, v4

    .line 132
    :cond_0
    new-instance v4, Ljava/io/InputStreamReader;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    move-object v7, v1

    invoke-direct {v5, v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    move-object v0, v4

    return-object v0
.end method

.method private static final writer(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)Ljava/io/OutputStreamWriter;
    .locals 8
    .param p0    # Ljava/io/OutputStream;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .prologue
    .line 92
    move-object v0, p0

    move-object v1, p1

    new-instance v3, Ljava/io/OutputStreamWriter;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    move-object v0, v3

    return-object v0
.end method

.method static bridge synthetic writer$default(Ljava/io/OutputStream;Ljava/nio/charset/Charset;ILjava/lang/Object;)Ljava/io/OutputStreamWriter;
    .locals 9
    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, v2

    const/4 v5, 0x1

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_0

    .line 92
    sget-object v4, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    move-object v1, v4

    .line 145
    :cond_0
    new-instance v4, Ljava/io/OutputStreamWriter;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    move-object v7, v1

    invoke-direct {v5, v6, v7}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    move-object v0, v4

    return-object v0
.end method
