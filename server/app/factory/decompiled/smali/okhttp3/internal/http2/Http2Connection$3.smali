.class Lokhttp3/internal/http2/Http2Connection$3;
.super Lokhttp3/internal/NamedRunnable;
.source "Http2Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/internal/http2/Http2Connection;->writePingLater(ZIILokhttp3/internal/http2/Ping;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lokhttp3/internal/http2/Http2Connection;

.field final synthetic val$payload1:I

.field final synthetic val$payload2:I

.field final synthetic val$ping:Lokhttp3/internal/http2/Ping;

.field final synthetic val$reply:Z


# direct methods
.method varargs constructor <init>(Lokhttp3/internal/http2/Http2Connection;Ljava/lang/String;[Ljava/lang/Object;ZIILokhttp3/internal/http2/Ping;)V
    .locals 11

    .prologue
    .line 352
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object v8, v0

    move-object v9, v1

    iput-object v9, v8, Lokhttp3/internal/http2/Http2Connection$3;->this$0:Lokhttp3/internal/http2/Http2Connection;

    move-object v8, v0

    move v9, v4

    iput-boolean v9, v8, Lokhttp3/internal/http2/Http2Connection$3;->val$reply:Z

    move-object v8, v0

    move v9, v5

    iput v9, v8, Lokhttp3/internal/http2/Http2Connection$3;->val$payload1:I

    move-object v8, v0

    move v9, v6

    iput v9, v8, Lokhttp3/internal/http2/Http2Connection$3;->val$payload2:I

    move-object v8, v0

    move-object v9, v7

    iput-object v9, v8, Lokhttp3/internal/http2/Http2Connection$3;->val$ping:Lokhttp3/internal/http2/Ping;

    move-object v8, v0

    move-object v9, v2

    move-object v10, v3

    invoke-direct {v8, v9, v10}, Lokhttp3/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 7

    .prologue
    .line 355
    move-object v0, p0

    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lokhttp3/internal/http2/Http2Connection$3;->this$0:Lokhttp3/internal/http2/Http2Connection;

    move-object v3, v0

    iget-boolean v3, v3, Lokhttp3/internal/http2/Http2Connection$3;->val$reply:Z

    move-object v4, v0

    iget v4, v4, Lokhttp3/internal/http2/Http2Connection$3;->val$payload1:I

    move-object v5, v0

    iget v5, v5, Lokhttp3/internal/http2/Http2Connection$3;->val$payload2:I

    move-object v6, v0

    iget-object v6, v6, Lokhttp3/internal/http2/Http2Connection$3;->val$ping:Lokhttp3/internal/http2/Ping;

    invoke-virtual {v2, v3, v4, v5, v6}, Lokhttp3/internal/http2/Http2Connection;->writePing(ZIILokhttp3/internal/http2/Ping;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 358
    :goto_0
    return-void

    .line 356
    :catch_0
    move-exception v2

    move-object v1, v2

    goto :goto_0
.end method
