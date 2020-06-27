.class final Lkotlin/io/FileTreeWalk$FileTreeWalkIterator;
.super Lkotlin/collections/AbstractIterator;
.source "FileTreeWalk.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/io/FileTreeWalk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FileTreeWalkIterator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/io/FileTreeWalk$FileTreeWalkIterator$BottomUpDirectoryState;,
        Lkotlin/io/FileTreeWalk$FileTreeWalkIterator$TopDownDirectoryState;,
        Lkotlin/io/FileTreeWalk$FileTreeWalkIterator$SingleFileState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/collections/AbstractIterator",
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
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0082\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0003\r\u000e\u000fB\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0007\u001a\u00020\u0008H\u0014J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0002H\u0002J\u000b\u0010\u000c\u001a\u0004\u0018\u00010\u0002H\u0082\u0010R\u0014\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lkotlin/io/FileTreeWalk$FileTreeWalkIterator;",
        "Lkotlin/collections/AbstractIterator;",
        "Ljava/io/File;",
        "(Lkotlin/io/FileTreeWalk;)V",
        "state",
        "Ljava/util/Stack;",
        "Lkotlin/io/FileTreeWalk$WalkState;",
        "computeNext",
        "",
        "directoryState",
        "Lkotlin/io/FileTreeWalk$DirectoryState;",
        "root",
        "gotoNext",
        "BottomUpDirectoryState",
        "SingleFileState",
        "TopDownDirectoryState",
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
.field private final state:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lkotlin/io/FileTreeWalk$WalkState;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lkotlin/io/FileTreeWalk;


