.class public final Lkotlin/coroutines/experimental/CombinedContext;
.super Ljava/lang/Object;
.source "CoroutineContextImpl.kt"

# interfaces
.implements Lkotlin/coroutines/experimental/CoroutineContext;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0000\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0003\u001a\u00020\u0004H\u0002J\u0010\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u0000H\u0002J\u0013\u0010\u000e\u001a\u00020\u000b2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0096\u0002J5\u0010\u0011\u001a\u0002H\u0012\"\u0004\u0008\u0000\u0010\u00122\u0006\u0010\u0013\u001a\u0002H\u00122\u0018\u0010\u0014\u001a\u0014\u0012\u0004\u0012\u0002H\u0012\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u0002H\u00120\u0015H\u0016\u00a2\u0006\u0002\u0010\u0016J(\u0010\u0017\u001a\u0004\u0018\u0001H\u0018\"\u0008\u0008\u0000\u0010\u0018*\u00020\u00042\u000c\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u0002H\u00180\u001aH\u0096\u0002\u00a2\u0006\u0002\u0010\u001bJ\u0008\u0010\u001c\u001a\u00020\u001dH\u0016J\u0014\u0010\u001e\u001a\u00020\u00012\n\u0010\u0019\u001a\u0006\u0012\u0002\u0008\u00030\u001aH\u0016J\u0008\u0010\u001f\u001a\u00020\u001dH\u0002J\u0008\u0010 \u001a\u00020!H\u0016R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0011\u0010\u0002\u001a\u00020\u0001\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\""
    }
    d2 = {
        "Lkotlin/coroutines/experimental/CombinedContext;",
        "Lkotlin/coroutines/experimental/CoroutineContext;",
        "left",
        "element",
        "Lkotlin/coroutines/experimental/CoroutineContext$Element;",
        "(Lkotlin/coroutines/experimental/CoroutineContext;Lkotlin/coroutines/experimental/CoroutineContext$Element;)V",
        "getElement",
        "()Lkotlin/coroutines/experimental/CoroutineContext$Element;",
        "getLeft",
        "()Lkotlin/coroutines/experimental/CoroutineContext;",
        "contains",
        "",
        "containsAll",
        "context",
        "equals",
        "other",
        "",
        "fold",
        "R",
        "initial",
        "operation",
        "Lkotlin/Function2;",
        "(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;",
        "get",
        "E",
        "key",
        "Lkotlin/coroutines/experimental/CoroutineContext$Key;",
        "(Lkotlin/coroutines/experimental/CoroutineContext$Key;)Lkotlin/coroutines/experimental/CoroutineContext$Element;",
        "hashCode",
        "",
        "minusKey",
        "size",
        "toString",
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
.field private final element:Lkotlin/coroutines/experimental/CoroutineContext$Element;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final left:Lkotlin/coroutines/experimental/CoroutineContext;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/coroutines/experimental/CoroutineContext;Lkotlin/coroutines/experimental/CoroutineContext$Element;)V
    .locals 5
    .param p1    # Lkotlin/coroutines/experimental/CoroutineContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/experimental/CoroutineContext$Element;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v1

    const-string v4, "left"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v2

    const-string v4, "element"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lkotlin/coroutines/experimental/CombinedContext;->left:Lkotlin/coroutines/experimental/CoroutineContext;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lkotlin/coroutines/experimental/CombinedContext;->element:Lkotlin/coroutines/experimental/CoroutineContext$Element;

    return-void
.end method

