.class public final Lkotlin/concurrent/ThreadsKt;
.super Ljava/lang/Object;
.source "Thread.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000:\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001aJ\u0010\u0000\u001a\u00020\u00012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\n2\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000c\u001a0\u0010\u000e\u001a\u0002H\u000f\"\u0008\u0008\u0000\u0010\u000f*\u00020\u0010*\u0008\u0012\u0004\u0012\u0002H\u000f0\u00112\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u0002H\u000f0\u000cH\u0087\u0008\u00a2\u0006\u0002\u0010\u0013\u00a8\u0006\u0014"
    }
    d2 = {
        "thread",
        "Ljava/lang/Thread;",
        "start",
        "",
        "isDaemon",
        "contextClassLoader",
        "Ljava/lang/ClassLoader;",
        "name",
        "",
        "priority",
        "",
        "block",
        "Lkotlin/Function0;",
        "",
        "getOrSet",
        "T",
        "",
        "Ljava/lang/ThreadLocal;",
        "default",
        "(Ljava/lang/ThreadLocal;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;",
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
    name = "ThreadsKt"
.end annotation


# direct methods
.method private static final getOrSet(Ljava/lang/ThreadLocal;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .locals 10
    .param p0    # Ljava/lang/ThreadLocal;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/ThreadLocal",
            "<TT;>;",
            "Lkotlin/jvm/functions/Function0",
            "<+TT;>;)TT;"
        }
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .prologue
    .line 59
    move-object v0, p0

    move-object v1, p1

    move-object v7, v0

    invoke-virtual {v7}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v7

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    if-eqz v8, :cond_0

    :goto_0
    move-object v0, v7

    return-object v0

    :cond_0
    move-object v7, v1

    invoke-interface {v7}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v7

    move-object v3, v7

    move-object v7, v0

    move-object v4, v7

    move-object v7, v3

    move-object v5, v7

    move-object v7, v4

    move-object v8, v5

    invoke-virtual {v7, v8}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    move-object v7, v3

    goto :goto_0
.end method

.method public static final thread(ZZLjava/lang/ClassLoader;Ljava/lang/String;ILkotlin/jvm/functions/Function0;)Ljava/lang/Thread;
    .locals 11
    .param p2    # Ljava/lang/ClassLoader;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/String;",
            "I",
            "Lkotlin/jvm/functions/Function0",
            "<",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Thread;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    move v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object/from16 v5, p5

    move-object v7, v5

    const-string v8, "block"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    new-instance v7, Lkotlin/concurrent/ThreadsKt$thread$thread$1;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v9, v5

    invoke-direct {v8, v9}, Lkotlin/concurrent/ThreadsKt$thread$thread$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    move-object v6, v7

    .line 33
    move v7, v1

    if-eqz v7, :cond_0

    .line 34
    move-object v7, v6

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lkotlin/concurrent/ThreadsKt$thread$thread$1;->setDaemon(Z)V

    .line 35
    :cond_0
    move v7, v4

    if-lez v7, :cond_1

    .line 36
    move-object v7, v6

    move v8, v4

    invoke-virtual {v7, v8}, Lkotlin/concurrent/ThreadsKt$thread$thread$1;->setPriority(I)V

    .line 37
    :cond_1
    move-object v7, v3

    if-eqz v7, :cond_2

    .line 38
    move-object v7, v6

    move-object v8, v3

    invoke-virtual {v7, v8}, Lkotlin/concurrent/ThreadsKt$thread$thread$1;->setName(Ljava/lang/String;)V

    .line 39
    :cond_2
    move-object v7, v2

    if-eqz v7, :cond_3

    .line 40
    move-object v7, v6

    move-object v8, v2

    invoke-virtual {v7, v8}, Lkotlin/concurrent/ThreadsKt$thread$thread$1;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 41
    :cond_3
    move v7, v0

    if-eqz v7, :cond_4

    .line 42
    move-object v7, v6

    invoke-virtual {v7}, Lkotlin/concurrent/ThreadsKt$thread$thread$1;->start()V

    .line 43
    :cond_4
    move-object v7, v6

    check-cast v7, Ljava/lang/Thread;

    move-object v0, v7

    return-object v0
.end method

.method public static bridge synthetic thread$default(ZZLjava/lang/ClassLoader;Ljava/lang/String;ILkotlin/jvm/functions/Function0;ILjava/lang/Object;)Ljava/lang/Thread;
    .locals 14
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    move v0, p0

    move v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move v8, v6

    const/4 v9, 0x1

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_0

    .line 21
    const/4 v8, 0x1

    move v0, v8

    :cond_0
    move v8, v6

    const/4 v9, 0x2

    and-int/lit8 v8, v8, 0x2

    if-eqz v8, :cond_1

    .line 22
    const/4 v8, 0x0

    move v1, v8

    :cond_1
    move v8, v6

    const/4 v9, 0x4

    and-int/lit8 v8, v8, 0x4

    if-eqz v8, :cond_2

    .line 23
    const/4 v8, 0x0

    check-cast v8, Ljava/lang/ClassLoader;

    move-object v2, v8

    :cond_2
    move v8, v6

    const/16 v9, 0x8

    and-int/lit8 v8, v8, 0x8

    if-eqz v8, :cond_3

    .line 24
    const/4 v8, 0x0

    check-cast v8, Ljava/lang/String;

    move-object v3, v8

    :cond_3
    move v8, v6

    const/16 v9, 0x10

    and-int/lit8 v8, v8, 0x10

    if-eqz v8, :cond_4

    .line 25
    const/4 v8, -0x1

    move v4, v8

    :cond_4
    move v8, v0

    move v9, v1

    move-object v10, v2

    move-object v11, v3

    move v12, v4

    move-object v13, v5

    invoke-static/range {v8 .. v13}, Lkotlin/concurrent/ThreadsKt;->thread(ZZLjava/lang/ClassLoader;Ljava/lang/String;ILkotlin/jvm/functions/Function0;)Ljava/lang/Thread;

    move-result-object v8

    move-object v0, v8

    return-object v0
.end method
