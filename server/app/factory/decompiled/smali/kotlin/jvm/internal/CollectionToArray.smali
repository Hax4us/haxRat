.class public final Lkotlin/jvm/internal/CollectionToArray;
.super Ljava/lang/Object;
.source "CollectionToArray.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u00002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u001e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a#\u0010\u0006\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u00012\n\u0010\u0007\u001a\u0006\u0012\u0002\u0008\u00030\u0008H\u0007\u00a2\u0006\u0004\u0008\t\u0010\n\u001a5\u0010\u0006\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u00012\n\u0010\u0007\u001a\u0006\u0012\u0002\u0008\u00030\u00082\u0010\u0010\u000b\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0018\u00010\u0001H\u0007\u00a2\u0006\u0004\u0008\t\u0010\u000c\u001a~\u0010\r\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u00012\n\u0010\u0007\u001a\u0006\u0012\u0002\u0008\u00030\u00082\u0014\u0010\u000e\u001a\u0010\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u00010\u000f2\u001a\u0010\u0010\u001a\u0016\u0012\u0004\u0012\u00020\u0005\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u00010\u00112(\u0010\u0012\u001a$\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001\u0012\u0004\u0012\u00020\u0005\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u00010\u0013H\u0082\u0008\u00a2\u0006\u0002\u0010\u0014\"\u0018\u0010\u0000\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0003\"\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "EMPTY",
        "",
        "",
        "[Ljava/lang/Object;",
        "MAX_SIZE",
        "",
        "collectionToArray",
        "collection",
        "",
        "toArray",
        "(Ljava/util/Collection;)[Ljava/lang/Object;",
        "a",
        "(Ljava/util/Collection;[Ljava/lang/Object;)[Ljava/lang/Object;",
        "toArrayImpl",
        "empty",
        "Lkotlin/Function0;",
        "alloc",
        "Lkotlin/Function1;",
        "trim",
        "Lkotlin/Function2;",
        "(Ljava/util/Collection;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)[Ljava/lang/Object;",
        "kotlin-stdlib"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0xa
    }
.end annotation

.annotation build Lkotlin/jvm/JvmName;
    name = "CollectionToArray"
.end annotation


