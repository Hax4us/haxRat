.class public final Lokhttp3/internal/cache/DiskLruCache;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/cache/DiskLruCache$Entry;,
        Lokhttp3/internal/cache/DiskLruCache$Editor;,
        Lokhttp3/internal/cache/DiskLruCache$Snapshot;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static final ANY_SEQUENCE_NUMBER:J = -0x1L

.field private static final CLEAN:Ljava/lang/String; = "CLEAN"

.field private static final DIRTY:Ljava/lang/String; = "DIRTY"

.field static final JOURNAL_FILE:Ljava/lang/String; = "journal"

.field static final JOURNAL_FILE_BACKUP:Ljava/lang/String; = "journal.bkp"

.field static final JOURNAL_FILE_TEMP:Ljava/lang/String; = "journal.tmp"

.field static final LEGAL_KEY_PATTERN:Ljava/util/regex/Pattern;

.field static final MAGIC:Ljava/lang/String; = "libcore.io.DiskLruCache"

.field private static final READ:Ljava/lang/String; = "READ"

.field private static final REMOVE:Ljava/lang/String; = "REMOVE"

.field static final VERSION_1:Ljava/lang/String; = "1"


# instance fields
.field private final appVersion:I

.field private final cleanupRunnable:Ljava/lang/Runnable;

.field closed:Z

.field final directory:Ljava/io/File;

.field private final executor:Ljava/util/concurrent/Executor;

.field final fileSystem:Lokhttp3/internal/io/FileSystem;

.field hasJournalErrors:Z

.field initialized:Z

.field private final journalFile:Ljava/io/File;

.field private final journalFileBackup:Ljava/io/File;

.field private final journalFileTmp:Ljava/io/File;

.field journalWriter:Lokio/BufferedSink;

.field final lruEntries:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lokhttp3/internal/cache/DiskLruCache$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private maxSize:J

.field mostRecentRebuildFailed:Z

.field mostRecentTrimFailed:Z

.field private nextSequenceNumber:J

.field redundantOpCount:I

.field private size:J

