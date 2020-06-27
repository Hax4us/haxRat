.class Lokhttp3/internal/http2/Http2Connection$1;
.super Lokhttp3/internal/NamedRunnable;
.source "Http2Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/internal/http2/Http2Connection;->writeSynResetLater(ILokhttp3/internal/http2/ErrorCode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lokhttp3/internal/http2/Http2Connection;

.field final synthetic val$errorCode:Lokhttp3/internal/http2/ErrorCode;

.field final synthetic val$streamId:I


# direct methods
.method varargs constructor <init>(Lokhttp3/internal/http2/Http2Connection;Ljava/lang/String;[Ljava/lang/Object;ILokhttp3/internal/http2/ErrorCode;)V
    .locals 9

    .prologue
    .line 304
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Lokhttp3/internal/http2/Http2Connection$1;->this$0:Lokhttp3/internal/http2/Http2Connection;

    move-object v6, v0

    move v7, v4

    iput v7, v6, Lokhttp3/internal/http2/Http2Connection$1;->val$streamId:I

    move-object v6, v0

    move-object v7, v5

    iput-object v7, v6, Lokhttp3/internal/http2/Http2Connection$1;->val$errorCode:Lokhttp3/internal/http2/ErrorCode;

    move-object v6, v0

    move-object v7, v2

    move-object v8, v3

    invoke-direct {v6, v7, v8}, Lokhttp3/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 5

    .prologue
    .line 307
    move-object v0, p0

    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lokhttp3/internal/http2/Http2Connection$1;->this$0:Lokhttp3/internal/http2/Http2Connection;

    move-object v3, v0

    iget v3, v3, Lokhttp3/internal/http2/Http2Connection$1;->val$streamId:I

    move-object v4, v0

    iget-object v4, v4, Lokhttp3/internal/http2/Http2Connection$1;->val$errorCode:Lokhttp3/internal/http2/ErrorCode;

    invoke-virtual {v2, v3, v4}, Lokhttp3/internal/http2/Http2Connection;->writeSynReset(ILokhttp3/internal/http2/ErrorCode;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 310
    :goto_0
    return-void

    .line 308
    :catch_0
    move-exception v2

    move-object v1, v2

    goto :goto_0
.end method
