.class Lokhttp3/internal/http1/Http1Codec$UnknownLengthSource;
.super Lokhttp3/internal/http1/Http1Codec$AbstractSource;
.source "Http1Codec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/http1/Http1Codec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UnknownLengthSource"
.end annotation


# instance fields
.field private inputExhausted:Z

.field final synthetic this$0:Lokhttp3/internal/http1/Http1Codec;


# direct methods
.method constructor <init>(Lokhttp3/internal/http1/Http1Codec;)V
    .locals 5

    .prologue
    .line 474
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lokhttp3/internal/http1/Http1Codec$UnknownLengthSource;->this$0:Lokhttp3/internal/http1/Http1Codec;

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/http1/Http1Codec$AbstractSource;-><init>(Lokhttp3/internal/http1/Http1Codec;Lokhttp3/internal/http1/Http1Codec$1;)V

    .line 475
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 493
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lokhttp3/internal/http1/Http1Codec$UnknownLengthSource;->closed:Z

    if-eqz v1, :cond_0

    .line 498
    :goto_0
    return-void

    .line 494
    :cond_0
    move-object v1, v0

    iget-boolean v1, v1, Lokhttp3/internal/http1/Http1Codec$UnknownLengthSource;->inputExhausted:Z

    if-nez v1, :cond_1

    .line 495
    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lokhttp3/internal/http1/Http1Codec$UnknownLengthSource;->endOfInput(Z)V

    .line 497
    :cond_1
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lokhttp3/internal/http1/Http1Codec$UnknownLengthSource;->closed:Z

    .line 498
    goto :goto_0
.end method

.method public read(Lokio/Buffer;J)J
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 479
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v6, v2

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-gez v6, :cond_0

    new-instance v6, Ljava/lang/IllegalArgumentException;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "byteCount < 0: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide v9, v2

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 480
    :cond_0
    move-object v6, v0

    iget-boolean v6, v6, Lokhttp3/internal/http1/Http1Codec$UnknownLengthSource;->closed:Z

    if-eqz v6, :cond_1

    new-instance v6, Ljava/lang/IllegalStateException;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    const-string v8, "closed"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 481
    :cond_1
    move-object v6, v0

    iget-boolean v6, v6, Lokhttp3/internal/http1/Http1Codec$UnknownLengthSource;->inputExhausted:Z

    if-eqz v6, :cond_2

    const-wide/16 v6, -0x1

    move-wide v0, v6

    .line 489
    :goto_0
    return-wide v0

    .line 483
    :cond_2
    move-object v6, v0

    iget-object v6, v6, Lokhttp3/internal/http1/Http1Codec$UnknownLengthSource;->this$0:Lokhttp3/internal/http1/Http1Codec;

    iget-object v6, v6, Lokhttp3/internal/http1/Http1Codec;->source:Lokio/BufferedSource;

    move-object v7, v1

    move-wide v8, v2

    invoke-interface {v6, v7, v8, v9}, Lokio/BufferedSource;->read(Lokio/Buffer;J)J

    move-result-wide v6

    move-wide v4, v6

    .line 484
    move-wide v6, v4

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-nez v6, :cond_3

    .line 485
    move-object v6, v0

    const/4 v7, 0x1

    iput-boolean v7, v6, Lokhttp3/internal/http1/Http1Codec$UnknownLengthSource;->inputExhausted:Z

    .line 486
    move-object v6, v0

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lokhttp3/internal/http1/Http1Codec$UnknownLengthSource;->endOfInput(Z)V

    .line 487
    const-wide/16 v6, -0x1

    move-wide v0, v6

    goto :goto_0

    .line 489
    :cond_3
    move-wide v6, v4

    move-wide v0, v6

    goto :goto_0
.end method
