.class Lokhttp3/internal/http2/Http2Codec$StreamFinishingSource;
.super Lokio/ForwardingSource;
.source "Http2Codec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/http2/Http2Codec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StreamFinishingSource"
.end annotation


# instance fields
.field final synthetic this$0:Lokhttp3/internal/http2/Http2Codec;


# direct methods
.method public constructor <init>(Lokhttp3/internal/http2/Http2Codec;Lokio/Source;)V
    .locals 5

    .prologue
    .line 171
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lokhttp3/internal/http2/Http2Codec$StreamFinishingSource;->this$0:Lokhttp3/internal/http2/Http2Codec;

    .line 172
    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Lokio/ForwardingSource;-><init>(Lokio/Source;)V

    .line 173
    return-void
.end method


# virtual methods
.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 176
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/internal/http2/Http2Codec$StreamFinishingSource;->this$0:Lokhttp3/internal/http2/Http2Codec;

    iget-object v1, v1, Lokhttp3/internal/http2/Http2Codec;->streamAllocation:Lokhttp3/internal/connection/StreamAllocation;

    const/4 v2, 0x0

    move-object v3, v0

    iget-object v3, v3, Lokhttp3/internal/http2/Http2Codec$StreamFinishingSource;->this$0:Lokhttp3/internal/http2/Http2Codec;

    invoke-virtual {v1, v2, v3}, Lokhttp3/internal/connection/StreamAllocation;->streamFinished(ZLokhttp3/internal/http/HttpCodec;)V

    .line 177
    move-object v1, v0

    invoke-super {v1}, Lokio/ForwardingSource;->close()V

    .line 178
    return-void
.end method
