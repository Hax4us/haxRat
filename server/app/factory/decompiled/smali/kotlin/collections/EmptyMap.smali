.class final Lkotlin/collections/EmptyMap;
.super Ljava/lang/Object;
.source "Maps.kt"

# interfaces
.implements Ljava/util/Map;
.implements Ljava/io/Serializable;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\u0010\u0000\n\u0002\u0010\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\"\n\u0002\u0010&\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u001e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\n\n\u0002\u0010\u000e\n\u0000\u0008\u00c2\u0002\u0018\u00002\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0012\u0004\u0012\u00020\u00030\u00012\u00060\u0004j\u0002`\u0005B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0006J\u0012\u0010\u0018\u001a\u00020\u00192\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0002H\u0016J\u0010\u0010\u001b\u001a\u00020\u00192\u0006\u0010\u001c\u001a\u00020\u0003H\u0016J\u0013\u0010\u001d\u001a\u00020\u00192\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u0002H\u0096\u0002J\u0015\u0010\u001f\u001a\u0004\u0018\u00010\u00032\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0002H\u0096\u0002J\u0008\u0010 \u001a\u00020\u0011H\u0016J\u0008\u0010!\u001a\u00020\u0019H\u0016J\u0008\u0010\"\u001a\u00020\u0002H\u0002J\u0008\u0010#\u001a\u00020$H\u0016R(\u0010\u0007\u001a\u0016\u0012\u0012\u0012\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0012\u0004\u0012\u00020\u00030\t0\u00088VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000bR\u001c\u0010\u000c\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u00088VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000bR\u000e\u0010\u000e\u001a\u00020\u000fX\u0082T\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0010\u001a\u00020\u00118VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0012\u0010\u0013R\u001a\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00158VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0016\u0010\u0017\u00a8\u0006%"
    }
    d2 = {
        "Lkotlin/collections/EmptyMap;",
        "",
        "",
        "",
        "Ljava/io/Serializable;",
        "Lkotlin/io/Serializable;",
        "()V",
        "entries",
        "",
        "",
        "getEntries",
        "()Ljava/util/Set;",
        "keys",
        "getKeys",
        "serialVersionUID",
        "",
        "size",
        "",
        "getSize",
        "()I",
        "values",
        "",
        "getValues",
        "()Ljava/util/Collection;",
        "containsKey",
        "",
        "key",
        "containsValue",
        "value",
        "equals",
        "other",
        "get",
        "hashCode",
        "isEmpty",
        "readResolve",
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


# static fields
.field public static final INSTANCE:Lkotlin/collections/EmptyMap;

.field private static final serialVersionUID:J = 0x72723771cb044cd2L


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 11
    new-instance v1, Lkotlin/collections/EmptyMap;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Lkotlin/collections/EmptyMap;-><init>()V

    move-object v0, v1

    move-object v1, v0

    sput-object v1, Lkotlin/collections/EmptyMap;->INSTANCE:Lkotlin/collections/EmptyMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 11
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final readResolve()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 28
    move-object v0, p0

    sget-object v1, Lkotlin/collections/EmptyMap;->INSTANCE:Lkotlin/collections/EmptyMap;

    move-object v0, v1

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

.method public containsKey(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 21
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move v0, v2

    return v0
.end method

.method public final bridge containsValue(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 11
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    instance-of v2, v2, Ljava/lang/Void;

    if-eqz v2, :cond_0

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lkotlin/collections/EmptyMap;->containsValue(Ljava/lang/Void;)Z

    move-result v2

    move v0, v2

    :goto_0
    return v0

    :cond_0
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public containsValue(Ljava/lang/Void;)Z
    .locals 4
    .param p1    # Ljava/lang/Void;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    const-string v3, "value"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    const/4 v2, 0x0

    move v0, v2

    return v0
.end method

.method public final bridge entrySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 11
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lkotlin/collections/EmptyMap;->getEntries()Ljava/util/Set;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 14
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    instance-of v2, v2, Ljava/util/Map;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    return v0

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public final bridge get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 11
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lkotlin/collections/EmptyMap;->get(Ljava/lang/Object;)Ljava/lang/Void;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Void;
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 23
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move-object v0, v2

    return-object v0
.end method

.method public getEntries()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 24
    move-object v0, p0

    sget-object v1, Lkotlin/collections/EmptySet;->INSTANCE:Lkotlin/collections/EmptySet;

    check-cast v1, Ljava/util/Set;

    move-object v0, v1

    return-object v0
.end method

.method public getKeys()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 25
    move-object v0, p0

    sget-object v1, Lkotlin/collections/EmptySet;->INSTANCE:Lkotlin/collections/EmptySet;

    check-cast v1, Ljava/util/Set;

    move-object v0, v1

    return-object v0
.end method

.method public getSize()I
    .locals 2

    .prologue
    .line 18
    move-object v0, p0

    const/4 v1, 0x0

    move v0, v1

    return v0
.end method

.method public getValues()Ljava/util/Collection;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 26
    move-object v0, p0

    sget-object v1, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    check-cast v1, Ljava/util/Collection;

    move-object v0, v1

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 15
    move-object v0, p0

    const/4 v1, 0x0

    move v0, v1

    return v0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 19
    move-object v0, p0

    const/4 v1, 0x1

    move v0, v1

    return v0
.end method

.method public final bridge keySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 11
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lkotlin/collections/EmptyMap;->getKeys()Ljava/util/Set;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

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

.method public put(Ljava/lang/Object;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 7

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
    .line 11
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lkotlin/collections/EmptyMap;->getSize()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 16
    move-object v0, p0

    const-string v1, "{}"

    move-object v0, v1

    return-object v0
.end method

.method public final bridge values()Ljava/util/Collection;
    .locals 2

    .prologue
    .line 11
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lkotlin/collections/EmptyMap;->getValues()Ljava/util/Collection;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method
