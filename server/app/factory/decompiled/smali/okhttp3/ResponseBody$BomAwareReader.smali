.class final Lokhttp3/ResponseBody$BomAwareReader;
.super Ljava/io/Reader;
.source "ResponseBody.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/ResponseBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "BomAwareReader"
.end annotation


# instance fields
.field private final charset:Ljava/nio/charset/Charset;

.field private closed:Z

.field private delegate:Ljava/io/Reader;

.field private final source:Lokio/BufferedSource;


# direct methods
.method constructor <init>(Lokio/BufferedSource;Ljava/nio/charset/Charset;)V
    .locals 5

    .prologue
    .line 238
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    invoke-direct {v3}, Ljava/io/Reader;-><init>()V

    .line 239
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lokhttp3/ResponseBody$BomAwareReader;->source:Lokio/BufferedSource;

    .line 240
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lokhttp3/ResponseBody$BomAwareReader;->charset:Ljava/nio/charset/Charset;

    .line 241
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 255
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lokhttp3/ResponseBody$BomAwareReader;->closed:Z

    .line 256
    move-object v1, v0

    iget-object v1, v1, Lokhttp3/ResponseBody$BomAwareReader;->delegate:Ljava/io/Reader;

    if-eqz v1, :cond_0

    .line 257
    move-object v1, v0

    iget-object v1, v1, Lokhttp3/ResponseBody$BomAwareReader;->delegate:Ljava/io/Reader;

    invoke-virtual {v1}, Ljava/io/Reader;->close()V

    .line 261
    :goto_0
    return-void

    .line 259
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lokhttp3/ResponseBody$BomAwareReader;->source:Lokio/BufferedSource;

    invoke-interface {v1}, Lokio/BufferedSource;->close()V

    goto :goto_0
.end method

.method public read([CII)I
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 244
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move/from16 v3, p3

    move-object v6, v0

    iget-boolean v6, v6, Lokhttp3/ResponseBody$BomAwareReader;->closed:Z

    if-eqz v6, :cond_0

    new-instance v6, Ljava/io/IOException;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    const-string v8, "Stream closed"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 246
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Lokhttp3/ResponseBody$BomAwareReader;->delegate:Ljava/io/Reader;

    move-object v4, v6

    .line 247
    move-object v6, v4

    if-nez v6, :cond_1

    .line 248
    move-object v6, v0

    iget-object v6, v6, Lokhttp3/ResponseBody$BomAwareReader;->source:Lokio/BufferedSource;

    move-object v7, v0

    iget-object v7, v7, Lokhttp3/ResponseBody$BomAwareReader;->charset:Ljava/nio/charset/Charset;

    invoke-static {v6, v7}, Lokhttp3/internal/Util;->bomAwareCharset(Lokio/BufferedSource;Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v6

    move-object v5, v6

    .line 249
    move-object v6, v0

    new-instance v7, Ljava/io/InputStreamReader;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v0

    iget-object v9, v9, Lokhttp3/ResponseBody$BomAwareReader;->source:Lokio/BufferedSource;

    invoke-interface {v9}, Lokio/BufferedSource;->inputStream()Ljava/io/InputStream;

    move-result-object v9

    move-object v10, v5

    invoke-direct {v8, v9, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    move-object v11, v6

    move-object v12, v7

    move-object v6, v12

    move-object v7, v11

    move-object v8, v12

    iput-object v8, v7, Lokhttp3/ResponseBody$BomAwareReader;->delegate:Ljava/io/Reader;

    move-object v4, v6

    .line 251
    :cond_1
    move-object v6, v4

    move-object v7, v1

    move v8, v2

    move v9, v3

    invoke-virtual {v6, v7, v8, v9}, Ljava/io/Reader;->read([CII)I

    move-result v6

    move v0, v6

    return v0
.end method
