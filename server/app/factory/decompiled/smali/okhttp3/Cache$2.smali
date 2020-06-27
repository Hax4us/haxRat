.class Lokhttp3/Cache$2;
.super Ljava/lang/Object;
.source "Cache.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/Cache;->urls()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field canRemove:Z

.field final delegate:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Lokhttp3/internal/cache/DiskLruCache$Snapshot;",
            ">;"
        }
    .end annotation
.end field

.field nextUrl:Ljava/lang/String;

.field final synthetic this$0:Lokhttp3/Cache;


# direct methods
.method constructor <init>(Lokhttp3/Cache;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 327
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lokhttp3/Cache$2;->this$0:Lokhttp3/Cache;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 328
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lokhttp3/Cache$2;->this$0:Lokhttp3/Cache;

    iget-object v3, v3, Lokhttp3/Cache;->cache:Lokhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v3}, Lokhttp3/internal/cache/DiskLruCache;->snapshots()Ljava/util/Iterator;

    move-result-object v3

    iput-object v3, v2, Lokhttp3/Cache$2;->delegate:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 7

    .prologue
    .line 334
    move-object v0, p0

    move-object v5, v0

    iget-object v5, v5, Lokhttp3/Cache$2;->nextUrl:Ljava/lang/String;

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    move v0, v5

    .line 351
    :goto_0
    return v0

    .line 336
    :cond_0
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Lokhttp3/Cache$2;->canRemove:Z

    .line 337
    :goto_1
    move-object v5, v0

    iget-object v5, v5, Lokhttp3/Cache$2;->delegate:Ljava/util/Iterator;

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 338
    move-object v5, v0

    iget-object v5, v5, Lokhttp3/Cache$2;->delegate:Ljava/util/Iterator;

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lokhttp3/internal/cache/DiskLruCache$Snapshot;

    move-object v1, v5

    .line 340
    move-object v5, v1

    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {v5, v6}, Lokhttp3/internal/cache/DiskLruCache$Snapshot;->getSource(I)Lokio/Source;

    move-result-object v5

    invoke-static {v5}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v5

    move-object v2, v5

    .line 341
    move-object v5, v0

    move-object v6, v2

    invoke-interface {v6}, Lokio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lokhttp3/Cache$2;->nextUrl:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 342
    const/4 v5, 0x1

    move v3, v5

    .line 347
    move-object v5, v1

    invoke-virtual {v5}, Lokhttp3/internal/cache/DiskLruCache$Snapshot;->close()V

    .line 342
    move v5, v3

    move v0, v5

    goto :goto_0

    .line 343
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 347
    move-object v5, v1

    invoke-virtual {v5}, Lokhttp3/internal/cache/DiskLruCache$Snapshot;->close()V

    .line 349
    goto :goto_1

    .line 347
    :catchall_0
    move-exception v5

    move-object v4, v5

    move-object v5, v1

    invoke-virtual {v5}, Lokhttp3/internal/cache/DiskLruCache$Snapshot;->close()V

    move-object v5, v4

    throw v5

    .line 351
    :cond_1
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 327
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lokhttp3/Cache$2;->next()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public next()Ljava/lang/String;
    .locals 5

    .prologue
    .line 355
    move-object v0, p0

    move-object v2, v0

    invoke-virtual {v2}, Lokhttp3/Cache$2;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/util/NoSuchElementException;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/NoSuchElementException;-><init>()V

    throw v2

    .line 356
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lokhttp3/Cache$2;->nextUrl:Ljava/lang/String;

    move-object v1, v2

    .line 357
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lokhttp3/Cache$2;->nextUrl:Ljava/lang/String;

    .line 358
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lokhttp3/Cache$2;->canRemove:Z

    .line 359
    move-object v2, v1

    move-object v0, v2

    return-object v0
.end method

.method public remove()V
    .locals 5

    .prologue
    .line 363
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lokhttp3/Cache$2;->canRemove:Z

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "remove() before next()"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 364
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lokhttp3/Cache$2;->delegate:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 365
    return-void
.end method