# static fields
.field private static final EMPTY:[Ljava/lang/Object;

.field private static final MAX_SIZE:I = 0x7ffffffd


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 14
    nop

    .line 129
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    sput-object v1, Lkotlin/jvm/internal/CollectionToArray;->EMPTY:[Ljava/lang/Object;

    return-void
.end method

.method public static final toArray(Ljava/util/Collection;)[Ljava/lang/Object;
    .locals 14
    .param p0    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
        name = "toArray"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v10, v0

    const-string v11, "collection"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    nop

    .line 83
    move-object v10, v0

    invoke-interface {v10}, Ljava/util/Collection;->size()I

    move-result v10

    move v1, v10

    .line 84
    move v10, v1

    if-nez v10, :cond_0

    .line 21
    sget-object v10, Lkotlin/jvm/internal/CollectionToArray;->EMPTY:[Ljava/lang/Object;

    .line 24
    :goto_0
    move-object v0, v10

    return-object v0

    .line 85
    :cond_0
    move-object v10, v0

    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move-object v2, v10

    .line 86
    move-object v10, v2

    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_1

    .line 21
    sget-object v10, Lkotlin/jvm/internal/CollectionToArray;->EMPTY:[Ljava/lang/Object;

    goto :goto_0

    .line 87
    :cond_1
    move v10, v1

    move v3, v10

    .line 22
    move v10, v3

    new-array v10, v10, [Ljava/lang/Object;

    move-object v3, v10

    .line 88
    const/4 v10, 0x0

    move v4, v10

    .line 90
    :goto_1
    move-object v10, v3

    move v11, v4

    add-int/lit8 v4, v4, 0x1

    move-object v12, v2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    aput-object v12, v10, v11

    .line 92
    move v10, v4

    move-object v11, v3

    array-length v11, v11

    if-lt v10, v11, :cond_6

    .line 93
    move-object v10, v2

    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_2

    move-object v10, v3

    goto :goto_0

    .line 97
    :cond_2
    move v10, v4

    const/4 v11, 0x3

    mul-int/lit8 v10, v10, 0x3

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    const/4 v11, 0x1

    ushr-int/lit8 v10, v10, 0x1

    move v5, v10

    .line 98
    move v10, v5

    move v11, v4

    if-gt v10, v11, :cond_4

    .line 99
    move v10, v4

    const v11, 0x7ffffffd

    if-lt v10, v11, :cond_3

    new-instance v10, Ljava/lang/OutOfMemoryError;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    invoke-direct {v11}, Ljava/lang/OutOfMemoryError;-><init>()V

    check-cast v10, Ljava/lang/Throwable;

    throw v10

    .line 100
    :cond_3
    const v10, 0x7ffffffd

    move v5, v10

    .line 102
    :cond_4
    move-object v10, v3

    move v11, v5

    invoke-static {v10, v11}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v10

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    const-string v12, "Arrays.copyOf(result, newSize)"

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v10

    .line 105
    :cond_5
    goto :goto_1

    .line 104
    :cond_6
    move-object v10, v2

    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_5

    move-object v10, v3

    move v11, v4

    move v6, v11

    move-object v7, v10

    .line 23
    move-object v10, v7

    move v11, v6

    invoke-static {v10, v11}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v10

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    const-string v12, "Arrays.copyOf(result, size)"

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static final toArray(Ljava/util/Collection;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 16
    .param p0    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;[",
            "Ljava/lang/Object;",
            ")[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
        name = "toArray"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v11, v0

    const-string v12, "collection"

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    move-object v11, v1

    if-nez v11, :cond_0

    new-instance v11, Ljava/lang/NullPointerException;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    invoke-direct {v12}, Ljava/lang/NullPointerException;-><init>()V

    check-cast v11, Ljava/lang/Throwable;

    throw v11

    .line 31
    :cond_0
    nop

    .line 106
    move-object v11, v0

    invoke-interface {v11}, Ljava/util/Collection;->size()I

    move-result v11

    move v2, v11

    .line 107
    move v11, v2

    if-nez v11, :cond_2

    .line 34
    move-object v11, v1

    array-length v11, v11

    if-lez v11, :cond_1

    move-object v11, v1

    const/4 v12, 0x0

    const/4 v13, 0x0

    aput-object v13, v11, v12

    .line 35
    :cond_1
    move-object v11, v1

    .line 128
    :goto_0
    move-object v0, v11

    return-object v0

    .line 108
    :cond_2
    move-object v11, v0

    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move-object v4, v11

    .line 109
    move-object v11, v4

    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_4

    .line 34
    move-object v11, v1

    array-length v11, v11

    if-lez v11, :cond_3

    move-object v11, v1

    const/4 v12, 0x0

    const/4 v13, 0x0

    aput-object v13, v11, v12

    .line 35
    :cond_3
    move-object v11, v1

    goto :goto_0

    .line 110
    :cond_4
    move v11, v2

    move v3, v11

    .line 38
    move v11, v3

    move-object v12, v1

    array-length v12, v12

    if-gt v11, v12, :cond_5

    move-object v11, v1

    :goto_1
    move-object v6, v11

    .line 111
    const/4 v11, 0x0

    move v3, v11

    .line 113
    :goto_2
    move-object v11, v6

    move v12, v3

    add-int/lit8 v3, v3, 0x1

    move-object v13, v4

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    aput-object v13, v11, v12

    .line 115
    move v11, v3

    move-object v12, v6

    array-length v12, v12

    if-lt v11, v12, :cond_b

    .line 116
    move-object v11, v4

    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_7

    move-object v11, v6

    goto :goto_0

    .line 38
    :cond_5
    move-object v11, v1

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v11

    move v12, v3

    invoke-static {v11, v12}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v11

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    if-nez v12, :cond_6

    new-instance v12, Lkotlin/TypeCastException;

    move-object v15, v12

    move-object v12, v15

    move-object v13, v15

    const-string v14, "null cannot be cast to non-null type kotlin.Array<kotlin.Any?>"

    invoke-direct {v13, v14}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v12

    :cond_6
    check-cast v11, [Ljava/lang/Object;

    goto :goto_1

    .line 120
    :cond_7
    move v11, v3

    const/4 v12, 0x3

    mul-int/lit8 v11, v11, 0x3

    const/4 v12, 0x1

    add-int/lit8 v11, v11, 0x1

    const/4 v12, 0x1

    ushr-int/lit8 v11, v11, 0x1

    move v5, v11

    .line 121
    move v11, v5

    move v12, v3

    if-gt v11, v12, :cond_9

    .line 122
    move v11, v3

    const v12, 0x7ffffffd

    if-lt v11, v12, :cond_8

    new-instance v11, Ljava/lang/OutOfMemoryError;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    invoke-direct {v12}, Ljava/lang/OutOfMemoryError;-><init>()V

    check-cast v11, Ljava/lang/Throwable;

    throw v11

    .line 123
    :cond_8
    const v11, 0x7ffffffd

    move v5, v11

    .line 125
    :cond_9
    move-object v11, v6

    move v12, v5

    invoke-static {v11, v12}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v11

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const-string v13, "Arrays.copyOf(result, newSize)"

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v6, v11

    .line 128
    :cond_a
    goto :goto_2

    .line 127
    :cond_b
    move-object v11, v4

    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_a

    move-object v11, v6

    move v12, v3

    move v7, v12

    move-object v8, v11

    .line 42
    move-object v11, v8

    move-object v12, v1

    if-ne v11, v12, :cond_c

    .line 43
    move-object v11, v1

    move v12, v7

    const/4 v13, 0x0

    aput-object v13, v11, v12

    .line 44
    move-object v11, v1

    .line 42
    :goto_3
    goto/16 :goto_0

    .line 46
    :cond_c
    move-object v11, v8

    move v12, v7

    invoke-static {v11, v12}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v11

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const-string v13, "Arrays.copyOf(result, size)"

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3
.end method

.method private static final toArrayImpl(Ljava/util/Collection;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)[Ljava/lang/Object;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;",
            "Lkotlin/jvm/functions/Function0",
            "<[",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/jvm/functions/Function1",
            "<-",
            "Ljava/lang/Integer;",
            "[",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/jvm/functions/Function2",
            "<-[",
            "Ljava/lang/Object;",
            "-",
            "Ljava/lang/Integer;",
            "[",
            "Ljava/lang/Object;",
            ">;)[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 57
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object v10, v0

    invoke-interface {v10}, Ljava/util/Collection;->size()I

    move-result v10

    move v5, v10

    .line 58
    move v10, v5

    if-nez v10, :cond_0

    move-object v10, v1

    invoke-interface {v10}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/Object;

    move-object v0, v10

    .line 78
    :goto_0
    return-object v0

    .line 59
    :cond_0
    move-object v10, v0

    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move-object v6, v10

    .line 60
    move-object v10, v6

    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_1

    move-object v10, v1

    invoke-interface {v10}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/Object;

    move-object v0, v10

    goto :goto_0

    .line 61
    :cond_1
    move-object v10, v2

    move v11, v5

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/Object;

    move-object v7, v10

    .line 62
    const/4 v10, 0x0

    move v8, v10

    .line 64
    :goto_1
    move-object v10, v7

    move v11, v8

    add-int/lit8 v8, v8, 0x1

    move-object v12, v6

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    aput-object v12, v10, v11

    .line 66
    move v10, v8

    move-object v11, v7

    array-length v11, v11

    if-lt v10, v11, :cond_6

    .line 67
    move-object v10, v6

    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_2

    move-object v10, v7

    move-object v0, v10

    goto :goto_0

    .line 71
    :cond_2
    move v10, v8

    const/4 v11, 0x3

    mul-int/lit8 v10, v10, 0x3

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    const/4 v11, 0x1

    ushr-int/lit8 v10, v10, 0x1

    move v9, v10

    .line 72
    move v10, v9

    move v11, v8

    if-gt v10, v11, :cond_4

    .line 73
    move v10, v8

    const v11, 0x7ffffffd

    if-lt v10, v11, :cond_3

    new-instance v10, Ljava/lang/OutOfMemoryError;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    invoke-direct {v11}, Ljava/lang/OutOfMemoryError;-><init>()V

    check-cast v10, Ljava/lang/Throwable;

    throw v10

    .line 74
    :cond_3
    const v10, 0x7ffffffd

    move v9, v10

    .line 76
    :cond_4
    move-object v10, v7

    move v11, v9

    invoke-static {v10, v11}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v10

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    const-string v12, "Arrays.copyOf(result, newSize)"

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v7, v10

    .line 79
    :cond_5
    goto :goto_1

    .line 78
    :cond_6
    move-object v10, v6

    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_5

    move-object v10, v3

    move-object v11, v7

    move v12, v8

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v10, v11, v12}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/Object;

    move-object v0, v10

    goto/16 :goto_0
.end method
