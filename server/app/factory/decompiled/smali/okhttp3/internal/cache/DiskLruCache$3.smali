.class Lokhttp3/internal/cache/DiskLruCache$3;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/internal/cache/DiskLruCache;->snapshots()Ljava/util/Iterator;
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
        "Lokhttp3/internal/cache/DiskLruCache$Snapshot;",
        ">;"
    }
.end annotation


# instance fields
.field final delegate:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Lokhttp3/internal/cache/DiskLruCache$Entry;",
            ">;"
        }
    .end annotation
.end field

.field nextSnapshot:Lokhttp3/internal/cache/DiskLruCache$Snapshot;

.field removeSnapshot:Lokhttp3/internal/cache/DiskLruCache$Snapshot;

.field final synthetic this$0:Lokhttp3/internal/cache/DiskLruCache;


# direct methods
.method constructor <init>(Lokhttp3/internal/cache/DiskLruCache;)V
    .locals 7

    .prologue
    .line 730
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lokhttp3/internal/cache/DiskLruCache$3;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 732
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    iget-object v5, v5, Lokhttp3/internal/cache/DiskLruCache$3;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    iget-object v5, v5, Lokhttp3/internal/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    iput-object v3, v2, Lokhttp3/internal/cache/DiskLruCache$3;->delegate:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 8

    .prologue
    .line 741
    move-object v0, p0

    move-object v5, v0

    iget-object v5, v5, Lokhttp3/internal/cache/DiskLruCache$3;->nextSnapshot:Lokhttp3/internal/cache/DiskLruCache$Snapshot;

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    move v0, v5

    .line 756
    :goto_0
    return v0

    .line 743
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Lokhttp3/internal/cache/DiskLruCache$3;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    move-object v1, v6

    monitor-enter v5

    .line 745
    move-object v5, v0

    :try_start_0
    iget-object v5, v5, Lokhttp3/internal/cache/DiskLruCache$3;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    iget-boolean v5, v5, Lokhttp3/internal/cache/DiskLruCache;->closed:Z

    if-eqz v5, :cond_1

    const/4 v5, 0x0

    move-object v6, v1

    monitor-exit v6

    move v0, v5

    goto :goto_0

    .line 747
    :cond_1
    :goto_1
    move-object v5, v0

    iget-object v5, v5, Lokhttp3/internal/cache/DiskLruCache$3;->delegate:Ljava/util/Iterator;

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 748
    move-object v5, v0

    iget-object v5, v5, Lokhttp3/internal/cache/DiskLruCache$3;->delegate:Ljava/util/Iterator;

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lokhttp3/internal/cache/DiskLruCache$Entry;

    move-object v2, v5

    .line 749
    move-object v5, v2

    invoke-virtual {v5}, Lokhttp3/internal/cache/DiskLruCache$Entry;->snapshot()Lokhttp3/internal/cache/DiskLruCache$Snapshot;

    move-result-object v5

    move-object v3, v5

    .line 750
    move-object v5, v3

    if-nez v5, :cond_2

    goto :goto_1

    .line 751
    :cond_2
    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Lokhttp3/internal/cache/DiskLruCache$3;->nextSnapshot:Lokhttp3/internal/cache/DiskLruCache$Snapshot;

    .line 752
    const/4 v5, 0x1

    move-object v6, v1

    monitor-exit v6

    move v0, v5

    goto :goto_0

    .line 754
    :cond_3
    move-object v5, v1

    monitor-exit v5

    .line 756
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0

    .line 754
    :catchall_0
    move-exception v5

    move-object v4, v5

    move-object v5, v1

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v5, v4

    throw v5
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 730
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lokhttp3/internal/cache/DiskLruCache$3;->next()Lokhttp3/internal/cache/DiskLruCache$Snapshot;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public next()Lokhttp3/internal/cache/DiskLruCache$Snapshot;
    .locals 4

    .prologue
    .line 760
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lokhttp3/internal/cache/DiskLruCache$3;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/NoSuchElementException;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 761
    :cond_0
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lokhttp3/internal/cache/DiskLruCache$3;->nextSnapshot:Lokhttp3/internal/cache/DiskLruCache$Snapshot;

    iput-object v2, v1, Lokhttp3/internal/cache/DiskLruCache$3;->removeSnapshot:Lokhttp3/internal/cache/DiskLruCache$Snapshot;

    .line 762
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lokhttp3/internal/cache/DiskLruCache$3;->nextSnapshot:Lokhttp3/internal/cache/DiskLruCache$Snapshot;

    .line 763
    move-object v1, v0

    iget-object v1, v1, Lokhttp3/internal/cache/DiskLruCache$3;->removeSnapshot:Lokhttp3/internal/cache/DiskLruCache$Snapshot;

    move-object v0, v1

    return-object v0
.end method

.method public remove()V
    .locals 7

    .prologue
    .line 767
    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lokhttp3/internal/cache/DiskLruCache$3;->removeSnapshot:Lokhttp3/internal/cache/DiskLruCache$Snapshot;

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/IllegalStateException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "remove() before next()"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 769
    :cond_0
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Lokhttp3/internal/cache/DiskLruCache$3;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    move-object v4, v0

    iget-object v4, v4, Lokhttp3/internal/cache/DiskLruCache$3;->removeSnapshot:Lokhttp3/internal/cache/DiskLruCache$Snapshot;

    invoke-static {v4}, Lokhttp3/internal/cache/DiskLruCache$Snapshot;->access$000(Lokhttp3/internal/cache/DiskLruCache$Snapshot;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lokhttp3/internal/cache/DiskLruCache;->remove(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 774
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lokhttp3/internal/cache/DiskLruCache$3;->removeSnapshot:Lokhttp3/internal/cache/DiskLruCache$Snapshot;

    .line 776
    :goto_0
    return-void

    .line 770
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 774
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lokhttp3/internal/cache/DiskLruCache$3;->removeSnapshot:Lokhttp3/internal/cache/DiskLruCache$Snapshot;

    .line 775
    goto :goto_0

    .line 774
    :catchall_0
    move-exception v3

    move-object v2, v3

    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lokhttp3/internal/cache/DiskLruCache$3;->removeSnapshot:Lokhttp3/internal/cache/DiskLruCache$Snapshot;

    move-object v3, v2

    throw v3
.end method
