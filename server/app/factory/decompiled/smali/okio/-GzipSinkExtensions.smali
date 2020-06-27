.class public final Lokio/-GzipSinkExtensions;
.super Ljava/lang/Object;
.source "GzipSink.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\r\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u0086\u0008\u00a8\u0006\u0003"
    }
    d2 = {
        "gzip",
        "Lokio/GzipSink;",
        "Lokio/Sink;",
        "okio"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation

.annotation build Lkotlin/jvm/JvmName;
    name = "-GzipSinkExtensions"
.end annotation


# direct methods
.method public static final gzip(Lokio/Sink;)Lokio/GzipSink;
    .locals 6
    .param p0    # Lokio/Sink;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    move-object v0, p0

    const/4 v2, 0x0

    move v1, v2

    move-object v2, v0

    const-string v3, "$this$gzip"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    new-instance v2, Lokio/GzipSink;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Lokio/GzipSink;-><init>(Lokio/Sink;)V

    move-object v0, v2

    return-object v0
.end method
