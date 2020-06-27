.class public Lkotlin/jvm/internal/TypeIntrinsics;
.super Ljava/lang/Object;
.source "TypeIntrinsics.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 15
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static asMutableCollection(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 3

    .prologue
    .line 123
    move-object v0, p0

    move-object v1, v0

    instance-of v1, v1, Lkotlin/jvm/internal/markers/KMappedMarker;

    if-eqz v1, :cond_0

    move-object v1, v0

    instance-of v1, v1, Lkotlin/jvm/internal/markers/KMutableCollection;

    if-nez v1, :cond_0

    .line 124
    move-object v1, v0

    const-string v2, "kotlin.collections.MutableCollection"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/TypeIntrinsics;->throwCce(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    :cond_0
    move-object v1, v0

    invoke-static {v1}, Lkotlin/jvm/internal/TypeIntrinsics;->castToCollection(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static asMutableCollection(Ljava/lang/Object;Ljava/lang/String;)Ljava/util/Collection;
    .locals 3

    .prologue
    .line 130
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    instance-of v2, v2, Lkotlin/jvm/internal/markers/KMappedMarker;

    if-eqz v2, :cond_0

    move-object v2, v0

    instance-of v2, v2, Lkotlin/jvm/internal/markers/KMutableCollection;

    if-nez v2, :cond_0

    .line 131
    move-object v2, v1

    invoke-static {v2}, Lkotlin/jvm/internal/TypeIntrinsics;->throwCce(Ljava/lang/String;)V

    .line 133
    :cond_0
    move-object v2, v0

    invoke-static {v2}, Lkotlin/jvm/internal/TypeIntrinsics;->castToCollection(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public static asMutableIterable(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 3

    .prologue
    .line 95
    move-object v0, p0

    move-object v1, v0

    instance-of v1, v1, Lkotlin/jvm/internal/markers/KMappedMarker;

    if-eqz v1, :cond_0

    move-object v1, v0

    instance-of v1, v1, Lkotlin/jvm/internal/markers/KMutableIterable;

    if-nez v1, :cond_0

    .line 96
    move-object v1, v0

    const-string v2, "kotlin.collections.MutableIterable"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/TypeIntrinsics;->throwCce(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    :cond_0
    move-object v1, v0

    invoke-static {v1}, Lkotlin/jvm/internal/TypeIntrinsics;->castToIterable(Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static asMutableIterable(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Iterable;
    .locals 3

    .prologue
    .line 102
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    instance-of v2, v2, Lkotlin/jvm/internal/markers/KMappedMarker;

    if-eqz v2, :cond_0

    move-object v2, v0

    instance-of v2, v2, Lkotlin/jvm/internal/markers/KMutableIterable;

    if-nez v2, :cond_0

    .line 103
    move-object v2, v1

    invoke-static {v2}, Lkotlin/jvm/internal/TypeIntrinsics;->throwCce(Ljava/lang/String;)V

    .line 105
    :cond_0
    move-object v2, v0

    invoke-static {v2}, Lkotlin/jvm/internal/TypeIntrinsics;->castToIterable(Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public static asMutableIterator(Ljava/lang/Object;)Ljava/util/Iterator;
    .locals 3

    .prologue
    .line 39
    move-object v0, p0

    move-object v1, v0

    instance-of v1, v1, Lkotlin/jvm/internal/markers/KMappedMarker;

    if-eqz v1, :cond_0

    move-object v1, v0

    instance-of v1, v1, Lkotlin/jvm/internal/markers/KMutableIterator;

    if-nez v1, :cond_0

    .line 40
    move-object v1, v0

    const-string v2, "kotlin.collections.MutableIterator"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/TypeIntrinsics;->throwCce(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    :cond_0
    move-object v1, v0

    invoke-static {v1}, Lkotlin/jvm/internal/TypeIntrinsics;->castToIterator(Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static asMutableIterator(Ljava/lang/Object;Ljava/lang/String;)Ljava/util/Iterator;
    .locals 3

    .prologue
    .line 46
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    instance-of v2, v2, Lkotlin/jvm/internal/markers/KMappedMarker;

    if-eqz v2, :cond_0

    move-object v2, v0

    instance-of v2, v2, Lkotlin/jvm/internal/markers/KMutableIterator;

    if-nez v2, :cond_0

    .line 47
    move-object v2, v1

    invoke-static {v2}, Lkotlin/jvm/internal/TypeIntrinsics;->throwCce(Ljava/lang/String;)V

    .line 49
    :cond_0
    move-object v2, v0

    invoke-static {v2}, Lkotlin/jvm/internal/TypeIntrinsics;->castToIterator(Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public static asMutableList(Ljava/lang/Object;)Ljava/util/List;
    .locals 3

    .prologue
    .line 151
    move-object v0, p0

    move-object v1, v0

    instance-of v1, v1, Lkotlin/jvm/internal/markers/KMappedMarker;

    if-eqz v1, :cond_0

    move-object v1, v0

    instance-of v1, v1, Lkotlin/jvm/internal/markers/KMutableList;

    if-nez v1, :cond_0

    .line 152
    move-object v1, v0

    const-string v2, "kotlin.collections.MutableList"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/TypeIntrinsics;->throwCce(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    :cond_0
    move-object v1, v0

    invoke-static {v1}, Lkotlin/jvm/internal/TypeIntrinsics;->castToList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static asMutableList(Ljava/lang/Object;Ljava/lang/String;)Ljava/util/List;
    .locals 3

    .prologue
    .line 158
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    instance-of v2, v2, Lkotlin/jvm/internal/markers/KMappedMarker;

    if-eqz v2, :cond_0

    move-object v2, v0

    instance-of v2, v2, Lkotlin/jvm/internal/markers/KMutableList;

    if-nez v2, :cond_0

    .line 159
    move-object v2, v1

    invoke-static {v2}, Lkotlin/jvm/internal/TypeIntrinsics;->throwCce(Ljava/lang/String;)V

    .line 161
    :cond_0
    move-object v2, v0

    invoke-static {v2}, Lkotlin/jvm/internal/TypeIntrinsics;->castToList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public static asMutableListIterator(Ljava/lang/Object;)Ljava/util/ListIterator;
    .locals 3

    .prologue
    .line 67
    move-object v0, p0

    move-object v1, v0

    instance-of v1, v1, Lkotlin/jvm/internal/markers/KMappedMarker;

    if-eqz v1, :cond_0

    move-object v1, v0

    instance-of v1, v1, Lkotlin/jvm/internal/markers/KMutableListIterator;

    if-nez v1, :cond_0

    .line 68
    move-object v1, v0

    const-string v2, "kotlin.collections.MutableListIterator"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/TypeIntrinsics;->throwCce(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    :cond_0
    move-object v1, v0

    invoke-static {v1}, Lkotlin/jvm/internal/TypeIntrinsics;->castToListIterator(Ljava/lang/Object;)Ljava/util/ListIterator;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static asMutableListIterator(Ljava/lang/Object;Ljava/lang/String;)Ljava/util/ListIterator;
    .locals 3

    .prologue
    .line 74
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    instance-of v2, v2, Lkotlin/jvm/internal/markers/KMappedMarker;

    if-eqz v2, :cond_0

    move-object v2, v0

    instance-of v2, v2, Lkotlin/jvm/internal/markers/KMutableListIterator;

    if-nez v2, :cond_0

    .line 75
    move-object v2, v1

    invoke-static {v2}, Lkotlin/jvm/internal/TypeIntrinsics;->throwCce(Ljava/lang/String;)V

    .line 77
    :cond_0
    move-object v2, v0

    invoke-static {v2}, Lkotlin/jvm/internal/TypeIntrinsics;->castToListIterator(Ljava/lang/Object;)Ljava/util/ListIterator;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public static asMutableMap(Ljava/lang/Object;)Ljava/util/Map;
    .locals 3

    .prologue
    .line 207
    move-object v0, p0

    move-object v1, v0

    instance-of v1, v1, Lkotlin/jvm/internal/markers/KMappedMarker;

    if-eqz v1, :cond_0

    move-object v1, v0

    instance-of v1, v1, Lkotlin/jvm/internal/markers/KMutableMap;

    if-nez v1, :cond_0

    .line 208
    move-object v1, v0

    const-string v2, "kotlin.collections.MutableMap"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/TypeIntrinsics;->throwCce(Ljava/lang/Object;Ljava/lang/String;)V

    .line 210
    :cond_0
    move-object v1, v0

    invoke-static {v1}, Lkotlin/jvm/internal/TypeIntrinsics;->castToMap(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static asMutableMap(Ljava/lang/Object;Ljava/lang/String;)Ljava/util/Map;
    .locals 3

    .prologue
    .line 214
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    instance-of v2, v2, Lkotlin/jvm/internal/markers/KMappedMarker;

    if-eqz v2, :cond_0

    move-object v2, v0

    instance-of v2, v2, Lkotlin/jvm/internal/markers/KMutableMap;

    if-nez v2, :cond_0

    .line 215
    move-object v2, v1

    invoke-static {v2}, Lkotlin/jvm/internal/TypeIntrinsics;->throwCce(Ljava/lang/String;)V

    .line 217
    :cond_0
    move-object v2, v0

    invoke-static {v2}, Lkotlin/jvm/internal/TypeIntrinsics;->castToMap(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public static asMutableMapEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 3

    .prologue
    .line 235
    move-object v0, p0

    move-object v1, v0

    instance-of v1, v1, Lkotlin/jvm/internal/markers/KMappedMarker;

    if-eqz v1, :cond_0

    move-object v1, v0

    instance-of v1, v1, Lkotlin/jvm/internal/markers/KMutableMap$Entry;

    if-nez v1, :cond_0

    .line 236
    move-object v1, v0

    const-string v2, "kotlin.collections.MutableMap.MutableEntry"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/TypeIntrinsics;->throwCce(Ljava/lang/Object;Ljava/lang/String;)V

    .line 238
    :cond_0
    move-object v1, v0

    invoke-static {v1}, Lkotlin/jvm/internal/TypeIntrinsics;->castToMapEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static asMutableMapEntry(Ljava/lang/Object;Ljava/lang/String;)Ljava/util/Map$Entry;
    .locals 3

    .prologue
    .line 242
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    instance-of v2, v2, Lkotlin/jvm/internal/markers/KMappedMarker;

    if-eqz v2, :cond_0

    move-object v2, v0

    instance-of v2, v2, Lkotlin/jvm/internal/markers/KMutableMap$Entry;

    if-nez v2, :cond_0

    .line 243
    move-object v2, v1

    invoke-static {v2}, Lkotlin/jvm/internal/TypeIntrinsics;->throwCce(Ljava/lang/String;)V

    .line 245
    :cond_0
    move-object v2, v0

    invoke-static {v2}, Lkotlin/jvm/internal/TypeIntrinsics;->castToMapEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public static asMutableSet(Ljava/lang/Object;)Ljava/util/Set;
    .locals 3

    .prologue
    .line 179
    move-object v0, p0

    move-object v1, v0

    instance-of v1, v1, Lkotlin/jvm/internal/markers/KMappedMarker;

    if-eqz v1, :cond_0

    move-object v1, v0

    instance-of v1, v1, Lkotlin/jvm/internal/markers/KMutableSet;

    if-nez v1, :cond_0

    .line 180
    move-object v1, v0

    const-string v2, "kotlin.collections.MutableSet"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/TypeIntrinsics;->throwCce(Ljava/lang/Object;Ljava/lang/String;)V

    .line 182
    :cond_0
    move-object v1, v0

    invoke-static {v1}, Lkotlin/jvm/internal/TypeIntrinsics;->castToSet(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static asMutableSet(Ljava/lang/Object;Ljava/lang/String;)Ljava/util/Set;
    .locals 3

    .prologue
    .line 186
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    instance-of v2, v2, Lkotlin/jvm/internal/markers/KMappedMarker;

    if-eqz v2, :cond_0

    move-object v2, v0

    instance-of v2, v2, Lkotlin/jvm/internal/markers/KMutableSet;

    if-nez v2, :cond_0

    .line 187
    move-object v2, v1

    invoke-static {v2}, Lkotlin/jvm/internal/TypeIntrinsics;->throwCce(Ljava/lang/String;)V

    .line 189
    :cond_0
    move-object v2, v0

    invoke-static {v2}, Lkotlin/jvm/internal/TypeIntrinsics;->castToSet(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public static beforeCheckcastToFunctionOfArity(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 341
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    if-eqz v2, :cond_0

    move-object v2, v0

    move v3, v1

    invoke-static {v2, v3}, Lkotlin/jvm/internal/TypeIntrinsics;->isFunctionOfArity(Ljava/lang/Object;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 342
    move-object v2, v0

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "kotlin.jvm.functions.Function"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/TypeIntrinsics;->throwCce(Ljava/lang/Object;Ljava/lang/String;)V

    .line 344
    :cond_0
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public static beforeCheckcastToFunctionOfArity(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 348
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, v0

    if-eqz v3, :cond_0

    move-object v3, v0

    move v4, v1

    invoke-static {v3, v4}, Lkotlin/jvm/internal/TypeIntrinsics;->isFunctionOfArity(Ljava/lang/Object;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 349
    move-object v3, v2

    invoke-static {v3}, Lkotlin/jvm/internal/TypeIntrinsics;->throwCce(Ljava/lang/String;)V

    .line 351
    :cond_0
    move-object v3, v0

    move-object v0, v3

    return-object v0
.end method

.method public static castToCollection(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 3

    .prologue
    .line 138
    move-object v0, p0

    move-object v2, v0

    :try_start_0
    check-cast v2, Ljava/util/Collection;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    return-object v0

    .line 140
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 141
    move-object v2, v1

    invoke-static {v2}, Lkotlin/jvm/internal/TypeIntrinsics;->throwCce(Ljava/lang/ClassCastException;)Ljava/lang/ClassCastException;

    move-result-object v2

    throw v2
.end method

.method public static castToIterable(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 3

    .prologue
    .line 110
    move-object v0, p0

    move-object v2, v0

    :try_start_0
    check-cast v2, Ljava/lang/Iterable;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    return-object v0

    .line 112
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 113
    move-object v2, v1

    invoke-static {v2}, Lkotlin/jvm/internal/TypeIntrinsics;->throwCce(Ljava/lang/ClassCastException;)Ljava/lang/ClassCastException;

    move-result-object v2

    throw v2
.end method

.method public static castToIterator(Ljava/lang/Object;)Ljava/util/Iterator;
    .locals 3

    .prologue
    .line 54
    move-object v0, p0

    move-object v2, v0

    :try_start_0
    check-cast v2, Ljava/util/Iterator;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    return-object v0

    .line 56
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 57
    move-object v2, v1

    invoke-static {v2}, Lkotlin/jvm/internal/TypeIntrinsics;->throwCce(Ljava/lang/ClassCastException;)Ljava/lang/ClassCastException;

    move-result-object v2

    throw v2
.end method

.method public static castToList(Ljava/lang/Object;)Ljava/util/List;
    .locals 3

    .prologue
    .line 166
    move-object v0, p0

    move-object v2, v0

    :try_start_0
    check-cast v2, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    return-object v0

    .line 168
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 169
    move-object v2, v1

    invoke-static {v2}, Lkotlin/jvm/internal/TypeIntrinsics;->throwCce(Ljava/lang/ClassCastException;)Ljava/lang/ClassCastException;

    move-result-object v2

    throw v2
.end method

.method public static castToListIterator(Ljava/lang/Object;)Ljava/util/ListIterator;
    .locals 3

    .prologue
    .line 82
    move-object v0, p0

    move-object v2, v0

    :try_start_0
    check-cast v2, Ljava/util/ListIterator;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    return-object v0

    .line 84
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 85
    move-object v2, v1

    invoke-static {v2}, Lkotlin/jvm/internal/TypeIntrinsics;->throwCce(Ljava/lang/ClassCastException;)Ljava/lang/ClassCastException;

    move-result-object v2

    throw v2
.end method

.method public static castToMap(Ljava/lang/Object;)Ljava/util/Map;
    .locals 3

    .prologue
    .line 222
    move-object v0, p0

    move-object v2, v0

    :try_start_0
    check-cast v2, Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    return-object v0

    .line 224
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 225
    move-object v2, v1

    invoke-static {v2}, Lkotlin/jvm/internal/TypeIntrinsics;->throwCce(Ljava/lang/ClassCastException;)Ljava/lang/ClassCastException;

    move-result-object v2

    throw v2
.end method

.method public static castToMapEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 3

    .prologue
    .line 250
    move-object v0, p0

    move-object v2, v0

    :try_start_0
    check-cast v2, Ljava/util/Map$Entry;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    return-object v0

    .line 252
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 253
    move-object v2, v1

    invoke-static {v2}, Lkotlin/jvm/internal/TypeIntrinsics;->throwCce(Ljava/lang/ClassCastException;)Ljava/lang/ClassCastException;

    move-result-object v2

    throw v2
.end method

.method public static castToSet(Ljava/lang/Object;)Ljava/util/Set;
    .locals 3

    .prologue
    .line 194
    move-object v0, p0

    move-object v2, v0

    :try_start_0
    check-cast v2, Ljava/util/Set;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    return-object v0

    .line 196
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 197
    move-object v2, v1

    invoke-static {v2}, Lkotlin/jvm/internal/TypeIntrinsics;->throwCce(Ljava/lang/ClassCastException;)Ljava/lang/ClassCastException;

    move-result-object v2

    throw v2
.end method

.method public static getFunctionArity(Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 258
    move-object v0, p0

    move-object v1, v0

    instance-of v1, v1, Lkotlin/jvm/internal/FunctionBase;

    if-eqz v1, :cond_0

    .line 259
    move-object v1, v0

    check-cast v1, Lkotlin/jvm/internal/FunctionBase;

    invoke-interface {v1}, Lkotlin/jvm/internal/FunctionBase;->getArity()I

    move-result v1

    move v0, v1

    .line 331
    :goto_0
    return v0

    .line 261
    :cond_0
    move-object v1, v0

    instance-of v1, v1, Lkotlin/jvm/functions/Function0;

    if-eqz v1, :cond_1

    .line 262
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0

    .line 264
    :cond_1
    move-object v1, v0

    instance-of v1, v1, Lkotlin/jvm/functions/Function1;

    if-eqz v1, :cond_2

    .line 265
    const/4 v1, 0x1

    move v0, v1

    goto :goto_0

    .line 267
    :cond_2
    move-object v1, v0

    instance-of v1, v1, Lkotlin/jvm/functions/Function2;

    if-eqz v1, :cond_3

    .line 268
    const/4 v1, 0x2

    move v0, v1

    goto :goto_0

    .line 270
    :cond_3
    move-object v1, v0

    instance-of v1, v1, Lkotlin/jvm/functions/Function3;

    if-eqz v1, :cond_4

    .line 271
    const/4 v1, 0x3

    move v0, v1

    goto :goto_0

    .line 273
    :cond_4
    move-object v1, v0

    instance-of v1, v1, Lkotlin/jvm/functions/Function4;

    if-eqz v1, :cond_5

    .line 274
    const/4 v1, 0x4

    move v0, v1

    goto :goto_0

    .line 276
    :cond_5
    move-object v1, v0

    instance-of v1, v1, Lkotlin/jvm/functions/Function5;

    if-eqz v1, :cond_6

    .line 277
    const/4 v1, 0x5

    move v0, v1

    goto :goto_0

    .line 279
    :cond_6
    move-object v1, v0

    instance-of v1, v1, Lkotlin/jvm/functions/Function6;

    if-eqz v1, :cond_7

    .line 280
    const/4 v1, 0x6

    move v0, v1

    goto :goto_0

    .line 282
    :cond_7
    move-object v1, v0

    instance-of v1, v1, Lkotlin/jvm/functions/Function7;

    if-eqz v1, :cond_8

    .line 283
    const/4 v1, 0x7

    move v0, v1

    goto :goto_0

    .line 285
    :cond_8
    move-object v1, v0

    instance-of v1, v1, Lkotlin/jvm/functions/Function8;

    if-eqz v1, :cond_9

    .line 286
    const/16 v1, 0x8

    move v0, v1

    goto :goto_0

    .line 288
    :cond_9
    move-object v1, v0

    instance-of v1, v1, Lkotlin/jvm/functions/Function9;

    if-eqz v1, :cond_a

    .line 289
    const/16 v1, 0x9

    move v0, v1

    goto :goto_0

    .line 291
    :cond_a
    move-object v1, v0

    instance-of v1, v1, Lkotlin/jvm/functions/Function10;

    if-eqz v1, :cond_b

    .line 292
    const/16 v1, 0xa

    move v0, v1

    goto :goto_0

    .line 294
    :cond_b
    move-object v1, v0

    instance-of v1, v1, Lkotlin/jvm/functions/Function11;

    if-eqz v1, :cond_c

    .line 295
    const/16 v1, 0xb

    move v0, v1

    goto :goto_0

    .line 297
    :cond_c
    move-object v1, v0

    instance-of v1, v1, Lkotlin/jvm/functions/Function12;

    if-eqz v1, :cond_d

    .line 298
    const/16 v1, 0xc

    move v0, v1

    goto :goto_0

    .line 300
    :cond_d
    move-object v1, v0

    instance-of v1, v1, Lkotlin/jvm/functions/Function13;

    if-eqz v1, :cond_e

    .line 301
    const/16 v1, 0xd

    move v0, v1

    goto :goto_0

    .line 303
    :cond_e
    move-object v1, v0

    instance-of v1, v1, Lkotlin/jvm/functions/Function14;

    if-eqz v1, :cond_f

    .line 304
    const/16 v1, 0xe

    move v0, v1

    goto :goto_0

    .line 306
    :cond_f
    move-object v1, v0

    instance-of v1, v1, Lkotlin/jvm/functions/Function15;

    if-eqz v1, :cond_10

    .line 307
    const/16 v1, 0xf

    move v0, v1

    goto/16 :goto_0

    .line 309
    :cond_10
    move-object v1, v0

    instance-of v1, v1, Lkotlin/jvm/functions/Function16;

    if-eqz v1, :cond_11

    .line 310
    const/16 v1, 0x10

    move v0, v1

    goto/16 :goto_0

    .line 312
    :cond_11
    move-object v1, v0

    instance-of v1, v1, Lkotlin/jvm/functions/Function17;

    if-eqz v1, :cond_12

    .line 313
    const/16 v1, 0x11

    move v0, v1

    goto/16 :goto_0

    .line 315
    :cond_12
    move-object v1, v0

    instance-of v1, v1, Lkotlin/jvm/functions/Function18;

    if-eqz v1, :cond_13

    .line 316
    const/16 v1, 0x12

    move v0, v1

    goto/16 :goto_0

    .line 318
    :cond_13
    move-object v1, v0

    instance-of v1, v1, Lkotlin/jvm/functions/Function19;

    if-eqz v1, :cond_14

    .line 319
    const/16 v1, 0x13

    move v0, v1

    goto/16 :goto_0

    .line 321
    :cond_14
    move-object v1, v0

    instance-of v1, v1, Lkotlin/jvm/functions/Function20;

    if-eqz v1, :cond_15

    .line 322
    const/16 v1, 0x14

    move v0, v1

    goto/16 :goto_0

    .line 324
    :cond_15
    move-object v1, v0

    instance-of v1, v1, Lkotlin/jvm/functions/Function21;

    if-eqz v1, :cond_16

    .line 325
    const/16 v1, 0x15

    move v0, v1

    goto/16 :goto_0

    .line 327
    :cond_16
    move-object v1, v0

    instance-of v1, v1, Lkotlin/jvm/functions/Function22;

    if-eqz v1, :cond_17

    .line 328
    const/16 v1, 0x16

    move v0, v1

    goto/16 :goto_0

    .line 331
    :cond_17
    const/4 v1, -0x1

    move v0, v1

    goto/16 :goto_0
.end method

.method public static isFunctionOfArity(Ljava/lang/Object;I)Z
    .locals 4

    .prologue
    .line 336
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    instance-of v2, v2, Lkotlin/Function;

    if-eqz v2, :cond_0

    move-object v2, v0

    invoke-static {v2}, Lkotlin/jvm/internal/TypeIntrinsics;->getFunctionArity(Ljava/lang/Object;)I

    move-result v2

    move v3, v1

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    return v0

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isMutableCollection(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 118
    move-object v0, p0

    move-object v1, v0

    instance-of v1, v1, Ljava/util/Collection;

    if-eqz v1, :cond_1

    move-object v1, v0

    instance-of v1, v1, Lkotlin/jvm/internal/markers/KMappedMarker;

    if-eqz v1, :cond_0

    move-object v1, v0

    instance-of v1, v1, Lkotlin/jvm/internal/markers/KMutableCollection;

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isMutableIterable(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 90
    move-object v0, p0

    move-object v1, v0

    instance-of v1, v1, Ljava/lang/Iterable;

    if-eqz v1, :cond_1

    move-object v1, v0

    instance-of v1, v1, Lkotlin/jvm/internal/markers/KMappedMarker;

    if-eqz v1, :cond_0

    move-object v1, v0

    instance-of v1, v1, Lkotlin/jvm/internal/markers/KMutableIterable;

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isMutableIterator(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    move-object v1, v0

    instance-of v1, v1, Ljava/util/Iterator;

    if-eqz v1, :cond_1

    move-object v1, v0

    instance-of v1, v1, Lkotlin/jvm/internal/markers/KMappedMarker;

    if-eqz v1, :cond_0

    move-object v1, v0

    instance-of v1, v1, Lkotlin/jvm/internal/markers/KMutableIterator;

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isMutableList(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 146
    move-object v0, p0

    move-object v1, v0

    instance-of v1, v1, Ljava/util/List;

    if-eqz v1, :cond_1

    move-object v1, v0

    instance-of v1, v1, Lkotlin/jvm/internal/markers/KMappedMarker;

    if-eqz v1, :cond_0

    move-object v1, v0

    instance-of v1, v1, Lkotlin/jvm/internal/markers/KMutableList;

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isMutableListIterator(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 62
    move-object v0, p0

    move-object v1, v0

    instance-of v1, v1, Ljava/util/ListIterator;

    if-eqz v1, :cond_1

    move-object v1, v0

    instance-of v1, v1, Lkotlin/jvm/internal/markers/KMappedMarker;

    if-eqz v1, :cond_0

    move-object v1, v0

    instance-of v1, v1, Lkotlin/jvm/internal/markers/KMutableListIterator;

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isMutableMap(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 202
    move-object v0, p0

    move-object v1, v0

    instance-of v1, v1, Ljava/util/Map;

    if-eqz v1, :cond_1

    move-object v1, v0

    instance-of v1, v1, Lkotlin/jvm/internal/markers/KMappedMarker;

    if-eqz v1, :cond_0

    move-object v1, v0

    instance-of v1, v1, Lkotlin/jvm/internal/markers/KMutableMap;

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isMutableMapEntry(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 230
    move-object v0, p0

    move-object v1, v0

    instance-of v1, v1, Ljava/util/Map$Entry;

    if-eqz v1, :cond_1

    move-object v1, v0

    instance-of v1, v1, Lkotlin/jvm/internal/markers/KMappedMarker;

    if-eqz v1, :cond_0

    move-object v1, v0

    instance-of v1, v1, Lkotlin/jvm/internal/markers/KMutableMap$Entry;

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isMutableSet(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 174
    move-object v0, p0

    move-object v1, v0

    instance-of v1, v1, Ljava/util/Set;

    if-eqz v1, :cond_1

    move-object v1, v0

    instance-of v1, v1, Lkotlin/jvm/internal/markers/KMappedMarker;

    if-eqz v1, :cond_0

    move-object v1, v0

    instance-of v1, v1, Lkotlin/jvm/internal/markers/KMutableSet;

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static sanitizeStackTrace(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Throwable;",
            ">(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 17
    move-object v0, p0

    move-object v1, v0

    const-class v2, Lkotlin/jvm/internal/TypeIntrinsics;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->sanitizeStackTrace(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static throwCce(Ljava/lang/ClassCastException;)Ljava/lang/ClassCastException;
    .locals 2

    .prologue
    .line 30
    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Lkotlin/jvm/internal/TypeIntrinsics;->sanitizeStackTrace(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljava/lang/ClassCastException;

    throw v1
.end method

.method public static throwCce(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 21
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    if-nez v3, :cond_0

    const-string v3, "null"

    :goto_0
    move-object v2, v3

    .line 22
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " cannot be cast to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/TypeIntrinsics;->throwCce(Ljava/lang/String;)V

    .line 23
    return-void

    .line 21
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static throwCce(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 26
    move-object v0, p0

    new-instance v1, Ljava/lang/ClassCastException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/TypeIntrinsics;->throwCce(Ljava/lang/ClassCastException;)Ljava/lang/ClassCastException;

    move-result-object v1

    throw v1
.end method
