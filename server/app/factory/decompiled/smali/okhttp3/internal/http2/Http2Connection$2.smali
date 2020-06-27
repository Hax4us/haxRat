.class Lokhttp3/internal/http2/Http2Connection$2;
.super Lokhttp3/internal/NamedRunnable;
.source "Http2Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/internal/http2/Http2Connection;->writeWindowUpdateLater(IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lokhttp3/internal/http2/Http2Connection;

.field final synthetic val$streamId:I

.field final synthetic val$unacknowledgedBytesRead:J


# direct methods
.method varargs constructor <init>(Lokhttp3/internal/http2/Http2Connection;Ljava/lang/String;[Ljava/lang/Object;IJ)V
    .locals 10

    .prologue
    .line 319
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-wide v5, p5

    move-object v7, v0

    move-object v8, v1

    iput-object v8, v7, Lokhttp3/internal/http2/Http2Connection$2;->this$0:Lokhttp3/internal/http2/Http2Connection;

    move-object v7, v0

    move v8, v4

    iput v8, v7, Lokhttp3/internal/http2/Http2Connection$2;->val$streamId:I

    move-object v7, v0

    move-wide v8, v5

    iput-wide v8, v7, Lokhttp3/internal/http2/Http2Connection$2;->val$unacknowledgedBytesRead:J

    move-object v7, v0

    move-object v8, v2

    move-object v9, v3

    invoke-direct {v7, v8, v9}, Lokhttp3/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 6

    .prologue
    .line 322
    move-object v0, p0

    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lokhttp3/internal/http2/Http2Connection$2;->this$0:Lokhttp3/internal/http2/Http2Connection;

    iget-object v2, v2, Lokhttp3/internal/http2/Http2Connection;->writer:Lokhttp3/internal/http2/Http2Writer;

    move-object v3, v0

    iget v3, v3, Lokhttp3/internal/http2/Http2Connection$2;->val$streamId:I

    move-object v4, v0

    iget-wide v4, v4, Lokhttp3/internal/http2/Http2Connection$2;->val$unacknowledgedBytesRead:J

    invoke-virtual {v2, v3, v4, v5}, Lokhttp3/internal/http2/Http2Writer;->windowUpdate(IJ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 325
    :goto_0
    return-void

    .line 323
    :catch_0
    move-exception v2

    move-object v1, v2

    goto :goto_0
.end method
