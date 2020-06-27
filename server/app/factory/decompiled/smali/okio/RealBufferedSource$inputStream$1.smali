.class public final Lokio/RealBufferedSource$inputStream$1;
.super Ljava/io/InputStream;
.source "RealBufferedSource.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokio/RealBufferedSource;->inputStream()Ljava/io/InputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\'\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0012\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0008\u0010\u0004\u001a\u00020\u0005H\u0016J\u0008\u0010\u0006\u001a\u00020\u0003H\u0016J \u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u0003H\u0016J\u0008\u0010\u000b\u001a\u00020\u000cH\u0016\u00a8\u0006\r"
    }
    d2 = {
        "okio/RealBufferedSource$inputStream$1",
        "Ljava/io/InputStream;",
        "available",
        "",
        "close",
        "",
        "read",
        "data",
        "",
        "offset",
        "byteCount",
        "toString",
        "",
        "okio"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic this$0:Lokio/RealBufferedSource;


# direct methods
.method constructor <init>(Lokio/RealBufferedSource;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 143
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lokio/RealBufferedSource$inputStream$1;->this$0:Lokio/RealBufferedSource;

    move-object v2, v0

    invoke-direct {v2}, Ljava/io/InputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public available()I
    .locals 13

    .prologue
    .line 166
    move-object v0, p0

    move-object v8, v0

    iget-object v8, v8, Lokio/RealBufferedSource$inputStream$1;->this$0:Lokio/RealBufferedSource;

    iget-boolean v8, v8, Lokio/RealBufferedSource;->closed:Z

    if-eqz v8, :cond_0

    new-instance v8, Ljava/io/IOException;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const-string v10, "closed"

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    check-cast v8, Ljava/lang/Throwable;

    throw v8

    .line 167
    :cond_0
    move-object v8, v0

    iget-object v8, v8, Lokio/RealBufferedSource$inputStream$1;->this$0:Lokio/RealBufferedSource;

    move-object v1, v8

    const/4 v8, 0x0

    move v2, v8

    .line 190
    move-object v8, v1

    iget-object v8, v8, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    invoke-virtual {v8}, Lokio/Buffer;->size()J

    move-result-wide v8

    move-wide v1, v8

    .line 167
    const v8, 0x7fffffff

    move v3, v8

    const/4 v8, 0x0

    move v4, v8

    .line 191
    move v8, v3

    int-to-long v8, v8

    move-wide v5, v8

    const/4 v8, 0x0

    move v7, v8

    move-wide v8, v1

    move-wide v10, v5

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    nop

    .line 167
    long-to-int v8, v8

    move v0, v8

    return v0
.end method

.method public close()V
    .locals 2

    .prologue
    .line 170
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokio/RealBufferedSource$inputStream$1;->this$0:Lokio/RealBufferedSource;

    invoke-virtual {v1}, Lokio/RealBufferedSource;->close()V

    return-void
.end method

.method public read()I
    .locals 12

    .prologue
    .line 145
    move-object v0, p0

    move-object v7, v0

    iget-object v7, v7, Lokio/RealBufferedSource$inputStream$1;->this$0:Lokio/RealBufferedSource;

    iget-boolean v7, v7, Lokio/RealBufferedSource;->closed:Z

    if-eqz v7, :cond_0

    new-instance v7, Ljava/io/IOException;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const-string v9, "closed"

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    check-cast v7, Ljava/lang/Throwable;

    throw v7

    .line 146
    :cond_0
    move-object v7, v0

    iget-object v7, v7, Lokio/RealBufferedSource$inputStream$1;->this$0:Lokio/RealBufferedSource;

    move-object v1, v7

    const/4 v7, 0x0

    move v2, v7

    .line 183
    move-object v7, v1

    iget-object v7, v7, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    invoke-virtual {v7}, Lokio/Buffer;->size()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-nez v7, :cond_1

    .line 147
    move-object v7, v0

    iget-object v7, v7, Lokio/RealBufferedSource$inputStream$1;->this$0:Lokio/RealBufferedSource;

    iget-object v7, v7, Lokio/RealBufferedSource;->source:Lokio/Source;

    move-object v8, v0

    iget-object v8, v8, Lokio/RealBufferedSource$inputStream$1;->this$0:Lokio/RealBufferedSource;

    move-object v3, v8

    move-object v5, v7

    const/4 v7, 0x0

    move v4, v7

    .line 184
    move-object v7, v3

    iget-object v7, v7, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    move-object v6, v7

    move-object v7, v5

    move-object v8, v6

    .line 147
    const/16 v9, 0x2000

    int-to-long v9, v9

    invoke-interface {v7, v8, v9, v10}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v7

    move-wide v1, v7

    .line 148
    move-wide v7, v1

    const-wide/16 v9, -0x1

    cmp-long v7, v7, v9

    if-nez v7, :cond_1

    const/4 v7, -0x1

    move v0, v7

    .line 186
    :goto_0
    return v0

    .line 150
    :cond_1
    move-object v7, v0

    iget-object v7, v7, Lokio/RealBufferedSource$inputStream$1;->this$0:Lokio/RealBufferedSource;

    move-object v1, v7

    const/4 v7, 0x0

    move v2, v7

    .line 185
    move-object v7, v1

    iget-object v7, v7, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 150
    invoke-virtual {v7}, Lokio/Buffer;->readByte()B

    move-result v7

    move v1, v7

    const/16 v7, 0xff

    move v2, v7

    const/4 v7, 0x0

    move v3, v7

    .line 186
    move v7, v1

    move v8, v2

    and-int/2addr v7, v8

    move v0, v7

    goto :goto_0
.end method

.method public read([BII)I
    .locals 17
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object v10, v1

    const-string v11, "data"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    move-object v10, v0

    iget-object v10, v10, Lokio/RealBufferedSource$inputStream$1;->this$0:Lokio/RealBufferedSource;

    iget-boolean v10, v10, Lokio/RealBufferedSource;->closed:Z

    if-eqz v10, :cond_0

    new-instance v10, Ljava/io/IOException;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    const-string v12, "closed"

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    check-cast v10, Ljava/lang/Throwable;

    throw v10

    .line 155
    :cond_0
    move-object v10, v1

    array-length v10, v10

    int-to-long v10, v10

    move v12, v2

    int-to-long v12, v12

    move v14, v3

    int-to-long v14, v14

    invoke-static/range {v10 .. v15}, Lokio/-Util;->checkOffsetAndCount(JJJ)V

    .line 157
    move-object v10, v0

    iget-object v10, v10, Lokio/RealBufferedSource$inputStream$1;->this$0:Lokio/RealBufferedSource;

    move-object v4, v10

    const/4 v10, 0x0

    move v5, v10

    .line 187
    move-object v10, v4

    iget-object v10, v10, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    invoke-virtual {v10}, Lokio/Buffer;->size()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-nez v10, :cond_1

    .line 158
    move-object v10, v0

    iget-object v10, v10, Lokio/RealBufferedSource$inputStream$1;->this$0:Lokio/RealBufferedSource;

    iget-object v10, v10, Lokio/RealBufferedSource;->source:Lokio/Source;

    move-object v11, v0

    iget-object v11, v11, Lokio/RealBufferedSource$inputStream$1;->this$0:Lokio/RealBufferedSource;

    move-object v6, v11

    move-object v8, v10

    const/4 v10, 0x0

    move v7, v10

    .line 188
    move-object v10, v6

    iget-object v10, v10, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    move-object v9, v10

    move-object v10, v8

    move-object v11, v9

    .line 158
    const/16 v12, 0x2000

    int-to-long v12, v12

    invoke-interface {v10, v11, v12, v13}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v10

    move-wide v4, v10

    .line 159
    move-wide v10, v4

    const-wide/16 v12, -0x1

    cmp-long v10, v10, v12

    if-nez v10, :cond_1

    const/4 v10, -0x1

    move v0, v10

    .line 162
    :goto_0
    return v0

    :cond_1
    move-object v10, v0

    iget-object v10, v10, Lokio/RealBufferedSource$inputStream$1;->this$0:Lokio/RealBufferedSource;

    move-object v4, v10

    const/4 v10, 0x0

    move v5, v10

    .line 189
    move-object v10, v4

    iget-object v10, v10, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 162
    move-object v11, v1

    move v12, v2

    move v13, v3

    invoke-virtual {v10, v11, v12, v13}, Lokio/Buffer;->read([BII)I

    move-result v10

    move v0, v10

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 172
    move-object v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v0

    iget-object v2, v2, Lokio/RealBufferedSource$inputStream$1;->this$0:Lokio/RealBufferedSource;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".inputStream()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method
