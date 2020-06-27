.class Lkotlin/collections/ArraysKt__ArraysJVMKt;
.super Ljava/lang/Object;
.source "ArraysJVM.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000*\n\u0000\n\u0002\u0010\u0011\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0010\u0012\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u001e\n\u0002\u0008\u0002\u001a/\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\u0008\u0000\u0010\u00022\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u0005H\u0000\u00a2\u0006\u0002\u0010\u0006\u001a,\u0010\u0007\u001a\n\u0012\u0006\u0008\u0001\u0012\u0002H\u00020\u0001\"\u0006\u0008\u0000\u0010\u0002\u0018\u0001*\u000c\u0012\u0006\u0008\u0001\u0012\u0002H\u0002\u0018\u00010\u0001H\u0086\u0008\u00a2\u0006\u0002\u0010\u0008\u001a\u0015\u0010\t\u001a\u00020\n*\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0087\u0008\u001a&\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0006\u0008\u0000\u0010\u0002\u0018\u0001*\u0008\u0012\u0004\u0012\u0002H\u00020\u000fH\u0086\u0008\u00a2\u0006\u0002\u0010\u0010\u00a8\u0006\u0011"
    }
    d2 = {
        "arrayOfNulls",
        "",
        "T",
        "reference",
        "size",
        "",
        "([Ljava/lang/Object;I)[Ljava/lang/Object;",
        "orEmpty",
        "([Ljava/lang/Object;)[Ljava/lang/Object;",
        "toString",
        "",
        "",
        "charset",
        "Ljava/nio/charset/Charset;",
        "toTypedArray",
        "",
        "(Ljava/util/Collection;)[Ljava/lang/Object;",
        "kotlin-stdlib"
    }
    k = 0x5
    mv = {
        0x1,
        0x1,
        0xa
    }
    xi = 0x1
    xs = "kotlin/collections/ArraysKt"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final arrayOfNulls([Ljava/lang/Object;I)[Ljava/lang/Object;
    .locals 7
    .param p0    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;I)[TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    const-string v3, "reference"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    move v3, v1

    invoke-static {v2, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    if-nez v3, :cond_0

    new-instance v3, Lkotlin/TypeCastException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {v4, v5}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    check-cast v2, [Ljava/lang/Object;

    move-object v0, v2

    return-object v0
.end method

.method private static final orEmpty([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 7
    .param p0    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 18
    move-object v0, p0

    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    if-eqz v4, :cond_0

    :goto_0
    move-object v0, v3

    return-object v0

    .line 47
    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "T?"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    new-array v3, v3, [Ljava/lang/Object;

    goto :goto_0
.end method

.method private static final toString([BLjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 8
    .param p0    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .prologue
    .line 25
    move-object v0, p0

    move-object v1, p1

    new-instance v3, Ljava/lang/String;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    move-object v0, v3

    return-object v0
.end method

.method private static final toTypedArray(Ljava/util/Collection;)[Ljava/lang/Object;
    .locals 8
    .param p0    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+TT;>;)[TT;"
        }
    .end annotation

    .prologue
    .line 37
    move-object v0, p0

    move-object v3, v0

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    if-nez v4, :cond_0

    new-instance v4, Lkotlin/TypeCastException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string v6, "null cannot be cast to non-null type java.util.Collection<T>"

    invoke-direct {v5, v6}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    move-object v2, v3

    .line 38
    move-object v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "T?"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v3, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    if-nez v4, :cond_1

    new-instance v4, Lkotlin/TypeCastException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string v6, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {v5, v6}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    move-object v0, v3

    return-object v0
.end method
