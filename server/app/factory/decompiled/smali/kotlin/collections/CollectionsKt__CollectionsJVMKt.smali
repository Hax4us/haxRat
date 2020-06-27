.class Lkotlin/collections/CollectionsKt__CollectionsJVMKt;
.super Ljava/lang/Object;
.source "CollectionsJVM.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000*\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u001e\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u001a\"\u0010\u0000\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u00012\n\u0010\u0003\u001a\u0006\u0012\u0002\u0008\u00030\u0004H\u0081\u0008\u00a2\u0006\u0002\u0010\u0005\u001a4\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u0002H\u00060\u0001\"\u0004\u0008\u0000\u0010\u00062\n\u0010\u0003\u001a\u0006\u0012\u0002\u0008\u00030\u00042\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u0002H\u00060\u0001H\u0081\u0008\u00a2\u0006\u0002\u0010\u0008\u001a\u001f\u0010\t\u001a\u0008\u0012\u0004\u0012\u0002H\u00060\n\"\u0004\u0008\u0000\u0010\u00062\u0006\u0010\u000b\u001a\u0002H\u0006\u00a2\u0006\u0002\u0010\u000c\u001a1\u0010\r\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010\u00020\u0001\"\u0004\u0008\u0000\u0010\u0006*\n\u0012\u0006\u0008\u0001\u0012\u0002H\u00060\u00012\u0006\u0010\u000e\u001a\u00020\u000fH\u0000\u00a2\u0006\u0002\u0010\u0010\u001a\u001f\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u0002H\u00060\n\"\u0004\u0008\u0000\u0010\u0006*\u0008\u0012\u0004\u0012\u0002H\u00060\u0012H\u0087\u0008\u00a8\u0006\u0013"
    }
    d2 = {
        "copyToArrayImpl",
        "",
        "",
        "collection",
        "",
        "(Ljava/util/Collection;)[Ljava/lang/Object;",
        "T",
        "array",
        "(Ljava/util/Collection;[Ljava/lang/Object;)[Ljava/lang/Object;",
        "listOf",
        "",
        "element",
        "(Ljava/lang/Object;)Ljava/util/List;",
        "copyToArrayOfAny",
        "isVarargs",
        "",
        "([Ljava/lang/Object;Z)[Ljava/lang/Object;",
        "toList",
        "Ljava/util/Enumeration;",
        "kotlin-stdlib"
    }
    k = 0x5
    mv = {
        0x1,
        0x1,
        0xa
    }
    xi = 0x1
    xs = "kotlin/collections/CollectionsKt"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final copyToArrayImpl(Ljava/util/Collection;)[Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .prologue
    .line 32
    move-object v0, p0

    move-object v2, v0

    invoke-static {v2}, Lkotlin/jvm/internal/CollectionToArray;->toArray(Ljava/util/Collection;)[Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method private static final copyToArrayImpl(Ljava/util/Collection;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<*>;[TT;)[TT;"
        }
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .prologue
    .line 36
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    if-nez v5, :cond_0

    new-instance v5, Lkotlin/TypeCastException;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const-string v7, "null cannot be cast to non-null type kotlin.Array<kotlin.Any?>"

    invoke-direct {v6, v7}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_0
    invoke-static {v3, v4}, Lkotlin/jvm/internal/CollectionToArray;->toArray(Ljava/util/Collection;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    if-nez v4, :cond_1

    new-instance v4, Lkotlin/TypeCastException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const-string v6, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {v5, v6}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    move-object v0, v3

    return-object v0
.end method

.method public static final copyToArrayOfAny([Ljava/lang/Object;Z)[Ljava/lang/Object;
    .locals 6
    .param p0    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;Z)[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    const-string v3, "$receiver"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    move v2, v1

    if-eqz v2, :cond_0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 42
    move-object v2, v0

    .line 40
    :goto_0
    move-object v0, v2

    return-object v0

    .line 44
    :cond_0
    move-object v2, v0

    move-object v3, v0

    array-length v3, v3

    const-class v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "java.util.Arrays.copyOf(\u2026 Array<Any?>::class.java)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static final listOf(Ljava/lang/Object;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 18
    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "java.util.Collections.singletonList(element)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v1

    return-object v0
.end method

.method private static final toList(Ljava/util/Enumeration;)Ljava/util/List;
    .locals 6
    .param p0    # Ljava/util/Enumeration;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Enumeration",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .prologue
    .line 27
    move-object v0, p0

    move-object v2, v0

    invoke-static {v2}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v2

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "java.util.Collections.list(this)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/util/List;

    move-object v0, v2

    return-object v0
.end method
