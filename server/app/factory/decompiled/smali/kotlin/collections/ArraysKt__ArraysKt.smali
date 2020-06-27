.class Lkotlin/collections/ArraysKt__ArraysKt;
.super Lkotlin/collections/ArraysKt__ArraysJVMKt;
.source "Arrays.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u0018\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\u0011\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001a+\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002*\u0012\u0012\u000e\u0008\u0001\u0012\n\u0012\u0006\u0008\u0001\u0012\u0002H\u00020\u00030\u0003\u00a2\u0006\u0002\u0010\u0004\u001aG\u0010\u0005\u001a\u001a\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00070\u00010\u0006\"\u0004\u0008\u0000\u0010\u0002\"\u0004\u0008\u0001\u0010\u0007*\u0016\u0012\u0012\u0008\u0001\u0012\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00070\u00060\u0003\u00a2\u0006\u0002\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "flatten",
        "",
        "T",
        "",
        "([[Ljava/lang/Object;)Ljava/util/List;",
        "unzip",
        "Lkotlin/Pair;",
        "R",
        "([Lkotlin/Pair;)Lkotlin/Pair;",
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

    invoke-direct {v1}, Lkotlin/collections/ArraysKt__ArraysJVMKt;-><init>()V

    return-void
.end method

.method public static final flatten([[Ljava/lang/Object;)Ljava/util/List;
    .locals 21
    .param p0    # [[Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([[TT;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    move-object/from16 v2, p0

    move-object/from16 v17, v2

    const-string v18, "$receiver"

    invoke-static/range {v17 .. v18}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    move-object/from16 v17, v2

    check-cast v17, [Ljava/lang/Object;

    move-object/from16 v4, v17

    .line 41
    const/16 v17, 0x0

    move/from16 v5, v17

    .line 42
    move-object/from16 v17, v4

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v6, v17

    const/16 v17, 0x0

    move/from16 v7, v17

    :goto_0
    move/from16 v17, v7

    move/from16 v18, v6

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_0

    move-object/from16 v17, v4

    move/from16 v18, v7

    aget-object v17, v17, v18

    move-object/from16 v8, v17

    .line 43
    move/from16 v17, v5

    move-object/from16 v18, v8

    check-cast v18, [Ljava/lang/Object;

    move-object/from16 v9, v18

    move/from16 v14, v17

    .line 18
    move-object/from16 v17, v9

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v15, v17

    move/from16 v17, v14

    move/from16 v18, v15

    add-int v17, v17, v18

    move/from16 v5, v17

    .line 42
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 45
    :cond_0
    move/from16 v17, v5

    move/from16 v14, v17

    move/from16 v17, v14

    .line 18
    move/from16 v16, v17

    new-instance v17, Ljava/util/ArrayList;

    move-object/from16 v20, v17

    move-object/from16 v17, v20

    move-object/from16 v18, v20

    move/from16 v19, v16

    invoke-direct/range {v18 .. v19}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v3, v17

    .line 19
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v6, v17

    const/16 v17, 0x0

    move/from16 v5, v17

    :goto_1
    move/from16 v17, v5

    move/from16 v18, v6

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_1

    move-object/from16 v17, v2

    move/from16 v18, v5

    aget-object v17, v17, v18

    move-object/from16 v4, v17

    .line 20
    move-object/from16 v17, v3

    check-cast v17, Ljava/util/Collection;

    move-object/from16 v18, v4

    invoke-static/range {v17 .. v18}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    move-result v17

    .line 19
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 22
    :cond_1
    move-object/from16 v17, v3

    check-cast v17, Ljava/util/List;

    move-object/from16 v2, v17

    return-object v2
.end method

.method public static final unzip([Lkotlin/Pair;)Lkotlin/Pair;
    .locals 10
    .param p0    # [Lkotlin/Pair;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">([",
            "Lkotlin/Pair",
            "<+TT;+TR;>;)",
            "Lkotlin/Pair",
            "<",
            "Ljava/util/List",
            "<TT;>;",
            "Ljava/util/List",
            "<TR;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v6, v0

    const-string v7, "$receiver"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    new-instance v6, Ljava/util/ArrayList;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v0

    array-length v8, v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    move-object v1, v6

    .line 33
    new-instance v6, Ljava/util/ArrayList;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v0

    array-length v8, v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    move-object v2, v6

    .line 34
    move-object v6, v0

    array-length v6, v6

    move v5, v6

    const/4 v6, 0x0

    move v4, v6

    :goto_0
    move v6, v4

    move v7, v5

    if-ge v6, v7, :cond_0

    move-object v6, v0

    move v7, v4

    aget-object v6, v6, v7

    move-object v3, v6

    .line 35
    move-object v6, v1

    move-object v7, v3

    invoke-virtual {v7}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v6

    .line 36
    move-object v6, v2

    move-object v7, v3

    invoke-virtual {v7}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v6

    .line 34
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 38
    :cond_0
    move-object v6, v1

    move-object v7, v2

    invoke-static {v6, v7}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    move-object v0, v6

    return-object v0
.end method
