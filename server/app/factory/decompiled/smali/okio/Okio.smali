.class public final Lokio/Okio;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "okio/Okio__JvmOkioKt",
        "okio/Okio__OkioKt"
    }
    k = 0x4
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# direct methods
.method public static final appendingSink(Ljava/io/File;)Lokio/Sink;
    .locals 2
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
    .line 1
    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Lokio/Okio__JvmOkioKt;->appendingSink(Ljava/io/File;)Lokio/Sink;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static final blackhole()Lokio/Sink;
    .locals 1
    .annotation build Lkotlin/jvm/JvmName;
        name = "blackhole"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 1
    invoke-static {}, Lokio/Okio__OkioKt;->blackhole()Lokio/Sink;

    move-result-object v0

    return-object v0
.end method

.method public static final buffer(Lokio/Sink;)Lokio/BufferedSink;
    .locals 2
    .param p0    # Lokio/Sink;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 1
    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Lokio/Okio__OkioKt;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static final buffer(Lokio/Source;)Lokio/BufferedSource;
    .locals 2
    .param p0    # Lokio/Source;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 1
    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Lokio/Okio__OkioKt;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static final isAndroidGetsocknameError(Ljava/lang/AssertionError;)Z
    .locals 2
    .param p0    # Ljava/lang/AssertionError;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    .line 1
    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Lokio/Okio__JvmOkioKt;->isAndroidGetsocknameError(Ljava/lang/AssertionError;)Z

    move-result v1

    move v0, v1

    return v0
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
    .locals 4
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
    .line 1
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-static {v2, v3}, Lokio/Okio__JvmOkioKt;->sink(Ljava/io/File;Z)Lokio/Sink;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public static final sink(Ljava/io/OutputStream;)Lokio/Sink;
    .locals 2
    .param p0    # Ljava/io/OutputStream;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 1
    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Lokio/Okio__JvmOkioKt;->sink(Ljava/io/OutputStream;)Lokio/Sink;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static final sink(Ljava/net/Socket;)Lokio/Sink;
    .locals 2
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
    .line 1
    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Lokio/Okio__JvmOkioKt;->sink(Ljava/net/Socket;)Lokio/Sink;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static final varargs sink(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Lokio/Sink;
    .locals 4
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
    .line 1
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Lokio/Okio__JvmOkioKt;->sink(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Lokio/Sink;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public static synthetic sink$default(Ljava/io/File;ZILjava/lang/Object;)Lokio/Sink;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 1
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, v0

    move v5, v1

    move v6, v2

    move-object v7, v3

    invoke-static {v4, v5, v6, v7}, Lokio/Okio__JvmOkioKt;->sink$default(Ljava/io/File;ZILjava/lang/Object;)Lokio/Sink;

    move-result-object v4

    move-object v0, v4

    return-object v0
.end method

.method public static final source(Ljava/io/File;)Lokio/Source;
    .locals 2
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
    .line 1
    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Lokio/Okio__JvmOkioKt;->source(Ljava/io/File;)Lokio/Source;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static final source(Ljava/io/InputStream;)Lokio/Source;
    .locals 2
    .param p0    # Ljava/io/InputStream;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 1
    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Lokio/Okio__JvmOkioKt;->source(Ljava/io/InputStream;)Lokio/Source;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static final source(Ljava/net/Socket;)Lokio/Source;
    .locals 2
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
    .line 1
    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Lokio/Okio__JvmOkioKt;->source(Ljava/net/Socket;)Lokio/Source;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static final varargs source(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Lokio/Source;
    .locals 4
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
    .line 1
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Lokio/Okio__JvmOkioKt;->source(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Lokio/Source;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method
