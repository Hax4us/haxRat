.class public final Lkotlin/io/CloseableKt;
.super Ljava/lang/Object;
.source "Closeable.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u001c\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001a\u0018\u0010\u0000\u001a\u00020\u0001*\u0004\u0018\u00010\u00022\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0004H\u0001\u001a;\u0010\u0005\u001a\u0002H\u0006\"\n\u0008\u0000\u0010\u0007*\u0004\u0018\u00010\u0002\"\u0004\u0008\u0001\u0010\u0006*\u0002H\u00072\u0012\u0010\u0008\u001a\u000e\u0012\u0004\u0012\u0002H\u0007\u0012\u0004\u0012\u0002H\u00060\tH\u0087\u0008\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000b\u0082\u0002\u0008\n\u0006\u0008\u0011(\n0\u0001\u00a8\u0006\u000c"
    }
    d2 = {
        "closeFinally",
        "",
        "Ljava/io/Closeable;",
        "cause",
        "",
        "use",
        "R",
        "T",
        "block",
        "Lkotlin/Function1;",
        "Requires newer compiler version to be inlined correctly.",
        "(Ljava/io/Closeable;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;",
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
    name = "CloseableKt"
.end annotation


# direct methods
.method public static final closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    .locals 5
    .param p0    # Ljava/io/Closeable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lkotlin/PublishedApi;
    .end annotation

    .annotation build Lkotlin/SinceKotlin;
        version = "1.1"
    .end annotation

    .prologue
    .line 51
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    if-nez v3, :cond_0

    .line 59
    :goto_0
    return-void

    .line 53
    :cond_0
    move-object v3, v1

    if-nez v3, :cond_1

    move-object v3, v0

    invoke-interface {v3}, Ljava/io/Closeable;->close()V

    goto :goto_0

    .line 55
    :cond_1
    nop

    .line 56
    move-object v3, v0

    :try_start_0
    invoke-interface {v3}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 57
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 58
    move-object v3, v1

    move-object v4, v2

    invoke-static {v3, v4}, Lkotlin/ExceptionsKt;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static final use(Ljava/io/Closeable;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/io/Closeable;",
            "R:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lkotlin/jvm/functions/Function1",
            "<-TT;+TR;>;)TR;"
        }
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .prologue
    .line 22
    move-object v0, p0

    move-object v1, p1

    const/4 v6, 0x0

    check-cast v6, Ljava/lang/Throwable;

    move-object v3, v6

    .line 23
    nop

    .line 24
    move-object v6, v1

    move-object v7, v0

    :try_start_0
    invoke-interface {v6, v7}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    move-object v4, v6

    const/4 v6, 0x1

    invoke-static {v6}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 29
    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Lkotlin/internal/PlatformImplementationsKt;->apiVersionIsAtLeast(III)Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v6, v0

    move-object v7, v3

    invoke-static {v6, v7}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 38
    :goto_0
    const/4 v6, 0x1

    invoke-static {v6}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    move-object v6, v4

    move-object v0, v6

    return-object v0

    .line 31
    :cond_0
    move-object v6, v0

    if-nez v6, :cond_1

    goto :goto_0

    .line 32
    :cond_1
    move-object v6, v0

    invoke-interface {v6}, Ljava/io/Closeable;->close()V

    goto :goto_0

    .line 29
    :catch_0
    move-exception v6

    move-object v4, v6

    .line 26
    move-object v6, v4

    move-object v3, v6

    .line 27
    move-object v6, v4

    :try_start_1
    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    :catchall_0
    move-exception v6

    move-object v4, v6

    const/4 v6, 0x1

    invoke-static {v6}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Lkotlin/internal/PlatformImplementationsKt;->apiVersionIsAtLeast(III)Z

    move-result v6

    if-eqz v6, :cond_2

    move-object v6, v0

    move-object v7, v3

    invoke-static {v6, v7}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 38
    :goto_1
    const/4 v6, 0x1

    invoke-static {v6}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    move-object v6, v4

    throw v6

    .line 31
    :cond_2
    move-object v6, v0

    if-nez v6, :cond_3

    goto :goto_1

    .line 32
    :cond_3
    move-object v6, v3

    if-nez v6, :cond_4

    move-object v6, v0

    invoke-interface {v6}, Ljava/io/Closeable;->close()V

    goto :goto_1

    .line 34
    :cond_4
    nop

    .line 35
    move-object v6, v0

    :try_start_2
    invoke-interface {v6}, Ljava/io/Closeable;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 36
    :catch_1
    move-exception v6

    move-object v5, v6

    goto :goto_1
.end method
