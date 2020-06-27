.class final Lkotlin/io/FileTreeWalk$FileTreeWalkIterator$SingleFileState;
.super Lkotlin/io/FileTreeWalk$WalkState;
.source "FileTreeWalk.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/io/FileTreeWalk$FileTreeWalkIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SingleFileState"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0008\u0082\u0004\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\n\u0010\u0007\u001a\u0004\u0018\u00010\u0003H\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0008"
    }
    d2 = {
        "Lkotlin/io/FileTreeWalk$FileTreeWalkIterator$SingleFileState;",
        "Lkotlin/io/FileTreeWalk$WalkState;",
        "rootFile",
        "Ljava/io/File;",
        "(Lkotlin/io/FileTreeWalk$FileTreeWalkIterator;Ljava/io/File;)V",
        "visited",
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
.field final synthetic this$0:Lkotlin/io/FileTreeWalk$FileTreeWalkIterator;

.field private visited:Z


# direct methods
.method public constructor <init>(Lkotlin/io/FileTreeWalk$FileTreeWalkIterator;Ljava/io/File;)V
    .locals 10
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

    move-object v6, v2

    const-string v7, "rootFile"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 205
    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Lkotlin/io/FileTreeWalk$FileTreeWalkIterator$SingleFileState;->this$0:Lkotlin/io/FileTreeWalk$FileTreeWalkIterator;

    move-object v6, v0

    move-object v7, v2

    invoke-direct {v6, v7}, Lkotlin/io/FileTreeWalk$WalkState;-><init>(Ljava/io/File;)V

    .line 209
    sget-boolean v6, Lkotlin/_Assertions;->ENABLED:Z

    if-eqz v6, :cond_0

    .line 210
    move-object v6, v2

    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    move-result v6

    move v3, v6

    sget-boolean v6, Lkotlin/_Assertions;->ENABLED:Z

    if-eqz v6, :cond_0

    move v6, v3

    if-nez v6, :cond_0

    const-string v6, "rootFile must be verified to be file beforehand."

    move-object v5, v6

    new-instance v6, Ljava/lang/AssertionError;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v5

    invoke-direct {v7, v8}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    check-cast v6, Ljava/lang/Throwable;

    throw v6

    :cond_0
    return-void
.end method


# virtual methods
.method public step()Ljava/io/File;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 214
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lkotlin/io/FileTreeWalk$FileTreeWalkIterator$SingleFileState;->visited:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    move-object v0, v1

    .line 216
    :goto_0
    return-object v0

    .line 215
    :cond_0
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lkotlin/io/FileTreeWalk$FileTreeWalkIterator$SingleFileState;->visited:Z

    .line 216
    move-object v1, v0

    invoke-virtual {v1}, Lkotlin/io/FileTreeWalk$FileTreeWalkIterator$SingleFileState;->getRoot()Ljava/io/File;

    move-result-object v1

    move-object v0, v1

    goto :goto_0
.end method