.method private final contains(Lkotlin/coroutines/experimental/CoroutineContext$Element;)Z
    .locals 4

    .prologue
    .line 64
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lkotlin/coroutines/experimental/CoroutineContext$Element;->getKey()Lkotlin/coroutines/experimental/CoroutineContext$Key;

    move-result-object v3

    invoke-virtual {v2, v3}, Lkotlin/coroutines/experimental/CombinedContext;->get(Lkotlin/coroutines/experimental/CoroutineContext$Key;)Lkotlin/coroutines/experimental/CoroutineContext$Element;

    move-result-object v2

    move-object v3, v1

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method private final containsAll(Lkotlin/coroutines/experimental/CombinedContext;)Z
    .locals 10

    .prologue
    .line 67
    move-object v0, p0

    move-object v1, p1

    move-object v4, v1

    move-object v2, v4

    .line 68
    :goto_0
    move-object v4, v0

    move-object v5, v2

    iget-object v5, v5, Lkotlin/coroutines/experimental/CombinedContext;->element:Lkotlin/coroutines/experimental/CoroutineContext$Element;

    invoke-direct {v4, v5}, Lkotlin/coroutines/experimental/CombinedContext;->contains(Lkotlin/coroutines/experimental/CoroutineContext$Element;)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x0

    move v0, v4

    .line 74
    :goto_1
    return v0

    .line 70
    :cond_0
    move-object v4, v2

    iget-object v4, v4, Lkotlin/coroutines/experimental/CombinedContext;->left:Lkotlin/coroutines/experimental/CoroutineContext;

    move-object v3, v4

    .line 71
    move-object v4, v3

    instance-of v4, v4, Lkotlin/coroutines/experimental/CombinedContext;

    if-eqz v4, :cond_1

    .line 72
    move-object v4, v3

    check-cast v4, Lkotlin/coroutines/experimental/CombinedContext;

    move-object v2, v4

    .line 75
    goto :goto_0

    .line 74
    :cond_1
    move-object v4, v0

    move-object v5, v3

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    if-nez v6, :cond_2

    new-instance v6, Lkotlin/TypeCastException;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    const-string v8, "null cannot be cast to non-null type kotlin.coroutines.experimental.CoroutineContext.Element"

    invoke-direct {v7, v8}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_2
    check-cast v5, Lkotlin/coroutines/experimental/CoroutineContext$Element;

    invoke-direct {v4, v5}, Lkotlin/coroutines/experimental/CombinedContext;->contains(Lkotlin/coroutines/experimental/CoroutineContext$Element;)Z

    move-result v4

    move v0, v4

    goto :goto_1
.end method

