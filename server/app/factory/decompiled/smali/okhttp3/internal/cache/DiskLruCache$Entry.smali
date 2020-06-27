.class final Lokhttp3/internal/cache/DiskLruCache$Entry;
.super Ljava/lang/Object;
.source "DiskLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/cache/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Entry"
.end annotation


# instance fields
.field final cleanFiles:[Ljava/io/File;

.field currentEditor:Lokhttp3/internal/cache/DiskLruCache$Editor;

.field final dirtyFiles:[Ljava/io/File;

.field final key:Ljava/lang/String;

.field final lengths:[J

.field readable:Z

.field sequenceNumber:J

.field final synthetic this$0:Lokhttp3/internal/cache/DiskLruCache;


# direct methods
.method constructor <init>(Lokhttp3/internal/cache/DiskLruCache;Ljava/lang/String;)V
    .locals 13

    .prologue
    .line 967
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Lokhttp3/internal/cache/DiskLruCache$Entry;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    move-object v6, v0

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 968
    move-object v6, v0

    move-object v7, v2

    iput-object v7, v6, Lokhttp3/internal/cache/DiskLruCache$Entry;->key:Ljava/lang/String;

    .line 970
    move-object v6, v0

    move-object v7, v1

    iget v7, v7, Lokhttp3/internal/cache/DiskLruCache;->valueCount:I

    new-array v7, v7, [J

    iput-object v7, v6, Lokhttp3/internal/cache/DiskLruCache$Entry;->lengths:[J

    .line 971
    move-object v6, v0

    move-object v7, v1

    iget v7, v7, Lokhttp3/internal/cache/DiskLruCache;->valueCount:I

    new-array v7, v7, [Ljava/io/File;

    iput-object v7, v6, Lokhttp3/internal/cache/DiskLruCache$Entry;->cleanFiles:[Ljava/io/File;

    .line 972
    move-object v6, v0

    move-object v7, v1

    iget v7, v7, Lokhttp3/internal/cache/DiskLruCache;->valueCount:I

    new-array v7, v7, [Ljava/io/File;

    iput-object v7, v6, Lokhttp3/internal/cache/DiskLruCache$Entry;->dirtyFiles:[Ljava/io/File;

    .line 975
    new-instance v6, Ljava/lang/StringBuilder;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v8, v2

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v7, 0x2e

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v3, v6

    .line 976
    move-object v6, v3

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    move v4, v6

    .line 977
    const/4 v6, 0x0

    move v5, v6

    :goto_0
    move v6, v5

    move-object v7, v1

    iget v7, v7, Lokhttp3/internal/cache/DiskLruCache;->valueCount:I

    if-ge v6, v7, :cond_0

    .line 978
    move-object v6, v3

    move v7, v5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 979
    move-object v6, v0

    iget-object v6, v6, Lokhttp3/internal/cache/DiskLruCache$Entry;->cleanFiles:[Ljava/io/File;

    move v7, v5

    new-instance v8, Ljava/io/File;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v10, v1

    iget-object v10, v10, Lokhttp3/internal/cache/DiskLruCache;->directory:Ljava/io/File;

    move-object v11, v3

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v8, v6, v7

    .line 980
    move-object v6, v3

    const-string v7, ".tmp"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 981
    move-object v6, v0

    iget-object v6, v6, Lokhttp3/internal/cache/DiskLruCache$Entry;->dirtyFiles:[Ljava/io/File;

    move v7, v5

    new-instance v8, Ljava/io/File;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v10, v1

    iget-object v10, v10, Lokhttp3/internal/cache/DiskLruCache;->directory:Ljava/io/File;

    move-object v11, v3

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v8, v6, v7

    .line 982
    move-object v6, v3

    move v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 977
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 984
    :cond_0
    return-void
.end method

.method private invalidLengths([Ljava/lang/String;)Ljava/io/IOException;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1009
    move-object v0, p0

    move-object v1, p1

    new-instance v2, Ljava/io/IOException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unexpected journal line: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v1

    invoke-static {v5}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method setLengths([Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 988
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    array-length v3, v3

    move-object v4, v0

    iget-object v4, v4, Lokhttp3/internal/cache/DiskLruCache$Entry;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    iget v4, v4, Lokhttp3/internal/cache/DiskLruCache;->valueCount:I

    if-eq v3, v4, :cond_0

    .line 989
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lokhttp3/internal/cache/DiskLruCache$Entry;->invalidLengths([Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v3

    throw v3

    .line 993
    :cond_0
    const/4 v3, 0x0

    move v2, v3

    :goto_0
    move v3, v2

    move-object v4, v1

    :try_start_0
    array-length v4, v4

    if-ge v3, v4, :cond_1

    .line 994
    move-object v3, v0

    iget-object v3, v3, Lokhttp3/internal/cache/DiskLruCache$Entry;->lengths:[J

    move v4, v2

    move-object v5, v1

    move v6, v2

    aget-object v5, v5, v6

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    aput-wide v5, v3, v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 993
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 999
    :cond_1
    return-void

    .line 996
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 997
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lokhttp3/internal/cache/DiskLruCache$Entry;->invalidLengths([Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v3

    throw v3
.end method

.method snapshot()Lokhttp3/internal/cache/DiskLruCache$Snapshot;
    .locals 14

    .prologue
    .line 1018
    move-object v0, p0

    move-object v5, v0

    iget-object v5, v5, Lokhttp3/internal/cache/DiskLruCache$Entry;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    invoke-static {v5}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    new-instance v5, Ljava/lang/AssertionError;

    move-object v13, v5

    move-object v5, v13

    move-object v6, v13

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 1020
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Lokhttp3/internal/cache/DiskLruCache$Entry;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    iget v5, v5, Lokhttp3/internal/cache/DiskLruCache;->valueCount:I

    new-array v5, v5, [Lokio/Source;

    move-object v1, v5

    .line 1021
    move-object v5, v0

    iget-object v5, v5, Lokhttp3/internal/cache/DiskLruCache$Entry;->lengths:[J

    invoke-virtual {v5}, [J->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [J

    move-object v2, v5

    .line 1023
    const/4 v5, 0x0

    move v3, v5

    :goto_0
    move v5, v3

    move-object v6, v0

    :try_start_0
    iget-object v6, v6, Lokhttp3/internal/cache/DiskLruCache$Entry;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    iget v6, v6, Lokhttp3/internal/cache/DiskLruCache;->valueCount:I

    if-ge v5, v6, :cond_1

    .line 1024
    move-object v5, v1

    move v6, v3

    move-object v7, v0

    iget-object v7, v7, Lokhttp3/internal/cache/DiskLruCache$Entry;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    iget-object v7, v7, Lokhttp3/internal/cache/DiskLruCache;->fileSystem:Lokhttp3/internal/io/FileSystem;

    move-object v8, v0

    iget-object v8, v8, Lokhttp3/internal/cache/DiskLruCache$Entry;->cleanFiles:[Ljava/io/File;

    move v9, v3

    aget-object v8, v8, v9

    invoke-interface {v7, v8}, Lokhttp3/internal/io/FileSystem;->source(Ljava/io/File;)Lokio/Source;

    move-result-object v7

    aput-object v7, v5, v6

    .line 1023
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1026
    :cond_1
    new-instance v5, Lokhttp3/internal/cache/DiskLruCache$Snapshot;

    move-object v13, v5

    move-object v5, v13

    move-object v6, v13

    move-object v7, v0

    iget-object v7, v7, Lokhttp3/internal/cache/DiskLruCache$Entry;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    move-object v8, v0

    iget-object v8, v8, Lokhttp3/internal/cache/DiskLruCache$Entry;->key:Ljava/lang/String;

    move-object v9, v0

    iget-wide v9, v9, Lokhttp3/internal/cache/DiskLruCache$Entry;->sequenceNumber:J

    move-object v11, v1

    move-object v12, v2

    invoke-direct/range {v6 .. v12}, Lokhttp3/internal/cache/DiskLruCache$Snapshot;-><init>(Lokhttp3/internal/cache/DiskLruCache;Ljava/lang/String;J[Lokio/Source;[J)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v5

    .line 1042
    :goto_1
    return-object v0

    .line 1027
    :catch_0
    move-exception v5

    move-object v3, v5

    .line 1029
    const/4 v5, 0x0

    move v4, v5

    :goto_2
    move v5, v4

    move-object v6, v0

    iget-object v6, v6, Lokhttp3/internal/cache/DiskLruCache$Entry;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    iget v6, v6, Lokhttp3/internal/cache/DiskLruCache;->valueCount:I

    if-ge v5, v6, :cond_2

    .line 1030
    move-object v5, v1

    move v6, v4

    aget-object v5, v5, v6

    if-eqz v5, :cond_2

    .line 1031
    move-object v5, v1

    move v6, v4

    aget-object v5, v5, v6

    invoke-static {v5}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 1029
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1039
    :cond_2
    move-object v5, v0

    :try_start_1
    iget-object v5, v5, Lokhttp3/internal/cache/DiskLruCache$Entry;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    move-object v6, v0

    invoke-virtual {v5, v6}, Lokhttp3/internal/cache/DiskLruCache;->removeEntry(Lokhttp3/internal/cache/DiskLruCache$Entry;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v5

    .line 1042
    :goto_3
    const/4 v5, 0x0

    move-object v0, v5

    goto :goto_1

    .line 1040
    :catch_1
    move-exception v5

    move-object v4, v5

    goto :goto_3
.end method

.method writeLengths(Lokio/BufferedSink;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1003
    move-object v0, p0

    move-object v1, p1

    move-object v7, v0

    iget-object v7, v7, Lokhttp3/internal/cache/DiskLruCache$Entry;->lengths:[J

    move-object v2, v7

    move-object v7, v2

    array-length v7, v7

    move v3, v7

    const/4 v7, 0x0

    move v4, v7

    :goto_0
    move v7, v4

    move v8, v3

    if-ge v7, v8, :cond_0

    move-object v7, v2

    move v8, v4

    aget-wide v7, v7, v8

    move-wide v5, v7

    .line 1004
    move-object v7, v1

    const/16 v8, 0x20

    invoke-interface {v7, v8}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    move-result-object v7

    move-wide v8, v5

    invoke-interface {v7, v8, v9}, Lokio/BufferedSink;->writeDecimalLong(J)Lokio/BufferedSink;

    move-result-object v7

    .line 1003
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1006
    :cond_0
    return-void
.end method
