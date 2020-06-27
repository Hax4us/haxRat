.class Lokhttp3/internal/cache/FaultHidingSink;
.super Lokio/ForwardingSink;
.source "FaultHidingSink.java"


# instance fields
.field private hasErrors:Z


# direct methods
.method public constructor <init>(Lokio/Sink;)V
    .locals 4

    .prologue
    .line 28
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lokio/ForwardingSink;-><init>(Lokio/Sink;)V

    .line 29
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
    .line 55
    move-object v0, p0

    move-object v2, v0

    iget-boolean v2, v2, Lokhttp3/internal/cache/FaultHidingSink;->hasErrors:Z

    if-eqz v2, :cond_0

    .line 62
    :goto_0
    return-void

    .line 57
    :cond_0
    move-object v2, v0

    :try_start_0
    invoke-super {v2}, Lokio/ForwardingSink;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :goto_1
    goto :goto_0

    .line 58
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 59
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lokhttp3/internal/cache/FaultHidingSink;->hasErrors:Z

    .line 60
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lokhttp3/internal/cache/FaultHidingSink;->onException(Ljava/io/IOException;)V

    goto :goto_1
.end method

.method public flush()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 45
    move-object v0, p0

    move-object v2, v0

    iget-boolean v2, v2, Lokhttp3/internal/cache/FaultHidingSink;->hasErrors:Z

    if-eqz v2, :cond_0

    .line 52
    :goto_0
    return-void

    .line 47
    :cond_0
    move-object v2, v0

    :try_start_0
    invoke-super {v2}, Lokio/ForwardingSink;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :goto_1
    goto :goto_0

    .line 48
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 49
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lokhttp3/internal/cache/FaultHidingSink;->hasErrors:Z

    .line 50
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lokhttp3/internal/cache/FaultHidingSink;->onException(Ljava/io/IOException;)V

    goto :goto_1
.end method

.method protected onException(Ljava/io/IOException;)V
    .locals 0

    .prologue
    .line 65
    return-void
.end method

.method public write(Lokio/Buffer;J)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 32
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v5, v0

    iget-boolean v5, v5, Lokhttp3/internal/cache/FaultHidingSink;->hasErrors:Z

    if-eqz v5, :cond_0

    .line 33
    move-object v5, v1

    move-wide v6, v2

    invoke-virtual {v5, v6, v7}, Lokio/Buffer;->skip(J)V

    .line 42
    :goto_0
    return-void

    .line 37
    :cond_0
    move-object v5, v0

    move-object v6, v1

    move-wide v7, v2

    :try_start_0
    invoke-super {v5, v6, v7, v8}, Lokio/ForwardingSink;->write(Lokio/Buffer;J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    :goto_1
    goto :goto_0

    .line 38
    :catch_0
    move-exception v5

    move-object v4, v5

    .line 39
    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Lokhttp3/internal/cache/FaultHidingSink;->hasErrors:Z

    .line 40
    move-object v5, v0

    move-object v6, v4

    invoke-virtual {v5, v6}, Lokhttp3/internal/cache/FaultHidingSink;->onException(Ljava/io/IOException;)V

    goto :goto_1
.end method