# direct methods
.method public constructor <init>(Lkotlin/io/FileTreeWalk;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 67
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lkotlin/io/FileTreeWalk$FileTreeWalkIterator;->this$0:Lkotlin/io/FileTreeWalk;

    move-object v2, v0

    invoke-direct {v2}, Lkotlin/collections/AbstractIterator;-><init>()V

    .line 70
    move-object v2, v0

    new-instance v3, Ljava/util/Stack;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Ljava/util/Stack;-><init>()V

    iput-object v3, v2, Lkotlin/io/FileTreeWalk$FileTreeWalkIterator;->state:Ljava/util/Stack;

    .line 73
    move-object v2, v1

    invoke-static {v2}, Lkotlin/io/FileTreeWalk;->access$getStart$p(Lkotlin/io/FileTreeWalk;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 74
    move-object v2, v0

    iget-object v2, v2, Lkotlin/io/FileTreeWalk$FileTreeWalkIterator;->state:Ljava/util/Stack;

    move-object v3, v0

    move-object v4, v1

    invoke-static {v4}, Lkotlin/io/FileTreeWalk;->access$getStart$p(Lkotlin/io/FileTreeWalk;)Ljava/io/File;

    move-result-object v4

    invoke-direct {v3, v4}, Lkotlin/io/FileTreeWalk$FileTreeWalkIterator;->directoryState(Ljava/io/File;)Lkotlin/io/FileTreeWalk$DirectoryState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 79
    :goto_0
    return-void

    .line 75
    :cond_0
    move-object v2, v1

    invoke-static {v2}, Lkotlin/io/FileTreeWalk;->access$getStart$p(Lkotlin/io/FileTreeWalk;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 76
    move-object v2, v0

    iget-object v2, v2, Lkotlin/io/FileTreeWalk$FileTreeWalkIterator;->state:Ljava/util/Stack;

    new-instance v3, Lkotlin/io/FileTreeWalk$FileTreeWalkIterator$SingleFileState;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v1

    invoke-static {v6}, Lkotlin/io/FileTreeWalk;->access$getStart$p(Lkotlin/io/FileTreeWalk;)Ljava/io/File;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lkotlin/io/FileTreeWalk$FileTreeWalkIterator$SingleFileState;-><init>(Lkotlin/io/FileTreeWalk$FileTreeWalkIterator;Ljava/io/File;)V

    invoke-virtual {v2, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 78
    :cond_1
    move-object v2, v0

    invoke-virtual {v2}, Lkotlin/io/FileTreeWalk$FileTreeWalkIterator;->done()V

    goto :goto_0
.end method

.method private final directoryState(Ljava/io/File;)Lkotlin/io/FileTreeWalk$DirectoryState;
    .locals 8

    .prologue
    .line 93
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lkotlin/io/FileTreeWalk$FileTreeWalkIterator;->this$0:Lkotlin/io/FileTreeWalk;

    invoke-static {v2}, Lkotlin/io/FileTreeWalk;->access$getDirection$p(Lkotlin/io/FileTreeWalk;)Lkotlin/io/FileWalkDirection;

    move-result-object v2

    sget-object v3, Lkotlin/io/FileTreeWalk$FileTreeWalkIterator$WhenMappings;->$EnumSwitchMapping$0:[I

    move-object v6, v2

    move-object v7, v3

    move-object v2, v7

    move-object v3, v6

    invoke-virtual {v3}, Lkotlin/io/FileWalkDirection;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 95
    new-instance v2, Lkotlin/NoWhenBranchMatchedException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v2

    .line 94
    :pswitch_0
    new-instance v2, Lkotlin/io/FileTreeWalk$FileTreeWalkIterator$TopDownDirectoryState;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lkotlin/io/FileTreeWalk$FileTreeWalkIterator$TopDownDirectoryState;-><init>(Lkotlin/io/FileTreeWalk$FileTreeWalkIterator;Ljava/io/File;)V

    check-cast v2, Lkotlin/io/FileTreeWalk$DirectoryState;

    .line 93
    :goto_0
    move-object v0, v2

    return-object v0

    .line 95
    :pswitch_1
    new-instance v2, Lkotlin/io/FileTreeWalk$FileTreeWalkIterator$BottomUpDirectoryState;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lkotlin/io/FileTreeWalk$FileTreeWalkIterator$BottomUpDirectoryState;-><init>(Lkotlin/io/FileTreeWalk$FileTreeWalkIterator;Ljava/io/File;)V

    check-cast v2, Lkotlin/io/FileTreeWalk$DirectoryState;

    goto :goto_0

    .line 93
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private final gotoNext()Ljava/io/File;
    .locals 7

    .prologue
    .line 101
    move-object v0, p0

    :goto_0
    move-object v3, v0

    iget-object v3, v3, Lkotlin/io/FileTreeWalk$FileTreeWalkIterator;->state:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->empty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 103
    const/4 v3, 0x0

    move-object v0, v3

    .line 116
    :goto_1
    return-object v0

    .line 106
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lkotlin/io/FileTreeWalk$FileTreeWalkIterator;->state:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    if-nez v4, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    check-cast v3, Lkotlin/io/FileTreeWalk$WalkState;

    move-object v1, v3

    .line 107
    move-object v3, v1

    invoke-virtual {v3}, Lkotlin/io/FileTreeWalk$WalkState;->step()Ljava/io/File;

    move-result-object v3

    move-object v2, v3

    .line 108
    move-object v3, v2

    if-nez v3, :cond_2

    .line 110
    move-object v3, v0

    iget-object v3, v3, Lkotlin/io/FileTreeWalk$FileTreeWalkIterator;->state:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v3

    .line 111
    goto :goto_0

    .line 114
    :cond_2
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Lkotlin/io/FileTreeWalk$WalkState;->getRoot()Ljava/io/File;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    move-object v3, v2

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_3

    move-object v3, v0

    iget-object v3, v3, Lkotlin/io/FileTreeWalk$FileTreeWalkIterator;->state:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->size()I

    move-result v3

    move-object v4, v0

    iget-object v4, v4, Lkotlin/io/FileTreeWalk$FileTreeWalkIterator;->this$0:Lkotlin/io/FileTreeWalk;

    invoke-static {v4}, Lkotlin/io/FileTreeWalk;->access$getMaxDepth$p(Lkotlin/io/FileTreeWalk;)I

    move-result v4

    if-lt v3, v4, :cond_4

    .line 116
    :cond_3
    move-object v3, v2

    move-object v0, v3

    goto :goto_1

    .line 119
    :cond_4
    move-object v3, v0

    iget-object v3, v3, Lkotlin/io/FileTreeWalk$FileTreeWalkIterator;->state:Ljava/util/Stack;

    move-object v4, v0

    move-object v5, v2

    invoke-direct {v4, v5}, Lkotlin/io/FileTreeWalk$FileTreeWalkIterator;->directoryState(Ljava/io/File;)Lkotlin/io/FileTreeWalk$DirectoryState;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 120
    goto :goto_0
.end method


# virtual methods
.method protected computeNext()V
    .locals 4

    .prologue
    .line 84
    move-object v0, p0

    move-object v2, v0

    invoke-direct {v2}, Lkotlin/io/FileTreeWalk$FileTreeWalkIterator;->gotoNext()Ljava/io/File;

    move-result-object v2

    move-object v1, v2

    .line 85
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 86
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lkotlin/io/FileTreeWalk$FileTreeWalkIterator;->setNext(Ljava/lang/Object;)V

    .line 89
    :goto_0
    return-void

    .line 88
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Lkotlin/io/FileTreeWalk$FileTreeWalkIterator;->done()V

    goto :goto_0
.end method
