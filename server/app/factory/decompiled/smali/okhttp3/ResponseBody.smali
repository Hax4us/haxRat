.class public abstract Lokhttp3/ResponseBody;
.super Ljava/lang/Object;
.source "ResponseBody.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/ResponseBody$BomAwareReader;
    }
.end annotation


# instance fields
.field private reader:Ljava/io/Reader;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 101
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private charset()Ljava/nio/charset/Charset;
    .locals 4

    .prologue
    .line 181
    move-object v0, p0

    move-object v2, v0

    invoke-virtual {v2}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object v2

    move-object v1, v2

    .line 182
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    sget-object v3, Lokhttp3/internal/Util;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3}, Lokhttp3/MediaType;->charset(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v2

    :goto_0
    move-object v0, v2

    return-object v0

    :cond_0
    sget-object v2, Lokhttp3/internal/Util;->UTF_8:Ljava/nio/charset/Charset;

    goto :goto_0
.end method

.method public static create(Lokhttp3/MediaType;JLokio/BufferedSource;)Lokhttp3/ResponseBody;
    .locals 11

    .prologue
    .line 215
    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, v3

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/NullPointerException;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    const-string v6, "source == null"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 216
    :cond_0
    new-instance v4, Lokhttp3/ResponseBody$1;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v0

    move-wide v7, v1

    move-object v9, v3

    invoke-direct {v5, v6, v7, v8, v9}, Lokhttp3/ResponseBody$1;-><init>(Lokhttp3/MediaType;JLokio/BufferedSource;)V

    move-object v0, v4

    return-object v0
.end method

.method public static create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/ResponseBody;
    .locals 9

    .prologue
    .line 194
    move-object v0, p0

    move-object v1, p1

    sget-object v4, Lokhttp3/internal/Util;->UTF_8:Ljava/nio/charset/Charset;

    move-object v2, v4

    .line 195
    move-object v4, v0

    if-eqz v4, :cond_0

    .line 196
    move-object v4, v0

    invoke-virtual {v4}, Lokhttp3/MediaType;->charset()Ljava/nio/charset/Charset;

    move-result-object v4

    move-object v2, v4

    .line 197
    move-object v4, v2

    if-nez v4, :cond_0

    .line 198
    sget-object v4, Lokhttp3/internal/Util;->UTF_8:Ljava/nio/charset/Charset;

    move-object v2, v4

    .line 199
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; charset=utf-8"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v4

    move-object v0, v4

    .line 202
    :cond_0
    new-instance v4, Lokio/Buffer;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Lokio/Buffer;-><init>()V

    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Lokio/Buffer;->writeString(Ljava/lang/String;Ljava/nio/charset/Charset;)Lokio/Buffer;

    move-result-object v4

    move-object v3, v4

    .line 203
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v5}, Lokio/Buffer;->size()J

    move-result-wide v5

    move-object v7, v3

    invoke-static {v4, v5, v6, v7}, Lokhttp3/ResponseBody;->create(Lokhttp3/MediaType;JLokio/BufferedSource;)Lokhttp3/ResponseBody;

    move-result-object v4

    move-object v0, v4

    return-object v0
.end method

