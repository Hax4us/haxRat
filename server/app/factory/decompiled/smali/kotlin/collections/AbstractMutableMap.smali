.class public abstract Lkotlin/collections/AbstractMutableMap;
.super Ljava/util/AbstractMap;
.source "AbstractMutableMap.kt"

# interfaces
.implements Ljava/util/Map;
.implements Lkotlin/jvm/internal/markers/KMutableMap;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap",
        "<TK;TV;>;",
        "Ljava/util/Map",
        "<TK;TV;>;",
        "Lkotlin/jvm/internal/markers/KMutableMap;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\'\u0018\u0000*\u0004\u0008\u0000\u0010\u0001*\u0004\u0008\u0001\u0010\u00022\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00020\u00032\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00020\u0004B\u0007\u0008\u0004\u00a2\u0006\u0002\u0010\u0005J\u001f\u0010\u0006\u001a\u0004\u0018\u00018\u00012\u0006\u0010\u0007\u001a\u00028\u00002\u0006\u0010\u0008\u001a\u00028\u0001H&\u00a2\u0006\u0002\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "Lkotlin/collections/AbstractMutableMap;",
        "K",
        "V",
        "",
        "Ljava/util/AbstractMap;",
        "()V",
        "put",
        "key",
        "value",
        "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;",
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


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 19
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/util/AbstractMap;-><init>()V

    return-void
.end method


# virtual methods
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
    .line 19
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lkotlin/collections/AbstractMutableMap;->getEntries()Ljava/util/Set;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public abstract getEntries()Ljava/util/Set;
.end method

.method public bridge getKeys()Ljava/util/Set;
    .locals 2

    .prologue
    .line 19
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Ljava/util/AbstractMap;->keySet()Ljava/util/Set;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public bridge getSize()I
    .locals 2

    .prologue
    .line 19
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Ljava/util/AbstractMap;->size()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public bridge getValues()Ljava/util/Collection;
    .locals 2

    .prologue
    .line 19
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Ljava/util/AbstractMap;->values()Ljava/util/Collection;

    move-result-object v1

    move-object v0, v1

    return-object v0
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
    .line 19
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lkotlin/collections/AbstractMutableMap;->getKeys()Ljava/util/Set;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public abstract put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public final bridge size()I
    .locals 2

    .prologue
    .line 19
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lkotlin/collections/AbstractMutableMap;->getSize()I

    move-result v1

    move v0, v1

    return v0
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
    .line 19
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lkotlin/collections/AbstractMutableMap;->getValues()Ljava/util/Collection;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method
