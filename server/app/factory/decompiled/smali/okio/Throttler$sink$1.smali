.class public final Lokio/Throttler$sink$1;
.super Lokio/ForwardingSink;
.source "Throttler.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokio/Throttler;->sink(Lokio/Sink;)Lokio/Sink;
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
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "okio/Throttler$sink$1",
        "Lokio/ForwardingSink;",
        "write",
        "",
        "source",
        "Lokio/Buffer;",
        "byteCount",
        "",
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
.field final synthetic $sink:Lokio/Sink;

.field final synthetic this$0:Lokio/Throttler;


# direct methods
.method constructor <init>(Lokio/Throttler;Lokio/Sink;Lokio/Sink;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokio/Sink;",
            "Lokio/Sink;",
            ")V"
        }
    .end annotation

    .prologue
    .line 151
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lokio/Throttler$sink$1;->this$0:Lokio/Throttler;

    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lokio/Throttler$sink$1;->$sink:Lokio/Sink;

    move-object v4, v0

    move-object v5, v3

    invoke-direct {v4, v5}, Lokio/ForwardingSink;-><init>(Lokio/Sink;)V

    return-void
.end method


# virtual methods
.method public write(Lokio/Buffer;J)V
    .locals 13
    .param p1    # Lokio/Buffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v8, v1

    const-string v9, "source"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    nop

    .line 155
    move-wide v8, v2

    move-wide v4, v8

    .line 156
    :goto_0
    move-wide v8, v4

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-lez v8, :cond_0

    .line 157
    move-object v8, v0

    :try_start_0
    iget-object v8, v8, Lokio/Throttler$sink$1;->this$0:Lokio/Throttler;

    move-wide v9, v4

    invoke-virtual {v8, v9, v10}, Lokio/Throttler;->take$okio(J)J

    move-result-wide v8

    move-wide v6, v8

    .line 158
    move-object v8, v0

    move-object v9, v1

    move-wide v10, v6

    invoke-super {v8, v9, v10, v11}, Lokio/ForwardingSink;->write(Lokio/Buffer;J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    move-wide v8, v4

    move-wide v10, v6

    sub-long/2addr v8, v10

    move-wide v4, v8

    .line 156
    goto :goto_0

    .line 161
    :catch_0
    move-exception v8

    move-object v4, v8

    .line 162
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->interrupt()V

    .line 163
    new-instance v8, Ljava/io/InterruptedIOException;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const-string v10, "interrupted"

    invoke-direct {v9, v10}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    check-cast v8, Ljava/lang/Throwable;

    throw v8

    .line 164
    :cond_0
    return-void
.end method