.field final valueCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 86
    const-class v0, Lokhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lokhttp3/internal/cache/DiskLruCache;->$assertionsDisabled:Z

    .line 93
    const-string v0, "[a-z0-9_-]{1,120}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/cache/DiskLruCache;->LEGAL_KEY_PATTERN:Ljava/util/regex/Pattern;

    return-void

    .line 86
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lokhttp3/internal/io/FileSystem;Ljava/io/File;IIJLjava/util/concurrent/Executor;)V
    .locals 15

    .prologue
    .line 195
    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-wide/from16 v5, p5

    move-object/from16 v7, p7

    move-object v8, v0

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 147
    move-object v8, v0

    const-wide/16 v9, 0x0

    iput-wide v9, v8, Lokhttp3/internal/cache/DiskLruCache;->size:J

    .line 149
    move-object v8, v0

    new-instance v9, Ljava/util/LinkedHashMap;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    const/4 v11, 0x0

    const/high16 v12, 0x3f400000    # 0.75f

    const/4 v13, 0x1

    invoke-direct {v10, v11, v12, v13}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v9, v8, Lokhttp3/internal/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    .line 164
    move-object v8, v0

    const-wide/16 v9, 0x0

    iput-wide v9, v8, Lokhttp3/internal/cache/DiskLruCache;->nextSequenceNumber:J

    .line 168
    move-object v8, v0

    new-instance v9, Lokhttp3/internal/cache/DiskLruCache$1;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    move-object v11, v0

    invoke-direct {v10, v11}, Lokhttp3/internal/cache/DiskLruCache$1;-><init>(Lokhttp3/internal/cache/DiskLruCache;)V

    iput-object v9, v8, Lokhttp3/internal/cache/DiskLruCache;->cleanupRunnable:Ljava/lang/Runnable;

    .line 196
    move-object v8, v0

    move-object v9, v1

    iput-object v9, v8, Lokhttp3/internal/cache/DiskLruCache;->fileSystem:Lokhttp3/internal/io/FileSystem;

    .line 197
    move-object v8, v0

    move-object v9, v2

    iput-object v9, v8, Lokhttp3/internal/cache/DiskLruCache;->directory:Ljava/io/File;

    .line 198
    move-object v8, v0

    move v9, v3

    iput v9, v8, Lokhttp3/internal/cache/DiskLruCache;->appVersion:I

    .line 199
    move-object v8, v0

    new-instance v9, Ljava/io/File;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    move-object v11, v2

    const-string v12, "journal"

    invoke-direct {v10, v11, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v9, v8, Lokhttp3/internal/cache/DiskLruCache;->journalFile:Ljava/io/File;

    .line 200
    move-object v8, v0

    new-instance v9, Ljava/io/File;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    move-object v11, v2

    const-string v12, "journal.tmp"

    invoke-direct {v10, v11, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v9, v8, Lokhttp3/internal/cache/DiskLruCache;->journalFileTmp:Ljava/io/File;

    .line 201
    move-object v8, v0

    new-instance v9, Ljava/io/File;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    move-object v11, v2

    const-string v12, "journal.bkp"

    invoke-direct {v10, v11, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v9, v8, Lokhttp3/internal/cache/DiskLruCache;->journalFileBackup:Ljava/io/File;

    .line 202
    move-object v8, v0

    move v9, v4

    iput v9, v8, Lokhttp3/internal/cache/DiskLruCache;->valueCount:I

    .line 203
    move-object v8, v0

    move-wide v9, v5

    iput-wide v9, v8, Lokhttp3/internal/cache/DiskLruCache;->maxSize:J

    .line 204
    move-object v8, v0

    move-object v9, v7

    iput-object v9, v8, Lokhttp3/internal/cache/DiskLruCache;->executor:Ljava/util/concurrent/Executor;

    .line 205
    return-void
.end method

.method private declared-synchronized checkNotClosed()V
    .locals 6

    .prologue
    .line 643
    move-object v0, p0

    move-object v4, p0

    monitor-enter v4

    move-object v1, v0

    :try_start_0
    invoke-virtual {v1}, Lokhttp3/internal/cache/DiskLruCache;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 644
    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const-string v3, "cache is closed"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 643
    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0

    .line 646
    :cond_0
    monitor-exit v4

    return-void
.end method

.method public static create(Lokhttp3/internal/io/FileSystem;Ljava/io/File;IIJ)Lokhttp3/internal/cache/DiskLruCache;
    .locals 18

    .prologue
    .line 254
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-wide/from16 v4, p4

    move-wide v7, v4

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-gtz v7, :cond_0

    .line 255
    new-instance v7, Ljava/lang/IllegalArgumentException;

    move-object/from16 v17, v7

    move-object/from16 v7, v17

    move-object/from16 v8, v17

    const-string v9, "maxSize <= 0"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 257
    :cond_0
    move v7, v3

    if-gtz v7, :cond_1

    .line 258
    new-instance v7, Ljava/lang/IllegalArgumentException;

    move-object/from16 v17, v7

    move-object/from16 v7, v17

    move-object/from16 v8, v17

    const-string v9, "valueCount <= 0"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 262
    :cond_1
    new-instance v7, Ljava/util/concurrent/ThreadPoolExecutor;

    move-object/from16 v17, v7

    move-object/from16 v7, v17

    move-object/from16 v8, v17

    const/4 v9, 0x0

    const/4 v10, 0x1

    const-wide/16 v11, 0x3c

    sget-object v13, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v14, Ljava/util/concurrent/LinkedBlockingQueue;

    move-object/from16 v17, v14

    move-object/from16 v14, v17

    move-object/from16 v15, v17

    invoke-direct {v15}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const-string v15, "OkHttp DiskLruCache"

    const/16 v16, 0x1

    .line 263
    invoke-static/range {v15 .. v16}, Lokhttp3/internal/Util;->threadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v15

    invoke-direct/range {v8 .. v15}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    move-object v6, v7

    .line 265
    new-instance v7, Lokhttp3/internal/cache/DiskLruCache;

    move-object/from16 v17, v7

    move-object/from16 v7, v17

    move-object/from16 v8, v17

    move-object v9, v0

    move-object v10, v1

    move v11, v2

    move v12, v3

    move-wide v13, v4

    move-object v15, v6

    invoke-direct/range {v8 .. v15}, Lokhttp3/internal/cache/DiskLruCache;-><init>(Lokhttp3/internal/io/FileSystem;Ljava/io/File;IIJLjava/util/concurrent/Executor;)V

    move-object v0, v7

    return-object v0
.end method

.method private newJournalWriter()Lokio/BufferedSink;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 308
    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lokhttp3/internal/cache/DiskLruCache;->fileSystem:Lokhttp3/internal/io/FileSystem;

    move-object v4, v0

    iget-object v4, v4, Lokhttp3/internal/cache/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-interface {v3, v4}, Lokhttp3/internal/io/FileSystem;->appendingSink(Ljava/io/File;)Lokio/Sink;

    move-result-object v3

    move-object v1, v3

    .line 309
    new-instance v3, Lokhttp3/internal/cache/DiskLruCache$2;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Lokhttp3/internal/cache/DiskLruCache$2;-><init>(Lokhttp3/internal/cache/DiskLruCache;Lokio/Sink;)V

    move-object v2, v3

    .line 315
    move-object v3, v2

    invoke-static {v3}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method private processJournal()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 362
    move-object v0, p0

    move-object v4, v0

    iget-object v4, v4, Lokhttp3/internal/cache/DiskLruCache;->fileSystem:Lokhttp3/internal/io/FileSystem;

    move-object v5, v0

    iget-object v5, v5, Lokhttp3/internal/cache/DiskLruCache;->journalFileTmp:Ljava/io/File;

    invoke-interface {v4, v5}, Lokhttp3/internal/io/FileSystem;->delete(Ljava/io/File;)V

    .line 363
    move-object v4, v0

    iget-object v4, v4, Lokhttp3/internal/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v1, v4

    :goto_0
    move-object v4, v1

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 364
    move-object v4, v1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lokhttp3/internal/cache/DiskLruCache$Entry;

    move-object v2, v4

    .line 365
    move-object v4, v2

    iget-object v4, v4, Lokhttp3/internal/cache/DiskLruCache$Entry;->currentEditor:Lokhttp3/internal/cache/DiskLruCache$Editor;

    if-nez v4, :cond_1

    .line 366
    const/4 v4, 0x0

    move v3, v4

    :goto_1
    move v4, v3

    move-object v5, v0

    iget v5, v5, Lokhttp3/internal/cache/DiskLruCache;->valueCount:I

    if-ge v4, v5, :cond_0

    .line 367
    move-object v4, v0

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    iget-wide v5, v5, Lokhttp3/internal/cache/DiskLruCache;->size:J

    move-object v7, v2

    iget-object v7, v7, Lokhttp3/internal/cache/DiskLruCache$Entry;->lengths:[J

    move v8, v3

    aget-wide v7, v7, v8

    add-long/2addr v5, v7

    iput-wide v5, v4, Lokhttp3/internal/cache/DiskLruCache;->size:J

    .line 366
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 377
    :cond_0
    :goto_2
    goto :goto_0

    .line 370
    :cond_1
    move-object v4, v2

    const/4 v5, 0x0

    iput-object v5, v4, Lokhttp3/internal/cache/DiskLruCache$Entry;->currentEditor:Lokhttp3/internal/cache/DiskLruCache$Editor;

    .line 371
    const/4 v4, 0x0

    move v3, v4

    :goto_3
    move v4, v3

    move-object v5, v0

    iget v5, v5, Lokhttp3/internal/cache/DiskLruCache;->valueCount:I

    if-ge v4, v5, :cond_2

    .line 372
    move-object v4, v0

    iget-object v4, v4, Lokhttp3/internal/cache/DiskLruCache;->fileSystem:Lokhttp3/internal/io/FileSystem;

    move-object v5, v2

    iget-object v5, v5, Lokhttp3/internal/cache/DiskLruCache$Entry;->cleanFiles:[Ljava/io/File;

    move v6, v3

    aget-object v5, v5, v6

    invoke-interface {v4, v5}, Lokhttp3/internal/io/FileSystem;->delete(Ljava/io/File;)V

    .line 373
    move-object v4, v0

    iget-object v4, v4, Lokhttp3/internal/cache/DiskLruCache;->fileSystem:Lokhttp3/internal/io/FileSystem;

    move-object v5, v2

    iget-object v5, v5, Lokhttp3/internal/cache/DiskLruCache$Entry;->dirtyFiles:[Ljava/io/File;

    move v6, v3

    aget-object v5, v5, v6

    invoke-interface {v4, v5}, Lokhttp3/internal/io/FileSystem;->delete(Ljava/io/File;)V

    .line 371
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 375
    :cond_2
    move-object v4, v1

    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    .line 378
    :cond_3
    return-void
.end method

.method private readJournal()V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 269
    move-object v0, p0

    move-object v10, v0

    iget-object v10, v10, Lokhttp3/internal/cache/DiskLruCache;->fileSystem:Lokhttp3/internal/io/FileSystem;

    move-object v11, v0

    iget-object v11, v11, Lokhttp3/internal/cache/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-interface {v10, v11}, Lokhttp3/internal/io/FileSystem;->source(Ljava/io/File;)Lokio/Source;

    move-result-object v10

    invoke-static {v10}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v10

    move-object v1, v10

    .line 271
    move-object v10, v1

    :try_start_0
    invoke-interface {v10}, Lokio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v10

    move-object v2, v10

    .line 272
    move-object v10, v1

    invoke-interface {v10}, Lokio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v10

    move-object v3, v10

    .line 273
    move-object v10, v1

    invoke-interface {v10}, Lokio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v10

    move-object v4, v10

    .line 274
    move-object v10, v1

    invoke-interface {v10}, Lokio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v10

    move-object v5, v10

    .line 275
    move-object v10, v1

    invoke-interface {v10}, Lokio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v10

    move-object v6, v10

    .line 276
    const-string v10, "libcore.io.DiskLruCache"

    move-object v11, v2

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const-string v10, "1"

    move-object v11, v3

    .line 277
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    move-object v10, v0

    iget v10, v10, Lokhttp3/internal/cache/DiskLruCache;->appVersion:I

    .line 278
    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    move-object v11, v4

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    move-object v10, v0

    iget v10, v10, Lokhttp3/internal/cache/DiskLruCache;->valueCount:I

    .line 279
    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    move-object v11, v5

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const-string v10, ""

    move-object v11, v6

    .line 280
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 281
    :cond_0
    new-instance v10, Ljava/io/IOException;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    new-instance v12, Ljava/lang/StringBuilder;

    move-object v14, v12

    move-object v12, v14

    move-object v13, v14

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "unexpected journal header: ["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v13, v2

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v13, v3

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v13, v5

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v13, v6

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "]"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 303
    :catchall_0
    move-exception v10

    move-object v9, v10

    move-object v10, v1

    invoke-static {v10}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    move-object v10, v9

    throw v10

    .line 285
    :cond_1
    const/4 v10, 0x0

    move v7, v10

    .line 288
    :goto_0
    move-object v10, v0

    move-object v11, v1

    :try_start_1
    invoke-interface {v11}, Lokio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lokhttp3/internal/cache/DiskLruCache;->readJournalLine(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 289
    add-int/lit8 v7, v7, 0x1

    .line 292
    goto :goto_0

    .line 290
    :catch_0
    move-exception v10

    move-object v8, v10

    .line 294
    move-object v10, v0

    move v11, v7

    move-object v12, v0

    :try_start_2
    iget-object v12, v12, Lokhttp3/internal/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v12}, Ljava/util/LinkedHashMap;->size()I

    move-result v12

    sub-int/2addr v11, v12

    iput v11, v10, Lokhttp3/internal/cache/DiskLruCache;->redundantOpCount:I

    .line 297
    move-object v10, v1

    invoke-interface {v10}, Lokio/BufferedSource;->exhausted()Z

    move-result v10

    if-nez v10, :cond_2

    .line 298
    move-object v10, v0

    invoke-virtual {v10}, Lokhttp3/internal/cache/DiskLruCache;->rebuildJournal()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 303
    :goto_1
    move-object v10, v1

    invoke-static {v10}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 305
    return-void

    .line 300
    :cond_2
    move-object v10, v0

    move-object v11, v0

    :try_start_3
    invoke-direct {v11}, Lokhttp3/internal/cache/DiskLruCache;->newJournalWriter()Lokio/BufferedSink;

    move-result-object v11

    iput-object v11, v10, Lokhttp3/internal/cache/DiskLruCache;->journalWriter:Lokio/BufferedSink;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method private readJournalLine(Ljava/lang/String;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 319
    move-object v0, p0

    move-object v1, p1

    move-object v8, v1

    const/16 v9, 0x20

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    move v2, v8

    .line 320
    move v8, v2

    const/4 v9, -0x1

    if-ne v8, v9, :cond_0

    .line 321
    new-instance v8, Ljava/io/IOException;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "unexpected journal line: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 324
    :cond_0
    move v8, v2

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    move v3, v8

    .line 325
    move-object v8, v1

    const/16 v9, 0x20

    move v10, v3

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->indexOf(II)I

    move-result v8

    move v4, v8

    .line 327
    move v8, v4

    const/4 v9, -0x1

    if-ne v8, v9, :cond_1

    .line 328
    move-object v8, v1

    move v9, v3

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    move-object v5, v8

    .line 329
    move v8, v2

    const-string v9, "REMOVE"

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-ne v8, v9, :cond_2

    move-object v8, v1

    const-string v9, "REMOVE"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 330
    move-object v8, v0

    iget-object v8, v8, Lokhttp3/internal/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    move-object v9, v5

    invoke-virtual {v8, v9}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 355
    :goto_0
    return-void

    .line 334
    :cond_1
    move-object v8, v1

    move v9, v3

    move v10, v4

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    move-object v5, v8

    .line 337
    :cond_2
    move-object v8, v0

    iget-object v8, v8, Lokhttp3/internal/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    move-object v9, v5

    invoke-virtual {v8, v9}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lokhttp3/internal/cache/DiskLruCache$Entry;

    move-object v6, v8

    .line 338
    move-object v8, v6

    if-nez v8, :cond_3

    .line 339
    new-instance v8, Lokhttp3/internal/cache/DiskLruCache$Entry;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    move-object v10, v0

    move-object v11, v5

    invoke-direct {v9, v10, v11}, Lokhttp3/internal/cache/DiskLruCache$Entry;-><init>(Lokhttp3/internal/cache/DiskLruCache;Ljava/lang/String;)V

    move-object v6, v8

    .line 340
    move-object v8, v0

    iget-object v8, v8, Lokhttp3/internal/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    move-object v9, v5

    move-object v10, v6

    invoke-virtual {v8, v9, v10}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 343
    :cond_3
    move v8, v4

    const/4 v9, -0x1

    if-eq v8, v9, :cond_4

    move v8, v2

    const-string v9, "CLEAN"

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-ne v8, v9, :cond_4

    move-object v8, v1

    const-string v9, "CLEAN"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 344
    move-object v8, v1

    move v9, v4

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    move-object v7, v8

    .line 345
    move-object v8, v6

    const/4 v9, 0x1

    iput-boolean v9, v8, Lokhttp3/internal/cache/DiskLruCache$Entry;->readable:Z

    .line 346
    move-object v8, v6

    const/4 v9, 0x0

    iput-object v9, v8, Lokhttp3/internal/cache/DiskLruCache$Entry;->currentEditor:Lokhttp3/internal/cache/DiskLruCache$Editor;

    .line 347
    move-object v8, v6

    move-object v9, v7

    invoke-virtual {v8, v9}, Lokhttp3/internal/cache/DiskLruCache$Entry;->setLengths([Ljava/lang/String;)V

    .line 355
    :goto_1
    goto :goto_0

    .line 348
    :cond_4
    move v8, v4

    const/4 v9, -0x1

    if-ne v8, v9, :cond_5

    move v8, v2

    const-string v9, "DIRTY"

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-ne v8, v9, :cond_5

    move-object v8, v1

    const-string v9, "DIRTY"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 349
    move-object v8, v6

    new-instance v9, Lokhttp3/internal/cache/DiskLruCache$Editor;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    move-object v11, v0

    move-object v12, v6

    invoke-direct {v10, v11, v12}, Lokhttp3/internal/cache/DiskLruCache$Editor;-><init>(Lokhttp3/internal/cache/DiskLruCache;Lokhttp3/internal/cache/DiskLruCache$Entry;)V

    iput-object v9, v8, Lokhttp3/internal/cache/DiskLruCache$Entry;->currentEditor:Lokhttp3/internal/cache/DiskLruCache$Editor;

    goto :goto_1

    .line 350
    :cond_5
    move v8, v4

    const/4 v9, -0x1

    if-ne v8, v9, :cond_6

    move v8, v2

    const-string v9, "READ"

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-ne v8, v9, :cond_6

    move-object v8, v1

    const-string v9, "READ"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    goto :goto_1

    .line 353
    :cond_6
    new-instance v8, Ljava/io/IOException;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "unexpected journal line: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8
.end method

.method private validateKey(Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 706
    move-object v0, p0

    move-object v1, p1

    sget-object v3, Lokhttp3/internal/cache/DiskLruCache;->LEGAL_KEY_PATTERN:Ljava/util/regex/Pattern;

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    move-object v2, v3

    .line 707
    move-object v3, v2

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-nez v3, :cond_0

    .line 708
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "keys must match regex [a-z0-9_-]{1,120}: \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 711
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 659
    move-object v0, p0

    move-object v7, p0

    monitor-enter v7

    move-object v5, v0

    :try_start_0
    iget-boolean v5, v5, Lokhttp3/internal/cache/DiskLruCache;->initialized:Z

    if-eqz v5, :cond_0

    move-object v5, v0

    iget-boolean v5, v5, Lokhttp3/internal/cache/DiskLruCache;->closed:Z

    if-eqz v5, :cond_1

    .line 660
    :cond_0
    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Lokhttp3/internal/cache/DiskLruCache;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 673
    :goto_0
    monitor-exit v7

    return-void

    .line 664
    :cond_1
    move-object v5, v0

    :try_start_1
    iget-object v5, v5, Lokhttp3/internal/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Lokhttp3/internal/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v6}, Ljava/util/LinkedHashMap;->size()I

    move-result v6

    new-array v6, v6, [Lokhttp3/internal/cache/DiskLruCache$Entry;

    invoke-interface {v5, v6}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lokhttp3/internal/cache/DiskLruCache$Entry;

    move-object v1, v5

    move-object v5, v1

    array-length v5, v5

    move v2, v5

    const/4 v5, 0x0

    move v3, v5

    :goto_1
    move v5, v3

    move v6, v2

    if-ge v5, v6, :cond_3

    move-object v5, v1

    move v6, v3

    aget-object v5, v5, v6

    move-object v4, v5

    .line 665
    move-object v5, v4

    iget-object v5, v5, Lokhttp3/internal/cache/DiskLruCache$Entry;->currentEditor:Lokhttp3/internal/cache/DiskLruCache$Editor;

    if-eqz v5, :cond_2

    .line 666
    move-object v5, v4

    iget-object v5, v5, Lokhttp3/internal/cache/DiskLruCache$Entry;->currentEditor:Lokhttp3/internal/cache/DiskLruCache$Editor;

    invoke-virtual {v5}, Lokhttp3/internal/cache/DiskLruCache$Editor;->abort()V

    .line 664
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 669
    :cond_3
    move-object v5, v0

    invoke-virtual {v5}, Lokhttp3/internal/cache/DiskLruCache;->trimToSize()V

    .line 670
    move-object v5, v0

    iget-object v5, v5, Lokhttp3/internal/cache/DiskLruCache;->journalWriter:Lokio/BufferedSink;

    invoke-interface {v5}, Lokio/BufferedSink;->close()V

    .line 671
    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Lokhttp3/internal/cache/DiskLruCache;->journalWriter:Lokio/BufferedSink;

    .line 672
    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Lokhttp3/internal/cache/DiskLruCache;->closed:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 673
    goto :goto_0

    .line 659
    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0
.end method

.method declared-synchronized completeEdit(Lokhttp3/internal/cache/DiskLruCache$Editor;Z)V
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 528
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v19, p0

    monitor-enter v19

    move-object v11, v1

    :try_start_0
    iget-object v11, v11, Lokhttp3/internal/cache/DiskLruCache$Editor;->entry:Lokhttp3/internal/cache/DiskLruCache$Entry;

    move-object v3, v11

    .line 529
    move-object v11, v3

    iget-object v11, v11, Lokhttp3/internal/cache/DiskLruCache$Entry;->currentEditor:Lokhttp3/internal/cache/DiskLruCache$Editor;

    move-object v12, v1

    if-eq v11, v12, :cond_0

    .line 530
    new-instance v11, Ljava/lang/IllegalStateException;

    move-object/from16 v20, v11

    move-object/from16 v11, v20

    move-object/from16 v12, v20

    invoke-direct {v12}, Ljava/lang/IllegalStateException;-><init>()V

    throw v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 528
    :catchall_0
    move-exception v0

    monitor-exit v19

    throw v0

    .line 534
    :cond_0
    move v11, v2

    if-eqz v11, :cond_3

    move-object v11, v3

    :try_start_1
    iget-boolean v11, v11, Lokhttp3/internal/cache/DiskLruCache$Entry;->readable:Z

    if-nez v11, :cond_3

    .line 535
    const/4 v11, 0x0

    move v4, v11

    :goto_0
    move v11, v4

    move-object v12, v0

    iget v12, v12, Lokhttp3/internal/cache/DiskLruCache;->valueCount:I

    if-ge v11, v12, :cond_3

    .line 536
    move-object v11, v1

    iget-object v11, v11, Lokhttp3/internal/cache/DiskLruCache$Editor;->written:[Z

    move v12, v4

    aget-boolean v11, v11, v12

    if-nez v11, :cond_1

    .line 537
    move-object v11, v1

    invoke-virtual {v11}, Lokhttp3/internal/cache/DiskLruCache$Editor;->abort()V

    .line 538
    new-instance v11, Ljava/lang/IllegalStateException;

    move-object/from16 v20, v11

    move-object/from16 v11, v20

    move-object/from16 v12, v20

    new-instance v13, Ljava/lang/StringBuilder;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Newly created entry didn\'t create value for index "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move v14, v4

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 540
    :cond_1
    move-object v11, v0

    iget-object v11, v11, Lokhttp3/internal/cache/DiskLruCache;->fileSystem:Lokhttp3/internal/io/FileSystem;

    move-object v12, v3

    iget-object v12, v12, Lokhttp3/internal/cache/DiskLruCache$Entry;->dirtyFiles:[Ljava/io/File;

    move v13, v4

    aget-object v12, v12, v13

    invoke-interface {v11, v12}, Lokhttp3/internal/io/FileSystem;->exists(Ljava/io/File;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 541
    move-object v11, v1

    invoke-virtual {v11}, Lokhttp3/internal/cache/DiskLruCache$Editor;->abort()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 585
    :goto_1
    monitor-exit v19

    return-void

    .line 535
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 547
    :cond_3
    const/4 v11, 0x0

    move v4, v11

    :goto_2
    move v11, v4

    move-object v12, v0

    :try_start_2
    iget v12, v12, Lokhttp3/internal/cache/DiskLruCache;->valueCount:I

    if-ge v11, v12, :cond_6

    .line 548
    move-object v11, v3

    iget-object v11, v11, Lokhttp3/internal/cache/DiskLruCache$Entry;->dirtyFiles:[Ljava/io/File;

    move v12, v4

    aget-object v11, v11, v12

    move-object v5, v11

    .line 549
    move v11, v2

    if-eqz v11, :cond_5

    .line 550
    move-object v11, v0

    iget-object v11, v11, Lokhttp3/internal/cache/DiskLruCache;->fileSystem:Lokhttp3/internal/io/FileSystem;

    move-object v12, v5

    invoke-interface {v11, v12}, Lokhttp3/internal/io/FileSystem;->exists(Ljava/io/File;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 551
    move-object v11, v3

    iget-object v11, v11, Lokhttp3/internal/cache/DiskLruCache$Entry;->cleanFiles:[Ljava/io/File;

    move v12, v4

    aget-object v11, v11, v12

    move-object v6, v11

    .line 552
    move-object v11, v0

    iget-object v11, v11, Lokhttp3/internal/cache/DiskLruCache;->fileSystem:Lokhttp3/internal/io/FileSystem;

    move-object v12, v5

    move-object v13, v6

    invoke-interface {v11, v12, v13}, Lokhttp3/internal/io/FileSystem;->rename(Ljava/io/File;Ljava/io/File;)V

    .line 553
    move-object v11, v3

    iget-object v11, v11, Lokhttp3/internal/cache/DiskLruCache$Entry;->lengths:[J

    move v12, v4

    aget-wide v11, v11, v12

    move-wide v7, v11

    .line 554
    move-object v11, v0

    iget-object v11, v11, Lokhttp3/internal/cache/DiskLruCache;->fileSystem:Lokhttp3/internal/io/FileSystem;

    move-object v12, v6

    invoke-interface {v11, v12}, Lokhttp3/internal/io/FileSystem;->size(Ljava/io/File;)J

    move-result-wide v11

    move-wide v9, v11

    .line 555
    move-object v11, v3

    iget-object v11, v11, Lokhttp3/internal/cache/DiskLruCache$Entry;->lengths:[J

    move v12, v4

    move-wide v13, v9

    aput-wide v13, v11, v12

    .line 556
    move-object v11, v0

    move-object v12, v0

    iget-wide v12, v12, Lokhttp3/internal/cache/DiskLruCache;->size:J

    move-wide v14, v7

    sub-long/2addr v12, v14

    move-wide v14, v9

    add-long/2addr v12, v14

    iput-wide v12, v11, Lokhttp3/internal/cache/DiskLruCache;->size:J

    .line 547
    :cond_4
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 559
    :cond_5
    move-object v11, v0

    iget-object v11, v11, Lokhttp3/internal/cache/DiskLruCache;->fileSystem:Lokhttp3/internal/io/FileSystem;

    move-object v12, v5

    invoke-interface {v11, v12}, Lokhttp3/internal/io/FileSystem;->delete(Ljava/io/File;)V

    goto :goto_3

    .line 563
    :cond_6
    move-object v11, v0

    move-object/from16 v20, v11

    move-object/from16 v11, v20

    move-object/from16 v12, v20

    iget v12, v12, Lokhttp3/internal/cache/DiskLruCache;->redundantOpCount:I

    const/4 v13, 0x1

    add-int/lit8 v12, v12, 0x1

    iput v12, v11, Lokhttp3/internal/cache/DiskLruCache;->redundantOpCount:I

    .line 564
    move-object v11, v3

    const/4 v12, 0x0

    iput-object v12, v11, Lokhttp3/internal/cache/DiskLruCache$Entry;->currentEditor:Lokhttp3/internal/cache/DiskLruCache$Editor;

    .line 565
    move-object v11, v3

    iget-boolean v11, v11, Lokhttp3/internal/cache/DiskLruCache$Entry;->readable:Z

    move v12, v2

    or-int/2addr v11, v12

    if-eqz v11, :cond_a

    .line 566
    move-object v11, v3

    const/4 v12, 0x1

    iput-boolean v12, v11, Lokhttp3/internal/cache/DiskLruCache$Entry;->readable:Z

    .line 567
    move-object v11, v0

    iget-object v11, v11, Lokhttp3/internal/cache/DiskLruCache;->journalWriter:Lokio/BufferedSink;

    const-string v12, "CLEAN"

    invoke-interface {v11, v12}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v11

    const/16 v12, 0x20

    invoke-interface {v11, v12}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    move-result-object v11

    .line 568
    move-object v11, v0

    iget-object v11, v11, Lokhttp3/internal/cache/DiskLruCache;->journalWriter:Lokio/BufferedSink;

    move-object v12, v3

    iget-object v12, v12, Lokhttp3/internal/cache/DiskLruCache$Entry;->key:Ljava/lang/String;

    invoke-interface {v11, v12}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v11

    .line 569
    move-object v11, v3

    move-object v12, v0

    iget-object v12, v12, Lokhttp3/internal/cache/DiskLruCache;->journalWriter:Lokio/BufferedSink;

    invoke-virtual {v11, v12}, Lokhttp3/internal/cache/DiskLruCache$Entry;->writeLengths(Lokio/BufferedSink;)V

    .line 570
    move-object v11, v0

    iget-object v11, v11, Lokhttp3/internal/cache/DiskLruCache;->journalWriter:Lokio/BufferedSink;

    const/16 v12, 0xa

    invoke-interface {v11, v12}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    move-result-object v11

    .line 571
    move v11, v2

    if-eqz v11, :cond_7

    .line 572
    move-object v11, v3

    move-object v12, v0

    move-object/from16 v20, v12

    move-object/from16 v12, v20

    move-object/from16 v13, v20

    iget-wide v13, v13, Lokhttp3/internal/cache/DiskLruCache;->nextSequenceNumber:J

    move-object/from16 v20, v12

    move-wide/from16 v21, v13

    move-wide/from16 v12, v21

    move-object/from16 v14, v20

    move-wide/from16 v15, v21

    const-wide/16 v17, 0x1

    add-long v15, v15, v17

    iput-wide v15, v14, Lokhttp3/internal/cache/DiskLruCache;->nextSequenceNumber:J

    iput-wide v12, v11, Lokhttp3/internal/cache/DiskLruCache$Entry;->sequenceNumber:J

    .line 580
    :cond_7
    :goto_4
    move-object v11, v0

    iget-object v11, v11, Lokhttp3/internal/cache/DiskLruCache;->journalWriter:Lokio/BufferedSink;

    invoke-interface {v11}, Lokio/BufferedSink;->flush()V

    .line 582
    move-object v11, v0

    iget-wide v11, v11, Lokhttp3/internal/cache/DiskLruCache;->size:J

    move-object v13, v0

    iget-wide v13, v13, Lokhttp3/internal/cache/DiskLruCache;->maxSize:J

    cmp-long v11, v11, v13

    if-gtz v11, :cond_8

    move-object v11, v0

    invoke-virtual {v11}, Lokhttp3/internal/cache/DiskLruCache;->journalRebuildRequired()Z

    move-result v11

    if-eqz v11, :cond_9

    .line 583
    :cond_8
    move-object v11, v0

    iget-object v11, v11, Lokhttp3/internal/cache/DiskLruCache;->executor:Ljava/util/concurrent/Executor;

    move-object v12, v0

    iget-object v12, v12, Lokhttp3/internal/cache/DiskLruCache;->cleanupRunnable:Ljava/lang/Runnable;

    invoke-interface {v11, v12}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 585
    :cond_9
    goto/16 :goto_1

    .line 575
    :cond_a
    move-object v11, v0

    iget-object v11, v11, Lokhttp3/internal/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    move-object v12, v3

    iget-object v12, v12, Lokhttp3/internal/cache/DiskLruCache$Entry;->key:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .line 576
    move-object v11, v0

    iget-object v11, v11, Lokhttp3/internal/cache/DiskLruCache;->journalWriter:Lokio/BufferedSink;

    const-string v12, "REMOVE"

    invoke-interface {v11, v12}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v11

    const/16 v12, 0x20

    invoke-interface {v11, v12}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    move-result-object v11

    .line 577
    move-object v11, v0

    iget-object v11, v11, Lokhttp3/internal/cache/DiskLruCache;->journalWriter:Lokio/BufferedSink;

    move-object v12, v3

    iget-object v12, v12, Lokhttp3/internal/cache/DiskLruCache$Entry;->key:Ljava/lang/String;

    invoke-interface {v11, v12}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v11

    .line 578
    move-object v11, v0

    iget-object v11, v11, Lokhttp3/internal/cache/DiskLruCache;->journalWriter:Lokio/BufferedSink;

    const/16 v12, 0xa

    invoke-interface {v11, v12}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v11

    goto :goto_4
.end method

.method public delete()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 688
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lokhttp3/internal/cache/DiskLruCache;->close()V

    .line 689
    move-object v1, v0

    iget-object v1, v1, Lokhttp3/internal/cache/DiskLruCache;->fileSystem:Lokhttp3/internal/io/FileSystem;

    move-object v2, v0

    iget-object v2, v2, Lokhttp3/internal/cache/DiskLruCache;->directory:Ljava/io/File;

    invoke-interface {v1, v2}, Lokhttp3/internal/io/FileSystem;->deleteContents(Ljava/io/File;)V

    .line 690
    return-void
.end method

.method public edit(Ljava/lang/String;)Lokhttp3/internal/cache/DiskLruCache$Editor;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 452
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const-wide/16 v4, -0x1

    invoke-virtual {v2, v3, v4, v5}, Lokhttp3/internal/cache/DiskLruCache;->edit(Ljava/lang/String;J)Lokhttp3/internal/cache/DiskLruCache$Editor;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method declared-synchronized edit(Ljava/lang/String;J)Lokhttp3/internal/cache/DiskLruCache$Editor;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 456
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v10, p0

    monitor-enter v10

    move-object v6, v0

    :try_start_0
    invoke-virtual {v6}, Lokhttp3/internal/cache/DiskLruCache;->initialize()V

    .line 458
    move-object v6, v0

    invoke-direct {v6}, Lokhttp3/internal/cache/DiskLruCache;->checkNotClosed()V

    .line 459
    move-object v6, v0

    move-object v7, v1

    invoke-direct {v6, v7}, Lokhttp3/internal/cache/DiskLruCache;->validateKey(Ljava/lang/String;)V

    .line 460
    move-object v6, v0

    iget-object v6, v6, Lokhttp3/internal/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lokhttp3/internal/cache/DiskLruCache$Entry;

    move-object v4, v6

    .line 461
    move-wide v6, v2

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-eqz v6, :cond_1

    move-object v6, v4

    if-eqz v6, :cond_0

    move-object v6, v4

    iget-wide v6, v6, Lokhttp3/internal/cache/DiskLruCache$Entry;->sequenceNumber:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-wide v8, v2

    cmp-long v6, v6, v8

    if-eqz v6, :cond_1

    .line 463
    :cond_0
    const/4 v6, 0x0

    move-object v0, v6

    .line 492
    :goto_0
    monitor-exit v10

    return-object v0

    .line 465
    :cond_1
    move-object v6, v4

    if-eqz v6, :cond_2

    move-object v6, v4

    :try_start_1
    iget-object v6, v6, Lokhttp3/internal/cache/DiskLruCache$Entry;->currentEditor:Lokhttp3/internal/cache/DiskLruCache$Editor;

    if-eqz v6, :cond_2

    .line 466
    const/4 v6, 0x0

    move-object v0, v6

    goto :goto_0

    .line 468
    :cond_2
    move-object v6, v0

    iget-boolean v6, v6, Lokhttp3/internal/cache/DiskLruCache;->mostRecentTrimFailed:Z

    if-nez v6, :cond_3

    move-object v6, v0

    iget-boolean v6, v6, Lokhttp3/internal/cache/DiskLruCache;->mostRecentRebuildFailed:Z

    if-eqz v6, :cond_4

    .line 474
    :cond_3
    move-object v6, v0

    iget-object v6, v6, Lokhttp3/internal/cache/DiskLruCache;->executor:Ljava/util/concurrent/Executor;

    move-object v7, v0

    iget-object v7, v7, Lokhttp3/internal/cache/DiskLruCache;->cleanupRunnable:Ljava/lang/Runnable;

    invoke-interface {v6, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 475
    const/4 v6, 0x0

    move-object v0, v6

    goto :goto_0

    .line 479
    :cond_4
    move-object v6, v0

    iget-object v6, v6, Lokhttp3/internal/cache/DiskLruCache;->journalWriter:Lokio/BufferedSink;

    const-string v7, "DIRTY"

    invoke-interface {v6, v7}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v6

    const/16 v7, 0x20

    invoke-interface {v6, v7}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    move-result-object v6

    move-object v7, v1

    invoke-interface {v6, v7}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v6

    const/16 v7, 0xa

    invoke-interface {v6, v7}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    move-result-object v6

    .line 480
    move-object v6, v0

    iget-object v6, v6, Lokhttp3/internal/cache/DiskLruCache;->journalWriter:Lokio/BufferedSink;

    invoke-interface {v6}, Lokio/BufferedSink;->flush()V

    .line 482
    move-object v6, v0

    iget-boolean v6, v6, Lokhttp3/internal/cache/DiskLruCache;->hasJournalErrors:Z

    if-eqz v6, :cond_5

    .line 483
    const/4 v6, 0x0

    move-object v0, v6

    goto :goto_0

    .line 486
    :cond_5
    move-object v6, v4

    if-nez v6, :cond_6

    .line 487
    new-instance v6, Lokhttp3/internal/cache/DiskLruCache$Entry;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v0

    move-object v9, v1

    invoke-direct {v7, v8, v9}, Lokhttp3/internal/cache/DiskLruCache$Entry;-><init>(Lokhttp3/internal/cache/DiskLruCache;Ljava/lang/String;)V

    move-object v4, v6

    .line 488
    move-object v6, v0

    iget-object v6, v6, Lokhttp3/internal/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    move-object v7, v1

    move-object v8, v4

    invoke-virtual {v6, v7, v8}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 490
    :cond_6
    new-instance v6, Lokhttp3/internal/cache/DiskLruCache$Editor;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v0

    move-object v9, v4

    invoke-direct {v7, v8, v9}, Lokhttp3/internal/cache/DiskLruCache$Editor;-><init>(Lokhttp3/internal/cache/DiskLruCache;Lokhttp3/internal/cache/DiskLruCache$Entry;)V

    move-object v5, v6

    .line 491
    move-object v6, v4

    move-object v7, v5

    iput-object v7, v6, Lokhttp3/internal/cache/DiskLruCache$Entry;->currentEditor:Lokhttp3/internal/cache/DiskLruCache$Editor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 492
    move-object v6, v5

    move-object v0, v6

    goto :goto_0

    .line 456
    :catchall_0
    move-exception v0

    monitor-exit v10

    throw v0
.end method

.method public declared-synchronized evictAll()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 697
    move-object v0, p0

    move-object v7, p0

    monitor-enter v7

    move-object v5, v0

    :try_start_0
    invoke-virtual {v5}, Lokhttp3/internal/cache/DiskLruCache;->initialize()V

    .line 699
    move-object v5, v0

    iget-object v5, v5, Lokhttp3/internal/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Lokhttp3/internal/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v6}, Ljava/util/LinkedHashMap;->size()I

    move-result v6

    new-array v6, v6, [Lokhttp3/internal/cache/DiskLruCache$Entry;

    invoke-interface {v5, v6}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lokhttp3/internal/cache/DiskLruCache$Entry;

    move-object v1, v5

    move-object v5, v1

    array-length v5, v5

    move v2, v5

    const/4 v5, 0x0

    move v3, v5

    :goto_0
    move v5, v3

    move v6, v2

    if-ge v5, v6, :cond_0

    move-object v5, v1

    move v6, v3

    aget-object v5, v5, v6

    move-object v4, v5

    .line 700
    move-object v5, v0

    move-object v6, v4

    invoke-virtual {v5, v6}, Lokhttp3/internal/cache/DiskLruCache;->removeEntry(Lokhttp3/internal/cache/DiskLruCache$Entry;)Z

    move-result v5

    .line 699
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 702
    :cond_0
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Lokhttp3/internal/cache/DiskLruCache;->mostRecentTrimFailed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 703
    monitor-exit v7

    return-void

    .line 697
    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0
.end method

.method public declared-synchronized flush()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 650
    move-object v0, p0

    move-object v2, p0

    monitor-enter v2

    move-object v1, v0

    :try_start_0
    iget-boolean v1, v1, Lokhttp3/internal/cache/DiskLruCache;->initialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 655
    :goto_0
    monitor-exit v2

    return-void

    .line 652
    :cond_0
    move-object v1, v0

    :try_start_1
    invoke-direct {v1}, Lokhttp3/internal/cache/DiskLruCache;->checkNotClosed()V

    .line 653
    move-object v1, v0

    invoke-virtual {v1}, Lokhttp3/internal/cache/DiskLruCache;->trimToSize()V

    .line 654
    move-object v1, v0

    iget-object v1, v1, Lokhttp3/internal/cache/DiskLruCache;->journalWriter:Lokio/BufferedSink;

    invoke-interface {v1}, Lokio/BufferedSink;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 655
    goto :goto_0

    .line 650
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public declared-synchronized get(Ljava/lang/String;)Lokhttp3/internal/cache/DiskLruCache$Snapshot;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 429
    move-object v0, p0

    move-object v1, p1

    move-object v7, p0

    monitor-enter v7

    move-object v4, v0

    :try_start_0
    invoke-virtual {v4}, Lokhttp3/internal/cache/DiskLruCache;->initialize()V

    .line 431
    move-object v4, v0

    invoke-direct {v4}, Lokhttp3/internal/cache/DiskLruCache;->checkNotClosed()V

    .line 432
    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Lokhttp3/internal/cache/DiskLruCache;->validateKey(Ljava/lang/String;)V

    .line 433
    move-object v4, v0

    iget-object v4, v4, Lokhttp3/internal/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lokhttp3/internal/cache/DiskLruCache$Entry;

    move-object v2, v4

    .line 434
    move-object v4, v2

    if-eqz v4, :cond_0

    move-object v4, v2

    iget-boolean v4, v4, Lokhttp3/internal/cache/DiskLruCache$Entry;->readable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_1

    :cond_0
    const/4 v4, 0x0

    move-object v0, v4

    .line 445
    :goto_0
    monitor-exit v7

    return-object v0

    .line 436
    :cond_1
    move-object v4, v2

    :try_start_1
    invoke-virtual {v4}, Lokhttp3/internal/cache/DiskLruCache$Entry;->snapshot()Lokhttp3/internal/cache/DiskLruCache$Snapshot;

    move-result-object v4

    move-object v3, v4

    .line 437
    move-object v4, v3

    if-nez v4, :cond_2

    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_0

    .line 439
    :cond_2
    move-object v4, v0

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    iget v5, v5, Lokhttp3/internal/cache/DiskLruCache;->redundantOpCount:I

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lokhttp3/internal/cache/DiskLruCache;->redundantOpCount:I

    .line 440
    move-object v4, v0

    iget-object v4, v4, Lokhttp3/internal/cache/DiskLruCache;->journalWriter:Lokio/BufferedSink;

    const-string v5, "READ"

    invoke-interface {v4, v5}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v4

    const/16 v5, 0x20

    invoke-interface {v4, v5}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    move-result-object v4

    move-object v5, v1

    invoke-interface {v4, v5}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v4

    const/16 v5, 0xa

    invoke-interface {v4, v5}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    move-result-object v4

    .line 441
    move-object v4, v0

    invoke-virtual {v4}, Lokhttp3/internal/cache/DiskLruCache;->journalRebuildRequired()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 442
    move-object v4, v0

    iget-object v4, v4, Lokhttp3/internal/cache/DiskLruCache;->executor:Ljava/util/concurrent/Executor;

    move-object v5, v0

    iget-object v5, v5, Lokhttp3/internal/cache/DiskLruCache;->cleanupRunnable:Ljava/lang/Runnable;

    invoke-interface {v4, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 445
    :cond_3
    move-object v4, v3

    move-object v0, v4

    goto :goto_0

    .line 429
    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0
.end method

.method public getDirectory()Ljava/io/File;
    .locals 2

    .prologue
    .line 497
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/internal/cache/DiskLruCache;->directory:Ljava/io/File;

    move-object v0, v1

    return-object v0
.end method

.method public declared-synchronized getMaxSize()J
    .locals 4

    .prologue
    .line 504
    move-object v0, p0

    move-object v3, p0

    monitor-enter v3

    move-object v1, v0

    :try_start_0
    iget-wide v1, v1, Lokhttp3/internal/cache/DiskLruCache;->maxSize:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-wide v0, v1

    monitor-exit v3

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0
.end method

.method public declared-synchronized initialize()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 208
    move-object v0, p0

    move-object v6, p0

    monitor-enter v6

    :try_start_0
    sget-boolean v2, Lokhttp3/internal/cache/DiskLruCache;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    move-object v2, v0

    invoke-static {v2}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0

    .line 210
    :cond_0
    move-object v2, v0

    :try_start_1
    iget-boolean v2, v2, Lokhttp3/internal/cache/DiskLruCache;->initialized:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    .line 242
    :goto_0
    monitor-exit v6

    return-void

    .line 215
    :cond_1
    move-object v2, v0

    :try_start_2
    iget-object v2, v2, Lokhttp3/internal/cache/DiskLruCache;->fileSystem:Lokhttp3/internal/io/FileSystem;

    move-object v3, v0

    iget-object v3, v3, Lokhttp3/internal/cache/DiskLruCache;->journalFileBackup:Ljava/io/File;

    invoke-interface {v2, v3}, Lokhttp3/internal/io/FileSystem;->exists(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 217
    move-object v2, v0

    iget-object v2, v2, Lokhttp3/internal/cache/DiskLruCache;->fileSystem:Lokhttp3/internal/io/FileSystem;

    move-object v3, v0

    iget-object v3, v3, Lokhttp3/internal/cache/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-interface {v2, v3}, Lokhttp3/internal/io/FileSystem;->exists(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 218
    move-object v2, v0

    iget-object v2, v2, Lokhttp3/internal/cache/DiskLruCache;->fileSystem:Lokhttp3/internal/io/FileSystem;

    move-object v3, v0

    iget-object v3, v3, Lokhttp3/internal/cache/DiskLruCache;->journalFileBackup:Ljava/io/File;

    invoke-interface {v2, v3}, Lokhttp3/internal/io/FileSystem;->delete(Ljava/io/File;)V

    .line 225
    :cond_2
    :goto_1
    move-object v2, v0

    iget-object v2, v2, Lokhttp3/internal/cache/DiskLruCache;->fileSystem:Lokhttp3/internal/io/FileSystem;

    move-object v3, v0

    iget-object v3, v3, Lokhttp3/internal/cache/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-interface {v2, v3}, Lokhttp3/internal/io/FileSystem;->exists(Ljava/io/File;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    if-eqz v2, :cond_4

    .line 227
    move-object v2, v0

    :try_start_3
    invoke-direct {v2}, Lokhttp3/internal/cache/DiskLruCache;->readJournal()V

    .line 228
    move-object v2, v0

    invoke-direct {v2}, Lokhttp3/internal/cache/DiskLruCache;->processJournal()V

    .line 229
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lokhttp3/internal/cache/DiskLruCache;->initialized:Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 230
    goto :goto_0

    .line 220
    :cond_3
    move-object v2, v0

    :try_start_4
    iget-object v2, v2, Lokhttp3/internal/cache/DiskLruCache;->fileSystem:Lokhttp3/internal/io/FileSystem;

    move-object v3, v0

    iget-object v3, v3, Lokhttp3/internal/cache/DiskLruCache;->journalFileBackup:Ljava/io/File;

    move-object v4, v0

    iget-object v4, v4, Lokhttp3/internal/cache/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-interface {v2, v3, v4}, Lokhttp3/internal/io/FileSystem;->rename(Ljava/io/File;Ljava/io/File;)V

    goto :goto_1

    .line 231
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 232
    invoke-static {}, Lokhttp3/internal/platform/Platform;->get()Lokhttp3/internal/platform/Platform;

    move-result-object v2

    const/4 v3, 0x5

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DiskLruCache "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Lokhttp3/internal/cache/DiskLruCache;->directory:Ljava/io/File;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is corrupt: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v1

    .line 233
    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", removing"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v5, v1

    .line 232
    invoke-virtual {v2, v3, v4, v5}, Lokhttp3/internal/platform/Platform;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 234
    move-object v2, v0

    invoke-virtual {v2}, Lokhttp3/internal/cache/DiskLruCache;->delete()V

    .line 235
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lokhttp3/internal/cache/DiskLruCache;->closed:Z

    .line 239
    :cond_4
    move-object v2, v0

    invoke-virtual {v2}, Lokhttp3/internal/cache/DiskLruCache;->rebuildJournal()V

    .line 241
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lokhttp3/internal/cache/DiskLruCache;->initialized:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 242
    goto/16 :goto_0
.end method

.method public declared-synchronized isClosed()Z
    .locals 3

    .prologue
    .line 639
    move-object v0, p0

    move-object v2, p0

    monitor-enter v2

    move-object v1, v0

    :try_start_0
    iget-boolean v1, v1, Lokhttp3/internal/cache/DiskLruCache;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v1

    monitor-exit v2

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method journalRebuildRequired()Z
    .locals 4

    .prologue
    .line 592
    move-object v0, p0

    const/16 v2, 0x7d0

    move v1, v2

    .line 593
    move-object v2, v0

    iget v2, v2, Lokhttp3/internal/cache/DiskLruCache;->redundantOpCount:I

    const/16 v3, 0x7d0

    if-lt v2, v3, :cond_0

    move-object v2, v0

    iget v2, v2, Lokhttp3/internal/cache/DiskLruCache;->redundantOpCount:I

    move-object v3, v0

    iget-object v3, v3, Lokhttp3/internal/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    .line 594
    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->size()I

    move-result v3

    if-lt v2, v3, :cond_0

    const/4 v2, 0x1

    .line 593
    :goto_0
    move v0, v2

    return v0

    .line 594
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method declared-synchronized rebuildJournal()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 385
    move-object v0, p0

    move-object v8, p0

    monitor-enter v8

    move-object v5, v0

    :try_start_0
    iget-object v5, v5, Lokhttp3/internal/cache/DiskLruCache;->journalWriter:Lokio/BufferedSink;

    if-eqz v5, :cond_0

    .line 386
    move-object v5, v0

    iget-object v5, v5, Lokhttp3/internal/cache/DiskLruCache;->journalWriter:Lokio/BufferedSink;

    invoke-interface {v5}, Lokio/BufferedSink;->close()V

    .line 389
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Lokhttp3/internal/cache/DiskLruCache;->fileSystem:Lokhttp3/internal/io/FileSystem;

    move-object v6, v0

    iget-object v6, v6, Lokhttp3/internal/cache/DiskLruCache;->journalFileTmp:Ljava/io/File;

    invoke-interface {v5, v6}, Lokhttp3/internal/io/FileSystem;->sink(Ljava/io/File;)Lokio/Sink;

    move-result-object v5

    invoke-static {v5}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v5

    move-object v1, v5

    .line 391
    move-object v5, v1

    :try_start_1
    const-string v6, "libcore.io.DiskLruCache"

    invoke-interface {v5, v6}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v5

    const/16 v6, 0xa

    invoke-interface {v5, v6}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    move-result-object v5

    .line 392
    move-object v5, v1

    const-string v6, "1"

    invoke-interface {v5, v6}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v5

    const/16 v6, 0xa

    invoke-interface {v5, v6}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    move-result-object v5

    .line 393
    move-object v5, v1

    move-object v6, v0

    iget v6, v6, Lokhttp3/internal/cache/DiskLruCache;->appVersion:I

    int-to-long v6, v6

    invoke-interface {v5, v6, v7}, Lokio/BufferedSink;->writeDecimalLong(J)Lokio/BufferedSink;

    move-result-object v5

    const/16 v6, 0xa

    invoke-interface {v5, v6}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    move-result-object v5

    .line 394
    move-object v5, v1

    move-object v6, v0

    iget v6, v6, Lokhttp3/internal/cache/DiskLruCache;->valueCount:I

    int-to-long v6, v6

    invoke-interface {v5, v6, v7}, Lokio/BufferedSink;->writeDecimalLong(J)Lokio/BufferedSink;

    move-result-object v5

    const/16 v6, 0xa

    invoke-interface {v5, v6}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    move-result-object v5

    .line 395
    move-object v5, v1

    const/16 v6, 0xa

    invoke-interface {v5, v6}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    move-result-object v5

    .line 397
    move-object v5, v0

    iget-object v5, v5, Lokhttp3/internal/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v2, v5

    :goto_0
    move-object v5, v2

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v5, v2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lokhttp3/internal/cache/DiskLruCache$Entry;

    move-object v3, v5

    .line 398
    move-object v5, v3

    iget-object v5, v5, Lokhttp3/internal/cache/DiskLruCache$Entry;->currentEditor:Lokhttp3/internal/cache/DiskLruCache$Editor;

    if-eqz v5, :cond_1

    .line 399
    move-object v5, v1

    const-string v6, "DIRTY"

    invoke-interface {v5, v6}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v5

    const/16 v6, 0x20

    invoke-interface {v5, v6}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    move-result-object v5

    .line 400
    move-object v5, v1

    move-object v6, v3

    iget-object v6, v6, Lokhttp3/internal/cache/DiskLruCache$Entry;->key:Ljava/lang/String;

    invoke-interface {v5, v6}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v5

    .line 401
    move-object v5, v1

    const/16 v6, 0xa

    invoke-interface {v5, v6}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    move-result-object v5

    .line 408
    :goto_1
    goto :goto_0

    .line 403
    :cond_1
    move-object v5, v1

    const-string v6, "CLEAN"

    invoke-interface {v5, v6}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v5

    const/16 v6, 0x20

    invoke-interface {v5, v6}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    move-result-object v5

    .line 404
    move-object v5, v1

    move-object v6, v3

    iget-object v6, v6, Lokhttp3/internal/cache/DiskLruCache$Entry;->key:Ljava/lang/String;

    invoke-interface {v5, v6}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v5

    .line 405
    move-object v5, v3

    move-object v6, v1

    invoke-virtual {v5, v6}, Lokhttp3/internal/cache/DiskLruCache$Entry;->writeLengths(Lokio/BufferedSink;)V

    .line 406
    move-object v5, v1

    const/16 v6, 0xa

    invoke-interface {v5, v6}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v5

    goto :goto_1

    .line 410
    :cond_2
    move-object v5, v1

    :try_start_2
    invoke-interface {v5}, Lokio/BufferedSink;->close()V

    .line 413
    move-object v5, v0

    iget-object v5, v5, Lokhttp3/internal/cache/DiskLruCache;->fileSystem:Lokhttp3/internal/io/FileSystem;

    move-object v6, v0

    iget-object v6, v6, Lokhttp3/internal/cache/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-interface {v5, v6}, Lokhttp3/internal/io/FileSystem;->exists(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 414
    move-object v5, v0

    iget-object v5, v5, Lokhttp3/internal/cache/DiskLruCache;->fileSystem:Lokhttp3/internal/io/FileSystem;

    move-object v6, v0

    iget-object v6, v6, Lokhttp3/internal/cache/DiskLruCache;->journalFile:Ljava/io/File;

    move-object v7, v0

    iget-object v7, v7, Lokhttp3/internal/cache/DiskLruCache;->journalFileBackup:Ljava/io/File;

    invoke-interface {v5, v6, v7}, Lokhttp3/internal/io/FileSystem;->rename(Ljava/io/File;Ljava/io/File;)V

    .line 416
    :cond_3
    move-object v5, v0

    iget-object v5, v5, Lokhttp3/internal/cache/DiskLruCache;->fileSystem:Lokhttp3/internal/io/FileSystem;

    move-object v6, v0

    iget-object v6, v6, Lokhttp3/internal/cache/DiskLruCache;->journalFileTmp:Ljava/io/File;

    move-object v7, v0

    iget-object v7, v7, Lokhttp3/internal/cache/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-interface {v5, v6, v7}, Lokhttp3/internal/io/FileSystem;->rename(Ljava/io/File;Ljava/io/File;)V

    .line 417
    move-object v5, v0

    iget-object v5, v5, Lokhttp3/internal/cache/DiskLruCache;->fileSystem:Lokhttp3/internal/io/FileSystem;

    move-object v6, v0

    iget-object v6, v6, Lokhttp3/internal/cache/DiskLruCache;->journalFileBackup:Ljava/io/File;

    invoke-interface {v5, v6}, Lokhttp3/internal/io/FileSystem;->delete(Ljava/io/File;)V

    .line 419
    move-object v5, v0

    move-object v6, v0

    invoke-direct {v6}, Lokhttp3/internal/cache/DiskLruCache;->newJournalWriter()Lokio/BufferedSink;

    move-result-object v6

    iput-object v6, v5, Lokhttp3/internal/cache/DiskLruCache;->journalWriter:Lokio/BufferedSink;

    .line 420
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Lokhttp3/internal/cache/DiskLruCache;->hasJournalErrors:Z

    .line 421
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Lokhttp3/internal/cache/DiskLruCache;->mostRecentRebuildFailed:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 422
    monitor-exit v8

    return-void

    .line 410
    :catchall_0
    move-exception v5

    move-object v4, v5

    move-object v5, v1

    :try_start_3
    invoke-interface {v5}, Lokio/BufferedSink;->close()V

    move-object v5, v4

    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 385
    :catchall_1
    move-exception v0

    monitor-exit v8

    throw v0
.end method

.method public declared-synchronized remove(Ljava/lang/String;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 604
    move-object v0, p0

    move-object v1, p1

    move-object v8, p0

    monitor-enter v8

    move-object v4, v0

    :try_start_0
    invoke-virtual {v4}, Lokhttp3/internal/cache/DiskLruCache;->initialize()V

    .line 606
    move-object v4, v0

    invoke-direct {v4}, Lokhttp3/internal/cache/DiskLruCache;->checkNotClosed()V

    .line 607
    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Lokhttp3/internal/cache/DiskLruCache;->validateKey(Ljava/lang/String;)V

    .line 608
    move-object v4, v0

    iget-object v4, v4, Lokhttp3/internal/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lokhttp3/internal/cache/DiskLruCache$Entry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v4

    .line 609
    move-object v4, v2

    if-nez v4, :cond_0

    const/4 v4, 0x0

    move v0, v4

    .line 612
    :goto_0
    monitor-exit v8

    return v0

    .line 610
    :cond_0
    move-object v4, v0

    move-object v5, v2

    :try_start_1
    invoke-virtual {v4, v5}, Lokhttp3/internal/cache/DiskLruCache;->removeEntry(Lokhttp3/internal/cache/DiskLruCache$Entry;)Z

    move-result v4

    move v3, v4

    .line 611
    move v4, v3

    if-eqz v4, :cond_1

    move-object v4, v0

    iget-wide v4, v4, Lokhttp3/internal/cache/DiskLruCache;->size:J

    move-object v6, v0

    iget-wide v6, v6, Lokhttp3/internal/cache/DiskLruCache;->maxSize:J

    cmp-long v4, v4, v6

    if-gtz v4, :cond_1

    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Lokhttp3/internal/cache/DiskLruCache;->mostRecentTrimFailed:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 612
    :cond_1
    move v4, v3

    move v0, v4

    goto :goto_0

    .line 604
    :catchall_0
    move-exception v0

    monitor-exit v8

    throw v0
.end method

.method removeEntry(Lokhttp3/internal/cache/DiskLruCache$Entry;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 616
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    iget-object v3, v3, Lokhttp3/internal/cache/DiskLruCache$Entry;->currentEditor:Lokhttp3/internal/cache/DiskLruCache$Editor;

    if-eqz v3, :cond_0

    .line 617
    move-object v3, v1

    iget-object v3, v3, Lokhttp3/internal/cache/DiskLruCache$Entry;->currentEditor:Lokhttp3/internal/cache/DiskLruCache$Editor;

    invoke-virtual {v3}, Lokhttp3/internal/cache/DiskLruCache$Editor;->detach()V

    .line 620
    :cond_0
    const/4 v3, 0x0

    move v2, v3

    :goto_0
    move v3, v2

    move-object v4, v0

    iget v4, v4, Lokhttp3/internal/cache/DiskLruCache;->valueCount:I

    if-ge v3, v4, :cond_1

    .line 621
    move-object v3, v0

    iget-object v3, v3, Lokhttp3/internal/cache/DiskLruCache;->fileSystem:Lokhttp3/internal/io/FileSystem;

    move-object v4, v1

    iget-object v4, v4, Lokhttp3/internal/cache/DiskLruCache$Entry;->cleanFiles:[Ljava/io/File;

    move v5, v2

    aget-object v4, v4, v5

    invoke-interface {v3, v4}, Lokhttp3/internal/io/FileSystem;->delete(Ljava/io/File;)V

    .line 622
    move-object v3, v0

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    iget-wide v4, v4, Lokhttp3/internal/cache/DiskLruCache;->size:J

    move-object v6, v1

    iget-object v6, v6, Lokhttp3/internal/cache/DiskLruCache$Entry;->lengths:[J

    move v7, v2

    aget-wide v6, v6, v7

    sub-long/2addr v4, v6

    iput-wide v4, v3, Lokhttp3/internal/cache/DiskLruCache;->size:J

    .line 623
    move-object v3, v1

    iget-object v3, v3, Lokhttp3/internal/cache/DiskLruCache$Entry;->lengths:[J

    move v4, v2

    const-wide/16 v5, 0x0

    aput-wide v5, v3, v4

    .line 620
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 626
    :cond_1
    move-object v3, v0

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    iget v4, v4, Lokhttp3/internal/cache/DiskLruCache;->redundantOpCount:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lokhttp3/internal/cache/DiskLruCache;->redundantOpCount:I

    .line 627
    move-object v3, v0

    iget-object v3, v3, Lokhttp3/internal/cache/DiskLruCache;->journalWriter:Lokio/BufferedSink;

    const-string v4, "REMOVE"

    invoke-interface {v3, v4}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v3

    const/16 v4, 0x20

    invoke-interface {v3, v4}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    move-result-object v3

    move-object v4, v1

    iget-object v4, v4, Lokhttp3/internal/cache/DiskLruCache$Entry;->key:Ljava/lang/String;

    invoke-interface {v3, v4}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v3

    const/16 v4, 0xa

    invoke-interface {v3, v4}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    move-result-object v3

    .line 628
    move-object v3, v0

    iget-object v3, v3, Lokhttp3/internal/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    move-object v4, v1

    iget-object v4, v4, Lokhttp3/internal/cache/DiskLruCache$Entry;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 630
    move-object v3, v0

    invoke-virtual {v3}, Lokhttp3/internal/cache/DiskLruCache;->journalRebuildRequired()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 631
    move-object v3, v0

    iget-object v3, v3, Lokhttp3/internal/cache/DiskLruCache;->executor:Ljava/util/concurrent/Executor;

    move-object v4, v0

    iget-object v4, v4, Lokhttp3/internal/cache/DiskLruCache;->cleanupRunnable:Ljava/lang/Runnable;

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 634
    :cond_2
    const/4 v3, 0x1

    move v0, v3

    return v0
.end method

.method public declared-synchronized setMaxSize(J)V
    .locals 7

    .prologue
    .line 512
    move-object v0, p0

    move-wide v1, p1

    move-object v6, p0

    monitor-enter v6

    move-object v3, v0

    move-wide v4, v1

    :try_start_0
    iput-wide v4, v3, Lokhttp3/internal/cache/DiskLruCache;->maxSize:J

    .line 513
    move-object v3, v0

    iget-boolean v3, v3, Lokhttp3/internal/cache/DiskLruCache;->initialized:Z

    if-eqz v3, :cond_0

    .line 514
    move-object v3, v0

    iget-object v3, v3, Lokhttp3/internal/cache/DiskLruCache;->executor:Ljava/util/concurrent/Executor;

    move-object v4, v0

    iget-object v4, v4, Lokhttp3/internal/cache/DiskLruCache;->cleanupRunnable:Ljava/lang/Runnable;

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 516
    :cond_0
    monitor-exit v6

    return-void

    .line 512
    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0
.end method

.method public declared-synchronized size()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 523
    move-object v0, p0

    move-object v3, p0

    monitor-enter v3

    move-object v1, v0

    :try_start_0
    invoke-virtual {v1}, Lokhttp3/internal/cache/DiskLruCache;->initialize()V

    .line 524
    move-object v1, v0

    iget-wide v1, v1, Lokhttp3/internal/cache/DiskLruCache;->size:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-wide v0, v1

    monitor-exit v3

    return-wide v0

    .line 523
    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0
.end method

.method public declared-synchronized snapshots()Ljava/util/Iterator;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lokhttp3/internal/cache/DiskLruCache$Snapshot;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 729
    move-object v0, p0

    move-object v4, p0

    monitor-enter v4

    move-object v1, v0

    :try_start_0
    invoke-virtual {v1}, Lokhttp3/internal/cache/DiskLruCache;->initialize()V

    .line 730
    new-instance v1, Lokhttp3/internal/cache/DiskLruCache$3;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    move-object v3, v0

    invoke-direct {v2, v3}, Lokhttp3/internal/cache/DiskLruCache$3;-><init>(Lokhttp3/internal/cache/DiskLruCache;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    monitor-exit v4

    return-object v0

    .line 729
    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0
.end method

.method trimToSize()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 676
    move-object v0, p0

    :goto_0
    move-object v2, v0

    iget-wide v2, v2, Lokhttp3/internal/cache/DiskLruCache;->size:J

    move-object v4, v0

    iget-wide v4, v4, Lokhttp3/internal/cache/DiskLruCache;->maxSize:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 677
    move-object v2, v0

    iget-object v2, v2, Lokhttp3/internal/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lokhttp3/internal/cache/DiskLruCache$Entry;

    move-object v1, v2

    .line 678
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lokhttp3/internal/cache/DiskLruCache;->removeEntry(Lokhttp3/internal/cache/DiskLruCache$Entry;)Z

    move-result v2

    .line 679
    goto :goto_0

    .line 680
    :cond_0
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lokhttp3/internal/cache/DiskLruCache;->mostRecentTrimFailed:Z

    .line 681
    return-void
.end method
