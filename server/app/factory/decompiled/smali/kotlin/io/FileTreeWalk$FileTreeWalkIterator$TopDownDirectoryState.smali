.class final Lkotlin/io/FileTreeWalk$FileTreeWalkIterator$TopDownDirectoryState;
.super Lkotlin/io/FileTreeWalk$DirectoryState;
.source "FileTreeWalk.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/io/FileTreeWalk$FileTreeWalkIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TopDownDirectoryState"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0011\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0008\u0082\u0004\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\n\u0010\u000c\u001a\u0004\u0018\u00010\u0003H\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\tR\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lkotlin/io/FileTreeWalk$FileTreeWalkIterator$TopDownDirectoryState;",
        "Lkotlin/io/FileTreeWalk$DirectoryState;",
        "rootDir",
        "Ljava/io/File;",
        "(Lkotlin/io/FileTreeWalk$FileTreeWalkIterator;Ljava/io/File;)V",
        "fileIndex",
        "",
        "fileList",
        "",
        "[Ljava/io/File;",
        "rootVisited",
        "",
        "step",
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
.field private fileIndex:I

.field private fileList:[Ljava/io/File;

.field private rootVisited:Z

.field final synthetic this$0:Lkotlin/io/FileTreeWalk$FileTreeWalkIterator;


# direct methods
.method public constructor <init>(Lkotlin/io/FileTreeWalk$FileTreeWalkIterator;Ljava/io/File;)V
    .locals 5
    .param p1    # Lkotlin/io/FileTreeWalk$FileTreeWalkIterator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v2

    const-string v4, "rootDir"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lkotlin/io/FileTreeWalk$FileTreeWalkIterator$TopDownDirectoryState;->this$0:Lkotlin/io/FileTreeWalk$FileTreeWalkIterator;

    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Lkotlin/io/FileTreeWalk$DirectoryState;-><init>(Ljava/io/File;)V

    return-void
.end method


# virtual methods
.method public step()Ljava/io/File;
    .locals 12
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 175
    move-object v0, p0

    move-object v2, v0

    iget-boolean v2, v2, Lkotlin/io/FileTreeWalk$FileTreeWalkIterator$TopDownDirectoryState;->rootVisited:Z

    if-nez v2, :cond_1

    .line 177
    move-object v2, v0

    iget-object v2, v2, Lkotlin/io/FileTreeWalk$FileTreeWalkIterator$TopDownDirectoryState;->this$0:Lkotlin/io/FileTreeWalk$FileTreeWalkIterator;

    iget-object v2, v2, Lkotlin/io/FileTreeWalk$FileTreeWalkIterator;->this$0:Lkotlin/io/FileTreeWalk;

    invoke-static {v2}, Lkotlin/io/FileTreeWalk;->access$getOnEnter$p(Lkotlin/io/FileTreeWalk;)Lkotlin/jvm/functions/Function1;

    move-result-object v2

    move-object v11, v2

    move-object v2, v11

    move-object v3, v11

    if-eqz v3, :cond_0

    move-object v3, v0

    invoke-virtual {v3}, Lkotlin/io/FileTreeWalk$FileTreeWalkIterator$TopDownDirectoryState;->getRoot()Ljava/io/File;

    move-result-object v3

    invoke-interface {v2, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    .line 178
    const/4 v2, 0x0

    move-object v0, v2

    .line 200
    :goto_0
    return-object v0

    .line 181
    :cond_0
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lkotlin/io/FileTreeWalk$FileTreeWalkIterator$TopDownDirectoryState;->rootVisited:Z

    .line 182
    move-object v2, v0

    invoke-virtual {v2}, Lkotlin/io/FileTreeWalk$FileTreeWalkIterator$TopDownDirectoryState;->getRoot()Ljava/io/File;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 183
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lkotlin/io/FileTreeWalk$FileTreeWalkIterator$TopDownDirectoryState;->fileList:[Ljava/io/File;

    if-eqz v2, :cond_3

    move-object v2, v0

    iget v2, v2, Lkotlin/io/FileTreeWalk$FileTreeWalkIterator$TopDownDirectoryState;->fileIndex:I

    move-object v3, v0

    iget-object v3, v3, Lkotlin/io/FileTreeWalk$FileTreeWalkIterator$TopDownDirectoryState;->fileList:[Ljava/io/File;

    move-object v11, v3

    move-object v3, v11

    move-object v4, v11

    if-nez v4, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    array-length v3, v3

    if-ge v2, v3, :cond_b

    .line 184
    :cond_3
    move-object v2, v0

    iget-object v2, v2, Lkotlin/io/FileTreeWalk$FileTreeWalkIterator$TopDownDirectoryState;->fileList:[Ljava/io/File;

    if-nez v2, :cond_9

    .line 186
    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Lkotlin/io/FileTreeWalk$FileTreeWalkIterator$TopDownDirectoryState;->getRoot()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    iput-object v3, v2, Lkotlin/io/FileTreeWalk$FileTreeWalkIterator$TopDownDirectoryState;->fileList:[Ljava/io/File;

    .line 187
    move-object v2, v0

    iget-object v2, v2, Lkotlin/io/FileTreeWalk$FileTreeWalkIterator$TopDownDirectoryState;->fileList:[Ljava/io/File;

    if-nez v2, :cond_4

    .line 188
    move-object v2, v0

    iget-object v2, v2, Lkotlin/io/FileTreeWalk$FileTreeWalkIterator$TopDownDirectoryState;->this$0:Lkotlin/io/FileTreeWalk$FileTreeWalkIterator;

    iget-object v2, v2, Lkotlin/io/FileTreeWalk$FileTreeWalkIterator;->this$0:Lkotlin/io/FileTreeWalk;

    invoke-static {v2}, Lkotlin/io/FileTreeWalk;->access$getOnFail$p(Lkotlin/io/FileTreeWalk;)Lkotlin/jvm/functions/Function2;

    move-result-object v2

    move-object v11, v2

    move-object v2, v11

    move-object v3, v11

    if-eqz v3, :cond_7

    move-object v3, v0

    invoke-virtual {v3}, Lkotlin/io/FileTreeWalk$FileTreeWalkIterator$TopDownDirectoryState;->getRoot()Ljava/io/File;

    move-result-object v3

    new-instance v4, Lkotlin/io/AccessDeniedException;

    move-object v11, v4

    move-object v4, v11

    move-object v5, v11

    move-object v6, v0

    invoke-virtual {v6}, Lkotlin/io/FileTreeWalk$FileTreeWalkIterator$TopDownDirectoryState;->getRoot()Ljava/io/File;

    move-result-object v6

    const/4 v7, 0x0

    const-string v8, "Cannot list files in a directory"

    const/4 v9, 0x2

    const/4 v10, 0x0

    invoke-direct/range {v5 .. v10}, Lkotlin/io/AccessDeniedException;-><init>(Ljava/io/File;Ljava/io/File;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v2, v3, v4}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/Unit;

    .line 190
    :cond_4
    :goto_1
    move-object v2, v0

    iget-object v2, v2, Lkotlin/io/FileTreeWalk$FileTreeWalkIterator$TopDownDirectoryState;->fileList:[Ljava/io/File;

    if-eqz v2, :cond_6

    move-object v2, v0

    iget-object v2, v2, Lkotlin/io/FileTreeWalk$FileTreeWalkIterator$TopDownDirectoryState;->fileList:[Ljava/io/File;

    move-object v11, v2

    move-object v2, v11

    move-object v3, v11

    if-nez v3, :cond_5

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_5
    array-length v2, v2

    if-nez v2, :cond_9

    .line 191
    :cond_6
    move-object v2, v0

    iget-object v2, v2, Lkotlin/io/FileTreeWalk$FileTreeWalkIterator$TopDownDirectoryState;->this$0:Lkotlin/io/FileTreeWalk$FileTreeWalkIterator;

    iget-object v2, v2, Lkotlin/io/FileTreeWalk$FileTreeWalkIterator;->this$0:Lkotlin/io/FileTreeWalk;

    invoke-static {v2}, Lkotlin/io/FileTreeWalk;->access$getOnLeave$p(Lkotlin/io/FileTreeWalk;)Lkotlin/jvm/functions/Function1;

    move-result-object v2

    move-object v11, v2

    move-object v2, v11

    move-object v3, v11

    if-eqz v3, :cond_8

    move-object v3, v0

    invoke-virtual {v3}, Lkotlin/io/FileTreeWalk$FileTreeWalkIterator$TopDownDirectoryState;->getRoot()Ljava/io/File;

    move-result-object v3

    invoke-interface {v2, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/Unit;

    .line 192
    :goto_2
    const/4 v2, 0x0

    move-object v0, v2

    goto/16 :goto_0

    :cond_7
    goto :goto_1

    :cond_8
    goto :goto_2

    .line 196
    :cond_9
    move-object v2, v0

    iget-object v2, v2, Lkotlin/io/FileTreeWalk$FileTreeWalkIterator$TopDownDirectoryState;->fileList:[Ljava/io/File;

    move-object v11, v2

    move-object v2, v11

    move-object v3, v11

    if-nez v3, :cond_a

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_a
    move-object v3, v0

    move-object v11, v3

    move-object v3, v11

    move-object v4, v11

    iget v4, v4, Lkotlin/io/FileTreeWalk$FileTreeWalkIterator$TopDownDirectoryState;->fileIndex:I

    move v11, v4

    move v4, v11

    move v5, v11

    move v1, v5

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lkotlin/io/FileTreeWalk$FileTreeWalkIterator$TopDownDirectoryState;->fileIndex:I

    move v3, v1

    aget-object v2, v2, v3

    move-object v0, v2

    goto/16 :goto_0

    .line 199
    :cond_b
    move-object v2, v0

    iget-object v2, v2, Lkotlin/io/FileTreeWalk$FileTreeWalkIterator$TopDownDirectoryState;->this$0:Lkotlin/io/FileTreeWalk$FileTreeWalkIterator;

    iget-object v2, v2, Lkotlin/io/FileTreeWalk$FileTreeWalkIterator;->this$0:Lkotlin/io/FileTreeWalk;

    invoke-static {v2}, Lkotlin/io/FileTreeWalk;->access$getOnLeave$p(Lkotlin/io/FileTreeWalk;)Lkotlin/jvm/functions/Function1;

    move-result-object v2

    move-object v11, v2

    move-object v2, v11

    move-object v3, v11

    if-eqz v3, :cond_c

    move-object v3, v0

    invoke-virtual {v3}, Lkotlin/io/FileTreeWalk$FileTreeWalkIterator$TopDownDirectoryState;->getRoot()Ljava/io/File;

    move-result-object v3

    invoke-interface {v2, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/Unit;

    .line 200
    :goto_3
    const/4 v2, 0x0

    move-object v0, v2

    goto/16 :goto_0

    :cond_c
    goto :goto_3
.end method
