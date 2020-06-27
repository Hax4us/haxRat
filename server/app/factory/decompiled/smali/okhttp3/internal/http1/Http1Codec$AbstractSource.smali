.class abstract Lokhttp3/internal/http1/Http1Codec$AbstractSource;
.super Ljava/lang/Object;
.source "Http1Codec.java"

# interfaces
.implements Lokio/Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/http1/Http1Codec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "AbstractSource"
.end annotation


# instance fields
.field protected closed:Z

.field final synthetic this$0:Lokhttp3/internal/http1/Http1Codec;

.field protected final timeout:Lokio/ForwardingTimeout;


# direct methods
.method private constructor <init>(Lokhttp3/internal/http1/Http1Codec;)V
    .locals 7

    .prologue
    .line 344
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lokhttp3/internal/http1/Http1Codec$AbstractSource;->this$0:Lokhttp3/internal/http1/Http1Codec;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 345
    move-object v2, v0

    new-instance v3, Lokio/ForwardingTimeout;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    iget-object v5, v5, Lokhttp3/internal/http1/Http1Codec$AbstractSource;->this$0:Lokhttp3/internal/http1/Http1Codec;

    iget-object v5, v5, Lokhttp3/internal/http1/Http1Codec;->source:Lokio/BufferedSource;

    invoke-interface {v5}, Lokio/BufferedSource;->timeout()Lokio/Timeout;

    move-result-object v5

    invoke-direct {v4, v5}, Lokio/ForwardingTimeout;-><init>(Lokio/Timeout;)V

    iput-object v3, v2, Lokhttp3/internal/http1/Http1Codec$AbstractSource;->timeout:Lokio/ForwardingTimeout;

    return-void
.end method

.method synthetic constructor <init>(Lokhttp3/internal/http1/Http1Codec;Lokhttp3/internal/http1/Http1Codec$1;)V
    .locals 5

    .prologue
    .line 344
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lokhttp3/internal/http1/Http1Codec$AbstractSource;-><init>(Lokhttp3/internal/http1/Http1Codec;)V

    return-void
.end method


# virtual methods
.method protected final endOfInput(Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 357
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lokhttp3/internal/http1/Http1Codec$AbstractSource;->this$0:Lokhttp3/internal/http1/Http1Codec;

    iget v2, v2, Lokhttp3/internal/http1/Http1Codec;->state:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_0

    .line 366
    :goto_0
    return-void

    .line 358
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lokhttp3/internal/http1/Http1Codec$AbstractSource;->this$0:Lokhttp3/internal/http1/Http1Codec;

    iget v2, v2, Lokhttp3/internal/http1/Http1Codec;->state:I

    const/4 v3, 0x5

    if-eq v2, v3, :cond_1

    new-instance v2, Ljava/lang/IllegalStateException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Lokhttp3/internal/http1/Http1Codec$AbstractSource;->this$0:Lokhttp3/internal/http1/Http1Codec;

    iget v5, v5, Lokhttp3/internal/http1/Http1Codec;->state:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 360
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lokhttp3/internal/http1/Http1Codec$AbstractSource;->this$0:Lokhttp3/internal/http1/Http1Codec;

    move-object v3, v0

    iget-object v3, v3, Lokhttp3/internal/http1/Http1Codec$AbstractSource;->timeout:Lokio/ForwardingTimeout;

    invoke-virtual {v2, v3}, Lokhttp3/internal/http1/Http1Codec;->detachTimeout(Lokio/ForwardingTimeout;)V

    .line 362
    move-object v2, v0

    iget-object v2, v2, Lokhttp3/internal/http1/Http1Codec$AbstractSource;->this$0:Lokhttp3/internal/http1/Http1Codec;

    const/4 v3, 0x6

    iput v3, v2, Lokhttp3/internal/http1/Http1Codec;->state:I

    .line 363
    move-object v2, v0

    iget-object v2, v2, Lokhttp3/internal/http1/Http1Codec$AbstractSource;->this$0:Lokhttp3/internal/http1/Http1Codec;

    iget-object v2, v2, Lokhttp3/internal/http1/Http1Codec;->streamAllocation:Lokhttp3/internal/connection/StreamAllocation;

    if-eqz v2, :cond_2

    .line 364
    move-object v2, v0

    iget-object v2, v2, Lokhttp3/internal/http1/Http1Codec$AbstractSource;->this$0:Lokhttp3/internal/http1/Http1Codec;

    iget-object v2, v2, Lokhttp3/internal/http1/Http1Codec;->streamAllocation:Lokhttp3/internal/connection/StreamAllocation;

    move v3, v1

    if-nez v3, :cond_3

    const/4 v3, 0x1

    :goto_1
    move-object v4, v0

    iget-object v4, v4, Lokhttp3/internal/http1/Http1Codec$AbstractSource;->this$0:Lokhttp3/internal/http1/Http1Codec;

    invoke-virtual {v2, v3, v4}, Lokhttp3/internal/connection/StreamAllocation;->streamFinished(ZLokhttp3/internal/http/HttpCodec;)V

    .line 366
    :cond_2
    goto :goto_0

    .line 364
    :cond_3
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public timeout()Lokio/Timeout;
    .locals 2

    .prologue
    .line 349
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/internal/http1/Http1Codec$AbstractSource;->timeout:Lokio/ForwardingTimeout;

    move-object v0, v1

    return-object v0
.end method
