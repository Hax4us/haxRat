.class final synthetic Lokio/Okio__JvmOkioKt;
.super Ljava/lang/Object;
.source "JvmOkio.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000D\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a\n\u0010\u0005\u001a\u00020\u0006*\u00020\u0007\u001a\u0016\u0010\u0008\u001a\u00020\u0006*\u00020\u00072\u0008\u0008\u0002\u0010\t\u001a\u00020\u0001H\u0007\u001a\n\u0010\u0008\u001a\u00020\u0006*\u00020\n\u001a\n\u0010\u0008\u001a\u00020\u0006*\u00020\u000b\u001a%\u0010\u0008\u001a\u00020\u0006*\u00020\u000c2\u0012\u0010\r\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u000f0\u000e\"\u00020\u000fH\u0007\u00a2\u0006\u0002\u0010\u0010\u001a\n\u0010\u0011\u001a\u00020\u0012*\u00020\u0007\u001a\n\u0010\u0011\u001a\u00020\u0012*\u00020\u0013\u001a\n\u0010\u0011\u001a\u00020\u0012*\u00020\u000b\u001a%\u0010\u0011\u001a\u00020\u0012*\u00020\u000c2\u0012\u0010\r\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u000f0\u000e\"\u00020\u000fH\u0007\u00a2\u0006\u0002\u0010\u0014\"\u001c\u0010\u0000\u001a\u00020\u0001*\u00060\u0002j\u0002`\u00038@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0000\u0010\u0004\u00a8\u0006\u0015"
    }
    d2 = {
        "isAndroidGetsocknameError",
        "",
        "Ljava/lang/AssertionError;",
        "Lkotlin/AssertionError;",
        "(Ljava/lang/AssertionError;)Z",
        "appendingSink",
        "Lokio/Sink;",
        "Ljava/io/File;",
        "sink",
        "append",
        "Ljava/io/OutputStream;",
        "Ljava/net/Socket;",
        "Ljava/nio/file/Path;",
        "options",
        "",
        "Ljava/nio/file/OpenOption;",
        "(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Lokio/Sink;",
        "source",
        "Lokio/Source;",
        "Ljava/io/InputStream;",
        "(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Lokio/Source;",
        "okio"
    }
    k = 0x5
    mv = {
        0x1,
        0x1,
        0x10
    }
    xs = "okio/Okio"
.end annotation


