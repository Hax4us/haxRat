.class public final Lkotlin/io/FileTreeWalk;
.super Ljava/lang/Object;
.source "FileTreeWalk.kt"

# interfaces
.implements Lkotlin/sequences/Sequence;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/io/FileTreeWalk$WalkState;,
        Lkotlin/io/FileTreeWalk$DirectoryState;,
        Lkotlin/io/FileTreeWalk$FileTreeWalkIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/sequences/Sequence",
        "<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010(\n\u0002\u0008\u0006\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0003\u001a\u001b\u001cB\u0019\u0008\u0010\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006B\u0089\u0001\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0014\u0010\u0007\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\t\u0018\u00010\u0008\u0012\u0014\u0010\n\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u0008\u00128\u0010\u000c\u001a4\u0012\u0013\u0012\u00110\u0002\u00a2\u0006\u000c\u0008\u000e\u0012\u0008\u0008\u000f\u0012\u0004\u0008\u0008(\u0010\u0012\u0013\u0012\u00110\u0011\u00a2\u0006\u000c\u0008\u000e\u0012\u0008\u0008\u000f\u0012\u0004\u0008\u0008(\u0012\u0012\u0004\u0012\u00020\u000b\u0018\u00010\r\u0012\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u0014\u00a2\u0006\u0002\u0010\u0015J\u000f\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0017H\u0096\u0002J\u000e\u0010\u0013\u001a\u00020\u00002\u0006\u0010\u0018\u001a\u00020\u0014J\u001a\u0010\u0007\u001a\u00020\u00002\u0012\u0010\u0019\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\t0\u0008J \u0010\u000c\u001a\u00020\u00002\u0018\u0010\u0019\u001a\u0014\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u000b0\rJ\u001a\u0010\n\u001a\u00020\u00002\u0012\u0010\u0019\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u000b0\u0008R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0007\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\t\u0018\u00010\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R@\u0010\u000c\u001a4\u0012\u0013\u0012\u00110\u0002\u00a2\u0006\u000c\u0008\u000e\u0012\u0008\u0008\u000f\u0012\u0004\u0008\u0008(\u0010\u0012\u0013\u0012\u00110\u0011\u00a2\u0006\u000c\u0008\u000e\u0012\u0008\u0008\u000f\u0012\u0004\u0008\u0008(\u0012\u0012\u0004\u0012\u00020\u000b\u0018\u00010\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\n\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0003\u001a\u00020\u0002X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001d"
    }
    d2 = {
        "Lkotlin/io/FileTreeWalk;",
        "Lkotlin/sequences/Sequence;",
        "Ljava/io/File;",
        "start",
        "direction",
        "Lkotlin/io/FileWalkDirection;",
        "(Ljava/io/File;Lkotlin/io/FileWalkDirection;)V",
        "onEnter",
        "Lkotlin/Function1;",
        "",
        "onLeave",
        "",
        "onFail",
        "Lkotlin/Function2;",
        "Lkotlin/ParameterName;",
        "name",
        "f",
        "Ljava/io/IOException;",
        "e",
        "maxDepth",
        "",
        "(Ljava/io/File;Lkotlin/io/FileWalkDirection;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;I)V",
        "iterator",
        "",
        "depth",
        "function",
        "DirectoryState",
        "FileTreeWalkIterator",
        "WalkState",
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
.field private final direction:Lkotlin/io/FileWalkDirection;

.field private final maxDepth:I

.field private final onEnter:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1",
            "<",
            "Ljava/io/File;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final onFail:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2",
            "<",
            "Ljava/io/File;",
            "Ljava/io/IOException;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final onLeave:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1",
            "<",
            "Ljava/io/File;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final start:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;Lkotlin/io/FileWalkDirection;)V
    .locals 12
    .param p1    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/io/FileWalkDirection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v1

    const-string v4, "start"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v2

    const-string v4, "direction"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x20

    const/4 v11, 0x0

    invoke-direct/range {v3 .. v11}, Lkotlin/io/FileTreeWalk;-><init>(Ljava/io/File;Lkotlin/io/FileWalkDirection;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/io/File;Lkotlin/io/FileWalkDirection;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 8

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, v3

    const/4 v6, 0x2

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_0

    .line 47
    sget-object v5, Lkotlin/io/FileWalkDirection;->TOP_DOWN:Lkotlin/io/FileWalkDirection;

    move-object v2, v5

    :cond_0
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Lkotlin/io/FileTreeWalk;-><init>(Ljava/io/File;Lkotlin/io/FileWalkDirection;)V

    return-void
.end method

.method private constructor <init>(Ljava/io/File;Lkotlin/io/FileWalkDirection;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lkotlin/io/FileWalkDirection;",
            "Lkotlin/jvm/functions/Function1",
            "<-",
            "Ljava/io/File;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/jvm/functions/Function1",
            "<-",
            "Ljava/io/File;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2",
            "<-",
            "Ljava/io/File;",
            "-",
            "Ljava/io/IOException;",
            "Lkotlin/Unit;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 38
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move-object v7, v0

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    move-object v7, v0

    move-object v8, v1

    iput-object v8, v7, Lkotlin/io/FileTreeWalk;->start:Ljava/io/File;

    move-object v7, v0

    move-object v8, v2

    iput-object v8, v7, Lkotlin/io/FileTreeWalk;->direction:Lkotlin/io/FileWalkDirection;

    move-object v7, v0

    move-object v8, v3

    iput-object v8, v7, Lkotlin/io/FileTreeWalk;->onEnter:Lkotlin/jvm/functions/Function1;

    move-object v7, v0

    move-object v8, v4

    iput-object v8, v7, Lkotlin/io/FileTreeWalk;->onLeave:Lkotlin/jvm/functions/Function1;

    move-object v7, v0

    move-object v8, v5

    iput-object v8, v7, Lkotlin/io/FileTreeWalk;->onFail:Lkotlin/jvm/functions/Function2;

    move-object v7, v0

    move v8, v6

    iput v8, v7, Lkotlin/io/FileTreeWalk;->maxDepth:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/io/File;Lkotlin/io/FileWalkDirection;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 16

    .prologue
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move v9, v7

    const/4 v10, 0x2

    and-int/lit8 v9, v9, 0x2

    if-eqz v9, :cond_0

    .line 40
    sget-object v9, Lkotlin/io/FileWalkDirection;->TOP_DOWN:Lkotlin/io/FileWalkDirection;

    move-object v2, v9

    :cond_0
    move v9, v7

    const/16 v10, 0x20

    and-int/lit8 v9, v9, 0x20

    if-eqz v9, :cond_1

    .line 44
    const v9, 0x7fffffff

    move v6, v9

    :cond_1
    move-object v9, v0

    move-object v10, v1

    move-object v11, v2

    move-object v12, v3

    move-object v13, v4

    move-object v14, v5

    move v15, v6

    invoke-direct/range {v9 .. v15}, Lkotlin/io/FileTreeWalk;-><init>(Ljava/io/File;Lkotlin/io/FileWalkDirection;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;I)V

    return-void
.end method

.method public static final synthetic access$getDirection$p(Lkotlin/io/FileTreeWalk;)Lkotlin/io/FileWalkDirection;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 38
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lkotlin/io/FileTreeWalk;->direction:Lkotlin/io/FileWalkDirection;

    move-object v0, v1

    return-object v0
.end method

.method public static final synthetic access$getMaxDepth$p(Lkotlin/io/FileTreeWalk;)I
    .locals 2

    .prologue
    .line 38
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lkotlin/io/FileTreeWalk;->maxDepth:I

    move v0, v1

    return v0
.end method

.method public static final synthetic access$getOnEnter$p(Lkotlin/io/FileTreeWalk;)Lkotlin/jvm/functions/Function1;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 38
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lkotlin/io/FileTreeWalk;->onEnter:Lkotlin/jvm/functions/Function1;

    move-object v0, v1

    return-object v0
.end method

.method public static final synthetic access$getOnFail$p(Lkotlin/io/FileTreeWalk;)Lkotlin/jvm/functions/Function2;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 38
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lkotlin/io/FileTreeWalk;->onFail:Lkotlin/jvm/functions/Function2;

    move-object v0, v1

    return-object v0
.end method

.method public static final synthetic access$getOnLeave$p(Lkotlin/io/FileTreeWalk;)Lkotlin/jvm/functions/Function1;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 38
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lkotlin/io/FileTreeWalk;->onLeave:Lkotlin/jvm/functions/Function1;

    move-object v0, v1

    return-object v0
.end method

.method public static final synthetic access$getStart$p(Lkotlin/io/FileTreeWalk;)Ljava/io/File;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 38
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lkotlin/io/FileTreeWalk;->start:Ljava/io/File;

    move-object v0, v1

    return-object v0
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 51
    move-object v0, p0

    new-instance v1, Lkotlin/io/FileTreeWalk$FileTreeWalkIterator;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lkotlin/io/FileTreeWalk$FileTreeWalkIterator;-><init>(Lkotlin/io/FileTreeWalk;)V

    check-cast v1, Ljava/util/Iterator;

    move-object v0, v1

    return-object v0
.end method

.method public final maxDepth(I)Lkotlin/io/FileTreeWalk;
    .locals 11
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 257
    move-object v0, p0

    move v1, p1

    move v2, v1

    if-gtz v2, :cond_0

    .line 258
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v10, v2

    move-object v2, v10

    move-object v3, v10

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "depth must be positive, but was "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x2e

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2

    .line 259
    :cond_0
    new-instance v2, Lkotlin/io/FileTreeWalk;

    move-object v10, v2

    move-object v2, v10

    move-object v3, v10

    move-object v4, v0

    iget-object v4, v4, Lkotlin/io/FileTreeWalk;->start:Ljava/io/File;

    move-object v5, v0

    iget-object v5, v5, Lkotlin/io/FileTreeWalk;->direction:Lkotlin/io/FileWalkDirection;

    move-object v6, v0

    iget-object v6, v6, Lkotlin/io/FileTreeWalk;->onEnter:Lkotlin/jvm/functions/Function1;

    move-object v7, v0

    iget-object v7, v7, Lkotlin/io/FileTreeWalk;->onLeave:Lkotlin/jvm/functions/Function1;

    move-object v8, v0

    iget-object v8, v8, Lkotlin/io/FileTreeWalk;->onFail:Lkotlin/jvm/functions/Function2;

    move v9, v1

    invoke-direct/range {v3 .. v9}, Lkotlin/io/FileTreeWalk;-><init>(Ljava/io/File;Lkotlin/io/FileWalkDirection;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;I)V

    move-object v0, v2

    return-object v0
.end method

.method public final onEnter(Lkotlin/jvm/functions/Function1;)Lkotlin/io/FileTreeWalk;
    .locals 11
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1",
            "<-",
            "Ljava/io/File;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lkotlin/io/FileTreeWalk;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    const-string v3, "function"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 229
    new-instance v2, Lkotlin/io/FileTreeWalk;

    move-object v10, v2

    move-object v2, v10

    move-object v3, v10

    move-object v4, v0

    iget-object v4, v4, Lkotlin/io/FileTreeWalk;->start:Ljava/io/File;

    move-object v5, v0

    iget-object v5, v5, Lkotlin/io/FileTreeWalk;->direction:Lkotlin/io/FileWalkDirection;

    move-object v6, v1

    move-object v7, v0

    iget-object v7, v7, Lkotlin/io/FileTreeWalk;->onLeave:Lkotlin/jvm/functions/Function1;

    move-object v8, v0

    iget-object v8, v8, Lkotlin/io/FileTreeWalk;->onFail:Lkotlin/jvm/functions/Function2;

    move-object v9, v0

    iget v9, v9, Lkotlin/io/FileTreeWalk;->maxDepth:I

    invoke-direct/range {v3 .. v9}, Lkotlin/io/FileTreeWalk;-><init>(Ljava/io/File;Lkotlin/io/FileWalkDirection;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;I)V

    move-object v0, v2

    return-object v0
.end method

.method public final onFail(Lkotlin/jvm/functions/Function2;)Lkotlin/io/FileTreeWalk;
    .locals 11
    .param p1    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2",
            "<-",
            "Ljava/io/File;",
            "-",
            "Ljava/io/IOException;",
            "Lkotlin/Unit;",
            ">;)",
            "Lkotlin/io/FileTreeWalk;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    const-string v3, "function"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 245
    new-instance v2, Lkotlin/io/FileTreeWalk;

    move-object v10, v2

    move-object v2, v10

    move-object v3, v10

    move-object v4, v0

    iget-object v4, v4, Lkotlin/io/FileTreeWalk;->start:Ljava/io/File;

    move-object v5, v0

    iget-object v5, v5, Lkotlin/io/FileTreeWalk;->direction:Lkotlin/io/FileWalkDirection;

    move-object v6, v0

    iget-object v6, v6, Lkotlin/io/FileTreeWalk;->onEnter:Lkotlin/jvm/functions/Function1;

    move-object v7, v0

    iget-object v7, v7, Lkotlin/io/FileTreeWalk;->onLeave:Lkotlin/jvm/functions/Function1;

    move-object v8, v1

    move-object v9, v0

    iget v9, v9, Lkotlin/io/FileTreeWalk;->maxDepth:I

    invoke-direct/range {v3 .. v9}, Lkotlin/io/FileTreeWalk;-><init>(Ljava/io/File;Lkotlin/io/FileWalkDirection;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;I)V

    move-object v0, v2

    return-object v0
.end method

.method public final onLeave(Lkotlin/jvm/functions/Function1;)Lkotlin/io/FileTreeWalk;
    .locals 11
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1",
            "<-",
            "Ljava/io/File;",
            "Lkotlin/Unit;",
            ">;)",
            "Lkotlin/io/FileTreeWalk;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    const-string v3, "function"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 236
    new-instance v2, Lkotlin/io/FileTreeWalk;

    move-object v10, v2

    move-object v2, v10

    move-object v3, v10

    move-object v4, v0

    iget-object v4, v4, Lkotlin/io/FileTreeWalk;->start:Ljava/io/File;

    move-object v5, v0

    iget-object v5, v5, Lkotlin/io/FileTreeWalk;->direction:Lkotlin/io/FileWalkDirection;

    move-object v6, v0

    iget-object v6, v6, Lkotlin/io/FileTreeWalk;->onEnter:Lkotlin/jvm/functions/Function1;

    move-object v7, v1

    move-object v8, v0

    iget-object v8, v8, Lkotlin/io/FileTreeWalk;->onFail:Lkotlin/jvm/functions/Function2;

    move-object v9, v0

    iget v9, v9, Lkotlin/io/FileTreeWalk;->maxDepth:I

    invoke-direct/range {v3 .. v9}, Lkotlin/io/FileTreeWalk;-><init>(Ljava/io/File;Lkotlin/io/FileWalkDirection;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;I)V

    move-object v0, v2

    return-object v0
.end method
