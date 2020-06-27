.class final Lkotlin/SynchronizedLazyImpl;
.super Ljava/lang/Object;
.source "LazyJVM.kt"

# interfaces
.implements Lkotlin/Lazy;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlin/Lazy",
        "<TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0002\u0018\u0000*\u0006\u0008\u0000\u0010\u0001 \u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u00022\u00060\u0003j\u0002`\u0004B\u001f\u0012\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0006\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0002\u0010\tJ\u0008\u0010\u000e\u001a\u00020\u000fH\u0016J\u0008\u0010\u0010\u001a\u00020\u0011H\u0016J\u0008\u0010\u0012\u001a\u00020\u0008H\u0002R\u0014\u0010\n\u001a\u0004\u0018\u00010\u00088\u0002@\u0002X\u0083\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0005\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0006X\u0088\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u00028\u00008VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0013"
    }
    d2 = {
        "Lkotlin/SynchronizedLazyImpl;",
        "T",
        "Lkotlin/Lazy;",
        "Ljava/io/Serializable;",
        "Lkotlin/io/Serializable;",
        "initializer",
        "Lkotlin/Function0;",
        "lock",
        "",
        "(Lkotlin/jvm/functions/Function0;Ljava/lang/Object;)V",
        "_value",
        "value",
        "getValue",
        "()Ljava/lang/Object;",
        "isInitialized",
        "",
        "toString",
        "",
        "writeReplace",
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
.field private volatile _value:Ljava/lang/Object;

.field private initializer:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0",
            "<+TT;>;"
        }
    .end annotation
.end field

.field private final lock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function0;Ljava/lang/Object;)V
    .locals 7
    .param p1    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0",
            "<+TT;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v1

    const-string v4, "initializer"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 56
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lkotlin/SynchronizedLazyImpl;->initializer:Lkotlin/jvm/functions/Function0;

    .line 57
    move-object v3, v0

    sget-object v4, Lkotlin/UNINITIALIZED_VALUE;->INSTANCE:Lkotlin/UNINITIALIZED_VALUE;

    iput-object v4, v3, Lkotlin/SynchronizedLazyImpl;->_value:Ljava/lang/Object;

    .line 59
    move-object v3, v0

    move-object v4, v2

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    if-eqz v5, :cond_0

    :goto_0
    iput-object v4, v3, Lkotlin/SynchronizedLazyImpl;->lock:Ljava/lang/Object;

    return-void

    :cond_0
    move-object v4, v0

    goto :goto_0
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function0;Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
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

    .line 55
    const/4 v5, 0x0

    move-object v2, v5

    :cond_0
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;Ljava/lang/Object;)V

    return-void
.end method

.method private final writeReplace()Ljava/lang/Object;
    .locals 5

    .prologue
    .line 86
    move-object v0, p0

    new-instance v1, Lkotlin/InitializedLazyImpl;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-virtual {v3}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v2, v3}, Lkotlin/InitializedLazyImpl;-><init>(Ljava/lang/Object;)V

    move-object v0, v1

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 63
    move-object v0, p0

    move-object v6, v0

    iget-object v6, v6, Lkotlin/SynchronizedLazyImpl;->_value:Ljava/lang/Object;

    move-object v1, v6

    .line 64
    move-object v6, v1

    sget-object v7, Lkotlin/UNINITIALIZED_VALUE;->INSTANCE:Lkotlin/UNINITIALIZED_VALUE;

    if-eq v6, v7, :cond_0

    .line 65
    move-object v6, v1

    move-object v0, v6

    .line 69
    :goto_0
    return-object v0

    :cond_0
    move-object v6, v0

    iget-object v6, v6, Lkotlin/SynchronizedLazyImpl;->lock:Ljava/lang/Object;

    move-object v2, v6

    move-object v6, v2

    monitor-enter v6

    nop

    .line 70
    move-object v6, v0

    :try_start_0
    iget-object v6, v6, Lkotlin/SynchronizedLazyImpl;->_value:Ljava/lang/Object;

    move-object v3, v6

    .line 71
    move-object v6, v3

    sget-object v7, Lkotlin/UNINITIALIZED_VALUE;->INSTANCE:Lkotlin/UNINITIALIZED_VALUE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v6, v7, :cond_1

    .line 72
    move-object v6, v3

    .line 71
    :goto_1
    nop

    .line 69
    move-object v4, v6

    move-object v6, v2

    monitor-exit v6

    move-object v6, v4

    move-object v0, v6

    goto :goto_0

    .line 74
    :cond_1
    move-object v6, v0

    :try_start_1
    iget-object v6, v6, Lkotlin/SynchronizedLazyImpl;->initializer:Lkotlin/jvm/functions/Function0;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    if-nez v7, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    invoke-interface {v6}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v6

    move-object v4, v6

    .line 75
    move-object v6, v0

    move-object v7, v4

    iput-object v7, v6, Lkotlin/SynchronizedLazyImpl;->_value:Ljava/lang/Object;

    .line 76
    move-object v6, v0

    const/4 v7, 0x0

    check-cast v7, Lkotlin/jvm/functions/Function0;

    iput-object v7, v6, Lkotlin/SynchronizedLazyImpl;->initializer:Lkotlin/jvm/functions/Function0;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    move-object v6, v4

    goto :goto_1

    .line 69
    :catchall_0
    move-exception v6

    move-object v4, v6

    move-object v6, v2

    monitor-exit v6

    move-object v6, v4

    throw v6
.end method

.method public isInitialized()Z
    .locals 3

    .prologue
    .line 82
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lkotlin/SynchronizedLazyImpl;->_value:Ljava/lang/Object;

    sget-object v2, Lkotlin/UNINITIALIZED_VALUE;->INSTANCE:Lkotlin/UNINITIALIZED_VALUE;

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 84
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lkotlin/SynchronizedLazyImpl;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    move-object v0, v1

    return-object v0

    :cond_0
    const-string v1, "Lazy value not initialized yet."

    goto :goto_0
.end method
