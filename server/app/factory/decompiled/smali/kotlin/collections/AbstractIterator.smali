.class public abstract Lkotlin/collections/AbstractIterator;
.super Ljava/lang/Object;
.source "AbstractIterator.kt"

# interfaces
.implements Ljava/util/Iterator;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TT;>;",
        "Lkotlin/jvm/internal/markers/KMappedMarker;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010(\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0007\u0008&\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u0002B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0008\u001a\u00020\tH$J\u0008\u0010\n\u001a\u00020\tH\u0004J\t\u0010\u000b\u001a\u00020\u000cH\u0096\u0002J\u000e\u0010\r\u001a\u00028\u0000H\u0096\u0002\u00a2\u0006\u0002\u0010\u000eJ\u0015\u0010\u000f\u001a\u00020\t2\u0006\u0010\u0010\u001a\u00028\u0000H\u0004\u00a2\u0006\u0002\u0010\u0011J\u0008\u0010\u0012\u001a\u00020\u000cH\u0002R\u0012\u0010\u0004\u001a\u0004\u0018\u00018\u0000X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0005R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lkotlin/collections/AbstractIterator;",
        "T",
        "",
        "()V",
        "nextValue",
        "Ljava/lang/Object;",
        "state",
        "Lkotlin/collections/State;",
        "computeNext",
        "",
        "done",
        "hasNext",
        "",
        "next",
        "()Ljava/lang/Object;",
        "setNext",
        "value",
        "(Ljava/lang/Object;)V",
        "tryToComputeNext",
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
.field private nextValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private state:Lkotlin/collections/State;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 20
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 21
    move-object v1, v0

    sget-object v2, Lkotlin/collections/State;->NotReady:Lkotlin/collections/State;

    iput-object v2, v1, Lkotlin/collections/AbstractIterator;->state:Lkotlin/collections/State;

    return-void
.end method

.method private final tryToComputeNext()Z
    .locals 3

    .prologue
    .line 41
    move-object v0, p0

    move-object v1, v0

    sget-object v2, Lkotlin/collections/State;->Failed:Lkotlin/collections/State;

    iput-object v2, v1, Lkotlin/collections/AbstractIterator;->state:Lkotlin/collections/State;

    .line 42
    move-object v1, v0

    invoke-virtual {v1}, Lkotlin/collections/AbstractIterator;->computeNext()V

    .line 43
    move-object v1, v0

    iget-object v1, v1, Lkotlin/collections/AbstractIterator;->state:Lkotlin/collections/State;

    sget-object v2, Lkotlin/collections/State;->Ready:Lkotlin/collections/State;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected abstract computeNext()V
.end method

.method protected final done()V
    .locals 3

    .prologue
    .line 70
    move-object v0, p0

    move-object v1, v0

    sget-object v2, Lkotlin/collections/State;->Done:Lkotlin/collections/State;

    iput-object v2, v1, Lkotlin/collections/AbstractIterator;->state:Lkotlin/collections/State;

    .line 71
    return-void
.end method

.method public hasNext()Z
    .locals 8

    .prologue
    .line 25
    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lkotlin/collections/AbstractIterator;->state:Lkotlin/collections/State;

    sget-object v4, Lkotlin/collections/State;->Failed:Lkotlin/collections/State;

    if-eq v3, v4, :cond_0

    const/4 v3, 0x1

    :goto_0
    move v1, v3

    move v3, v1

    if-nez v3, :cond_1

    const-string v3, "Failed requirement."

    move-object v2, v3

    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v2

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Throwable;

    throw v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 26
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lkotlin/collections/AbstractIterator;->state:Lkotlin/collections/State;

    sget-object v4, Lkotlin/collections/AbstractIterator$WhenMappings;->$EnumSwitchMapping$0:[I

    move-object v6, v3

    move-object v7, v4

    move-object v3, v7

    move-object v4, v6

    invoke-virtual {v4}, Lkotlin/collections/State;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 29
    move-object v3, v0

    invoke-direct {v3}, Lkotlin/collections/AbstractIterator;->tryToComputeNext()Z

    move-result v3

    .line 26
    :goto_1
    move v0, v3

    return v0

    .line 27
    :pswitch_0
    const/4 v3, 0x0

    goto :goto_1

    .line 28
    :pswitch_1
    const/4 v3, 0x1

    goto :goto_1

    .line 26
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public next()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 34
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lkotlin/collections/AbstractIterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/NoSuchElementException;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/util/NoSuchElementException;-><init>()V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 35
    :cond_0
    move-object v1, v0

    sget-object v2, Lkotlin/collections/State;->NotReady:Lkotlin/collections/State;

    iput-object v2, v1, Lkotlin/collections/AbstractIterator;->state:Lkotlin/collections/State;

    .line 36
    move-object v1, v0

    iget-object v1, v1, Lkotlin/collections/AbstractIterator;->nextValue:Ljava/lang/Object;

    move-object v0, v1

    return-object v0
.end method

.method public remove()V
    .locals 5

    move-object v0, p0

    new-instance v1, Ljava/lang/UnsupportedOperationException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "Operation is not supported for read-only collection"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected final setNext(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 62
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lkotlin/collections/AbstractIterator;->nextValue:Ljava/lang/Object;

    .line 63
    move-object v2, v0

    sget-object v3, Lkotlin/collections/State;->Ready:Lkotlin/collections/State;

    iput-object v3, v2, Lkotlin/collections/AbstractIterator;->state:Lkotlin/collections/State;

    .line 64
    return-void
.end method
