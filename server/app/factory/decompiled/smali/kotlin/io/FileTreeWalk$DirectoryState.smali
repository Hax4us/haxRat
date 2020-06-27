.class abstract Lkotlin/io/FileTreeWalk$DirectoryState;
.super Lkotlin/io/FileTreeWalk$WalkState;
.source "FileTreeWalk.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/io/FileTreeWalk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "DirectoryState"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\"\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Lkotlin/io/FileTreeWalk$DirectoryState;",
        "Lkotlin/io/FileTreeWalk$WalkState;",
        "rootDir",
        "Ljava/io/File;",
        "(Ljava/io/File;)V",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xa
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 9
    .param p1    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v5, v1

    const-string v6, "rootDir"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    move-object v5, v0

    move-object v6, v1

    invoke-direct {v5, v6}, Lkotlin/io/FileTreeWalk$WalkState;-><init>(Ljava/io/File;)V

    .line 62
    sget-boolean v5, Lkotlin/_Assertions;->ENABLED:Z

    if-eqz v5, :cond_0

    .line 63
    move-object v5, v1

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v5

    move v2, v5

    sget-boolean v5, Lkotlin/_Assertions;->ENABLED:Z

    if-eqz v5, :cond_0

    move v5, v2

    if-nez v5, :cond_0

    const-string v5, "rootDir must be verified to be directory beforehand."

    move-object v4, v5

    new-instance v5, Ljava/lang/AssertionError;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v4

    invoke-direct {v6, v7}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    check-cast v5, Ljava/lang/Throwable;

    throw v5

    :cond_0
    return-void
.end method
