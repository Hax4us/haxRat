.class public abstract Lkotlin/collections/AbstractMap;
.super Ljava/lang/Object;
.source "AbstractMap.kt"

# interfaces
.implements Ljava/util/Map;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/collections/AbstractMap$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map",
        "<TK;TV;>;",
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
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0002\u0008\u0002\n\u0002\u0010\"\n\u0000\n\u0002\u0010\u001e\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010&\n\u0002\u0008\u0008\n\u0002\u0010\u0000\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008\'\u0018\u0000 )*\u0004\u0008\u0000\u0010\u0001*\u0006\u0008\u0001\u0010\u0002 \u00012\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00020\u0003:\u0001)B\u0007\u0008\u0004\u00a2\u0006\u0002\u0010\u0004J\u001f\u0010\u0013\u001a\u00020\u00142\u0010\u0010\u0015\u001a\u000c\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u0003\u0018\u00010\u0016H\u0000\u00a2\u0006\u0002\u0008\u0017J\u0015\u0010\u0018\u001a\u00020\u00142\u0006\u0010\u0019\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010\u001aJ\u0015\u0010\u001b\u001a\u00020\u00142\u0006\u0010\u001c\u001a\u00028\u0001H\u0016\u00a2\u0006\u0002\u0010\u001aJ\u0013\u0010\u001d\u001a\u00020\u00142\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001fH\u0096\u0002J\u0018\u0010 \u001a\u0004\u0018\u00018\u00012\u0006\u0010\u0019\u001a\u00028\u0000H\u0096\u0002\u00a2\u0006\u0002\u0010!J\u0008\u0010\"\u001a\u00020\rH\u0016J#\u0010#\u001a\u0010\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0018\u00010\u00162\u0006\u0010\u0019\u001a\u00028\u0000H\u0002\u00a2\u0006\u0002\u0010$J\u0008\u0010%\u001a\u00020\u0014H\u0016J\u0008\u0010&\u001a\u00020\'H\u0016J\u0012\u0010&\u001a\u00020\'2\u0008\u0010(\u001a\u0004\u0018\u00010\u001fH\u0002J\u001c\u0010&\u001a\u00020\'2\u0012\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0016H\u0008R\u001a\u0010\u0005\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u00068\u0002@\u0002X\u0083\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0007\u001a\n\u0012\u0004\u0012\u00028\u0001\u0018\u00010\u00088\u0008@\u0008X\u0089\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\t\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00068VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000bR\u0014\u0010\u000c\u001a\u00020\r8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u000fR\u001a\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u00088VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u0012\u00a8\u0006*"
    }
    d2 = {
        "Lkotlin/collections/AbstractMap;",
        "K",
        "V",
        "",
        "()V",
        "_keys",
        "",
        "_values",
        "",
        "keys",
        "getKeys",
        "()Ljava/util/Set;",
        "size",
        "",
        "getSize",
        "()I",
        "values",
        "getValues",
        "()Ljava/util/Collection;",
        "containsEntry",
        "",
        "entry",
        "",
        "containsEntry$kotlin_stdlib",
        "containsKey",
        "key",
        "(Ljava/lang/Object;)Z",
        "containsValue",
        "value",
        "equals",
        "other",
        "",
        "get",
        "(Ljava/lang/Object;)Ljava/lang/Object;",
        "hashCode",
        "implFindEntry",
        "(Ljava/lang/Object;)Ljava/util/Map$Entry;",
        "isEmpty",
        "toString",
        "",
        "o",
        "Companion",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xa
    }
.end annotation

.annotation build Lkotlin/SinceKotlin;
    version = "1.1"
.end annotation


# static fields
.field public static final Companion:Lkotlin/collections/AbstractMap$Companion;


# instance fields
.field private volatile _keys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<+TK;>;"
        }
    .end annotation
.end field