.method private final size()I
    .locals 3

    .prologue
    .line 61
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lkotlin/coroutines/experimental/CombinedContext;->left:Lkotlin/coroutines/experimental/CoroutineContext;

    instance-of v1, v1, Lkotlin/coroutines/experimental/CombinedContext;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lkotlin/coroutines/experimental/CombinedContext;->left:Lkotlin/coroutines/experimental/CoroutineContext;

    check-cast v1, Lkotlin/coroutines/experimental/CombinedContext;

    invoke-direct {v1}, Lkotlin/coroutines/experimental/CombinedContext;->size()I

    move-result v1

    const/4 v2, 0x1

    add-int/lit8 v1, v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x2

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 80
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    check-cast v2, Lkotlin/coroutines/experimental/CombinedContext;

    move-object v3, v1

    if-eq v2, v3, :cond_0

    move-object v2, v1

    instance-of v2, v2, Lkotlin/coroutines/experimental/CombinedContext;

    if-eqz v2, :cond_1

    move-object v2, v1

    check-cast v2, Lkotlin/coroutines/experimental/CombinedContext;

    invoke-direct {v2}, Lkotlin/coroutines/experimental/CombinedContext;->size()I

    move-result v2

    move-object v3, v0

    invoke-direct {v3}, Lkotlin/coroutines/experimental/CombinedContext;->size()I

    move-result v3

    if-ne v2, v3, :cond_1

    move-object v2, v1

    check-cast v2, Lkotlin/coroutines/experimental/CombinedContext;

    move-object v3, v0

    invoke-direct {v2, v3}, Lkotlin/coroutines/experimental/CombinedContext;->containsAll(Lkotlin/coroutines/experimental/CombinedContext;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    move v0, v2

    return v0

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public fold(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;
    .locals 7
    .param p2    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;",
            "Lkotlin/jvm/functions/Function2",
            "<-TR;-",
            "Lkotlin/coroutines/experimental/CoroutineContext$Element;",
            "+TR;>;)TR;"
        }
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v2

    const-string v4, "operation"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lkotlin/coroutines/experimental/CombinedContext;->left:Lkotlin/coroutines/experimental/CoroutineContext;

    move-object v5, v1

    move-object v6, v2

    invoke-interface {v4, v5, v6}, Lkotlin/coroutines/experimental/CoroutineContext;->fold(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Lkotlin/coroutines/experimental/CombinedContext;->element:Lkotlin/coroutines/experimental/CoroutineContext$Element;

    invoke-interface {v3, v4, v5}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method public get(Lkotlin/coroutines/experimental/CoroutineContext$Key;)Lkotlin/coroutines/experimental/CoroutineContext$Element;
    .locals 9
    .param p1    # Lkotlin/coroutines/experimental/CoroutineContext$Key;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lkotlin/coroutines/experimental/CoroutineContext$Element;",
            ">(",
            "Lkotlin/coroutines/experimental/CoroutineContext$Key",
            "<TE;>;)TE;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v6, v1

    const-string v7, "key"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    move-object v6, v0

    check-cast v6, Lkotlin/coroutines/experimental/CombinedContext;

    move-object v2, v6

    .line 36
    :goto_0
    move-object v6, v2

    iget-object v6, v6, Lkotlin/coroutines/experimental/CombinedContext;->element:Lkotlin/coroutines/experimental/CoroutineContext$Element;

    move-object v7, v1

    invoke-interface {v6, v7}, Lkotlin/coroutines/experimental/CoroutineContext$Element;->get(Lkotlin/coroutines/experimental/CoroutineContext$Key;)Lkotlin/coroutines/experimental/CoroutineContext$Element;

    move-result-object v6

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    if-eqz v7, :cond_0

    move-object v3, v6

    move-object v6, v3

    move-object v4, v6

    .line 37
    move-object v6, v4

    move-object v0, v6

    .line 42
    :goto_1
    return-object v0

    .line 38
    :cond_0
    move-object v6, v2

    iget-object v6, v6, Lkotlin/coroutines/experimental/CombinedContext;->left:Lkotlin/coroutines/experimental/CoroutineContext;

    move-object v3, v6

    .line 39
    move-object v6, v3

    instance-of v6, v6, Lkotlin/coroutines/experimental/CombinedContext;

    if-eqz v6, :cond_1

    .line 40
    move-object v6, v3

    check-cast v6, Lkotlin/coroutines/experimental/CombinedContext;

    move-object v2, v6

    .line 43
    goto :goto_0

    .line 42
    :cond_1
    move-object v6, v3

    move-object v7, v1

    invoke-interface {v6, v7}, Lkotlin/coroutines/experimental/CoroutineContext;->get(Lkotlin/coroutines/experimental/CoroutineContext$Key;)Lkotlin/coroutines/experimental/CoroutineContext$Element;

    move-result-object v6

    move-object v0, v6

    goto :goto_1
.end method

.method public final getElement()Lkotlin/coroutines/experimental/CoroutineContext$Element;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 33
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lkotlin/coroutines/experimental/CombinedContext;->element:Lkotlin/coroutines/experimental/CoroutineContext$Element;

    move-object v0, v1

    return-object v0
.end method

.method public final getLeft()Lkotlin/coroutines/experimental/CoroutineContext;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 33
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lkotlin/coroutines/experimental/CombinedContext;->left:Lkotlin/coroutines/experimental/CoroutineContext;

    move-object v0, v1

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 82
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lkotlin/coroutines/experimental/CombinedContext;->left:Lkotlin/coroutines/experimental/CoroutineContext;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    move-object v2, v0

    iget-object v2, v2, Lkotlin/coroutines/experimental/CombinedContext;->element:Lkotlin/coroutines/experimental/CoroutineContext$Element;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    move v0, v1

    return v0
.end method

.method public minusKey(Lkotlin/coroutines/experimental/CoroutineContext$Key;)Lkotlin/coroutines/experimental/CoroutineContext;
    .locals 10
    .param p1    # Lkotlin/coroutines/experimental/CoroutineContext$Key;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/experimental/CoroutineContext$Key",
            "<*>;)",
            "Lkotlin/coroutines/experimental/CoroutineContext;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v5, v1

    const-string v6, "key"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    move-object v5, v0

    iget-object v5, v5, Lkotlin/coroutines/experimental/CombinedContext;->element:Lkotlin/coroutines/experimental/CoroutineContext$Element;

    move-object v6, v1

    invoke-interface {v5, v6}, Lkotlin/coroutines/experimental/CoroutineContext$Element;->get(Lkotlin/coroutines/experimental/CoroutineContext$Key;)Lkotlin/coroutines/experimental/CoroutineContext$Element;

    move-result-object v5

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    if-eqz v6, :cond_0

    move-object v2, v5

    move-object v5, v2

    move-object v3, v5

    move-object v5, v0

    iget-object v5, v5, Lkotlin/coroutines/experimental/CombinedContext;->left:Lkotlin/coroutines/experimental/CoroutineContext;

    move-object v0, v5

    .line 53
    :goto_0
    return-object v0

    .line 52
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Lkotlin/coroutines/experimental/CombinedContext;->left:Lkotlin/coroutines/experimental/CoroutineContext;

    move-object v6, v1

    invoke-interface {v5, v6}, Lkotlin/coroutines/experimental/CoroutineContext;->minusKey(Lkotlin/coroutines/experimental/CoroutineContext$Key;)Lkotlin/coroutines/experimental/CoroutineContext;

    move-result-object v5

    move-object v2, v5

    .line 53
    move-object v5, v2

    move-object v6, v0

    iget-object v6, v6, Lkotlin/coroutines/experimental/CombinedContext;->left:Lkotlin/coroutines/experimental/CoroutineContext;

    if-ne v5, v6, :cond_1

    move-object v5, v0

    check-cast v5, Lkotlin/coroutines/experimental/CoroutineContext;

    :goto_1
    move-object v0, v5

    goto :goto_0

    .line 55
    :cond_1
    move-object v5, v2

    sget-object v6, Lkotlin/coroutines/experimental/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/experimental/EmptyCoroutineContext;

    if-ne v5, v6, :cond_2

    move-object v5, v0

    iget-object v5, v5, Lkotlin/coroutines/experimental/CombinedContext;->element:Lkotlin/coroutines/experimental/CoroutineContext$Element;

    check-cast v5, Lkotlin/coroutines/experimental/CoroutineContext;

    goto :goto_1

    .line 56
    :cond_2
    new-instance v5, Lkotlin/coroutines/experimental/CombinedContext;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v2

    move-object v8, v0

    iget-object v8, v8, Lkotlin/coroutines/experimental/CombinedContext;->element:Lkotlin/coroutines/experimental/CoroutineContext$Element;

    invoke-direct {v6, v7, v8}, Lkotlin/coroutines/experimental/CombinedContext;-><init>(Lkotlin/coroutines/experimental/CoroutineContext;Lkotlin/coroutines/experimental/CoroutineContext$Element;)V

    check-cast v5, Lkotlin/coroutines/experimental/CoroutineContext;

    goto :goto_1
.end method

.method public plus(Lkotlin/coroutines/experimental/CoroutineContext;)Lkotlin/coroutines/experimental/CoroutineContext;
    .locals 4
    .param p1    # Lkotlin/coroutines/experimental/CoroutineContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    const-string v3, "context"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Lkotlin/coroutines/experimental/CoroutineContext$DefaultImpls;->plus(Lkotlin/coroutines/experimental/CoroutineContext;Lkotlin/coroutines/experimental/CoroutineContext;)Lkotlin/coroutines/experimental/CoroutineContext;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 85
    move-object v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    const-string v3, ""

    sget-object v4, Lkotlin/coroutines/experimental/CombinedContext$toString$1;->INSTANCE:Lkotlin/coroutines/experimental/CombinedContext$toString$1;

    check-cast v4, Lkotlin/jvm/functions/Function2;

    invoke-virtual {v2, v3, v4}, Lkotlin/coroutines/experimental/CombinedContext;->fold(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 87
    move-object v0, v1

    return-object v0
.end method
