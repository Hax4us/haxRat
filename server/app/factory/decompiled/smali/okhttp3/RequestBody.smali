.class public abstract Lokhttp3/RequestBody;
.super Ljava/lang/Object;
.source "RequestBody.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 27
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Lokhttp3/MediaType;Ljava/io/File;)Lokhttp3/RequestBody;
    .locals 7

    .prologue
    .line 103
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/NullPointerException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const-string v4, "content == null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 105
    :cond_0
    new-instance v2, Lokhttp3/RequestBody$3;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lokhttp3/RequestBody$3;-><init>(Lokhttp3/MediaType;Ljava/io/File;)V

    move-object v0, v2

    return-object v0
.end method

.method public static create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;
    .locals 7

    .prologue
    .line 47
    move-object v0, p0

    move-object v1, p1

    sget-object v4, Lokhttp3/internal/Util;->UTF_8:Ljava/nio/charset/Charset;

    move-object v2, v4

    .line 48
    move-object v4, v0

    if-eqz v4, :cond_0

    .line 49
    move-object v4, v0

    invoke-virtual {v4}, Lokhttp3/MediaType;->charset()Ljava/nio/charset/Charset;

    move-result-object v4

    move-object v2, v4

    .line 50
    move-object v4, v2

    if-nez v4, :cond_0

    .line 51
    sget-object v4, Lokhttp3/internal/Util;->UTF_8:Ljava/nio/charset/Charset;

    move-object v2, v4

    .line 52
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

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

    .line 55
    :cond_0
    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    move-object v3, v4

    .line 56
    move-object v4, v0

    move-object v5, v3

    invoke-static {v4, v5}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;[B)Lokhttp3/RequestBody;

    move-result-object v4

    move-object v0, v4

    return-object v0
.end method

.method public static create(Lokhttp3/MediaType;Lokio/ByteString;)Lokhttp3/RequestBody;
    .locals 7

    .prologue
    .line 61
    move-object v0, p0

    move-object v1, p1

    new-instance v2, Lokhttp3/RequestBody$1;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lokhttp3/RequestBody$1;-><init>(Lokhttp3/MediaType;Lokio/ByteString;)V

    move-object v0, v2

    return-object v0
.end method

.method public static create(Lokhttp3/MediaType;[B)Lokhttp3/RequestBody;
    .locals 6

    .prologue
    .line 78
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    move-object v5, v1

    array-length v5, v5

    invoke-static {v2, v3, v4, v5}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;[BII)Lokhttp3/RequestBody;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public static create(Lokhttp3/MediaType;[BII)Lokhttp3/RequestBody;
    .locals 11

    .prologue
    .line 84
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v1

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/NullPointerException;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    const-string v6, "content == null"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 85
    :cond_0
    move-object v4, v1

    array-length v4, v4

    int-to-long v4, v4

    move v6, v2

    int-to-long v6, v6

    move v8, v3

    int-to-long v8, v8

    invoke-static/range {v4 .. v9}, Lokhttp3/internal/Util;->checkOffsetAndCount(JJJ)V

    .line 86
    new-instance v4, Lokhttp3/RequestBody$2;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v0

    move v7, v3

    move-object v8, v1

    move v9, v2

    invoke-direct {v5, v6, v7, v8, v9}, Lokhttp3/RequestBody$2;-><init>(Lokhttp3/MediaType;I[BI)V

    move-object v0, v4

    return-object v0
.end method


# virtual methods
.method public contentLength()J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 36
    move-object v0, p0

    const-wide/16 v1, -0x1

    move-wide v0, v1

    return-wide v0
.end method

.method public abstract contentType()Lokhttp3/MediaType;
.end method

.method public abstract writeTo(Lokio/BufferedSink;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
