.class public final Lokio/Throttler$source$1;
.super Lokio/ForwardingSource;
.source "Throttler.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokio/Throttler;->source(Lokio/Source;)Lokio/Source;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0003H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "okio/Throttler$source$1",
        "Lokio/ForwardingSource;",
        "read",
        "",
        "sink",
        "Lokio/Buffer;",
        "byteCount",
        "okio"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic $source:Lokio/Source;

.field final synthetic this$0:Lokio/Throttler;


# direct methods
.method constructor <init>(Lokio/Throttler;Lokio/Source;Lokio/Source;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokio/Source;",
            "Lokio/Source;",
            ")V"
        }
    .end annotation

    .prologue
    .line 136
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lokio/Throttler$source$1;->this$0:Lokio/Throttler;

    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lokio/Throttler$source$1;->$source:Lokio/Source;

    move-object v4, v0

    move-object v5, v3

    invoke-direct {v4, v5}, Lokio/ForwardingSource;-><init>(Lokio/Source;)V

    return-void
.end method


# virtual methods
.method public read(Lokio/Buffer;J)J
    .locals 11
    .param p1    # Lokio/Buffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v6, v1

    const-string v7, "sink"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    nop

    .line 139
    move-object v6, v0

    :try_start_0
    iget-object v6, v6, Lokio/Throttler$source$1;->this$0:Lokio/Throttler;

    move-wide v7, v2

    invoke-virtual {v6, v7, v8}, Lokio/Throttler;->take$okio(J)J

    move-result-wide v6

    move-wide v4, v6

    .line 140
    move-object v6, v0

    move-object v7, v1

    move-wide v8, v4

    invoke-super {v6, v7, v8, v9}, Lokio/ForwardingSource;->read(Lokio/Buffer;J)J
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v6

    move-wide v0, v6

    return-wide v0

    .line 141
    :catch_0
    move-exception v6

    move-object v4, v6

    .line 142
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->interrupt()V

    .line 143
    new-instance v6, Ljava/io/InterruptedIOException;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const-string v8, "interrupted"

    invoke-direct {v7, v8}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    check-cast v6, Ljava/lang/Throwable;

    throw v6
.end method
