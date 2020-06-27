.class public abstract Lkotlin/jvm/internal/PrimitiveSpreadBuilder;
.super Ljava/lang/Object;
.source "PrimitiveSpreadBuilders.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010\u0011\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\t\u0008&\u0018\u0000*\u0008\u0008\u0000\u0010\u0001*\u00020\u00022\u00020\u0002B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0013\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00028\u0000\u00a2\u0006\u0002\u0010\u0012J\u0008\u0010\u0003\u001a\u00020\u0004H\u0004J\u001d\u0010\u0013\u001a\u00028\u00002\u0006\u0010\u0014\u001a\u00028\u00002\u0006\u0010\u0015\u001a\u00028\u0000H\u0004\u00a2\u0006\u0002\u0010\u0016J\u0011\u0010\u0017\u001a\u00020\u0004*\u00028\u0000H$\u00a2\u0006\u0002\u0010\u0018R\u001a\u0010\u0006\u001a\u00020\u0004X\u0084\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\u0005R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R \u0010\n\u001a\n\u0012\u0006\u0012\u0004\u0018\u00018\u00000\u000b8\u0002X\u0083\u0004\u00a2\u0006\n\n\u0002\u0010\u000e\u0012\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0019"
    }
    d2 = {
        "Lkotlin/jvm/internal/PrimitiveSpreadBuilder;",
        "T",
        "",
        "size",
        "",
        "(I)V",
        "position",
        "getPosition",
        "()I",
        "setPosition",
        "spreads",
        "",
        "spreads$annotations",
        "()V",
        "[Ljava/lang/Object;",
        "addSpread",
        "",
        "spreadArgument",
        "(Ljava/lang/Object;)V",
        "toArray",
        "values",
        "result",
        "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;",
        "getSize",
        "(Ljava/lang/Object;)I",
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
.field private position:I

.field private final size:I

.field private final spreads:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 4

    .prologue
    .line 8
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lkotlin/jvm/internal/PrimitiveSpreadBuilder;->size:I

    .line 14
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Lkotlin/jvm/internal/PrimitiveSpreadBuilder;->size:I

    new-array v3, v3, [Ljava/lang/Object;

    iput-object v3, v2, Lkotlin/jvm/internal/PrimitiveSpreadBuilder;->spreads:[Ljava/lang/Object;

    return-void
.end method

.method private static synthetic spreads$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final addSpread(Ljava/lang/Object;)V
    .locals 8
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    const-string v4, "spreadArgument"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    move-object v3, v0

    iget-object v3, v3, Lkotlin/jvm/internal/PrimitiveSpreadBuilder;->spreads:[Ljava/lang/Object;

    move-object v4, v0

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    iget v5, v5, Lkotlin/jvm/internal/PrimitiveSpreadBuilder;->position:I

    move v7, v5

    move v5, v7

    move v6, v7

    move v2, v6

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lkotlin/jvm/internal/PrimitiveSpreadBuilder;->position:I

    move v4, v2

    move-object v5, v1

    aput-object v5, v3, v4

    .line 18
    return-void
.end method

.method protected final getPosition()I
    .locals 2

    .prologue
    .line 11
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lkotlin/jvm/internal/PrimitiveSpreadBuilder;->position:I

    move v0, v1

    return v0
.end method

.method protected abstract getSize(Ljava/lang/Object;)I
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation
.end method

.method protected final setPosition(I)V
    .locals 4

    .prologue
    .line 11
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lkotlin/jvm/internal/PrimitiveSpreadBuilder;->position:I

    return-void
.end method

.method protected final size()I
    .locals 9

    .prologue
    .line 21
    move-object v0, p0

    const/4 v4, 0x0

    move v1, v4

    .line 22
    const/4 v4, 0x0

    move v2, v4

    move-object v4, v0

    iget v4, v4, Lkotlin/jvm/internal/PrimitiveSpreadBuilder;->size:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    move v3, v4

    move v4, v2

    move v5, v3

    if-gt v4, v5, :cond_1

    .line 23
    :goto_0
    move v4, v1

    move-object v5, v0

    iget-object v5, v5, Lkotlin/jvm/internal/PrimitiveSpreadBuilder;->spreads:[Ljava/lang/Object;

    move v6, v2

    aget-object v5, v5, v6

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    if-eqz v6, :cond_0

    move-object v6, v0

    move-object v7, v5

    move-object v8, v6

    move-object v5, v8

    move-object v6, v7

    invoke-virtual {v5, v6}, Lkotlin/jvm/internal/PrimitiveSpreadBuilder;->getSize(Ljava/lang/Object;)I

    move-result v5

    :goto_1
    add-int/2addr v4, v5

    move v1, v4

    .line 22
    move v4, v2

    move v5, v3

    if-eq v4, v5, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 23
    :cond_0
    const/4 v5, 0x1

    goto :goto_1

    .line 25
    :cond_1
    move v4, v1

    move v0, v4

    return v0
.end method

.method protected final toArray(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 15
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v9, v1

    const-string v10, "values"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v9, v2

    const-string v10, "result"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    const/4 v9, 0x0

    move v3, v9

    .line 30
    const/4 v9, 0x0

    move v4, v9

    .line 31
    const/4 v9, 0x0

    move v5, v9

    move-object v9, v0

    iget v9, v9, Lkotlin/jvm/internal/PrimitiveSpreadBuilder;->size:I

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    move v6, v9

    move v9, v5

    move v10, v6

    if-gt v9, v10, :cond_2

    .line 32
    :goto_0
    move-object v9, v0

    iget-object v9, v9, Lkotlin/jvm/internal/PrimitiveSpreadBuilder;->spreads:[Ljava/lang/Object;

    move v10, v5

    aget-object v9, v9, v10

    move-object v7, v9

    .line 33
    move-object v9, v7

    if-eqz v9, :cond_1

    .line 34
    move v9, v4

    move v10, v5

    if-ge v9, v10, :cond_0

    .line 35
    move-object v9, v1

    move v10, v4

    move-object v11, v2

    move v12, v3

    move v13, v5

    move v14, v4

    sub-int/2addr v13, v14

    invoke-static {v9, v10, v11, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 36
    move v9, v3

    move v10, v5

    move v11, v4

    sub-int/2addr v10, v11

    add-int/2addr v9, v10

    move v3, v9

    .line 38
    :cond_0
    move-object v9, v0

    move-object v10, v7

    invoke-virtual {v9, v10}, Lkotlin/jvm/internal/PrimitiveSpreadBuilder;->getSize(Ljava/lang/Object;)I

    move-result v9

    move v8, v9

    .line 39
    move-object v9, v7

    const/4 v10, 0x0

    move-object v11, v2

    move v12, v3

    move v13, v8

    invoke-static {v9, v10, v11, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 40
    move v9, v3

    move v10, v8

    add-int/2addr v9, v10

    move v3, v9

    .line 41
    move v9, v5

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    move v4, v9

    .line 31
    :cond_1
    move v9, v5

    move v10, v6

    if-eq v9, v10, :cond_2

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 44
    :cond_2
    move v9, v4

    move-object v10, v0

    iget v10, v10, Lkotlin/jvm/internal/PrimitiveSpreadBuilder;->size:I

    if-ge v9, v10, :cond_3

    .line 45
    move-object v9, v1

    move v10, v4

    move-object v11, v2

    move v12, v3

    move-object v13, v0

    iget v13, v13, Lkotlin/jvm/internal/PrimitiveSpreadBuilder;->size:I

    move v14, v4

    sub-int/2addr v13, v14

    invoke-static {v9, v10, v11, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 48
    :cond_3
    move-object v9, v2

    move-object v0, v9

    return-object v0
.end method
