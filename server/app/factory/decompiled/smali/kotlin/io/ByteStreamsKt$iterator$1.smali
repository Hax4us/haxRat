.class public final Lkotlin/io/ByteStreamsKt$iterator$1;
.super Lkotlin/collections/ByteIterator;
.source "IOStreams.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/io/ByteStreamsKt;->iterator(Ljava/io/BufferedInputStream;)Lkotlin/collections/ByteIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000)\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0010\u0005\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\t\u0010\u0012\u001a\u00020\u0004H\u0096\u0002J\u0008\u0010\t\u001a\u00020\u0013H\u0016J\u0008\u0010\u0014\u001a\u00020\u0015H\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0006\"\u0004\u0008\u0011\u0010\u0008\u00a8\u0006\u0016"
    }
    d2 = {
        "kotlin/io/ByteStreamsKt$iterator$1",
        "Lkotlin/collections/ByteIterator;",
        "(Ljava/io/BufferedInputStream;)V",
        "finished",
        "",
        "getFinished",
        "()Z",
        "setFinished",
        "(Z)V",
        "nextByte",
        "",
        "getNextByte",
        "()I",
        "setNextByte",
        "(I)V",
        "nextPrepared",
        "getNextPrepared",
        "setNextPrepared",
        "hasNext",
        "",
        "prepareNext",
        "",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xa
    }
.end annotation


# instance fields
.field private finished:Z

.field private nextByte:I

.field private nextPrepared:Z

.field final synthetic receiver$0:Ljava/io/BufferedInputStream;


# direct methods
.method constructor <init>(Ljava/io/BufferedInputStream;)V
    .locals 4

    .prologue
    .line 16
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lkotlin/io/ByteStreamsKt$iterator$1;->receiver$0:Ljava/io/BufferedInputStream;

    move-object v2, v0

    invoke-direct {v2}, Lkotlin/collections/ByteIterator;-><init>()V

    .line 18
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Lkotlin/io/ByteStreamsKt$iterator$1;->nextByte:I

    return-void
.end method

.method private final prepareNext()V
    .locals 4

    .prologue
    .line 25
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lkotlin/io/ByteStreamsKt$iterator$1;->nextPrepared:Z

    if-nez v1, :cond_0

    move-object v1, v0

    iget-boolean v1, v1, Lkotlin/io/ByteStreamsKt$iterator$1;->finished:Z

    if-nez v1, :cond_0

    .line 26
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lkotlin/io/ByteStreamsKt$iterator$1;->receiver$0:Ljava/io/BufferedInputStream;

    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->read()I

    move-result v2

    iput v2, v1, Lkotlin/io/ByteStreamsKt$iterator$1;->nextByte:I

    .line 27
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lkotlin/io/ByteStreamsKt$iterator$1;->nextPrepared:Z

    .line 28
    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Lkotlin/io/ByteStreamsKt$iterator$1;->nextByte:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, v1, Lkotlin/io/ByteStreamsKt$iterator$1;->finished:Z

    .line 30
    :cond_0
    return-void

    .line 28
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final getFinished()Z
    .locals 2

    .prologue
    .line 22
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lkotlin/io/ByteStreamsKt$iterator$1;->finished:Z

    move v0, v1

    return v0
.end method

.method public final getNextByte()I
    .locals 2

    .prologue
    .line 18
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lkotlin/io/ByteStreamsKt$iterator$1;->nextByte:I

    move v0, v1

    return v0
.end method

.method public final getNextPrepared()Z
    .locals 2

    .prologue
    .line 20
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lkotlin/io/ByteStreamsKt$iterator$1;->nextPrepared:Z

    move v0, v1

    return v0
.end method

.method public hasNext()Z
    .locals 2

    .prologue
    .line 33
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lkotlin/io/ByteStreamsKt$iterator$1;->prepareNext()V

    .line 34
    move-object v1, v0

    iget-boolean v1, v1, Lkotlin/io/ByteStreamsKt$iterator$1;->finished:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public nextByte()B
    .locals 6

    .prologue
    .line 38
    move-object v0, p0

    move-object v2, v0

    invoke-direct {v2}, Lkotlin/io/ByteStreamsKt$iterator$1;->prepareNext()V

    .line 39
    move-object v2, v0

    iget-boolean v2, v2, Lkotlin/io/ByteStreamsKt$iterator$1;->finished:Z

    if-eqz v2, :cond_0

    .line 40
    new-instance v2, Ljava/util/NoSuchElementException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Input stream is over."

    invoke-direct {v3, v4}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2

    .line 41
    :cond_0
    move-object v2, v0

    iget v2, v2, Lkotlin/io/ByteStreamsKt$iterator$1;->nextByte:I

    int-to-byte v2, v2

    move v1, v2

    .line 42
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lkotlin/io/ByteStreamsKt$iterator$1;->nextPrepared:Z

    .line 43
    move v2, v1

    move v0, v2

    return v0
.end method

.method public final setFinished(Z)V
    .locals 4

    .prologue
    .line 22
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lkotlin/io/ByteStreamsKt$iterator$1;->finished:Z

    return-void
.end method

.method public final setNextByte(I)V
    .locals 4

    .prologue
    .line 18
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lkotlin/io/ByteStreamsKt$iterator$1;->nextByte:I

    return-void
.end method

.method public final setNextPrepared(Z)V
    .locals 4

    .prologue
    .line 20
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lkotlin/io/ByteStreamsKt$iterator$1;->nextPrepared:Z

    return-void
.end method
