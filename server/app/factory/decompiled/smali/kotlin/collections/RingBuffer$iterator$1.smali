.class public final Lkotlin/collections/RingBuffer$iterator$1;
.super Lkotlin/collections/AbstractIterator;
.source "SlidingWindow.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/collections/RingBuffer;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/collections/AbstractIterator",
        "<TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u001b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00028\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0006\u001a\u00020\u0007H\u0014R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0008"
    }
    d2 = {
        "kotlin/collections/RingBuffer$iterator$1",
        "Lkotlin/collections/AbstractIterator;",
        "(Lkotlin/collections/RingBuffer;)V",
        "count",
        "",
        "index",
        "computeNext",
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
.field private count:I

.field private index:I

.field final synthetic this$0:Lkotlin/collections/RingBuffer;


# direct methods
.method constructor <init>(Lkotlin/collections/RingBuffer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 108
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lkotlin/collections/RingBuffer$iterator$1;->this$0:Lkotlin/collections/RingBuffer;

    move-object v2, v0

    invoke-direct {v2}, Lkotlin/collections/AbstractIterator;-><init>()V

    .line 109
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Lkotlin/collections/RingBuffer;->size()I

    move-result v3

    iput v3, v2, Lkotlin/collections/RingBuffer$iterator$1;->count:I

    .line 110
    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Lkotlin/collections/RingBuffer;->access$getStartIndex$p(Lkotlin/collections/RingBuffer;)I

    move-result v3

    iput v3, v2, Lkotlin/collections/RingBuffer$iterator$1;->index:I

    return-void
.end method


# virtual methods
.method protected computeNext()V
    .locals 11

    .prologue
    .line 113
    move-object v0, p0

    move-object v7, v0

    iget v7, v7, Lkotlin/collections/RingBuffer$iterator$1;->count:I

    if-nez v7, :cond_0

    .line 114
    move-object v7, v0

    invoke-virtual {v7}, Lkotlin/collections/RingBuffer$iterator$1;->done()V

    .line 120
    :goto_0
    return-void

    .line 116
    :cond_0
    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Lkotlin/collections/RingBuffer$iterator$1;->this$0:Lkotlin/collections/RingBuffer;

    invoke-static {v8}, Lkotlin/collections/RingBuffer;->access$getBuffer$p(Lkotlin/collections/RingBuffer;)[Ljava/lang/Object;

    move-result-object v8

    move-object v9, v0

    iget v9, v9, Lkotlin/collections/RingBuffer$iterator$1;->index:I

    aget-object v8, v8, v9

    invoke-virtual {v7, v8}, Lkotlin/collections/RingBuffer$iterator$1;->setNext(Ljava/lang/Object;)V

    .line 118
    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Lkotlin/collections/RingBuffer$iterator$1;->this$0:Lkotlin/collections/RingBuffer;

    move-object v9, v0

    iget v9, v9, Lkotlin/collections/RingBuffer$iterator$1;->index:I

    move v2, v9

    move-object v1, v8

    const/4 v8, 0x1

    move v3, v8

    move-object v5, v7

    .line 201
    move v7, v2

    move v8, v3

    add-int/2addr v7, v8

    move-object v8, v1

    invoke-virtual {v8}, Lkotlin/collections/RingBuffer;->getCapacity()I

    move-result v8

    rem-int/2addr v7, v8

    move v6, v7

    move-object v7, v5

    move v8, v6

    iput v8, v7, Lkotlin/collections/RingBuffer$iterator$1;->index:I

    .line 119
    move-object v7, v0

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    iget v8, v8, Lkotlin/collections/RingBuffer$iterator$1;->count:I

    move v10, v8

    move v8, v10

    move v9, v10

    move v1, v9

    const/4 v9, -0x1

    add-int/lit8 v8, v8, -0x1

    iput v8, v7, Lkotlin/collections/RingBuffer$iterator$1;->count:I

    goto :goto_0
.end method