.method public static create(Lokhttp3/MediaType;[B)Lokhttp3/ResponseBody;
    .locals 8

    .prologue
    .line 208
    move-object v0, p0

    move-object v1, p1

    new-instance v3, Lokio/Buffer;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Lokio/Buffer;-><init>()V

    move-object v4, v1

    invoke-virtual {v3, v4}, Lokio/Buffer;->write([B)Lokio/Buffer;

    move-result-object v3

    move-object v2, v3

    .line 209
    move-object v3, v0

    move-object v4, v1

    array-length v4, v4

    int-to-long v4, v4

    move-object v6, v2

    invoke-static {v3, v4, v5, v6}, Lokhttp3/ResponseBody;->create(Lokhttp3/MediaType;JLokio/BufferedSource;)Lokhttp3/ResponseBody;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public final byteStream()Ljava/io/InputStream;
    .locals 2

    .prologue
    .line 114
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    move-result-object v1

    invoke-interface {v1}, Lokio/BufferedSource;->inputStream()Ljava/io/InputStream;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public final bytes()[B
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 127
    move-object v0, p0

    move-object v6, v0

    invoke-virtual {v6}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v6

    move-wide v1, v6

    .line 128
    move-wide v6, v1

    const-wide/32 v8, 0x7fffffff

    cmp-long v6, v6, v8

    if-lez v6, :cond_0

    .line 129
    new-instance v6, Ljava/io/IOException;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cannot buffer entire body for content length: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide v9, v1

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 132
    :cond_0
    move-object v6, v0

    invoke-virtual {v6}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    move-result-object v6

    move-object v3, v6

    .line 135
    move-object v6, v3

    :try_start_0
    invoke-interface {v6}, Lokio/BufferedSource;->readByteArray()[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    move-object v4, v6

    .line 137
    move-object v6, v3

    invoke-static {v6}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 139
    move-wide v6, v1

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-eqz v6, :cond_1

    move-wide v6, v1

    move-object v8, v4

    array-length v8, v8

    int-to-long v8, v8

    cmp-long v6, v6, v8

    if-eqz v6, :cond_1

    .line 140
    new-instance v6, Ljava/io/IOException;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Content-Length ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide v9, v1

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") and stream length ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v4

    array-length v9, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") disagree"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 137
    :catchall_0
    move-exception v6

    move-object v5, v6

    move-object v6, v3

    invoke-static {v6}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    move-object v6, v5

    throw v6

    .line 146
    :cond_1
    move-object v6, v4

    move-object v0, v6

    return-object v0
.end method

.method public final charStream()Ljava/io/Reader;
    .locals 9

    .prologue
    .line 156
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lokhttp3/ResponseBody;->reader:Ljava/io/Reader;

    move-object v1, v2

    .line 157
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    :goto_0
    move-object v0, v2

    return-object v0

    :cond_0
    move-object v2, v0

    new-instance v3, Lokhttp3/ResponseBody$BomAwareReader;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    invoke-virtual {v5}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    move-result-object v5

    move-object v6, v0

    invoke-direct {v6}, Lokhttp3/ResponseBody;->charset()Ljava/nio/charset/Charset;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lokhttp3/ResponseBody$BomAwareReader;-><init>(Lokio/BufferedSource;Ljava/nio/charset/Charset;)V

    move-object v7, v2

    move-object v8, v3

    move-object v2, v8

    move-object v3, v7

    move-object v4, v8

    iput-object v4, v3, Lokhttp3/ResponseBody;->reader:Ljava/io/Reader;

    goto :goto_0
.end method

.method public close()V
    .locals 2

    .prologue
    .line 186
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    move-result-object v1

    invoke-static {v1}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 187
    return-void
.end method

.method public abstract contentLength()J
.end method

.method public abstract contentType()Lokhttp3/MediaType;
.end method

.method public abstract source()Lokio/BufferedSource;
.end method

.method public final string()Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 171
    move-object v0, p0

    move-object v5, v0

    invoke-virtual {v5}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    move-result-object v5

    move-object v1, v5

    .line 173
    move-object v5, v1

    move-object v6, v0

    :try_start_0
    invoke-direct {v6}, Lokhttp3/ResponseBody;->charset()Ljava/nio/charset/Charset;

    move-result-object v6

    invoke-static {v5, v6}, Lokhttp3/internal/Util;->bomAwareCharset(Lokio/BufferedSource;Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v5

    move-object v2, v5

    .line 174
    move-object v5, v1

    move-object v6, v2

    invoke-interface {v5, v6}, Lokio/BufferedSource;->readString(Ljava/nio/charset/Charset;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    move-object v3, v5

    .line 176
    move-object v5, v1

    invoke-static {v5}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 174
    move-object v5, v3

    move-object v0, v5

    return-object v0

    .line 176
    :catchall_0
    move-exception v5

    move-object v4, v5

    move-object v5, v1

    invoke-static {v5}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    move-object v5, v4

    throw v5
.end method
