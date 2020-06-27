.class final Lkotlin/collections/RingBuffer;
.super Lkotlin/collections/AbstractList;
.source "SlidingWindow.kt"

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlin/collections/AbstractList",
        "<TT;>;",
        "Ljava/util/RandomAccess;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\u0008\t\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010(\n\u0002\u0008\u000c\u0008\u0002\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u00022\u00060\u0003j\u0002`\u0004B\r\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\u0013\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00028\u0000\u00a2\u0006\u0002\u0010\u0016J\u0016\u0010\u0017\u001a\u00028\u00002\u0006\u0010\u0018\u001a\u00020\u0006H\u0096\u0002\u00a2\u0006\u0002\u0010\u0019J\u0006\u0010\u001a\u001a\u00020\u001bJ\u000f\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u001dH\u0096\u0002J\u000e\u0010\u001e\u001a\u00020\u00142\u0006\u0010\u001f\u001a\u00020\u0006J\u0015\u0010 \u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\n0\tH\u0014\u00a2\u0006\u0002\u0010!J\'\u0010 \u001a\u0008\u0012\u0004\u0012\u0002H\u00010\t\"\u0004\u0008\u0001\u0010\u00012\u000c\u0010\"\u001a\u0008\u0012\u0004\u0012\u0002H\u00010\tH\u0014\u00a2\u0006\u0002\u0010#J9\u0010$\u001a\u00020\u0014\"\u0004\u0008\u0001\u0010\u0001*\u0008\u0012\u0004\u0012\u0002H\u00010\t2\u0006\u0010\u0015\u001a\u0002H\u00012\u0008\u0008\u0002\u0010%\u001a\u00020\u00062\u0008\u0008\u0002\u0010&\u001a\u00020\u0006H\u0002\u00a2\u0006\u0002\u0010\'J\u0015\u0010(\u001a\u00020\u0006*\u00020\u00062\u0006\u0010\u001f\u001a\u00020\u0006H\u0082\u0008R\u0018\u0010\u0008\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\n0\tX\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u000bR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR$\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u0006@RX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\r\"\u0004\u0008\u0011\u0010\u0007R\u000e\u0010\u0012\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006)"
    }
    d2 = {
        "Lkotlin/collections/RingBuffer;",
        "T",
        "Lkotlin/collections/AbstractList;",
        "Ljava/util/RandomAccess;",
        "Lkotlin/collections/RandomAccess;",
        "capacity",
        "",
        "(I)V",
        "buffer",
        "",
        "",
        "[Ljava/lang/Object;",
        "getCapacity",
        "()I",
        "<set-?>",
        "size",
        "getSize",
        "setSize",
        "startIndex",
        "add",
        "",
        "element",
        "(Ljava/lang/Object;)V",
        "get",
        "index",
        "(I)Ljava/lang/Object;",
        "isFull",
        "",
        "iterator",
        "",
        "removeFirst",
        "n",
        "toArray",
        "()[Ljava/lang/Object;",
        "array",
        "([Ljava/lang/Object;)[Ljava/lang/Object;",
        "fill",
        "fromIndex",
        "toIndex",
        "([Ljava/lang/Object;Ljava/lang/Object;II)V",
        "forward",
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
.field private final buffer:[Ljava/lang/Object;

.field private final capacity:I

.field private size:I

.field private startIndex:I


# direct methods
.method public constructor <init>(I)V
    .locals 9

    .prologue
    .line 89
    move-object v0, p0

    move v1, p1

    move-object v5, v0

    invoke-direct {v5}, Lkotlin/collections/AbstractList;-><init>()V

    move-object v5, v0

    move v6, v1

    iput v6, v5, Lkotlin/collections/RingBuffer;->capacity:I

    .line 91
    move-object v5, v0

    iget v5, v5, Lkotlin/collections/RingBuffer;->capacity:I

    if-ltz v5, :cond_0

    const/4 v5, 0x1

    :goto_0
    move v2, v5

    move v5, v2

    if-nez v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ring buffer capacity should not be negative but it is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    iget v6, v6, Lkotlin/collections/RingBuffer;->capacity:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    new-instance v5, Ljava/lang/IllegalArgumentException;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v4

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v5, Ljava/lang/Throwable;

    throw v5

    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 94
    :cond_1
    move-object v5, v0

    move-object v6, v0

    iget v6, v6, Lkotlin/collections/RingBuffer;->capacity:I

    new-array v6, v6, [Ljava/lang/Object;

    iput-object v6, v5, Lkotlin/collections/RingBuffer;->buffer:[Ljava/lang/Object;

    return-void
.end method

.method public static final synthetic access$forward(Lkotlin/collections/RingBuffer;II)I
    .locals 6

    .prologue
    .line 89
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Lkotlin/collections/RingBuffer;->forward(II)I

    move-result v3

    move v0, v3

    return v0
.end method

.method public static final synthetic access$getBuffer$p(Lkotlin/collections/RingBuffer;)[Ljava/lang/Object;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 89
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lkotlin/collections/RingBuffer;->buffer:[Ljava/lang/Object;

    move-object v0, v1

    return-object v0
.end method

.method public static final synthetic access$getSize$p(Lkotlin/collections/RingBuffer;)I
    .locals 2

    .prologue
    .line 89
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lkotlin/collections/RingBuffer;->size()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public static final synthetic access$getStartIndex$p(Lkotlin/collections/RingBuffer;)I
    .locals 2

    .prologue
    .line 89
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lkotlin/collections/RingBuffer;->startIndex:I

    move v0, v1

    return v0
.end method

.method public static final synthetic access$setSize$p(Lkotlin/collections/RingBuffer;I)V
    .locals 4

    .prologue
    .line 89
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Lkotlin/collections/RingBuffer;->setSize(I)V

    return-void
.end method

.method public static final synthetic access$setStartIndex$p(Lkotlin/collections/RingBuffer;I)V
    .locals 4

    .prologue
    .line 89
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lkotlin/collections/RingBuffer;->startIndex:I

    return-void
.end method

.method private final fill([Ljava/lang/Object;Ljava/lang/Object;II)V
    .locals 10
    .param p1    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;II)V"
        }
    .end annotation

    .prologue
    .line 196
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v7, v3

    move v5, v7

    move v7, v4

    move v6, v7

    :goto_0
    move v7, v5

    move v8, v6

    if-ge v7, v8, :cond_0

    .line 197
    move-object v7, v1

    move v8, v5

    move-object v9, v2

    aput-object v9, v7, v8

    .line 196
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 199
    :cond_0
    return-void
.end method

.method static bridge synthetic fill$default(Lkotlin/collections/RingBuffer;[Ljava/lang/Object;Ljava/lang/Object;IIILjava/lang/Object;)V
    .locals 12

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move v7, v5

    const/4 v8, 0x2

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_0

    .line 195
    const/4 v7, 0x0

    move v3, v7

    :cond_0
    move v7, v5

    const/4 v8, 0x4

    and-int/lit8 v7, v7, 0x4

    if-eqz v7, :cond_1

    move-object v7, v1

    array-length v7, v7

    move v4, v7

    :cond_1
    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    move v10, v3

    move v11, v4

    invoke-direct {v7, v8, v9, v10, v11}, Lkotlin/collections/RingBuffer;->fill([Ljava/lang/Object;Ljava/lang/Object;II)V

    return-void
.end method

.method private final forward(II)I
    .locals 6

    .prologue
    .line 192
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, v1

    move v5, v2

    add-int/2addr v4, v5

    move-object v5, v0

    invoke-virtual {v5}, Lkotlin/collections/RingBuffer;->getCapacity()I

    move-result v5

    rem-int/2addr v4, v5

    move v0, v4

    return v0
.end method

.method private setSize(I)V
    .locals 4

    .prologue
    .line 97
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lkotlin/collections/RingBuffer;->size:I

    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 159
    move-object v0, p0

    move-object v1, p1

    move-object v8, v0

    invoke-virtual {v8}, Lkotlin/collections/RingBuffer;->isFull()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 160
    new-instance v8, Ljava/lang/IllegalStateException;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    const-string v10, "ring buffer is full"

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v8, Ljava/lang/Throwable;

    throw v8

    .line 163
    :cond_0
    move-object v8, v0

    iget-object v8, v8, Lkotlin/collections/RingBuffer;->buffer:[Ljava/lang/Object;

    move-object v9, v0

    move-object v10, v0

    iget v10, v10, Lkotlin/collections/RingBuffer;->startIndex:I

    move v3, v10

    move-object v2, v9

    move-object v9, v0

    invoke-virtual {v9}, Lkotlin/collections/RingBuffer;->size()I

    move-result v9

    move v4, v9

    move-object v6, v8

    .line 202
    move v8, v3

    move v9, v4

    add-int/2addr v8, v9

    move-object v9, v2

    invoke-virtual {v9}, Lkotlin/collections/RingBuffer;->getCapacity()I

    move-result v9

    rem-int/2addr v8, v9

    move v7, v8

    move-object v8, v6

    move v9, v7

    move-object v10, v1

    aput-object v10, v8, v9

    .line 164
    move-object v8, v0

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-virtual {v9}, Lkotlin/collections/RingBuffer;->size()I

    move-result v9

    move v11, v9

    move v9, v11

    move v10, v11

    move v2, v10

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    invoke-direct {v8, v9}, Lkotlin/collections/RingBuffer;->setSize(I)V

    .line 165
    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 101
    move-object v0, p0

    move v1, p1

    sget-object v7, Lkotlin/collections/AbstractList;->Companion:Lkotlin/collections/AbstractList$Companion;

    move v8, v1

    move-object v9, v0

    invoke-virtual {v9}, Lkotlin/collections/RingBuffer;->size()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Lkotlin/collections/AbstractList$Companion;->checkElementIndex$kotlin_stdlib(II)V

    .line 102
    move-object v7, v0

    iget-object v7, v7, Lkotlin/collections/RingBuffer;->buffer:[Ljava/lang/Object;

    move-object v8, v0

    move-object v9, v0

    iget v9, v9, Lkotlin/collections/RingBuffer;->startIndex:I

    move v3, v9

    move-object v2, v8

    move-object v5, v7

    .line 201
    move v7, v3

    move v8, v1

    add-int/2addr v7, v8

    move-object v8, v2

    invoke-virtual {v8}, Lkotlin/collections/RingBuffer;->getCapacity()I

    move-result v8

    rem-int/2addr v7, v8

    move v6, v7

    move-object v7, v5

    move v8, v6

    aget-object v7, v7, v8

    move-object v0, v7

    return-object v0
.end method

.method public final getCapacity()I
    .locals 2

    .prologue
    .line 89
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lkotlin/collections/RingBuffer;->capacity:I

    move v0, v1

    return v0
.end method

.method public getSize()I
    .locals 2

    .prologue
    .line 97
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lkotlin/collections/RingBuffer;->size:I

    move v0, v1

    return v0
.end method

.method public final isFull()Z
    .locals 3

    .prologue
    .line 106
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lkotlin/collections/RingBuffer;->size()I

    move-result v1

    move-object v2, v0

    iget v2, v2, Lkotlin/collections/RingBuffer;->capacity:I

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 108
    move-object v0, p0

    new-instance v1, Lkotlin/collections/RingBuffer$iterator$1;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lkotlin/collections/RingBuffer$iterator$1;-><init>(Lkotlin/collections/RingBuffer;)V

    check-cast v1, Ljava/util/Iterator;

    .line 122
    move-object v0, v1

    return-object v0
.end method

.method public final removeFirst(I)V
    .locals 13

    .prologue
    .line 171
    move-object v0, p0

    move v1, p1

    move v7, v1

    if-ltz v7, :cond_0

    const/4 v7, 0x1

    :goto_0
    move v2, v7

    move v7, v2

    if-nez v7, :cond_1

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "n shouldn\'t be negative but it is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v4, v7

    new-instance v7, Ljava/lang/IllegalArgumentException;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v4

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v7, Ljava/lang/Throwable;

    throw v7

    :cond_0
    const/4 v7, 0x0

    goto :goto_0

    .line 172
    :cond_1
    move v7, v1

    move-object v8, v0

    invoke-virtual {v8}, Lkotlin/collections/RingBuffer;->size()I

    move-result v8

    if-gt v7, v8, :cond_2

    const/4 v7, 0x1

    :goto_1
    move v2, v7

    move v7, v2

    if-nez v7, :cond_3

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "n shouldn\'t be greater than the buffer size: n = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", size = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v0

    invoke-virtual {v8}, Lkotlin/collections/RingBuffer;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v4, v7

    new-instance v7, Ljava/lang/IllegalArgumentException;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v4

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v7, Ljava/lang/Throwable;

    throw v7

    :cond_2
    const/4 v7, 0x0

    goto :goto_1

    .line 174
    :cond_3
    move v7, v1

    if-lez v7, :cond_4

    .line 175
    move-object v7, v0

    iget v7, v7, Lkotlin/collections/RingBuffer;->startIndex:I

    move v2, v7

    .line 176
    move-object v7, v0

    move v8, v2

    move v5, v8

    move-object v4, v7

    .line 203
    move v7, v5

    move v8, v1

    add-int/2addr v7, v8

    move-object v8, v4

    invoke-virtual {v8}, Lkotlin/collections/RingBuffer;->getCapacity()I

    move-result v8

    rem-int/2addr v7, v8

    .line 176
    move v3, v7

    .line 178
    move v7, v2

    move v8, v3

    if-le v7, v8, :cond_5

    .line 179
    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Lkotlin/collections/RingBuffer;->buffer:[Ljava/lang/Object;

    const/4 v9, 0x0

    move v10, v2

    move-object v11, v0

    iget v11, v11, Lkotlin/collections/RingBuffer;->capacity:I

    invoke-direct {v7, v8, v9, v10, v11}, Lkotlin/collections/RingBuffer;->fill([Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 180
    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Lkotlin/collections/RingBuffer;->buffer:[Ljava/lang/Object;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move v11, v3

    invoke-direct {v7, v8, v9, v10, v11}, Lkotlin/collections/RingBuffer;->fill([Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 183
    :goto_2
    move-object v7, v0

    move v8, v3

    iput v8, v7, Lkotlin/collections/RingBuffer;->startIndex:I

    .line 186
    move-object v7, v0

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    invoke-virtual {v8}, Lkotlin/collections/RingBuffer;->size()I

    move-result v8

    move v9, v1

    sub-int/2addr v8, v9

    invoke-direct {v7, v8}, Lkotlin/collections/RingBuffer;->setSize(I)V

    .line 188
    :cond_4
    return-void

    .line 182
    :cond_5
    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Lkotlin/collections/RingBuffer;->buffer:[Ljava/lang/Object;

    const/4 v9, 0x0

    move v10, v2

    move v11, v3

    invoke-direct {v7, v8, v9, v10, v11}, Lkotlin/collections/RingBuffer;->fill([Ljava/lang/Object;Ljava/lang/Object;II)V

    goto :goto_2
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 152
    move-object v0, p0

    move-object v1, v0

    move-object v2, v0

    invoke-virtual {v2}, Lkotlin/collections/RingBuffer;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lkotlin/collections/RingBuffer;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 11
    .param p1    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v6, v1

    const-string v7, "array"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    move-object v6, v1

    array-length v6, v6

    move-object v7, v0

    invoke-virtual {v7}, Lkotlin/collections/RingBuffer;->size()I

    move-result v7

    if-ge v6, v7, :cond_0

    move-object v6, v1

    move-object v3, v6

    move-object v6, v0

    invoke-virtual {v6}, Lkotlin/collections/RingBuffer;->size()I

    move-result v6

    move v4, v6

    move-object v6, v3

    move v7, v4

    invoke-static {v6, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const-string v8, "java.util.Arrays.copyOf(this, newSize)"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    move-object v2, v6

    .line 129
    move-object v6, v0

    invoke-virtual {v6}, Lkotlin/collections/RingBuffer;->size()I

    move-result v6

    move v3, v6

    .line 131
    const/4 v6, 0x0

    move v4, v6

    .line 132
    move-object v6, v0

    iget v6, v6, Lkotlin/collections/RingBuffer;->startIndex:I

    move v5, v6

    .line 134
    :goto_1
    move v6, v4

    move v7, v3

    if-ge v6, v7, :cond_1

    move v6, v5

    move-object v7, v0

    iget v7, v7, Lkotlin/collections/RingBuffer;->capacity:I

    if-ge v6, v7, :cond_1

    .line 135
    move-object v6, v2

    move v7, v4

    move-object v8, v0

    iget-object v8, v8, Lkotlin/collections/RingBuffer;->buffer:[Ljava/lang/Object;

    move v9, v5

    aget-object v8, v8, v9

    aput-object v8, v6, v7

    .line 136
    add-int/lit8 v4, v4, 0x1

    .line 137
    add-int/lit8 v5, v5, 0x1

    .line 134
    goto :goto_1

    .line 127
    :cond_0
    move-object v6, v1

    goto :goto_0

    .line 140
    :cond_1
    const/4 v6, 0x0

    move v5, v6

    .line 141
    :goto_2
    move v6, v4

    move v7, v3

    if-ge v6, v7, :cond_2

    .line 142
    move-object v6, v2

    move v7, v4

    move-object v8, v0

    iget-object v8, v8, Lkotlin/collections/RingBuffer;->buffer:[Ljava/lang/Object;

    move v9, v5

    aget-object v8, v8, v9

    aput-object v8, v6, v7

    .line 143
    add-int/lit8 v4, v4, 0x1

    .line 144
    add-int/lit8 v5, v5, 0x1

    .line 141
    goto :goto_2

    .line 146
    :cond_2
    move-object v6, v2

    array-length v6, v6

    move-object v7, v0

    invoke-virtual {v7}, Lkotlin/collections/RingBuffer;->size()I

    move-result v7

    if-le v6, v7, :cond_3

    move-object v6, v2

    move-object v7, v0

    invoke-virtual {v7}, Lkotlin/collections/RingBuffer;->size()I

    move-result v7

    const/4 v8, 0x0

    aput-object v8, v6, v7

    .line 148
    :cond_3
    move-object v6, v2

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    if-nez v7, :cond_4

    new-instance v7, Lkotlin/TypeCastException;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    const-string v9, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {v8, v9}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_4
    move-object v0, v6

    return-object v0
.end method
