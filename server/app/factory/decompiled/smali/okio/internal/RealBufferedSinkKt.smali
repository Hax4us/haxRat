.class public final Lokio/internal/RealBufferedSinkKt;
.super Ljava/lang/Object;
.source "RealBufferedSink.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000D\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0015\u001a\r\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u0080\u0008\u001a\r\u0010\u0003\u001a\u00020\u0004*\u00020\u0002H\u0080\u0008\u001a\r\u0010\u0005\u001a\u00020\u0004*\u00020\u0002H\u0080\u0008\u001a\r\u0010\u0006\u001a\u00020\u0001*\u00020\u0002H\u0080\u0008\u001a\r\u0010\u0007\u001a\u00020\u0008*\u00020\u0002H\u0080\u0008\u001a\r\u0010\t\u001a\u00020\n*\u00020\u0002H\u0080\u0008\u001a\u0015\u0010\u000b\u001a\u00020\u0004*\u00020\u00022\u0006\u0010\u000c\u001a\u00020\rH\u0080\u0008\u001a%\u0010\u000b\u001a\u00020\u0004*\u00020\u00022\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000fH\u0080\u0008\u001a\u001d\u0010\u000b\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u000c\u001a\u00020\u00112\u0006\u0010\u0010\u001a\u00020\u0012H\u0080\u0008\u001a\u0015\u0010\u000b\u001a\u00020\u0004*\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u0014H\u0080\u0008\u001a%\u0010\u000b\u001a\u00020\u0004*\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000fH\u0080\u0008\u001a\u001d\u0010\u000b\u001a\u00020\u0004*\u00020\u00022\u0006\u0010\u000c\u001a\u00020\u00152\u0006\u0010\u0010\u001a\u00020\u0012H\u0080\u0008\u001a\u0015\u0010\u0016\u001a\u00020\u0012*\u00020\u00022\u0006\u0010\u000c\u001a\u00020\u0015H\u0080\u0008\u001a\u0015\u0010\u0017\u001a\u00020\u0004*\u00020\u00022\u0006\u0010\u0018\u001a\u00020\u000fH\u0080\u0008\u001a\u0015\u0010\u0019\u001a\u00020\u0004*\u00020\u00022\u0006\u0010\u001a\u001a\u00020\u0012H\u0080\u0008\u001a\u0015\u0010\u001b\u001a\u00020\u0004*\u00020\u00022\u0006\u0010\u001a\u001a\u00020\u0012H\u0080\u0008\u001a\u0015\u0010\u001c\u001a\u00020\u0004*\u00020\u00022\u0006\u0010\u001d\u001a\u00020\u000fH\u0080\u0008\u001a\u0015\u0010\u001e\u001a\u00020\u0004*\u00020\u00022\u0006\u0010\u001d\u001a\u00020\u000fH\u0080\u0008\u001a\u0015\u0010\u001f\u001a\u00020\u0004*\u00020\u00022\u0006\u0010\u001a\u001a\u00020\u0012H\u0080\u0008\u001a\u0015\u0010 \u001a\u00020\u0004*\u00020\u00022\u0006\u0010\u001a\u001a\u00020\u0012H\u0080\u0008\u001a\u0015\u0010!\u001a\u00020\u0004*\u00020\u00022\u0006\u0010\"\u001a\u00020\u000fH\u0080\u0008\u001a\u0015\u0010#\u001a\u00020\u0004*\u00020\u00022\u0006\u0010\"\u001a\u00020\u000fH\u0080\u0008\u001a\u0015\u0010$\u001a\u00020\u0004*\u00020\u00022\u0006\u0010%\u001a\u00020\nH\u0080\u0008\u001a%\u0010$\u001a\u00020\u0004*\u00020\u00022\u0006\u0010%\u001a\u00020\n2\u0006\u0010&\u001a\u00020\u000f2\u0006\u0010\'\u001a\u00020\u000fH\u0080\u0008\u001a\u0015\u0010(\u001a\u00020\u0004*\u00020\u00022\u0006\u0010)\u001a\u00020\u000fH\u0080\u0008\u00a8\u0006*"
    }
    d2 = {
        "commonClose",
        "",
        "Lokio/RealBufferedSink;",
        "commonEmit",
        "Lokio/BufferedSink;",
        "commonEmitCompleteSegments",
        "commonFlush",
        "commonTimeout",
        "Lokio/Timeout;",
        "commonToString",
        "",
        "commonWrite",
        "source",
        "",
        "offset",
        "",
        "byteCount",
        "Lokio/Buffer;",
        "",
        "byteString",
        "Lokio/ByteString;",
        "Lokio/Source;",
        "commonWriteAll",
        "commonWriteByte",
        "b",
        "commonWriteDecimalLong",
        "v",
        "commonWriteHexadecimalUnsignedLong",
        "commonWriteInt",
        "i",
        "commonWriteIntLe",
        "commonWriteLong",
        "commonWriteLongLe",
        "commonWriteShort",
        "s",
        "commonWriteShortLe",
        "commonWriteUtf8",
        "string",
        "beginIndex",
        "endIndex",
        "commonWriteUtf8CodePoint",
        "codePoint",
        "okio"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# direct methods
.method public static final commonClose(Lokio/RealBufferedSink;)V
    .locals 12
    .param p0    # Lokio/RealBufferedSink;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    const/4 v8, 0x0

    move v1, v8

    move-object v8, v0

    const-string v9, "$this$commonClose"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 189
    move-object v8, v0

    iget-boolean v8, v8, Lokio/RealBufferedSink;->closed:Z

    if-eqz v8, :cond_0

    .line 211
    :goto_0
    return-void

    .line 193
    :cond_0
    const/4 v8, 0x0

    check-cast v8, Ljava/lang/Throwable;

    move-object v2, v8

    .line 194
    nop

    .line 195
    move-object v8, v0

    move-object v3, v8

    const/4 v8, 0x0

    move v4, v8

    .line 243
    move-object v8, v3

    :try_start_0
    iget-object v8, v8, Lokio/RealBufferedSink;->bufferField:Lokio/Buffer;

    invoke-virtual {v8}, Lokio/Buffer;->size()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-lez v8, :cond_1

    .line 196
    move-object v8, v0

    iget-object v8, v8, Lokio/RealBufferedSink;->sink:Lokio/Sink;

    move-object v9, v0

    move-object v3, v9

    move-object v5, v8

    const/4 v8, 0x0

    move v4, v8

    .line 244
    move-object v8, v3

    iget-object v8, v8, Lokio/RealBufferedSink;->bufferField:Lokio/Buffer;

    move-object v6, v8

    move-object v8, v5

    move-object v9, v6

    .line 196
    move-object v10, v0

    move-object v3, v10

    move-object v6, v9

    move-object v5, v8

    const/4 v8, 0x0

    move v4, v8

    .line 245
    move-object v8, v3

    iget-object v8, v8, Lokio/RealBufferedSink;->bufferField:Lokio/Buffer;

    move-object v7, v8

    move-object v8, v5

    move-object v9, v6

    move-object v10, v7

    invoke-virtual {v10}, Lokio/Buffer;->size()J

    move-result-wide v10

    .line 196
    invoke-interface {v8, v9, v10, v11}, Lokio/Sink;->write(Lokio/Buffer;J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    :cond_1
    :goto_1
    nop

    .line 203
    move-object v8, v0

    :try_start_1
    iget-object v8, v8, Lokio/RealBufferedSink;->sink:Lokio/Sink;

    invoke-interface {v8}, Lokio/Sink;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 206
    :cond_2
    :goto_2
    move-object v8, v0

    const/4 v9, 0x1

    iput-boolean v9, v8, Lokio/RealBufferedSink;->closed:Z

    .line 210
    move-object v8, v2

    if-eqz v8, :cond_3

    move-object v8, v2

    throw v8

    .line 198
    :catch_0
    move-exception v8

    move-object v3, v8

    .line 199
    move-object v8, v3

    move-object v2, v8

    goto :goto_1

    .line 204
    :catch_1
    move-exception v8

    move-object v3, v8

    .line 205
    move-object v8, v2

    if-nez v8, :cond_2

    move-object v8, v3

    move-object v2, v8

    goto :goto_2

    .line 211
    :cond_3
    goto :goto_0
.end method

.method public static final commonEmit(Lokio/RealBufferedSink;)Lokio/BufferedSink;
    .locals 13
    .param p0    # Lokio/RealBufferedSink;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    move-object v0, p0

    const/4 v8, 0x0

    move v1, v8

    move-object v8, v0

    const-string v9, "$this$commonEmit"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 174
    move-object v8, v0

    iget-boolean v8, v8, Lokio/RealBufferedSink;->closed:Z

    if-nez v8, :cond_0

    const/4 v8, 0x1

    :goto_0
    move v2, v8

    const/4 v8, 0x0

    move v3, v8

    const/4 v8, 0x0

    move v4, v8

    move v8, v2

    if-nez v8, :cond_1

    const/4 v8, 0x0

    move v5, v8

    const-string v8, "closed"

    move-object v4, v8

    new-instance v8, Ljava/lang/IllegalStateException;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v10, v4

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v8, Ljava/lang/Throwable;

    throw v8

    :cond_0
    const/4 v8, 0x0

    goto :goto_0

    .line 175
    :cond_1
    move-object v8, v0

    move-object v4, v8

    const/4 v8, 0x0

    move v5, v8

    .line 238
    move-object v8, v4

    iget-object v8, v8, Lokio/RealBufferedSink;->bufferField:Lokio/Buffer;

    invoke-virtual {v8}, Lokio/Buffer;->size()J

    move-result-wide v8

    .line 175
    move-wide v2, v8

    .line 176
    move-wide v8, v2

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-lez v8, :cond_2

    move-object v8, v0

    iget-object v8, v8, Lokio/RealBufferedSink;->sink:Lokio/Sink;

    move-object v9, v0

    move-object v4, v9

    move-object v6, v8

    const/4 v8, 0x0

    move v5, v8

    .line 239
    move-object v8, v4

    iget-object v8, v8, Lokio/RealBufferedSink;->bufferField:Lokio/Buffer;

    move-object v7, v8

    move-object v8, v6

    move-object v9, v7

    .line 176
    move-wide v10, v2

    invoke-interface {v8, v9, v10, v11}, Lokio/Sink;->write(Lokio/Buffer;J)V

    .line 177
    :cond_2
    move-object v8, v0

    check-cast v8, Lokio/BufferedSink;

    move-object v0, v8

    return-object v0
.end method

.method public static final commonEmitCompleteSegments(Lokio/RealBufferedSink;)Lokio/BufferedSink;
    .locals 13
    .param p0    # Lokio/RealBufferedSink;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    move-object v0, p0

    const/4 v8, 0x0

    move v1, v8

    move-object v8, v0

    const-string v9, "$this$commonEmitCompleteSegments"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    move-object v8, v0

    iget-boolean v8, v8, Lokio/RealBufferedSink;->closed:Z

    if-nez v8, :cond_0

    const/4 v8, 0x1

    :goto_0
    move v2, v8

    const/4 v8, 0x0

    move v3, v8

    const/4 v8, 0x0

    move v4, v8

    move v8, v2

    if-nez v8, :cond_1

    const/4 v8, 0x0

    move v5, v8

    const-string v8, "closed"

    move-object v4, v8

    new-instance v8, Ljava/lang/IllegalStateException;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v10, v4

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v8, Ljava/lang/Throwable;

    throw v8

    :cond_0
    const/4 v8, 0x0

    goto :goto_0

    .line 168
    :cond_1
    move-object v8, v0

    move-object v4, v8

    const/4 v8, 0x0

    move v5, v8

    .line 236
    move-object v8, v4

    iget-object v8, v8, Lokio/RealBufferedSink;->bufferField:Lokio/Buffer;

    .line 168
    invoke-virtual {v8}, Lokio/Buffer;->completeSegmentByteCount()J

    move-result-wide v8

    move-wide v2, v8

    .line 169
    move-wide v8, v2

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-lez v8, :cond_2

    move-object v8, v0

    iget-object v8, v8, Lokio/RealBufferedSink;->sink:Lokio/Sink;

    move-object v9, v0

    move-object v4, v9

    move-object v6, v8

    const/4 v8, 0x0

    move v5, v8

    .line 237
    move-object v8, v4

    iget-object v8, v8, Lokio/RealBufferedSink;->bufferField:Lokio/Buffer;

    move-object v7, v8

    move-object v8, v6

    move-object v9, v7

    .line 169
    move-wide v10, v2

    invoke-interface {v8, v9, v10, v11}, Lokio/Sink;->write(Lokio/Buffer;J)V

    .line 170
    :cond_2
    move-object v8, v0

    check-cast v8, Lokio/BufferedSink;

    move-object v0, v8

    return-object v0
.end method

.method public static final commonFlush(Lokio/RealBufferedSink;)V
    .locals 14
    .param p0    # Lokio/RealBufferedSink;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    const/4 v9, 0x0

    move v1, v9

    move-object v9, v0

    const-string v10, "$this$commonFlush"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 181
    move-object v9, v0

    iget-boolean v9, v9, Lokio/RealBufferedSink;->closed:Z

    if-nez v9, :cond_0

    const/4 v9, 0x1

    :goto_0
    move v2, v9

    const/4 v9, 0x0

    move v3, v9

    const/4 v9, 0x0

    move v4, v9

    move v9, v2

    if-nez v9, :cond_1

    const/4 v9, 0x0

    move v5, v9

    const-string v9, "closed"

    move-object v4, v9

    new-instance v9, Ljava/lang/IllegalStateException;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    move-object v11, v4

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v9, Ljava/lang/Throwable;

    throw v9

    :cond_0
    const/4 v9, 0x0

    goto :goto_0

    .line 182
    :cond_1
    move-object v9, v0

    move-object v2, v9

    const/4 v9, 0x0

    move v3, v9

    .line 240
    move-object v9, v2

    iget-object v9, v9, Lokio/RealBufferedSink;->bufferField:Lokio/Buffer;

    invoke-virtual {v9}, Lokio/Buffer;->size()J

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-lez v9, :cond_2

    .line 183
    move-object v9, v0

    iget-object v9, v9, Lokio/RealBufferedSink;->sink:Lokio/Sink;

    move-object v10, v0

    move-object v2, v10

    move-object v6, v9

    const/4 v9, 0x0

    move v3, v9

    .line 241
    move-object v9, v2

    iget-object v9, v9, Lokio/RealBufferedSink;->bufferField:Lokio/Buffer;

    move-object v7, v9

    move-object v9, v6

    move-object v10, v7

    .line 183
    move-object v11, v0

    move-object v2, v11

    move-object v7, v10

    move-object v6, v9

    const/4 v9, 0x0

    move v3, v9

    .line 242
    move-object v9, v2

    iget-object v9, v9, Lokio/RealBufferedSink;->bufferField:Lokio/Buffer;

    move-object v8, v9

    move-object v9, v6

    move-object v10, v7

    move-object v11, v8

    invoke-virtual {v11}, Lokio/Buffer;->size()J

    move-result-wide v11

    .line 183
    invoke-interface {v9, v10, v11, v12}, Lokio/Sink;->write(Lokio/Buffer;J)V

    .line 185
    :cond_2
    move-object v9, v0

    iget-object v9, v9, Lokio/RealBufferedSink;->sink:Lokio/Sink;

    invoke-interface {v9}, Lokio/Sink;->flush()V

    .line 186
    return-void
.end method

.method public static final commonTimeout(Lokio/RealBufferedSink;)Lokio/Timeout;
    .locals 4
    .param p0    # Lokio/RealBufferedSink;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    move-object v0, p0

    const/4 v2, 0x0

    move v1, v2

    move-object v2, v0

    const-string v3, "$this$commonTimeout"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 213
    move-object v2, v0

    iget-object v2, v2, Lokio/RealBufferedSink;->sink:Lokio/Sink;

    invoke-interface {v2}, Lokio/Sink;->timeout()Lokio/Timeout;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public static final commonToString(Lokio/RealBufferedSink;)Ljava/lang/String;
    .locals 5
    .param p0    # Lokio/RealBufferedSink;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    move-object v0, p0

    const/4 v2, 0x0

    move v1, v2

    move-object v2, v0

    const-string v3, "$this$commonToString"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 215
    new-instance v2, Ljava/lang/StringBuilder;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "buffer("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lokio/RealBufferedSink;->sink:Lokio/Sink;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x29

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public static final commonWrite(Lokio/RealBufferedSink;Lokio/ByteString;)Lokio/BufferedSink;
    .locals 11
    .param p0    # Lokio/RealBufferedSink;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lokio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    const/4 v7, 0x0

    move v2, v7

    move-object v7, v0

    const-string v8, "$this$commonWrite"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v7, v1

    const-string v8, "byteString"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    move-object v7, v0

    iget-boolean v7, v7, Lokio/RealBufferedSink;->closed:Z

    if-nez v7, :cond_0

    const/4 v7, 0x1

    :goto_0
    move v3, v7

    const/4 v7, 0x0

    move v4, v7

    const/4 v7, 0x0

    move v5, v7

    move v7, v3

    if-nez v7, :cond_1

    const/4 v7, 0x0

    move v6, v7

    const-string v7, "closed"

    move-object v5, v7

    new-instance v7, Ljava/lang/IllegalStateException;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v9, v5

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v7, Ljava/lang/Throwable;

    throw v7

    :cond_0
    const/4 v7, 0x0

    goto :goto_0

    .line 38
    :cond_1
    move-object v7, v0

    move-object v3, v7

    const/4 v7, 0x0

    move v4, v7

    .line 218
    move-object v7, v3

    iget-object v7, v7, Lokio/RealBufferedSink;->bufferField:Lokio/Buffer;

    .line 38
    move-object v8, v1

    invoke-virtual {v7, v8}, Lokio/Buffer;->write(Lokio/ByteString;)Lokio/Buffer;

    move-result-object v7

    .line 39
    move-object v7, v0

    invoke-virtual {v7}, Lokio/RealBufferedSink;->emitCompleteSegments()Lokio/BufferedSink;

    move-result-object v7

    move-object v0, v7

    return-object v0
.end method

.method public static final commonWrite(Lokio/RealBufferedSink;Lokio/ByteString;II)Lokio/BufferedSink;
    .locals 14
    .param p0    # Lokio/RealBufferedSink;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lokio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    const/4 v9, 0x0

    move v4, v9

    move-object v9, v0

    const-string v10, "$this$commonWrite"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v9, v1

    const-string v10, "byteString"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    move-object v9, v0

    iget-boolean v9, v9, Lokio/RealBufferedSink;->closed:Z

    if-nez v9, :cond_0

    const/4 v9, 0x1

    :goto_0
    move v5, v9

    const/4 v9, 0x0

    move v6, v9

    const/4 v9, 0x0

    move v7, v9

    move v9, v5

    if-nez v9, :cond_1

    const/4 v9, 0x0

    move v8, v9

    const-string v9, "closed"

    move-object v7, v9

    new-instance v9, Ljava/lang/IllegalStateException;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    move-object v11, v7

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v9, Ljava/lang/Throwable;

    throw v9

    :cond_0
    const/4 v9, 0x0

    goto :goto_0

    .line 48
    :cond_1
    move-object v9, v0

    move-object v5, v9

    const/4 v9, 0x0

    move v6, v9

    .line 219
    move-object v9, v5

    iget-object v9, v9, Lokio/RealBufferedSink;->bufferField:Lokio/Buffer;

    .line 48
    move-object v10, v1

    move v11, v2

    move v12, v3

    invoke-virtual {v9, v10, v11, v12}, Lokio/Buffer;->write(Lokio/ByteString;II)Lokio/Buffer;

    move-result-object v9

    .line 49
    move-object v9, v0

    invoke-virtual {v9}, Lokio/RealBufferedSink;->emitCompleteSegments()Lokio/BufferedSink;

    move-result-object v9

    move-object v0, v9

    return-object v0
.end method

.method public static final commonWrite(Lokio/RealBufferedSink;Lokio/Source;J)Lokio/BufferedSink;
    .locals 18
    .param p0    # Lokio/RealBufferedSink;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lokio/Source;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    const/4 v13, 0x0

    move v4, v13

    move-object v13, v0

    const-string v14, "$this$commonWrite"

    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v13, v1

    const-string v14, "source"

    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    move-wide v13, v2

    move-wide v5, v13

    .line 103
    :goto_0
    move-wide v13, v5

    const-wide/16 v15, 0x0

    cmp-long v13, v13, v15

    if-lez v13, :cond_1

    .line 104
    move-object v13, v1

    move-object v14, v0

    move-object v9, v14

    move-object v11, v13

    const/4 v13, 0x0

    move v10, v13

    .line 226
    move-object v13, v9

    iget-object v13, v13, Lokio/RealBufferedSink;->bufferField:Lokio/Buffer;

    move-object v12, v13

    move-object v13, v11

    move-object v14, v12

    .line 104
    move-wide v15, v5

    invoke-interface/range {v13 .. v16}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v13

    move-wide v7, v13

    .line 105
    move-wide v13, v7

    const-wide/16 v15, -0x1

    cmp-long v13, v13, v15

    if-nez v13, :cond_0

    new-instance v13, Ljava/io/EOFException;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    invoke-direct {v14}, Ljava/io/EOFException;-><init>()V

    check-cast v13, Ljava/lang/Throwable;

    throw v13

    .line 106
    :cond_0
    move-wide v13, v5

    move-wide v15, v7

    sub-long/2addr v13, v15

    move-wide v5, v13

    .line 107
    move-object v13, v0

    invoke-virtual {v13}, Lokio/RealBufferedSink;->emitCompleteSegments()Lokio/BufferedSink;

    move-result-object v13

    .line 103
    goto :goto_0

    .line 109
    :cond_1
    move-object v13, v0

    check-cast v13, Lokio/BufferedSink;

    move-object v0, v13

    return-object v0
.end method

.method public static final commonWrite(Lokio/RealBufferedSink;[B)Lokio/BufferedSink;
    .locals 11
    .param p0    # Lokio/RealBufferedSink;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    const/4 v7, 0x0

    move v2, v7

    move-object v7, v0

    const-string v8, "$this$commonWrite"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v7, v1

    const-string v8, "source"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    move-object v7, v0

    iget-boolean v7, v7, Lokio/RealBufferedSink;->closed:Z

    if-nez v7, :cond_0

    const/4 v7, 0x1

    :goto_0
    move v3, v7

    const/4 v7, 0x0

    move v4, v7

    const/4 v7, 0x0

    move v5, v7

    move v7, v3

    if-nez v7, :cond_1

    const/4 v7, 0x0

    move v6, v7

    const-string v7, "closed"

    move-object v5, v7

    new-instance v7, Ljava/lang/IllegalStateException;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v9, v5

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v7, Ljava/lang/Throwable;

    throw v7

    :cond_0
    const/4 v7, 0x0

    goto :goto_0

    .line 76
    :cond_1
    move-object v7, v0

    move-object v3, v7

    const/4 v7, 0x0

    move v4, v7

    .line 223
    move-object v7, v3

    iget-object v7, v7, Lokio/RealBufferedSink;->bufferField:Lokio/Buffer;

    .line 76
    move-object v8, v1

    invoke-virtual {v7, v8}, Lokio/Buffer;->write([B)Lokio/Buffer;

    move-result-object v7

    .line 77
    move-object v7, v0

    invoke-virtual {v7}, Lokio/RealBufferedSink;->emitCompleteSegments()Lokio/BufferedSink;

    move-result-object v7

    move-object v0, v7

    return-object v0
.end method

.method public static final commonWrite(Lokio/RealBufferedSink;[BII)Lokio/BufferedSink;
    .locals 14
    .param p0    # Lokio/RealBufferedSink;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    const/4 v9, 0x0

    move v4, v9

    move-object v9, v0

    const-string v10, "$this$commonWrite"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v9, v1

    const-string v10, "source"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    move-object v9, v0

    iget-boolean v9, v9, Lokio/RealBufferedSink;->closed:Z

    if-nez v9, :cond_0

    const/4 v9, 0x1

    :goto_0
    move v5, v9

    const/4 v9, 0x0

    move v6, v9

    const/4 v9, 0x0

    move v7, v9

    move v9, v5

    if-nez v9, :cond_1

    const/4 v9, 0x0

    move v8, v9

    const-string v9, "closed"

    move-object v7, v9

    new-instance v9, Ljava/lang/IllegalStateException;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    move-object v11, v7

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v9, Ljava/lang/Throwable;

    throw v9

    :cond_0
    const/4 v9, 0x0

    goto :goto_0

    .line 86
    :cond_1
    move-object v9, v0

    move-object v5, v9

    const/4 v9, 0x0

    move v6, v9

    .line 224
    move-object v9, v5

    iget-object v9, v9, Lokio/RealBufferedSink;->bufferField:Lokio/Buffer;

    .line 86
    move-object v10, v1

    move v11, v2

    move v12, v3

    invoke-virtual {v9, v10, v11, v12}, Lokio/Buffer;->write([BII)Lokio/Buffer;

    move-result-object v9

    .line 87
    move-object v9, v0

    invoke-virtual {v9}, Lokio/RealBufferedSink;->emitCompleteSegments()Lokio/BufferedSink;

    move-result-object v9

    move-object v0, v9

    return-object v0
.end method

.method public static final commonWrite(Lokio/RealBufferedSink;Lokio/Buffer;J)V
    .locals 14
    .param p0    # Lokio/RealBufferedSink;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lokio/Buffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-wide/from16 v2, p2

    const/4 v9, 0x0

    move v4, v9

    move-object v9, v0

    const-string v10, "$this$commonWrite"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v9, v1

    const-string v10, "source"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    move-object v9, v0

    iget-boolean v9, v9, Lokio/RealBufferedSink;->closed:Z

    if-nez v9, :cond_0

    const/4 v9, 0x1

    :goto_0
    move v5, v9

    const/4 v9, 0x0

    move v6, v9

    const/4 v9, 0x0

    move v7, v9

    move v9, v5

    if-nez v9, :cond_1

    const/4 v9, 0x0

    move v8, v9

    const-string v9, "closed"

    move-object v7, v9

    new-instance v9, Ljava/lang/IllegalStateException;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    move-object v11, v7

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v9, Ljava/lang/Throwable;

    throw v9

    :cond_0
    const/4 v9, 0x0

    goto :goto_0

    .line 32
    :cond_1
    move-object v9, v0

    move-object v5, v9

    const/4 v9, 0x0

    move v6, v9

    .line 217
    move-object v9, v5

    iget-object v9, v9, Lokio/RealBufferedSink;->bufferField:Lokio/Buffer;

    .line 32
    move-object v10, v1

    move-wide v11, v2

    invoke-virtual {v9, v10, v11, v12}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    .line 33
    move-object v9, v0

    invoke-virtual {v9}, Lokio/RealBufferedSink;->emitCompleteSegments()Lokio/BufferedSink;

    move-result-object v9

    .line 34
    return-void
.end method

.method public static final commonWriteAll(Lokio/RealBufferedSink;Lokio/Source;)J
    .locals 15
    .param p0    # Lokio/RealBufferedSink;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lokio/Source;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move-object/from16 v1, p1

    const/4 v11, 0x0

    move v2, v11

    move-object v11, v0

    const-string v12, "$this$commonWriteAll"

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v11, v1

    const-string v12, "source"

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    const-wide/16 v11, 0x0

    move-wide v3, v11

    .line 92
    :goto_0
    nop

    .line 93
    move-object v11, v1

    move-object v12, v0

    move-object v7, v12

    move-object v9, v11

    const/4 v11, 0x0

    move v8, v11

    .line 225
    move-object v11, v7

    iget-object v11, v11, Lokio/RealBufferedSink;->bufferField:Lokio/Buffer;

    move-object v10, v11

    move-object v11, v9

    move-object v12, v10

    .line 93
    const/16 v13, 0x2000

    int-to-long v13, v13

    invoke-interface {v11, v12, v13, v14}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v11

    move-wide v5, v11

    .line 94
    move-wide v11, v5

    const-wide/16 v13, -0x1

    cmp-long v11, v11, v13

    if-nez v11, :cond_0

    .line 98
    move-wide v11, v3

    move-wide v0, v11

    return-wide v0

    .line 95
    :cond_0
    move-wide v11, v3

    move-wide v13, v5

    add-long/2addr v11, v13

    move-wide v3, v11

    .line 96
    move-object v11, v0

    invoke-virtual {v11}, Lokio/RealBufferedSink;->emitCompleteSegments()Lokio/BufferedSink;

    move-result-object v11

    .line 92
    goto :goto_0
.end method

.method public static final commonWriteByte(Lokio/RealBufferedSink;I)Lokio/BufferedSink;
    .locals 11
    .param p0    # Lokio/RealBufferedSink;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    move-object v0, p0

    move v1, p1

    const/4 v7, 0x0

    move v2, v7

    move-object v7, v0

    const-string v8, "$this$commonWriteByte"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    move-object v7, v0

    iget-boolean v7, v7, Lokio/RealBufferedSink;->closed:Z

    if-nez v7, :cond_0

    const/4 v7, 0x1

    :goto_0
    move v3, v7

    const/4 v7, 0x0

    move v4, v7

    const/4 v7, 0x0

    move v5, v7

    move v7, v3

    if-nez v7, :cond_1

    const/4 v7, 0x0

    move v6, v7

    const-string v7, "closed"

    move-object v5, v7

    new-instance v7, Ljava/lang/IllegalStateException;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v9, v5

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v7, Ljava/lang/Throwable;

    throw v7

    :cond_0
    const/4 v7, 0x0

    goto :goto_0

    .line 114
    :cond_1
    move-object v7, v0

    move-object v3, v7

    const/4 v7, 0x0

    move v4, v7

    .line 227
    move-object v7, v3

    iget-object v7, v7, Lokio/RealBufferedSink;->bufferField:Lokio/Buffer;

    .line 114
    move v8, v1

    invoke-virtual {v7, v8}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    move-result-object v7

    .line 115
    move-object v7, v0

    invoke-virtual {v7}, Lokio/RealBufferedSink;->emitCompleteSegments()Lokio/BufferedSink;

    move-result-object v7

    move-object v0, v7

    return-object v0
.end method

.method public static final commonWriteDecimalLong(Lokio/RealBufferedSink;J)Lokio/BufferedSink;
    .locals 12
    .param p0    # Lokio/RealBufferedSink;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    move-object v0, p0

    move-wide v1, p1

    const/4 v8, 0x0

    move v3, v8

    move-object v8, v0

    const-string v9, "$this$commonWriteDecimalLong"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    move-object v8, v0

    iget-boolean v8, v8, Lokio/RealBufferedSink;->closed:Z

    if-nez v8, :cond_0

    const/4 v8, 0x1

    :goto_0
    move v4, v8

    const/4 v8, 0x0

    move v5, v8

    const/4 v8, 0x0

    move v6, v8

    move v8, v4

    if-nez v8, :cond_1

    const/4 v8, 0x0

    move v7, v8

    const-string v8, "closed"

    move-object v6, v8

    new-instance v8, Ljava/lang/IllegalStateException;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    move-object v10, v6

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v8, Ljava/lang/Throwable;

    throw v8

    :cond_0
    const/4 v8, 0x0

    goto :goto_0

    .line 156
    :cond_1
    move-object v8, v0

    move-object v4, v8

    const/4 v8, 0x0

    move v5, v8

    .line 234
    move-object v8, v4

    iget-object v8, v8, Lokio/RealBufferedSink;->bufferField:Lokio/Buffer;

    .line 156
    move-wide v9, v1

    invoke-virtual {v8, v9, v10}, Lokio/Buffer;->writeDecimalLong(J)Lokio/Buffer;

    move-result-object v8

    .line 157
    move-object v8, v0

    invoke-virtual {v8}, Lokio/RealBufferedSink;->emitCompleteSegments()Lokio/BufferedSink;

    move-result-object v8

    move-object v0, v8

    return-object v0
.end method

.method public static final commonWriteHexadecimalUnsignedLong(Lokio/RealBufferedSink;J)Lokio/BufferedSink;
    .locals 12
    .param p0    # Lokio/RealBufferedSink;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    move-object v0, p0

    move-wide v1, p1

    const/4 v8, 0x0

    move v3, v8

    move-object v8, v0

    const-string v9, "$this$commonWriteHexadecimalUnsignedLong"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    move-object v8, v0

    iget-boolean v8, v8, Lokio/RealBufferedSink;->closed:Z

    if-nez v8, :cond_0

    const/4 v8, 0x1

    :goto_0
    move v4, v8

    const/4 v8, 0x0

    move v5, v8

    const/4 v8, 0x0

    move v6, v8

    move v8, v4

    if-nez v8, :cond_1

    const/4 v8, 0x0

    move v7, v8

    const-string v8, "closed"

    move-object v6, v8

    new-instance v8, Ljava/lang/IllegalStateException;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    move-object v10, v6

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v8, Ljava/lang/Throwable;

    throw v8

    :cond_0
    const/4 v8, 0x0

    goto :goto_0

    .line 162
    :cond_1
    move-object v8, v0

    move-object v4, v8

    const/4 v8, 0x0

    move v5, v8

    .line 235
    move-object v8, v4

    iget-object v8, v8, Lokio/RealBufferedSink;->bufferField:Lokio/Buffer;

    .line 162
    move-wide v9, v1

    invoke-virtual {v8, v9, v10}, Lokio/Buffer;->writeHexadecimalUnsignedLong(J)Lokio/Buffer;

    move-result-object v8

    .line 163
    move-object v8, v0

    invoke-virtual {v8}, Lokio/RealBufferedSink;->emitCompleteSegments()Lokio/BufferedSink;

    move-result-object v8

    move-object v0, v8

    return-object v0
.end method

.method public static final commonWriteInt(Lokio/RealBufferedSink;I)Lokio/BufferedSink;
    .locals 11
    .param p0    # Lokio/RealBufferedSink;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    move-object v0, p0

    move v1, p1

    const/4 v7, 0x0

    move v2, v7

    move-object v7, v0

    const-string v8, "$this$commonWriteInt"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    move-object v7, v0

    iget-boolean v7, v7, Lokio/RealBufferedSink;->closed:Z

    if-nez v7, :cond_0

    const/4 v7, 0x1

    :goto_0
    move v3, v7

    const/4 v7, 0x0

    move v4, v7

    const/4 v7, 0x0

    move v5, v7

    move v7, v3

    if-nez v7, :cond_1

    const/4 v7, 0x0

    move v6, v7

    const-string v7, "closed"

    move-object v5, v7

    new-instance v7, Ljava/lang/IllegalStateException;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v9, v5

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v7, Ljava/lang/Throwable;

    throw v7

    :cond_0
    const/4 v7, 0x0

    goto :goto_0

    .line 132
    :cond_1
    move-object v7, v0

    move-object v3, v7

    const/4 v7, 0x0

    move v4, v7

    .line 230
    move-object v7, v3

    iget-object v7, v7, Lokio/RealBufferedSink;->bufferField:Lokio/Buffer;

    .line 132
    move v8, v1

    invoke-virtual {v7, v8}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    move-result-object v7

    .line 133
    move-object v7, v0

    invoke-virtual {v7}, Lokio/RealBufferedSink;->emitCompleteSegments()Lokio/BufferedSink;

    move-result-object v7

    move-object v0, v7

    return-object v0
.end method

.method public static final commonWriteIntLe(Lokio/RealBufferedSink;I)Lokio/BufferedSink;
    .locals 11
    .param p0    # Lokio/RealBufferedSink;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    move-object v0, p0

    move v1, p1

    const/4 v7, 0x0

    move v2, v7

    move-object v7, v0

    const-string v8, "$this$commonWriteIntLe"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    move-object v7, v0

    iget-boolean v7, v7, Lokio/RealBufferedSink;->closed:Z

    if-nez v7, :cond_0

    const/4 v7, 0x1

    :goto_0
    move v3, v7

    const/4 v7, 0x0

    move v4, v7

    const/4 v7, 0x0

    move v5, v7

    move v7, v3

    if-nez v7, :cond_1

    const/4 v7, 0x0

    move v6, v7

    const-string v7, "closed"

    move-object v5, v7

    new-instance v7, Ljava/lang/IllegalStateException;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v9, v5

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v7, Ljava/lang/Throwable;

    throw v7

    :cond_0
    const/4 v7, 0x0

    goto :goto_0

    .line 138
    :cond_1
    move-object v7, v0

    move-object v3, v7

    const/4 v7, 0x0

    move v4, v7

    .line 231
    move-object v7, v3

    iget-object v7, v7, Lokio/RealBufferedSink;->bufferField:Lokio/Buffer;

    .line 138
    move v8, v1

    invoke-virtual {v7, v8}, Lokio/Buffer;->writeIntLe(I)Lokio/Buffer;

    move-result-object v7

    .line 139
    move-object v7, v0

    invoke-virtual {v7}, Lokio/RealBufferedSink;->emitCompleteSegments()Lokio/BufferedSink;

    move-result-object v7

    move-object v0, v7

    return-object v0
.end method

.method public static final commonWriteLong(Lokio/RealBufferedSink;J)Lokio/BufferedSink;
    .locals 12
    .param p0    # Lokio/RealBufferedSink;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    move-object v0, p0

    move-wide v1, p1

    const/4 v8, 0x0

    move v3, v8

    move-object v8, v0

    const-string v9, "$this$commonWriteLong"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    move-object v8, v0

    iget-boolean v8, v8, Lokio/RealBufferedSink;->closed:Z

    if-nez v8, :cond_0

    const/4 v8, 0x1

    :goto_0
    move v4, v8

    const/4 v8, 0x0

    move v5, v8

    const/4 v8, 0x0

    move v6, v8

    move v8, v4

    if-nez v8, :cond_1

    const/4 v8, 0x0

    move v7, v8

    const-string v8, "closed"

    move-object v6, v8

    new-instance v8, Ljava/lang/IllegalStateException;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    move-object v10, v6

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v8, Ljava/lang/Throwable;

    throw v8

    :cond_0
    const/4 v8, 0x0

    goto :goto_0

    .line 144
    :cond_1
    move-object v8, v0

    move-object v4, v8

    const/4 v8, 0x0

    move v5, v8

    .line 232
    move-object v8, v4

    iget-object v8, v8, Lokio/RealBufferedSink;->bufferField:Lokio/Buffer;

    .line 144
    move-wide v9, v1

    invoke-virtual {v8, v9, v10}, Lokio/Buffer;->writeLong(J)Lokio/Buffer;

    move-result-object v8

    .line 145
    move-object v8, v0

    invoke-virtual {v8}, Lokio/RealBufferedSink;->emitCompleteSegments()Lokio/BufferedSink;

    move-result-object v8

    move-object v0, v8

    return-object v0
.end method

.method public static final commonWriteLongLe(Lokio/RealBufferedSink;J)Lokio/BufferedSink;
    .locals 12
    .param p0    # Lokio/RealBufferedSink;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    move-object v0, p0

    move-wide v1, p1

    const/4 v8, 0x0

    move v3, v8

    move-object v8, v0

    const-string v9, "$this$commonWriteLongLe"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    move-object v8, v0

    iget-boolean v8, v8, Lokio/RealBufferedSink;->closed:Z

    if-nez v8, :cond_0

    const/4 v8, 0x1

    :goto_0
    move v4, v8

    const/4 v8, 0x0

    move v5, v8

    const/4 v8, 0x0

    move v6, v8

    move v8, v4

    if-nez v8, :cond_1

    const/4 v8, 0x0

    move v7, v8

    const-string v8, "closed"

    move-object v6, v8

    new-instance v8, Ljava/lang/IllegalStateException;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    move-object v10, v6

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v8, Ljava/lang/Throwable;

    throw v8

    :cond_0
    const/4 v8, 0x0

    goto :goto_0

    .line 150
    :cond_1
    move-object v8, v0

    move-object v4, v8

    const/4 v8, 0x0

    move v5, v8

    .line 233
    move-object v8, v4

    iget-object v8, v8, Lokio/RealBufferedSink;->bufferField:Lokio/Buffer;

    .line 150
    move-wide v9, v1

    invoke-virtual {v8, v9, v10}, Lokio/Buffer;->writeLongLe(J)Lokio/Buffer;

    move-result-object v8

    .line 151
    move-object v8, v0

    invoke-virtual {v8}, Lokio/RealBufferedSink;->emitCompleteSegments()Lokio/BufferedSink;

    move-result-object v8

    move-object v0, v8

    return-object v0
.end method

.method public static final commonWriteShort(Lokio/RealBufferedSink;I)Lokio/BufferedSink;
    .locals 11
    .param p0    # Lokio/RealBufferedSink;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    move-object v0, p0

    move v1, p1

    const/4 v7, 0x0

    move v2, v7

    move-object v7, v0

    const-string v8, "$this$commonWriteShort"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    move-object v7, v0

    iget-boolean v7, v7, Lokio/RealBufferedSink;->closed:Z

    if-nez v7, :cond_0

    const/4 v7, 0x1

    :goto_0
    move v3, v7

    const/4 v7, 0x0

    move v4, v7

    const/4 v7, 0x0

    move v5, v7

    move v7, v3

    if-nez v7, :cond_1

    const/4 v7, 0x0

    move v6, v7

    const-string v7, "closed"

    move-object v5, v7

    new-instance v7, Ljava/lang/IllegalStateException;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v9, v5

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v7, Ljava/lang/Throwable;

    throw v7

    :cond_0
    const/4 v7, 0x0

    goto :goto_0

    .line 120
    :cond_1
    move-object v7, v0

    move-object v3, v7

    const/4 v7, 0x0

    move v4, v7

    .line 228
    move-object v7, v3

    iget-object v7, v7, Lokio/RealBufferedSink;->bufferField:Lokio/Buffer;

    .line 120
    move v8, v1

    invoke-virtual {v7, v8}, Lokio/Buffer;->writeShort(I)Lokio/Buffer;

    move-result-object v7

    .line 121
    move-object v7, v0

    invoke-virtual {v7}, Lokio/RealBufferedSink;->emitCompleteSegments()Lokio/BufferedSink;

    move-result-object v7

    move-object v0, v7

    return-object v0
.end method

.method public static final commonWriteShortLe(Lokio/RealBufferedSink;I)Lokio/BufferedSink;
    .locals 11
    .param p0    # Lokio/RealBufferedSink;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    move-object v0, p0

    move v1, p1

    const/4 v7, 0x0

    move v2, v7

    move-object v7, v0

    const-string v8, "$this$commonWriteShortLe"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    move-object v7, v0

    iget-boolean v7, v7, Lokio/RealBufferedSink;->closed:Z

    if-nez v7, :cond_0

    const/4 v7, 0x1

    :goto_0
    move v3, v7

    const/4 v7, 0x0

    move v4, v7

    const/4 v7, 0x0

    move v5, v7

    move v7, v3

    if-nez v7, :cond_1

    const/4 v7, 0x0

    move v6, v7

    const-string v7, "closed"

    move-object v5, v7

    new-instance v7, Ljava/lang/IllegalStateException;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v9, v5

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v7, Ljava/lang/Throwable;

    throw v7

    :cond_0
    const/4 v7, 0x0

    goto :goto_0

    .line 126
    :cond_1
    move-object v7, v0

    move-object v3, v7

    const/4 v7, 0x0

    move v4, v7

    .line 229
    move-object v7, v3

    iget-object v7, v7, Lokio/RealBufferedSink;->bufferField:Lokio/Buffer;

    .line 126
    move v8, v1

    invoke-virtual {v7, v8}, Lokio/Buffer;->writeShortLe(I)Lokio/Buffer;

    move-result-object v7

    .line 127
    move-object v7, v0

    invoke-virtual {v7}, Lokio/RealBufferedSink;->emitCompleteSegments()Lokio/BufferedSink;

    move-result-object v7

    move-object v0, v7

    return-object v0
.end method

.method public static final commonWriteUtf8(Lokio/RealBufferedSink;Ljava/lang/String;)Lokio/BufferedSink;
    .locals 11
    .param p0    # Lokio/RealBufferedSink;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    const/4 v7, 0x0

    move v2, v7

    move-object v7, v0

    const-string v8, "$this$commonWriteUtf8"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v7, v1

    const-string v8, "string"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    move-object v7, v0

    iget-boolean v7, v7, Lokio/RealBufferedSink;->closed:Z

    if-nez v7, :cond_0

    const/4 v7, 0x1

    :goto_0
    move v3, v7

    const/4 v7, 0x0

    move v4, v7

    const/4 v7, 0x0

    move v5, v7

    move v7, v3

    if-nez v7, :cond_1

    const/4 v7, 0x0

    move v6, v7

    const-string v7, "closed"

    move-object v5, v7

    new-instance v7, Ljava/lang/IllegalStateException;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v9, v5

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v7, Ljava/lang/Throwable;

    throw v7

    :cond_0
    const/4 v7, 0x0

    goto :goto_0

    .line 54
    :cond_1
    move-object v7, v0

    move-object v3, v7

    const/4 v7, 0x0

    move v4, v7

    .line 220
    move-object v7, v3

    iget-object v7, v7, Lokio/RealBufferedSink;->bufferField:Lokio/Buffer;

    .line 54
    move-object v8, v1

    invoke-virtual {v7, v8}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;)Lokio/Buffer;

    move-result-object v7

    .line 55
    move-object v7, v0

    invoke-virtual {v7}, Lokio/RealBufferedSink;->emitCompleteSegments()Lokio/BufferedSink;

    move-result-object v7

    move-object v0, v7

    return-object v0
.end method

.method public static final commonWriteUtf8(Lokio/RealBufferedSink;Ljava/lang/String;II)Lokio/BufferedSink;
    .locals 14
    .param p0    # Lokio/RealBufferedSink;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    const/4 v9, 0x0

    move v4, v9

    move-object v9, v0

    const-string v10, "$this$commonWriteUtf8"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v9, v1

    const-string v10, "string"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    move-object v9, v0

    iget-boolean v9, v9, Lokio/RealBufferedSink;->closed:Z

    if-nez v9, :cond_0

    const/4 v9, 0x1

    :goto_0
    move v5, v9

    const/4 v9, 0x0

    move v6, v9

    const/4 v9, 0x0

    move v7, v9

    move v9, v5

    if-nez v9, :cond_1

    const/4 v9, 0x0

    move v8, v9

    const-string v9, "closed"

    move-object v7, v9

    new-instance v9, Ljava/lang/IllegalStateException;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    move-object v11, v7

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v9, Ljava/lang/Throwable;

    throw v9

    :cond_0
    const/4 v9, 0x0

    goto :goto_0

    .line 64
    :cond_1
    move-object v9, v0

    move-object v5, v9

    const/4 v9, 0x0

    move v6, v9

    .line 221
    move-object v9, v5

    iget-object v9, v9, Lokio/RealBufferedSink;->bufferField:Lokio/Buffer;

    .line 64
    move-object v10, v1

    move v11, v2

    move v12, v3

    invoke-virtual {v9, v10, v11, v12}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;II)Lokio/Buffer;

    move-result-object v9

    .line 65
    move-object v9, v0

    invoke-virtual {v9}, Lokio/RealBufferedSink;->emitCompleteSegments()Lokio/BufferedSink;

    move-result-object v9

    move-object v0, v9

    return-object v0
.end method

.method public static final commonWriteUtf8CodePoint(Lokio/RealBufferedSink;I)Lokio/BufferedSink;
    .locals 11
    .param p0    # Lokio/RealBufferedSink;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    move-object v0, p0

    move v1, p1

    const/4 v7, 0x0

    move v2, v7

    move-object v7, v0

    const-string v8, "$this$commonWriteUtf8CodePoint"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    move-object v7, v0

    iget-boolean v7, v7, Lokio/RealBufferedSink;->closed:Z

    if-nez v7, :cond_0

    const/4 v7, 0x1

    :goto_0
    move v3, v7

    const/4 v7, 0x0

    move v4, v7

    const/4 v7, 0x0

    move v5, v7

    move v7, v3

    if-nez v7, :cond_1

    const/4 v7, 0x0

    move v6, v7

    const-string v7, "closed"

    move-object v5, v7

    new-instance v7, Ljava/lang/IllegalStateException;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v9, v5

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v7, Ljava/lang/Throwable;

    throw v7

    :cond_0
    const/4 v7, 0x0

    goto :goto_0

    .line 70
    :cond_1
    move-object v7, v0

    move-object v3, v7

    const/4 v7, 0x0

    move v4, v7

    .line 222
    move-object v7, v3

    iget-object v7, v7, Lokio/RealBufferedSink;->bufferField:Lokio/Buffer;

    .line 70
    move v8, v1

    invoke-virtual {v7, v8}, Lokio/Buffer;->writeUtf8CodePoint(I)Lokio/Buffer;

    move-result-object v7

    .line 71
    move-object v7, v0

    invoke-virtual {v7}, Lokio/RealBufferedSink;->emitCompleteSegments()Lokio/BufferedSink;

    move-result-object v7

    move-object v0, v7

    return-object v0
.end method
