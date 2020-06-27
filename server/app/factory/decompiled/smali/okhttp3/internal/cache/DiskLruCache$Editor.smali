.class public final Lokhttp3/internal/cache/DiskLruCache$Editor;
.super Ljava/lang/Object;
.source "DiskLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/cache/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Editor"
.end annotation


# instance fields
.field private done:Z

.field final entry:Lokhttp3/internal/cache/DiskLruCache$Entry;

.field final synthetic this$0:Lokhttp3/internal/cache/DiskLruCache;

.field final written:[Z


# direct methods
.method constructor <init>(Lokhttp3/internal/cache/DiskLruCache;Lokhttp3/internal/cache/DiskLruCache$Entry;)V
    .locals 5

    .prologue
    .line 829
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lokhttp3/internal/cache/DiskLruCache$Editor;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 830
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lokhttp3/internal/cache/DiskLruCache$Editor;->entry:Lokhttp3/internal/cache/DiskLruCache$Entry;

    .line 831
    move-object v3, v0

    move-object v4, v2

    iget-boolean v4, v4, Lokhttp3/internal/cache/DiskLruCache$Entry;->readable:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    :goto_0
    iput-object v4, v3, Lokhttp3/internal/cache/DiskLruCache$Editor;->written:[Z

    .line 832
    return-void

    .line 831
    :cond_0
    move-object v4, v1

    iget v4, v4, Lokhttp3/internal/cache/DiskLruCache;->valueCount:I

    new-array v4, v4, [Z

    goto :goto_0
.end method


# virtual methods
.method public abort()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 927
    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lokhttp3/internal/cache/DiskLruCache$Editor;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v1, v4

    monitor-enter v3

    .line 928
    move-object v3, v0

    :try_start_0
    iget-boolean v3, v3, Lokhttp3/internal/cache/DiskLruCache$Editor;->done:Z

    if-eqz v3, :cond_0

    .line 929
    new-instance v3, Ljava/lang/IllegalStateException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/IllegalStateException;-><init>()V

    throw v3

    .line 935
    :catchall_0
    move-exception v3

    move-object v2, v3

    move-object v3, v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v2

    throw v3

    .line 931
    :cond_0
    move-object v3, v0

    :try_start_1
    iget-object v3, v3, Lokhttp3/internal/cache/DiskLruCache$Editor;->entry:Lokhttp3/internal/cache/DiskLruCache$Entry;

    iget-object v3, v3, Lokhttp3/internal/cache/DiskLruCache$Entry;->currentEditor:Lokhttp3/internal/cache/DiskLruCache$Editor;

    move-object v4, v0

    if-ne v3, v4, :cond_1

    .line 932
    move-object v3, v0

    iget-object v3, v3, Lokhttp3/internal/cache/DiskLruCache$Editor;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lokhttp3/internal/cache/DiskLruCache;->completeEdit(Lokhttp3/internal/cache/DiskLruCache$Editor;Z)V

    .line 934
    :cond_1
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lokhttp3/internal/cache/DiskLruCache$Editor;->done:Z

    .line 935
    move-object v3, v1

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 936
    return-void
.end method

.method public abortUnlessCommitted()V
    .locals 8

    .prologue
    .line 939
    move-object v0, p0

    move-object v4, v0

    iget-object v4, v4, Lokhttp3/internal/cache/DiskLruCache$Editor;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v1, v5

    monitor-enter v4

    .line 940
    move-object v4, v0

    :try_start_0
    iget-boolean v4, v4, Lokhttp3/internal/cache/DiskLruCache$Editor;->done:Z

    if-nez v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Lokhttp3/internal/cache/DiskLruCache$Editor;->entry:Lokhttp3/internal/cache/DiskLruCache$Entry;

    iget-object v4, v4, Lokhttp3/internal/cache/DiskLruCache$Entry;->currentEditor:Lokhttp3/internal/cache/DiskLruCache$Editor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v5, v0

    if-ne v4, v5, :cond_0

    .line 942
    move-object v4, v0

    :try_start_1
    iget-object v4, v4, Lokhttp3/internal/cache/DiskLruCache$Editor;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lokhttp3/internal/cache/DiskLruCache;->completeEdit(Lokhttp3/internal/cache/DiskLruCache$Editor;Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 946
    :cond_0
    :goto_0
    move-object v4, v1

    :try_start_2
    monitor-exit v4

    .line 947
    return-void

    .line 943
    :catch_0
    move-exception v4

    move-object v2, v4

    goto :goto_0

    .line 946
    :catchall_0
    move-exception v4

    move-object v3, v4

    move-object v4, v1

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v4, v3

    throw v4
.end method

.method public commit()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 911
    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lokhttp3/internal/cache/DiskLruCache$Editor;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v1, v4

    monitor-enter v3

    .line 912
    move-object v3, v0

    :try_start_0
    iget-boolean v3, v3, Lokhttp3/internal/cache/DiskLruCache$Editor;->done:Z

    if-eqz v3, :cond_0

    .line 913
    new-instance v3, Ljava/lang/IllegalStateException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/IllegalStateException;-><init>()V

    throw v3

    .line 919
    :catchall_0
    move-exception v3

    move-object v2, v3

    move-object v3, v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v2

    throw v3

    .line 915
    :cond_0
    move-object v3, v0

    :try_start_1
    iget-object v3, v3, Lokhttp3/internal/cache/DiskLruCache$Editor;->entry:Lokhttp3/internal/cache/DiskLruCache$Entry;

    iget-object v3, v3, Lokhttp3/internal/cache/DiskLruCache$Entry;->currentEditor:Lokhttp3/internal/cache/DiskLruCache$Editor;

    move-object v4, v0

    if-ne v3, v4, :cond_1

    .line 916
    move-object v3, v0

    iget-object v3, v3, Lokhttp3/internal/cache/DiskLruCache$Editor;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    move-object v4, v0

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lokhttp3/internal/cache/DiskLruCache;->completeEdit(Lokhttp3/internal/cache/DiskLruCache$Editor;Z)V

    .line 918
    :cond_1
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lokhttp3/internal/cache/DiskLruCache$Editor;->done:Z

    .line 919
    move-object v3, v1

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 920
    return-void
.end method

.method detach()V
    .locals 6

    .prologue
    .line 841
    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lokhttp3/internal/cache/DiskLruCache$Editor;->entry:Lokhttp3/internal/cache/DiskLruCache$Entry;

    iget-object v3, v3, Lokhttp3/internal/cache/DiskLruCache$Entry;->currentEditor:Lokhttp3/internal/cache/DiskLruCache$Editor;

    move-object v4, v0

    if-ne v3, v4, :cond_1

    .line 842
    const/4 v3, 0x0

    move v1, v3

    :goto_0
    move v3, v1

    move-object v4, v0

    iget-object v4, v4, Lokhttp3/internal/cache/DiskLruCache$Editor;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    iget v4, v4, Lokhttp3/internal/cache/DiskLruCache;->valueCount:I

    if-ge v3, v4, :cond_0

    .line 844
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Lokhttp3/internal/cache/DiskLruCache$Editor;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    iget-object v3, v3, Lokhttp3/internal/cache/DiskLruCache;->fileSystem:Lokhttp3/internal/io/FileSystem;

    move-object v4, v0

    iget-object v4, v4, Lokhttp3/internal/cache/DiskLruCache$Editor;->entry:Lokhttp3/internal/cache/DiskLruCache$Entry;

    iget-object v4, v4, Lokhttp3/internal/cache/DiskLruCache$Entry;->dirtyFiles:[Ljava/io/File;

    move v5, v1

    aget-object v4, v4, v5

    invoke-interface {v3, v4}, Lokhttp3/internal/io/FileSystem;->delete(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 842
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 845
    :catch_0
    move-exception v3

    move-object v2, v3

    goto :goto_1

    .line 849
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lokhttp3/internal/cache/DiskLruCache$Editor;->entry:Lokhttp3/internal/cache/DiskLruCache$Entry;

    const/4 v4, 0x0

    iput-object v4, v3, Lokhttp3/internal/cache/DiskLruCache$Entry;->currentEditor:Lokhttp3/internal/cache/DiskLruCache$Editor;

    .line 851
    :cond_1
    return-void
.end method

.method public newSink(I)Lokio/Sink;
    .locals 12

    .prologue
    .line 879
    move-object v0, p0

    move v1, p1

    move-object v7, v0

    iget-object v7, v7, Lokhttp3/internal/cache/DiskLruCache$Editor;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v2, v8

    monitor-enter v7

    .line 880
    move-object v7, v0

    :try_start_0
    iget-boolean v7, v7, Lokhttp3/internal/cache/DiskLruCache$Editor;->done:Z

    if-eqz v7, :cond_0

    .line 881
    new-instance v7, Ljava/lang/IllegalStateException;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    invoke-direct {v8}, Ljava/lang/IllegalStateException;-><init>()V

    throw v7

    .line 903
    :catchall_0
    move-exception v7

    move-object v6, v7

    move-object v7, v2

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v7, v6

    throw v7

    .line 883
    :cond_0
    move-object v7, v0

    :try_start_1
    iget-object v7, v7, Lokhttp3/internal/cache/DiskLruCache$Editor;->entry:Lokhttp3/internal/cache/DiskLruCache$Entry;

    iget-object v7, v7, Lokhttp3/internal/cache/DiskLruCache$Entry;->currentEditor:Lokhttp3/internal/cache/DiskLruCache$Editor;

    move-object v8, v0

    if-eq v7, v8, :cond_1

    .line 884
    invoke-static {}, Lokio/Okio;->blackhole()Lokio/Sink;

    move-result-object v7

    move-object v8, v2

    monitor-exit v8

    move-object v0, v7

    .line 896
    :goto_0
    return-object v0

    .line 886
    :cond_1
    move-object v7, v0

    iget-object v7, v7, Lokhttp3/internal/cache/DiskLruCache$Editor;->entry:Lokhttp3/internal/cache/DiskLruCache$Entry;

    iget-boolean v7, v7, Lokhttp3/internal/cache/DiskLruCache$Entry;->readable:Z

    if-nez v7, :cond_2

    .line 887
    move-object v7, v0

    iget-object v7, v7, Lokhttp3/internal/cache/DiskLruCache$Editor;->written:[Z

    move v8, v1

    const/4 v9, 0x1

    aput-boolean v9, v7, v8

    .line 889
    :cond_2
    move-object v7, v0

    iget-object v7, v7, Lokhttp3/internal/cache/DiskLruCache$Editor;->entry:Lokhttp3/internal/cache/DiskLruCache$Entry;

    iget-object v7, v7, Lokhttp3/internal/cache/DiskLruCache$Entry;->dirtyFiles:[Ljava/io/File;

    move v8, v1

    aget-object v7, v7, v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v3, v7

    .line 892
    move-object v7, v0

    :try_start_2
    iget-object v7, v7, Lokhttp3/internal/cache/DiskLruCache$Editor;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    iget-object v7, v7, Lokhttp3/internal/cache/DiskLruCache;->fileSystem:Lokhttp3/internal/io/FileSystem;

    move-object v8, v3

    invoke-interface {v7, v8}, Lokhttp3/internal/io/FileSystem;->sink(Ljava/io/File;)Lokio/Sink;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v7

    move-object v4, v7

    .line 896
    :try_start_3
    new-instance v7, Lokhttp3/internal/cache/DiskLruCache$Editor$1;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v0

    move-object v10, v4

    invoke-direct {v8, v9, v10}, Lokhttp3/internal/cache/DiskLruCache$Editor$1;-><init>(Lokhttp3/internal/cache/DiskLruCache$Editor;Lokio/Sink;)V

    move-object v8, v2

    monitor-exit v8

    move-object v0, v7

    goto :goto_0

    .line 893
    :catch_0
    move-exception v7

    move-object v5, v7

    .line 894
    invoke-static {}, Lokio/Okio;->blackhole()Lokio/Sink;

    move-result-object v7

    move-object v8, v2

    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v0, v7

    goto :goto_0
.end method

.method public newSource(I)Lokio/Source;
    .locals 9

    .prologue
    .line 858
    move-object v0, p0

    move v1, p1

    move-object v5, v0

    iget-object v5, v5, Lokhttp3/internal/cache/DiskLruCache$Editor;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v2, v6

    monitor-enter v5

    .line 859
    move-object v5, v0

    :try_start_0
    iget-boolean v5, v5, Lokhttp3/internal/cache/DiskLruCache$Editor;->done:Z

    if-eqz v5, :cond_0

    .line 860
    new-instance v5, Ljava/lang/IllegalStateException;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/lang/IllegalStateException;-><init>()V

    throw v5

    .line 870
    :catchall_0
    move-exception v5

    move-object v4, v5

    move-object v5, v2

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v5, v4

    throw v5

    .line 862
    :cond_0
    move-object v5, v0

    :try_start_1
    iget-object v5, v5, Lokhttp3/internal/cache/DiskLruCache$Editor;->entry:Lokhttp3/internal/cache/DiskLruCache$Entry;

    iget-boolean v5, v5, Lokhttp3/internal/cache/DiskLruCache$Entry;->readable:Z

    if-eqz v5, :cond_1

    move-object v5, v0

    iget-object v5, v5, Lokhttp3/internal/cache/DiskLruCache$Editor;->entry:Lokhttp3/internal/cache/DiskLruCache$Entry;

    iget-object v5, v5, Lokhttp3/internal/cache/DiskLruCache$Entry;->currentEditor:Lokhttp3/internal/cache/DiskLruCache$Editor;

    move-object v6, v0

    if-eq v5, v6, :cond_2

    .line 863
    :cond_1
    const/4 v5, 0x0

    move-object v6, v2

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v5

    .line 868
    :goto_0
    return-object v0

    .line 866
    :cond_2
    move-object v5, v0

    :try_start_2
    iget-object v5, v5, Lokhttp3/internal/cache/DiskLruCache$Editor;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    iget-object v5, v5, Lokhttp3/internal/cache/DiskLruCache;->fileSystem:Lokhttp3/internal/io/FileSystem;

    move-object v6, v0

    iget-object v6, v6, Lokhttp3/internal/cache/DiskLruCache$Editor;->entry:Lokhttp3/internal/cache/DiskLruCache$Entry;

    iget-object v6, v6, Lokhttp3/internal/cache/DiskLruCache$Entry;->cleanFiles:[Ljava/io/File;

    move v7, v1

    aget-object v6, v6, v7

    invoke-interface {v5, v6}, Lokhttp3/internal/io/FileSystem;->source(Ljava/io/File;)Lokio/Source;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v5

    move-object v6, v2

    :try_start_3
    monitor-exit v6

    move-object v0, v5

    goto :goto_0

    .line 867
    :catch_0
    move-exception v5

    move-object v3, v5

    .line 868
    const/4 v5, 0x0

    move-object v6, v2

    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v0, v5

    goto :goto_0
.end method
