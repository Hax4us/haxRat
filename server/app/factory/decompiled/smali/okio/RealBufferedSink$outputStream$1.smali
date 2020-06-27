.class public final Lokio/RealBufferedSink$outputStream$1;
.super Ljava/io/OutputStream;
.source "RealBufferedSink.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokio/RealBufferedSink;->outputStream()Ljava/io/OutputStream;
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
        "\u0000)\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0008\u0010\u0004\u001a\u00020\u0003H\u0016J\u0008\u0010\u0005\u001a\u00020\u0006H\u0016J \u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u000bH\u0016J\u0010\u0010\u0007\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u000bH\u0016\u00a8\u0006\u000e"
    }
    d2 = {
        "okio/RealBufferedSink$outputStream$1",
        "Ljava/io/OutputStream;",
        "close",
        "",
        "flush",
        "toString",
        "",
        "write",
        "data",
        "",
        "offset",
        "",
        "byteCount",
        "b",
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
.field final synthetic this$0:Lokio/RealBufferedSink;


# direct methods
.method constructor <init>(Lokio/RealBufferedSink;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 107
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lokio/RealBufferedSink$outputStream$1;->this$0:Lokio/RealBufferedSink;

    move-object v2, v0

    invoke-direct {v2}, Ljava/io/OutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 127
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokio/RealBufferedSink$outputStream$1;->this$0:Lokio/RealBufferedSink;

    invoke-virtual {v1}, Lokio/RealBufferedSink;->close()V

    return-void
.end method

.method public flush()V
    .locals 2

    .prologue
    .line 122
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokio/RealBufferedSink$outputStream$1;->this$0:Lokio/RealBufferedSink;

    iget-boolean v1, v1, Lokio/RealBufferedSink;->closed:Z

    if-nez v1, :cond_0

    .line 123
    move-object v1, v0

    iget-object v1, v1, Lokio/RealBufferedSink$outputStream$1;->this$0:Lokio/RealBufferedSink;

    invoke-virtual {v1}, Lokio/RealBufferedSink;->flush()V

    .line 125
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 129
    move-object v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v0

    iget-object v2, v2, Lokio/RealBufferedSink$outputStream$1;->this$0:Lokio/RealBufferedSink;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".outputStream()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public write(I)V
    .locals 8

    .prologue
    .line 109
    move-object v0, p0

    move v1, p1

    move-object v4, v0

    iget-object v4, v4, Lokio/RealBufferedSink$outputStream$1;->this$0:Lokio/RealBufferedSink;

    iget-boolean v4, v4, Lokio/RealBufferedSink;->closed:Z

    if-eqz v4, :cond_0

    new-instance v4, Ljava/io/IOException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string v6, "closed"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    check-cast v4, Ljava/lang/Throwable;

    throw v4

    .line 110
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lokio/RealBufferedSink$outputStream$1;->this$0:Lokio/RealBufferedSink;

    move-object v2, v4

    const/4 v4, 0x0

    move v3, v4

    .line 142
    move-object v4, v2

    iget-object v4, v4, Lokio/RealBufferedSink;->bufferField:Lokio/Buffer;

    .line 110
    move v5, v1

    int-to-byte v5, v5

    invoke-virtual {v4, v5}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    move-result-object v4

    .line 111
    move-object v4, v0

    iget-object v4, v4, Lokio/RealBufferedSink$outputStream$1;->this$0:Lokio/RealBufferedSink;

    invoke-virtual {v4}, Lokio/RealBufferedSink;->emitCompleteSegments()Lokio/BufferedSink;

    move-result-object v4

    .line 112
    return-void
.end method

.method public write([BII)V
    .locals 11
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v6, v1

    const-string v7, "data"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    move-object v6, v0

    iget-object v6, v6, Lokio/RealBufferedSink$outputStream$1;->this$0:Lokio/RealBufferedSink;

    iget-boolean v6, v6, Lokio/RealBufferedSink;->closed:Z

    if-eqz v6, :cond_0

    new-instance v6, Ljava/io/IOException;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const-string v8, "closed"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    check-cast v6, Ljava/lang/Throwable;

    throw v6

    .line 116
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Lokio/RealBufferedSink$outputStream$1;->this$0:Lokio/RealBufferedSink;

    move-object v4, v6

    const/4 v6, 0x0

    move v5, v6

    .line 143
    move-object v6, v4

    iget-object v6, v6, Lokio/RealBufferedSink;->bufferField:Lokio/Buffer;

    .line 116
    move-object v7, v1

    move v8, v2

    move v9, v3

    invoke-virtual {v6, v7, v8, v9}, Lokio/Buffer;->write([BII)Lokio/Buffer;

    move-result-object v6

    .line 117
    move-object v6, v0

    iget-object v6, v6, Lokio/RealBufferedSink$outputStream$1;->this$0:Lokio/RealBufferedSink;

    invoke-virtual {v6}, Lokio/RealBufferedSink;->emitCompleteSegments()Lokio/BufferedSink;

    move-result-object v6

    .line 118
    return-void
.end method
