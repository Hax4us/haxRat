.class public final Lkotlin/concurrent/LocksKt;
.super Ljava/lang/Object;
.source "Locks.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u001a\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001a&\u0010\u0000\u001a\u0002H\u0001\"\u0004\u0008\u0000\u0010\u0001*\u00020\u00022\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u0002H\u00010\u0004H\u0087\u0008\u00a2\u0006\u0002\u0010\u0005\u001a&\u0010\u0006\u001a\u0002H\u0001\"\u0004\u0008\u0000\u0010\u0001*\u00020\u00072\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u0002H\u00010\u0004H\u0087\u0008\u00a2\u0006\u0002\u0010\u0008\u001a&\u0010\t\u001a\u0002H\u0001\"\u0004\u0008\u0000\u0010\u0001*\u00020\u00022\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u0002H\u00010\u0004H\u0087\u0008\u00a2\u0006\u0002\u0010\u0005\u00a8\u0006\n"
    }
    d2 = {
        "read",
        "T",
        "Ljava/util/concurrent/locks/ReentrantReadWriteLock;",
        "action",
        "Lkotlin/Function0;",
        "(Ljava/util/concurrent/locks/ReentrantReadWriteLock;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;",
        "withLock",
        "Ljava/util/concurrent/locks/Lock;",
        "(Ljava/util/concurrent/locks/Lock;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;",
        "write",
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
    name = "LocksKt"
.end annotation


# direct methods
.method private static final read(Ljava/util/concurrent/locks/ReentrantReadWriteLock;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .locals 6
    .param p0    # Ljava/util/concurrent/locks/ReentrantReadWriteLock;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/locks/ReentrantReadWriteLock;",
            "Lkotlin/jvm/functions/Function0",
            "<+TT;>;)TT;"
        }
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .prologue
    .line 33
    move-object v0, p0

    move-object v1, p1

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v5

    move-object v3, v5

    .line 34
    move-object v5, v3

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 35
    nop

    .line 36
    move-object v5, v1

    :try_start_0
    invoke-interface {v5}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    move-object v4, v5

    const/4 v5, 0x1

    invoke-static {v5}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 38
    move-object v5, v3

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    const/4 v5, 0x1

    invoke-static {v5}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    move-object v5, v4

    move-object v0, v5

    return-object v0

    .line 39
    :catchall_0
    move-exception v5

    move-object v4, v5

    const/4 v5, 0x1

    invoke-static {v5}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 38
    move-object v5, v3

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    const/4 v5, 0x1

    invoke-static {v5}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    move-object v5, v4

    throw v5
.end method

.method private static final withLock(Ljava/util/concurrent/locks/Lock;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .locals 5
    .param p0    # Ljava/util/concurrent/locks/Lock;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/locks/Lock;",
            "Lkotlin/jvm/functions/Function0",
            "<+TT;>;)TT;"
        }
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .prologue
    .line 19
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 20
    nop

    .line 21
    move-object v4, v1

    :try_start_0
    invoke-interface {v4}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    move-object v3, v4

    const/4 v4, 0x1

    invoke-static {v4}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 23
    move-object v4, v0

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const/4 v4, 0x1

    invoke-static {v4}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    move-object v4, v3

    move-object v0, v4

    return-object v0

    .line 24
    :catchall_0
    move-exception v4

    move-object v3, v4

    const/4 v4, 0x1

    invoke-static {v4}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 23
    move-object v4, v0

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const/4 v4, 0x1

    invoke-static {v4}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    move-object v4, v3

    throw v4
.end method

.method private static final write(Ljava/util/concurrent/locks/ReentrantReadWriteLock;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .locals 13
    .param p0    # Ljava/util/concurrent/locks/ReentrantReadWriteLock;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/locks/ReentrantReadWriteLock;",
            "Lkotlin/jvm/functions/Function0",
            "<+TT;>;)TT;"
        }
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .prologue
    .line 57
    move-object v0, p0

    move-object v1, p1

    move-object v11, v0

    invoke-virtual {v11}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v11

    move-object v3, v11

    .line 59
    move-object v11, v0

    invoke-virtual {v11}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->getWriteHoldCount()I

    move-result v11

    if-nez v11, :cond_0

    move-object v11, v0

    invoke-virtual {v11}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->getReadHoldCount()I

    move-result v11

    :goto_0
    move v4, v11

    .line 60
    const/4 v11, 0x0

    move v5, v11

    move v11, v4

    move v6, v11

    :goto_1
    move v11, v5

    move v12, v6

    if-ge v11, v12, :cond_1

    move v11, v5

    move v7, v11

    move-object v11, v3

    invoke-virtual {v11}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 59
    :cond_0
    const/4 v11, 0x0

    goto :goto_0

    .line 62
    :cond_1
    move-object v11, v0

    invoke-virtual {v11}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v11

    move-object v5, v11

    .line 63
    move-object v11, v5

    invoke-virtual {v11}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 64
    nop

    .line 65
    move-object v11, v1

    :try_start_0
    invoke-interface {v11}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v11

    move-object v6, v11

    const/4 v11, 0x1

    invoke-static {v11}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 67
    const/4 v11, 0x0

    move v7, v11

    move v11, v4

    move v8, v11

    :goto_2
    move v11, v7

    move v12, v8

    if-ge v11, v12, :cond_2

    move v11, v7

    move v9, v11

    move-object v11, v3

    invoke-virtual {v11}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 68
    :cond_2
    move-object v11, v5

    invoke-virtual {v11}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    const/4 v11, 0x1

    invoke-static {v11}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    move-object v11, v6

    move-object v0, v11

    return-object v0

    .line 69
    :catchall_0
    move-exception v11

    move-object v6, v11

    const/4 v11, 0x1

    invoke-static {v11}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 67
    const/4 v11, 0x0

    move v7, v11

    move v11, v4

    move v8, v11

    :goto_3
    move v11, v7

    move v12, v8

    if-ge v11, v12, :cond_3

    move v11, v7

    move v9, v11

    move-object v11, v3

    invoke-virtual {v11}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 68
    :cond_3
    move-object v11, v5

    invoke-virtual {v11}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    const/4 v11, 0x1

    invoke-static {v11}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    move-object v11, v6

    throw v11
.end method
