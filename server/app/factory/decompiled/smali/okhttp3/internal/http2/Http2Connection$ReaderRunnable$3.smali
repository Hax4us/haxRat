.class Lokhttp3/internal/http2/Http2Connection$ReaderRunnable$3;
.super Lokhttp3/internal/NamedRunnable;
.source "Http2Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->applyAndAckSettings(Lokhttp3/internal/http2/Settings;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;

.field final synthetic val$peerSettings:Lokhttp3/internal/http2/Settings;


# direct methods
.method varargs constructor <init>(Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;Ljava/lang/String;[Ljava/lang/Object;Lokhttp3/internal/http2/Settings;)V
    .locals 8

    .prologue
    .line 695
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable$3;->this$1:Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;

    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable$3;->val$peerSettings:Lokhttp3/internal/http2/Settings;

    move-object v5, v0

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v5, v6, v7}, Lokhttp3/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 4

    .prologue
    .line 698
    move-object v0, p0

    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable$3;->this$1:Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;

    iget-object v2, v2, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    iget-object v2, v2, Lokhttp3/internal/http2/Http2Connection;->writer:Lokhttp3/internal/http2/Http2Writer;

    move-object v3, v0

    iget-object v3, v3, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable$3;->val$peerSettings:Lokhttp3/internal/http2/Settings;

    invoke-virtual {v2, v3}, Lokhttp3/internal/http2/Http2Writer;->applyAndAckSettings(Lokhttp3/internal/http2/Settings;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 701
    :goto_0
    return-void

    .line 699
    :catch_0
    move-exception v2

    move-object v1, v2

    goto :goto_0
.end method
