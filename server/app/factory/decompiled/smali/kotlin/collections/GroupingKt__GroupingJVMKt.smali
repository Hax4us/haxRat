.class Lkotlin/collections/GroupingKt__GroupingJVMKt;
.super Ljava/lang/Object;
.source "GroupingJVM.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000&\n\u0000\n\u0002\u0010$\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010&\n\u0000\u001a0\u0010\u0000\u001a\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u00020\u00030\u0001\"\u0004\u0008\u0000\u0010\u0004\"\u0004\u0008\u0001\u0010\u0002*\u000e\u0012\u0004\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H\u00020\u0005H\u0007\u001aW\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00080\u0007\"\u0004\u0008\u0000\u0010\u0002\"\u0004\u0008\u0001\u0010\t\"\u0004\u0008\u0002\u0010\u0008*\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\t0\u00072\u001e\u0010\n\u001a\u001a\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\t0\u000c\u0012\u0004\u0012\u0002H\u00080\u000bH\u0081\u0008\u00a8\u0006\r"
    }
    d2 = {
        "eachCount",
        "",
        "K",
        "",
        "T",
        "Lkotlin/collections/Grouping;",
        "mapValuesInPlace",
        "",
        "R",
        "V",
        "f",
        "Lkotlin/Function1;",
        "",
        "kotlin-stdlib"
    }
    k = 0x5
    mv = {
        0x1,
        0x1,
        0xa
    }
    xi = 0x1
    xs = "kotlin/collections/GroupingKt"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final eachCount(Lkotlin/collections/Grouping;)Ljava/util/Map;
    .locals 33
    .param p0    # Lkotlin/collections/Grouping;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/collections/Grouping",
            "<TT;+TK;>;)",
            "Ljava/util/Map",
            "<TK;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lkotlin/SinceKotlin;
        version = "1.1"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    move-object/from16 v2, p0

    move-object/from16 v27, v2

    const-string v28, "$receiver"

    invoke-static/range {v27 .. v28}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    move-object/from16 v27, v2

    move-object/from16 v3, v27

    new-instance v27, Ljava/util/LinkedHashMap;

    move-object/from16 v32, v27

    move-object/from16 v27, v32

    move-object/from16 v28, v32

    invoke-direct/range {v28 .. v28}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v27, Ljava/util/Map;

    move-object/from16 v4, v27

    nop

    .line 53
    move-object/from16 v27, v3

    move-object/from16 v5, v27

    .line 55
    move-object/from16 v27, v5

    invoke-interface/range {v27 .. v27}, Lkotlin/collections/Grouping;->sourceIterator()Ljava/util/Iterator;

    move-result-object v27

    move-object/from16 v6, v27

    move-object/from16 v27, v6

    move-object/from16 v7, v27

    :goto_0
    move-object/from16 v27, v7

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_2

    move-object/from16 v27, v7

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    move-object/from16 v8, v27

    .line 56
    move-object/from16 v27, v5

    move-object/from16 v28, v8

    invoke-interface/range {v27 .. v28}, Lkotlin/collections/Grouping;->keyOf(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    move-object/from16 v6, v27

    .line 57
    move-object/from16 v27, v4

    move-object/from16 v28, v6

    invoke-interface/range {v27 .. v28}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    move-object/from16 v9, v27

    .line 58
    move-object/from16 v27, v4

    move-object/from16 v10, v27

    move-object/from16 v27, v6

    move-object/from16 v28, v9

    move-object/from16 v29, v8

    move-object/from16 v30, v9

    if-nez v30, :cond_0

    move-object/from16 v30, v4

    move-object/from16 v31, v6

    invoke-interface/range {v30 .. v31}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v30

    if-nez v30, :cond_0

    const/16 v30, 0x1

    :goto_1
    move/from16 v11, v30

    move-object/from16 v12, v29

    move-object/from16 v13, v28

    move-object/from16 v14, v27

    .line 54
    move-object/from16 v27, v14

    move/from16 v28, v11

    if-eqz v28, :cond_1

    move-object/from16 v28, v14

    move-object/from16 v29, v12

    move-object/from16 v15, v29

    move-object/from16 v16, v28

    move-object/from16 v25, v27

    .line 23
    new-instance v27, Lkotlin/jvm/internal/Ref$IntRef;

    move-object/from16 v32, v27

    move-object/from16 v27, v32

    move-object/from16 v28, v32

    invoke-direct/range {v28 .. v28}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    move-object/from16 v26, v27

    move-object/from16 v27, v25

    move-object/from16 v28, v26

    :goto_2
    move-object/from16 v29, v12

    move-object/from16 v17, v29

    check-cast v28, Lkotlin/jvm/internal/Ref$IntRef;

    move-object/from16 v15, v28

    move-object/from16 v16, v27

    .line 24
    move-object/from16 v27, v15

    move-object/from16 v18, v27

    move-object/from16 v27, v18

    move-object/from16 v19, v27

    move-object/from16 v27, v19

    move-object/from16 v32, v27

    move-object/from16 v27, v32

    move-object/from16 v28, v32

    move-object/from16 v0, v28

    iget v0, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    move/from16 v28, v0

    const/16 v29, 0x1

    add-int/lit8 v28, v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput v0, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    move-object/from16 v27, v18

    nop

    move-object/from16 v14, v27

    move-object/from16 v27, v10

    move-object/from16 v28, v6

    move-object/from16 v29, v14

    invoke-interface/range {v27 .. v29}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    .line 55
    goto/16 :goto_0

    .line 58
    :cond_0
    const/16 v30, 0x0

    goto :goto_1

    .line 23
    :cond_1
    move-object/from16 v28, v13

    goto :goto_2

    .line 60
    :cond_2
    move-object/from16 v27, v4

    .line 54
    nop

    move-object/from16 v3, v27

    .line 25
    move-object/from16 v27, v3

    invoke-interface/range {v27 .. v27}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v27

    check-cast v27, Ljava/lang/Iterable;

    move-object/from16 v4, v27

    move-object/from16 v27, v4

    invoke-interface/range {v27 .. v27}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v27

    move-object/from16 v5, v27

    :goto_3
    move-object/from16 v27, v5

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_4

    move-object/from16 v27, v5

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    move-object/from16 v6, v27

    move-object/from16 v27, v6

    check-cast v27, Ljava/util/Map$Entry;

    move-object/from16 v7, v27

    move-object/from16 v27, v7

    move-object/from16 v32, v27

    move-object/from16 v27, v32

    move-object/from16 v28, v32

    if-nez v28, :cond_3

    new-instance v28, Lkotlin/TypeCastException;

    move-object/from16 v32, v28

    move-object/from16 v28, v32

    move-object/from16 v29, v32

    const-string v30, "null cannot be cast to non-null type kotlin.collections.MutableMap.MutableEntry<K, R>"

    invoke-direct/range {v29 .. v30}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v28

    :cond_3
    invoke-static/range {v27 .. v27}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableMapEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v27

    move-object/from16 v28, v7

    move-object/from16 v8, v28

    move-object/from16 v25, v27

    move-object/from16 v27, v8

    invoke-interface/range {v27 .. v27}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lkotlin/jvm/internal/Ref$IntRef;

    move-object/from16 v0, v27

    iget v0, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    move/from16 v27, v0

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    move-object/from16 v26, v27

    move-object/from16 v27, v25

    move-object/from16 v28, v26

    invoke-interface/range {v27 .. v28}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    goto :goto_3

    :cond_4
    move-object/from16 v27, v3

    invoke-static/range {v27 .. v27}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableMap(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v27

    move-object/from16 v2, v27

    return-object v2
.end method

.method private static final mapValuesInPlace(Ljava/util/Map;Lkotlin/jvm/functions/Function1;)Ljava/util/Map;
    .locals 14
    .param p0    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;TV;>;",
            "Lkotlin/jvm/functions/Function1",
            "<-",
            "Ljava/util/Map$Entry",
            "<+TK;+TV;>;+TR;>;)",
            "Ljava/util/Map",
            "<TK;TR;>;"
        }
    .end annotation

    .annotation build Lkotlin/PublishedApi;
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .prologue
    .line 48
    move-object v0, p0

    move-object v1, p1

    move-object v9, v0

    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    check-cast v9, Ljava/lang/Iterable;

    move-object v3, v9

    .line 61
    move-object v9, v3

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-object v4, v9

    :goto_0
    move-object v9, v4

    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    move-object v9, v4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    move-object v5, v9

    move-object v9, v5

    check-cast v9, Ljava/util/Map$Entry;

    move-object v6, v9

    .line 49
    move-object v9, v6

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    if-nez v10, :cond_0

    new-instance v10, Lkotlin/TypeCastException;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    const-string v12, "null cannot be cast to non-null type kotlin.collections.MutableMap.MutableEntry<K, R>"

    invoke-direct {v11, v12}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_0
    invoke-static {v9}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableMapEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v9

    move-object v10, v1

    move-object v11, v6

    invoke-interface {v10, v11}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 50
    nop

    goto :goto_0

    .line 62
    :cond_1
    nop

    .line 51
    move-object v9, v0

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    if-nez v10, :cond_2

    new-instance v10, Lkotlin/TypeCastException;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    const-string v12, "null cannot be cast to non-null type kotlin.collections.MutableMap<K, R>"

    invoke-direct {v11, v12}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_2
    invoke-static {v9}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableMap(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v9

    move-object v0, v9

    return-object v0
.end method