.field private volatile _values:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<+TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lkotlin/collections/AbstractMap$Companion;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lkotlin/collections/AbstractMap$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlin/collections/AbstractMap;->Companion:Lkotlin/collections/AbstractMap$Companion;

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 21
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$toString(Lkotlin/collections/AbstractMap;Ljava/util/Map$Entry;)Ljava/lang/String;
    .locals 4
    .param p1    # Ljava/util/Map$Entry;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 21
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lkotlin/collections/AbstractMap;->toString(Ljava/util/Map$Entry;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method private final implFindEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 140
    move-object v0, p0

    move-object v1, p1

    move-object v8, v0

    invoke-virtual {v8}, Lkotlin/collections/AbstractMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    check-cast v8, Ljava/lang/Iterable;

    move-object v2, v8

    .line 159
    move-object v8, v2

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v3, v8

    :cond_0
    move-object v8, v3

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    move-object v8, v3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v4, v8

    move-object v8, v4

    check-cast v8, Ljava/util/Map$Entry;

    move-object v5, v8

    .line 140
    move-object v8, v5

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    move-object v9, v1

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    move-object v8, v4

    .line 160
    :goto_0
    check-cast v8, Ljava/util/Map$Entry;

    .line 140
    move-object v0, v8

    return-object v0

    .line 160
    :cond_1
    const/4 v8, 0x0

    goto :goto_0
.end method

.method private final toString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 109
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    move-object v3, v0

    check-cast v3, Lkotlin/collections/AbstractMap;

    if-ne v2, v3, :cond_0

    const-string v2, "(this Map)"

    :goto_0
    move-object v0, v2

    return-object v0

    :cond_0
    move-object v2, v1

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private final toString(Ljava/util/Map$Entry;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<+TK;+TV;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 107
    move-object v0, p0

    move-object v1, p1

    new-instance v2, Ljava/lang/StringBuilder;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object v3, v0

    move-object v4, v1

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v3, v4}, Lkotlin/collections/AbstractMap;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    move-object v4, v1

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v3, v4}, Lkotlin/collections/AbstractMap;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method


# virtual methods
.method public clear()V
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

.method public final containsEntry$kotlin_stdlib(Ljava/util/Map$Entry;)Z
    .locals 11
    .param p1    # Ljava/util/Map$Entry;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<**>;)Z"
        }
    .end annotation

    .prologue
    .line 31
    move-object v0, p0

    move-object v1, p1

    move-object v6, v1

    instance-of v6, v6, Ljava/util/Map$Entry;

    if-nez v6, :cond_0

    const/4 v6, 0x0

    move v0, v6

    .line 45
    :goto_0
    return v0

    .line 32
    :cond_0
    move-object v6, v1

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    move-object v2, v6

    .line 33
    move-object v6, v1

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    move-object v3, v6

    .line 34
    move-object v6, v0

    move-object v5, v6

    move-object v6, v5

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    if-nez v7, :cond_1

    new-instance v7, Lkotlin/TypeCastException;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    const-string v9, "null cannot be cast to non-null type kotlin.collections.Map<K, V>"

    invoke-direct {v8, v9}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_1
    check-cast v6, Ljava/util/Map;

    move-object v7, v2

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v4, v6

    .line 36
    move-object v6, v3

    move-object v7, v4

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x1

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_2

    .line 37
    const/4 v6, 0x0

    move v0, v6

    goto :goto_0

    .line 41
    :cond_2
    move-object v6, v4

    if-nez v6, :cond_4

    move-object v6, v0

    move-object v5, v6

    move-object v6, v5

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    if-nez v7, :cond_3

    new-instance v7, Lkotlin/TypeCastException;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    const-string v9, "null cannot be cast to non-null type kotlin.collections.Map<K, *>"

    invoke-direct {v8, v9}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_3
    check-cast v6, Ljava/util/Map;

    move-object v7, v2

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 42
    const/4 v6, 0x0

    move v0, v6

    goto :goto_0

    .line 45
    :cond_4
    const/4 v6, 0x1

    move v0, v6

    goto :goto_0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 24
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lkotlin/collections/AbstractMap;->implFindEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    return v0

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 10

    .prologue
    .line 27
    move-object v0, p0

    move-object v1, p1

    move-object v8, v0

    invoke-virtual {v8}, Lkotlin/collections/AbstractMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    check-cast v8, Ljava/lang/Iterable;

    move-object v2, v8

    .line 153
    move-object v8, v2

    instance-of v8, v8, Ljava/util/Collection;

    if-eqz v8, :cond_0

    move-object v8, v2

    check-cast v8, Ljava/util/Collection;

    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x0

    .line 27
    :goto_0
    move v0, v8

    return v0

    .line 154
    :cond_0
    move-object v8, v2

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v3, v8

    :cond_1
    move-object v8, v3

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    move-object v8, v3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v4, v8

    move-object v8, v4

    check-cast v8, Ljava/util/Map$Entry;

    move-object v5, v8

    .line 27
    move-object v8, v5

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    move-object v9, v1

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v8, 0x1

    goto :goto_0

    .line 155
    :cond_2
    const/4 v8, 0x0

    goto :goto_0
.end method

