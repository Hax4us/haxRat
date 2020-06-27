.class Lkotlin/sequences/SequencesKt___SequencesJvmKt;
.super Lkotlin/sequences/SequencesKt__SequencesKt;
.source "_SequencesJvm.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u00000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u001f\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a(\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002*\u0006\u0012\u0002\u0008\u00030\u00012\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0004\u001aA\u0010\u0005\u001a\u0002H\u0006\"\u0010\u0008\u0000\u0010\u0006*\n\u0012\u0006\u0008\u0000\u0012\u0002H\u00020\u0007\"\u0004\u0008\u0001\u0010\u0002*\u0006\u0012\u0002\u0008\u00030\u00012\u0006\u0010\u0008\u001a\u0002H\u00062\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0004\u00a2\u0006\u0002\u0010\t\u001a&\u0010\n\u001a\u0008\u0012\u0004\u0012\u0002H\u000c0\u000b\"\u000e\u0008\u0000\u0010\u000c*\u0008\u0012\u0004\u0012\u0002H\u000c0\r*\u0008\u0012\u0004\u0012\u0002H\u000c0\u0001\u001a8\u0010\n\u001a\u0008\u0012\u0004\u0012\u0002H\u000c0\u000b\"\u0004\u0008\u0000\u0010\u000c*\u0008\u0012\u0004\u0012\u0002H\u000c0\u00012\u001a\u0010\u000e\u001a\u0016\u0012\u0006\u0008\u0000\u0012\u0002H\u000c0\u000fj\n\u0012\u0006\u0008\u0000\u0012\u0002H\u000c`\u0010\u00a8\u0006\u0011"
    }
    d2 = {
        "filterIsInstance",
        "Lkotlin/sequences/Sequence;",
        "R",
        "klass",
        "Ljava/lang/Class;",
        "filterIsInstanceTo",
        "C",
        "",
        "destination",
        "(Lkotlin/sequences/Sequence;Ljava/util/Collection;Ljava/lang/Class;)Ljava/util/Collection;",
        "toSortedSet",
        "Ljava/util/SortedSet;",
        "T",
        "",
        "comparator",
        "Ljava/util/Comparator;",
        "Lkotlin/Comparator;",
        "kotlin-stdlib"
    }
    k = 0x5
    mv = {
        0x1,
        0x1,
        0xa
    }
    xi = 0x1
    xs = "kotlin/sequences/SequencesKt"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lkotlin/sequences/SequencesKt__SequencesKt;-><init>()V

    return-void
.end method

.method public static final filterIsInstance(Lkotlin/sequences/Sequence;Ljava/lang/Class;)Lkotlin/sequences/Sequence;
    .locals 7
    .param p0    # Lkotlin/sequences/Sequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Class;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/sequences/Sequence",
            "<*>;",
            "Ljava/lang/Class",
            "<TR;>;)",
            "Lkotlin/sequences/Sequence",
            "<TR;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string v3, "$receiver"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v1

    const-string v3, "klass"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    move-object v2, v0

    new-instance v3, Lkotlin/sequences/SequencesKt___SequencesJvmKt$filterIsInstance$1;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Lkotlin/sequences/SequencesKt___SequencesJvmKt$filterIsInstance$1;-><init>(Ljava/lang/Class;)V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    invoke-static {v2, v3}, Lkotlin/sequences/SequencesKt;->filter(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v2

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    if-nez v3, :cond_0

    new-instance v3, Lkotlin/TypeCastException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "null cannot be cast to non-null type kotlin.sequences.Sequence<R>"

    invoke-direct {v4, v5}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    move-object v0, v2

    return-object v0
.end method

.method public static final filterIsInstanceTo(Lkotlin/sequences/Sequence;Ljava/util/Collection;Ljava/lang/Class;)Ljava/util/Collection;
    .locals 7
    .param p0    # Lkotlin/sequences/Sequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/util/Collection",
            "<-TR;>;R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/sequences/Sequence",
            "<*>;TC;",
            "Ljava/lang/Class",
            "<TR;>;)TC;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v0

    const-string v6, "$receiver"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v5, v1

    const-string v6, "destination"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v5, v2

    const-string v6, "klass"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    move-object v5, v0

    invoke-interface {v5}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v4, v5

    :cond_0
    :goto_0
    move-object v5, v4

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v5, v4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v3, v5

    move-object v5, v2

    move-object v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v5, v1

    move-object v6, v3

    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v5

    goto :goto_0

    .line 39
    :cond_1
    move-object v5, v1

    move-object v0, v5

    return-object v0
.end method

.method public static final toSortedSet(Lkotlin/sequences/Sequence;)Ljava/util/SortedSet;
    .locals 5
    .param p0    # Lkotlin/sequences/Sequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable",
            "<-TT;>;>(",
            "Lkotlin/sequences/Sequence",
            "<+TT;>;)",
            "Ljava/util/SortedSet",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, v0

    const-string v2, "$receiver"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    move-object v1, v0

    new-instance v2, Ljava/util/TreeSet;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    check-cast v2, Ljava/util/Collection;

    invoke-static {v1, v2}, Lkotlin/sequences/SequencesKt;->toCollection(Lkotlin/sequences/Sequence;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    check-cast v1, Ljava/util/SortedSet;

    move-object v0, v1

    return-object v0
.end method

.method public static final toSortedSet(Lkotlin/sequences/Sequence;Ljava/util/Comparator;)Ljava/util/SortedSet;
    .locals 7
    .param p0    # Lkotlin/sequences/Sequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/Comparator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/sequences/Sequence",
            "<+TT;>;",
            "Ljava/util/Comparator",
            "<-TT;>;)",
            "Ljava/util/SortedSet",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string v3, "$receiver"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v1

    const-string v3, "comparator"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    move-object v2, v0

    new-instance v3, Ljava/util/TreeSet;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    check-cast v3, Ljava/util/Collection;

    invoke-static {v2, v3}, Lkotlin/sequences/SequencesKt;->toCollection(Lkotlin/sequences/Sequence;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v2

    check-cast v2, Ljava/util/SortedSet;

    move-object v0, v2

    return-object v0
.end method
