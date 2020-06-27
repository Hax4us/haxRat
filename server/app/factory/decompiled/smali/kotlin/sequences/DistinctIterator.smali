.class final Lkotlin/sequences/DistinctIterator;
.super Lkotlin/collections/AbstractIterator;
.source "Sequences.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "K:",
        "Ljava/lang/Object;",
        ">",
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
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010(\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\u0008\u0002\u0018\u0000*\u0004\u0008\u0000\u0010\u0001*\u0004\u0008\u0001\u0010\u00022\u0008\u0012\u0004\u0012\u0002H\u00010\u0003B\'\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0005\u0012\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0007\u00a2\u0006\u0002\u0010\u0008J\u0008\u0010\u000c\u001a\u00020\rH\u0014R\u001a\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010\t\u001a\u0012\u0012\u0004\u0012\u00028\u00010\nj\u0008\u0012\u0004\u0012\u00028\u0001`\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lkotlin/sequences/DistinctIterator;",
        "T",
        "K",
        "Lkotlin/collections/AbstractIterator;",
        "source",
        "",
        "keySelector",
        "Lkotlin/Function1;",
        "(Ljava/util/Iterator;Lkotlin/jvm/functions/Function1;)V",
        "observed",
        "Ljava/util/HashSet;",
        "Lkotlin/collections/HashSet;",
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
.field private final keySelector:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1",
            "<TT;TK;>;"
        }
    .end annotation
.end field

.field private final observed:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<TK;>;"
        }
    .end annotation
.end field

.field private final source:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Iterator;Lkotlin/jvm/functions/Function1;)V
    .locals 7
    .param p1    # Ljava/util/Iterator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<+TT;>;",
            "Lkotlin/jvm/functions/Function1",
            "<-TT;+TK;>;)V"
        }
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v1

    const-string v4, "source"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v2

    const-string v4, "keySelector"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 496
    move-object v3, v0

    invoke-direct {v3}, Lkotlin/collections/AbstractIterator;-><init>()V

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lkotlin/sequences/DistinctIterator;->source:Ljava/util/Iterator;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lkotlin/sequences/DistinctIterator;->keySelector:Lkotlin/jvm/functions/Function1;

    .line 497
    move-object v3, v0

    new-instance v4, Ljava/util/HashSet;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    iput-object v4, v3, Lkotlin/sequences/DistinctIterator;->observed:Ljava/util/HashSet;

    return-void
.end method


# virtual methods
.method protected computeNext()V
    .locals 5

    .prologue
    .line 500
    move-object v0, p0

    :goto_0
    move-object v3, v0

    iget-object v3, v3, Lkotlin/sequences/DistinctIterator;->source:Ljava/util/Iterator;

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 501
    move-object v3, v0

    iget-object v3, v3, Lkotlin/sequences/DistinctIterator;->source:Ljava/util/Iterator;

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    .line 502
    move-object v3, v0

    iget-object v3, v3, Lkotlin/sequences/DistinctIterator;->keySelector:Lkotlin/jvm/functions/Function1;

    move-object v4, v1

    invoke-interface {v3, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    .line 504
    move-object v3, v0

    iget-object v3, v3, Lkotlin/sequences/DistinctIterator;->observed:Ljava/util/HashSet;

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 505
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lkotlin/sequences/DistinctIterator;->setNext(Ljava/lang/Object;)V

    .line 511
    :goto_1
    return-void

    .line 500
    :cond_0
    goto :goto_0

    .line 510
    :cond_1
    move-object v3, v0

    invoke-virtual {v3}, Lkotlin/sequences/DistinctIterator;->done()V

    .line 511
    goto :goto_1
.end method
