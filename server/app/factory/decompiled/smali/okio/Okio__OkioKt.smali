.class final synthetic Lokio/Okio__OkioKt;
.super Ljava/lang/Object;
.source "Okio.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\r\u0010\u0000\u001a\u00020\u0001H\u0007\u00a2\u0006\u0002\u0008\u0002\u001a\n\u0010\u0003\u001a\u00020\u0004*\u00020\u0001\u001a\n\u0010\u0003\u001a\u00020\u0005*\u00020\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "blackholeSink",
        "Lokio/Sink;",
        "blackhole",
        "buffer",
        "Lokio/BufferedSink;",
        "Lokio/BufferedSource;",
        "Lokio/Source;",
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
.method public static final blackhole()Lokio/Sink;
    .locals 3
    .annotation build Lkotlin/jvm/JvmName;
        name = "blackhole"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 41
    new-instance v0, Lokio/BlackholeSink;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lokio/BlackholeSink;-><init>()V

    check-cast v0, Lokio/Sink;

    return-object v0
.end method

.method public static final buffer(Lokio/Sink;)Lokio/BufferedSink;
    .locals 5
    .param p0    # Lokio/Sink;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, v0

    const-string v2, "$this$buffer"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    new-instance v1, Lokio/RealBufferedSink;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lokio/RealBufferedSink;-><init>(Lokio/Sink;)V

    check-cast v1, Lokio/BufferedSink;

    move-object v0, v1

    return-object v0
.end method

.method public static final buffer(Lokio/Source;)Lokio/BufferedSource;
    .locals 5
    .param p0    # Lokio/Source;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, v0

    const-string v2, "$this$buffer"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    new-instance v1, Lokio/RealBufferedSource;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lokio/RealBufferedSource;-><init>(Lokio/Source;)V

    check-cast v1, Lokio/BufferedSource;

    move-object v0, v1

    return-object v0
.end method