# direct methods
.method public static final appendingSink(Ljava/io/File;)Lokio/Sink;
    .locals 6
    .param p0    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, v0

    const-string v2, "$this$appendingSink"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 174
    new-instance v1, Ljava/io/FileOutputStream;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    move-object v3, v0

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    check-cast v1, Ljava/io/OutputStream;

    invoke-static {v1}, Lokio/Okio;->sink(Ljava/io/OutputStream;)Lokio/Sink;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static final isAndroidGetsocknameError(Ljava/lang/AssertionError;)Z
    .locals 7
    .param p0    # Ljava/lang/AssertionError;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move-object v1, v0

    const-string v2, "$this$isAndroidGetsocknameError"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 197
    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/AssertionError;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_1

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object v1

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    if-eqz v2, :cond_0

    check-cast v1, Ljava/lang/CharSequence;

    const-string v2, "getsockname failed"

    check-cast v2, Ljava/lang/CharSequence;

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v1

    :goto_0
    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static final sink(Ljava/io/File;)Lokio/Sink;
    .locals 5
    .param p0    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lokio/Okio;->sink$default(Ljava/io/File;ZILjava/lang/Object;)Lokio/Sink;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static final sink(Ljava/io/File;Z)Lokio/Sink;
    .locals 7
    .param p0    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    const-string v3, "$this$sink"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    new-instance v2, Ljava/io/FileOutputStream;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move v5, v1

    invoke-direct {v3, v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    check-cast v2, Ljava/io/OutputStream;

    invoke-static {v2}, Lokio/Okio;->sink(Ljava/io/OutputStream;)Lokio/Sink;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public static final sink(Ljava/io/OutputStream;)Lokio/Sink;
    .locals 7
    .param p0    # Ljava/io/OutputStream;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, v0

    const-string v2, "$this$sink"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    new-instance v1, Lokio/OutputStreamSink;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    move-object v3, v0

    new-instance v4, Lokio/Timeout;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Lokio/Timeout;-><init>()V

    invoke-direct {v2, v3, v4}, Lokio/OutputStreamSink;-><init>(Ljava/io/OutputStream;Lokio/Timeout;)V

    check-cast v1, Lokio/Sink;

    move-object v0, v1

    return-object v0
.end method

.method public static final sink(Ljava/net/Socket;)Lokio/Sink;
    .locals 9
    .param p0    # Ljava/net/Socket;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v3, v0

    const-string v4, "$this$sink"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    new-instance v3, Lokio/SocketAsyncTimeout;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    invoke-direct {v4, v5}, Lokio/SocketAsyncTimeout;-><init>(Ljava/net/Socket;)V

    move-object v1, v3

    .line 123
    new-instance v3, Lokio/OutputStreamSink;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    invoke-virtual {v5}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const-string v7, "getOutputStream()"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v6, v1

    check-cast v6, Lokio/Timeout;

    invoke-direct {v4, v5, v6}, Lokio/OutputStreamSink;-><init>(Ljava/io/OutputStream;Lokio/Timeout;)V

    move-object v2, v3

    .line 124
    move-object v3, v1

    move-object v4, v2

    check-cast v4, Lokio/Sink;

    invoke-virtual {v3, v4}, Lokio/SocketAsyncTimeout;->sink(Lokio/Sink;)Lokio/Sink;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method public static final varargs sink(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Lokio/Sink;
    .locals 6
    .param p0    # Ljava/nio/file/Path;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # [Ljava/nio/file/OpenOption;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lorg/codehaus/mojo/animal_sniffer/IgnoreJRERequirement;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string v3, "$this$sink"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v1

    const-string v3, "options"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 184
    move-object v2, v0

    move-object v3, v1

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    array-length v4, v4

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/nio/file/OpenOption;

    invoke-static {v2, v3}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object v2

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Files.newOutputStream(this, *options)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lokio/Okio;->sink(Ljava/io/OutputStream;)Lokio/Sink;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public static synthetic sink$default(Ljava/io/File;ZILjava/lang/Object;)Lokio/Sink;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, v2

    const/4 v5, 0x1

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_0

    .line 170
    const/4 v4, 0x0

    move v1, v4

    :cond_0
    move-object v4, v0

    move v5, v1

    invoke-static {v4, v5}, Lokio/Okio;->sink(Ljava/io/File;Z)Lokio/Sink;

    move-result-object v4

    move-object v0, v4

    return-object v0
.end method

.method public static final source(Ljava/io/File;)Lokio/Source;
    .locals 7
    .param p0    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v3, v0

    const-string v4, "$this$source"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    move-object v3, v0

    move-object v1, v3

    const/4 v3, 0x0

    move v2, v3

    new-instance v3, Ljava/io/FileInputStream;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    check-cast v3, Ljava/io/InputStream;

    invoke-static {v3}, Lokio/Okio;->source(Ljava/io/InputStream;)Lokio/Source;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method public static final source(Ljava/io/InputStream;)Lokio/Source;
    .locals 7
    .param p0    # Ljava/io/InputStream;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, v0

    const-string v2, "$this$source"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    new-instance v1, Lokio/InputStreamSource;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    move-object v3, v0

    new-instance v4, Lokio/Timeout;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Lokio/Timeout;-><init>()V

    invoke-direct {v2, v3, v4}, Lokio/InputStreamSource;-><init>(Ljava/io/InputStream;Lokio/Timeout;)V

    check-cast v1, Lokio/Source;

    move-object v0, v1

    return-object v0
.end method

.method public static final source(Ljava/net/Socket;)Lokio/Source;
    .locals 9
    .param p0    # Ljava/net/Socket;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v3, v0

    const-string v4, "$this$source"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    new-instance v3, Lokio/SocketAsyncTimeout;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    invoke-direct {v4, v5}, Lokio/SocketAsyncTimeout;-><init>(Ljava/net/Socket;)V

    move-object v1, v3

    .line 135
    new-instance v3, Lokio/InputStreamSource;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    invoke-virtual {v5}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const-string v7, "getInputStream()"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v6, v1

    check-cast v6, Lokio/Timeout;

    invoke-direct {v4, v5, v6}, Lokio/InputStreamSource;-><init>(Ljava/io/InputStream;Lokio/Timeout;)V

    move-object v2, v3

    .line 136
    move-object v3, v1

    move-object v4, v2

    check-cast v4, Lokio/Source;

    invoke-virtual {v3, v4}, Lokio/SocketAsyncTimeout;->source(Lokio/Source;)Lokio/Source;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method public static final varargs source(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Lokio/Source;
    .locals 6
    .param p0    # Ljava/nio/file/Path;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # [Ljava/nio/file/OpenOption;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lorg/codehaus/mojo/animal_sniffer/IgnoreJRERequirement;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string v3, "$this$source"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v1

    const-string v3, "options"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 190
    move-object v2, v0

    move-object v3, v1

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    array-length v4, v4

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/nio/file/OpenOption;

    invoke-static {v2, v3}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object v2

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Files.newInputStream(this, *options)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lokio/Okio;->source(Ljava/io/InputStream;)Lokio/Source;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method