.method public final bridge entrySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 21
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lkotlin/collections/AbstractMap;->getEntries()Ljava/util/Set;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 10
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 55
    move-object v0, p0

    move-object v1, p1

    move-object v8, v1

    move-object v9, v0

    check-cast v9, Lkotlin/collections/AbstractMap;

    if-ne v8, v9, :cond_0

    const/4 v8, 0x1

    move v0, v8

    .line 158
    :goto_0
    return v0

    .line 56
    :cond_0
    move-object v8, v1

    instance-of v8, v8, Ljava/util/Map;

    if-nez v8, :cond_1

    const/4 v8, 0x0

    move v0, v8

    goto :goto_0

    .line 57
    :cond_1
    move-object v8, v0

    invoke-virtual {v8}, Lkotlin/collections/AbstractMap;->size()I

    move-result v8

    move-object v9, v1

    check-cast v9, Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->size()I

    move-result v9

    if-eq v8, v9, :cond_2

    const/4 v8, 0x0

    move v0, v8

    goto :goto_0

    .line 59
    :cond_2
    move-object v8, v1

    check-cast v8, Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    check-cast v8, Ljava/lang/Iterable;

    move-object v2, v8

    .line 156
    move-object v8, v2

    instance-of v8, v8, Ljava/util/Collection;

    if-eqz v8, :cond_3

    move-object v8, v2

    check-cast v8, Ljava/util/Collection;

    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_3

    const/4 v8, 0x1

    .line 158
    :goto_1
    move v0, v8

    goto :goto_0

    .line 157
    :cond_3
    move-object v8, v2

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v3, v8

    :cond_4
    move-object v8, v3

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    move-object v8, v3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v4, v8

    move-object v8, v4

    check-cast v8, Ljava/util/Map$Entry;

    move-object v5, v8

    .line 59
    move-object v8, v0

    move-object v9, v5

    invoke-virtual {v8, v9}, Lkotlin/collections/AbstractMap;->containsEntry$kotlin_stdlib(Ljava/util/Map$Entry;)Z

    move-result v8

    if-nez v8, :cond_4

    const/4 v8, 0x0

    goto :goto_1

    .line 158
    :cond_5
    const/4 v8, 0x1

    goto :goto_1
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 62
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lkotlin/collections/AbstractMap;->implFindEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v2

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    :goto_0
    move-object v0, v2

    return-object v0

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public abstract getEntries()Ljava/util/Set;
.end method

.method public getKeys()Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 83
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lkotlin/collections/AbstractMap;->_keys:Ljava/util/Set;

    if-nez v1, :cond_0

    .line 84
    move-object v1, v0

    new-instance v2, Lkotlin/collections/AbstractMap$keys$1;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Lkotlin/collections/AbstractMap$keys$1;-><init>(Lkotlin/collections/AbstractMap;)V

    check-cast v2, Ljava/util/Set;

    iput-object v2, v1, Lkotlin/collections/AbstractMap;->_keys:Ljava/util/Set;

    .line 98
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lkotlin/collections/AbstractMap;->_keys:Ljava/util/Set;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    if-nez v2, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    move-object v0, v1

    return-object v0
.end method

.method public getSize()I
    .locals 2

    .prologue
    .line 73
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lkotlin/collections/AbstractMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public getValues()Ljava/util/Collection;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 119
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lkotlin/collections/AbstractMap;->_values:Ljava/util/Collection;

    if-nez v1, :cond_0

    .line 120
    move-object v1, v0

    new-instance v2, Lkotlin/collections/AbstractMap$values$1;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Lkotlin/collections/AbstractMap$values$1;-><init>(Lkotlin/collections/AbstractMap;)V

    check-cast v2, Ljava/util/Collection;

    iput-object v2, v1, Lkotlin/collections/AbstractMap;->_values:Ljava/util/Collection;

    .line 134
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lkotlin/collections/AbstractMap;->_values:Ljava/util/Collection;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    if-nez v2, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    move-object v0, v1

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 70
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lkotlin/collections/AbstractMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 72
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lkotlin/collections/AbstractMap;->size()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final bridge keySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 21
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lkotlin/collections/AbstractMap;->getKeys()Ljava/util/Set;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    new-instance v3, Ljava/lang/UnsupportedOperationException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "Operation is not supported for read-only collection"

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Operation is not supported for read-only collection"

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Operation is not supported for read-only collection"

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public final bridge size()I
    .locals 2

    .prologue
    .line 21
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lkotlin/collections/AbstractMap;->getSize()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 11
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 105
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lkotlin/collections/AbstractMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    const-string v2, ", "

    check-cast v2, Ljava/lang/CharSequence;

    const-string v3, "{"

    check-cast v3, Ljava/lang/CharSequence;

    const-string v4, "}"

    check-cast v4, Ljava/lang/CharSequence;

    const/4 v5, 0x0

    const/4 v6, 0x0

    new-instance v7, Lkotlin/collections/AbstractMap$toString$1;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v9, v0

    invoke-direct {v8, v9}, Lkotlin/collections/AbstractMap$toString$1;-><init>(Lkotlin/collections/AbstractMap;)V

    check-cast v7, Lkotlin/jvm/functions/Function1;

    const/16 v8, 0x18

    const/4 v9, 0x0

    invoke-static/range {v1 .. v9}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public final bridge values()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 21
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lkotlin/collections/AbstractMap;->getValues()Ljava/util/Collection;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method
