.class public final Lokhttp3/Cache;
.super Ljava/lang/Object;
.source "Cache.java"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/Cache$CacheResponseBody;,
        Lokhttp3/Cache$Entry;,
        Lokhttp3/Cache$CacheRequestImpl;
    }
.end annotation


# static fields
.field private static final ENTRY_BODY:I = 0x1

.field private static final ENTRY_COUNT:I = 0x2

.field private static final ENTRY_METADATA:I = 0x0

.field private static final VERSION:I = 0x31191


# instance fields
.field final cache:Lokhttp3/internal/cache/DiskLruCache;

.field private hitCount:I

.field final internalCache:Lokhttp3/internal/cache/InternalCache;

.field private networkCount:I

.field private requestCount:I

.field writeAbortCount:I

.field writeSuccessCount:I


# direct methods
.method public constructor <init>(Ljava/io/File;J)V
    .locals 9

    .prologue
    .line 178
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, v0

    move-object v5, v1

    move-wide v6, v2

    sget-object v8, Lokhttp3/internal/io/FileSystem;->SYSTEM:Lokhttp3/internal/io/FileSystem;

    invoke-direct {v4, v5, v6, v7, v8}, Lokhttp3/Cache;-><init>(Ljava/io/File;JLokhttp3/internal/io/FileSystem;)V

    .line 179
    return-void
.end method

.method constructor <init>(Ljava/io/File;JLokhttp3/internal/io/FileSystem;)V
    .locals 13

    .prologue
    .line 181
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object/from16 v4, p4

    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 142
    move-object v5, v0

    new-instance v6, Lokhttp3/Cache$1;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v8, v0

    invoke-direct {v7, v8}, Lokhttp3/Cache$1;-><init>(Lokhttp3/Cache;)V

    iput-object v6, v5, Lokhttp3/Cache;->internalCache:Lokhttp3/internal/cache/InternalCache;

    .line 182
    move-object v5, v0

    move-object v6, v4

    move-object v7, v1

    const v8, 0x31191

    const/4 v9, 0x2

    move-wide v10, v2

    invoke-static/range {v6 .. v11}, Lokhttp3/internal/cache/DiskLruCache;->create(Lokhttp3/internal/io/FileSystem;Ljava/io/File;IIJ)Lokhttp3/internal/cache/DiskLruCache;

    move-result-object v6

    iput-object v6, v5, Lokhttp3/Cache;->cache:Lokhttp3/internal/cache/DiskLruCache;

    .line 183
    return-void
.end method

.method private abortQuietly(Lokhttp3/internal/cache/DiskLruCache$Editor;)V
    .locals 4

    .prologue
    .line 279
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    if-eqz v3, :cond_0

    .line 280
    move-object v3, v1

    :try_start_0
    invoke-virtual {v3}, Lokhttp3/internal/cache/DiskLruCache$Editor;->abort()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    :cond_0
    :goto_0
    return-void

    .line 282
    :catch_0
    move-exception v3

    move-object v2, v3

    goto :goto_0
.end method

.method public static key(Lokhttp3/HttpUrl;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 186
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lokio/ByteString;->md5()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lokio/ByteString;->hex()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method static readInt(Lokio/BufferedSource;)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 725
    move-object v0, p0

    move-object v4, v0

    :try_start_0
    invoke-interface {v4}, Lokio/BufferedSource;->readDecimalLong()J

    move-result-wide v4

    move-wide v1, v4

    .line 726
    move-object v4, v0

    invoke-interface {v4}, Lokio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 727
    move-wide v4, v1

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-ltz v4, :cond_0

    move-wide v4, v1

    const-wide/32 v6, 0x7fffffff

    cmp-long v4, v4, v6

    if-gtz v4, :cond_0

    move-object v4, v3

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 728
    :cond_0
    new-instance v4, Ljava/io/IOException;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "expected an int but was \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide v7, v1

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 731
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 732
    new-instance v4, Ljava/io/IOException;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v1

    invoke-virtual {v6}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 730
    :cond_1
    move-wide v4, v1

    long-to-int v4, v4

    move v0, v4

    return v0
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 390
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/Cache;->cache:Lokhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v1}, Lokhttp3/internal/cache/DiskLruCache;->close()V

    .line 391
    return-void
.end method

.method public delete()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 306
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/Cache;->cache:Lokhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v1}, Lokhttp3/internal/cache/DiskLruCache;->delete()V

    .line 307
    return-void
.end method

.method public directory()Ljava/io/File;
    .locals 2

    .prologue
    .line 394
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/Cache;->cache:Lokhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v1}, Lokhttp3/internal/cache/DiskLruCache;->getDirectory()Ljava/io/File;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public evictAll()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 314
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/Cache;->cache:Lokhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v1}, Lokhttp3/internal/cache/DiskLruCache;->evictAll()V

    .line 315
    return-void
.end method

.method public flush()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 386
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/Cache;->cache:Lokhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v1}, Lokhttp3/internal/cache/DiskLruCache;->flush()V

    .line 387
    return-void
.end method

.method get(Lokhttp3/Request;)Lokhttp3/Response;
    .locals 11

    .prologue
    .line 190
    move-object v0, p0

    move-object v1, p1

    move-object v6, v1

    invoke-virtual {v6}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v6

    invoke-static {v6}, Lokhttp3/Cache;->key(Lokhttp3/HttpUrl;)Ljava/lang/String;

    move-result-object v6

    move-object v2, v6

    .line 194
    move-object v6, v0

    :try_start_0
    iget-object v6, v6, Lokhttp3/Cache;->cache:Lokhttp3/internal/cache/DiskLruCache;

    move-object v7, v2

    invoke-virtual {v6, v7}, Lokhttp3/internal/cache/DiskLruCache;->get(Ljava/lang/String;)Lokhttp3/internal/cache/DiskLruCache$Snapshot;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    move-object v3, v6

    .line 195
    move-object v6, v3

    if-nez v6, :cond_0

    .line 196
    const/4 v6, 0x0

    move-object v0, v6

    .line 217
    :goto_0
    return-object v0

    .line 204
    :cond_0
    :try_start_1
    new-instance v6, Lokhttp3/Cache$Entry;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v3

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lokhttp3/internal/cache/DiskLruCache$Snapshot;->getSource(I)Lokio/Source;

    move-result-object v8

    invoke-direct {v7, v8}, Lokhttp3/Cache$Entry;-><init>(Lokio/Source;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v4, v6

    .line 210
    move-object v6, v4

    move-object v7, v3

    invoke-virtual {v6, v7}, Lokhttp3/Cache$Entry;->response(Lokhttp3/internal/cache/DiskLruCache$Snapshot;)Lokhttp3/Response;

    move-result-object v6

    move-object v5, v6

    .line 212
    move-object v6, v4

    move-object v7, v1

    move-object v8, v5

    invoke-virtual {v6, v7, v8}, Lokhttp3/Cache$Entry;->matches(Lokhttp3/Request;Lokhttp3/Response;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 213
    move-object v6, v5

    invoke-virtual {v6}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v6

    invoke-static {v6}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 214
    const/4 v6, 0x0

    move-object v0, v6

    goto :goto_0

    .line 198
    :catch_0
    move-exception v6

    move-object v5, v6

    .line 200
    const/4 v6, 0x0

    move-object v0, v6

    goto :goto_0

    .line 205
    :catch_1
    move-exception v6

    move-object v5, v6

    .line 206
    move-object v6, v3

    invoke-static {v6}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 207
    const/4 v6, 0x0

    move-object v0, v6

    goto :goto_0

    .line 217
    :cond_1
    move-object v6, v5

    move-object v0, v6

    goto :goto_0
.end method

.method public declared-synchronized hitCount()I
    .locals 3

    .prologue
    .line 422
    move-object v0, p0

    move-object v2, p0

    monitor-enter v2

    move-object v1, v0

    :try_start_0
    iget v1, v1, Lokhttp3/Cache;->hitCount:I
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

.method public initialize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 298
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/Cache;->cache:Lokhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v1}, Lokhttp3/internal/cache/DiskLruCache;->initialize()V

    .line 299
    return-void
.end method

.method public isClosed()Z
    .locals 2

    .prologue
    .line 398
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/Cache;->cache:Lokhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v1}, Lokhttp3/internal/cache/DiskLruCache;->isClosed()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public maxSize()J
    .locals 3

    .prologue
    .line 382
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/Cache;->cache:Lokhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v1}, Lokhttp3/internal/cache/DiskLruCache;->getMaxSize()J

    move-result-wide v1

    move-wide v0, v1

    return-wide v0
.end method

.method public declared-synchronized networkCount()I
    .locals 3

    .prologue
    .line 418
    move-object v0, p0

    move-object v2, p0

    monitor-enter v2

    move-object v1, v0

    :try_start_0
    iget v1, v1, Lokhttp3/Cache;->networkCount:I
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

.method put(Lokhttp3/Response;)Lokhttp3/internal/cache/CacheRequest;
    .locals 11

    .prologue
    .line 221
    move-object v0, p0

    move-object v1, p1

    move-object v6, v1

    invoke-virtual {v6}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v6

    invoke-virtual {v6}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v6

    move-object v2, v6

    .line 223
    move-object v6, v1

    invoke-virtual {v6}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v6

    invoke-virtual {v6}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lokhttp3/internal/http/HttpMethod;->invalidatesCache(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 225
    move-object v6, v0

    move-object v7, v1

    :try_start_0
    invoke-virtual {v7}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v7

    invoke-virtual {v6, v7}, Lokhttp3/Cache;->remove(Lokhttp3/Request;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    :goto_0
    const/4 v6, 0x0

    move-object v0, v6

    .line 253
    :goto_1
    return-object v0

    .line 226
    :catch_0
    move-exception v6

    move-object v3, v6

    goto :goto_0

    .line 231
    :cond_0
    move-object v6, v2

    const-string v7, "GET"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 235
    const/4 v6, 0x0

    move-object v0, v6

    goto :goto_1

    .line 238
    :cond_1
    move-object v6, v1

    invoke-static {v6}, Lokhttp3/internal/http/HttpHeaders;->hasVaryAll(Lokhttp3/Response;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 239
    const/4 v6, 0x0

    move-object v0, v6

    goto :goto_1

    .line 242
    :cond_2
    new-instance v6, Lokhttp3/Cache$Entry;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v1

    invoke-direct {v7, v8}, Lokhttp3/Cache$Entry;-><init>(Lokhttp3/Response;)V

    move-object v3, v6

    .line 243
    const/4 v6, 0x0

    move-object v4, v6

    .line 245
    move-object v6, v0

    :try_start_1
    iget-object v6, v6, Lokhttp3/Cache;->cache:Lokhttp3/internal/cache/DiskLruCache;

    move-object v7, v1

    invoke-virtual {v7}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v7

    invoke-virtual {v7}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v7

    invoke-static {v7}, Lokhttp3/Cache;->key(Lokhttp3/HttpUrl;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lokhttp3/internal/cache/DiskLruCache;->edit(Ljava/lang/String;)Lokhttp3/internal/cache/DiskLruCache$Editor;

    move-result-object v6

    move-object v4, v6

    .line 246
    move-object v6, v4

    if-nez v6, :cond_3

    .line 247
    const/4 v6, 0x0

    move-object v0, v6

    goto :goto_1

    .line 249
    :cond_3
    move-object v6, v3

    move-object v7, v4

    invoke-virtual {v6, v7}, Lokhttp3/Cache$Entry;->writeTo(Lokhttp3/internal/cache/DiskLruCache$Editor;)V

    .line 250
    new-instance v6, Lokhttp3/Cache$CacheRequestImpl;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v0

    move-object v9, v4

    invoke-direct {v7, v8, v9}, Lokhttp3/Cache$CacheRequestImpl;-><init>(Lokhttp3/Cache;Lokhttp3/internal/cache/DiskLruCache$Editor;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v6

    goto :goto_1

    .line 251
    :catch_1
    move-exception v6

    move-object v5, v6

    .line 252
    move-object v6, v0

    move-object v7, v4

    invoke-direct {v6, v7}, Lokhttp3/Cache;->abortQuietly(Lokhttp3/internal/cache/DiskLruCache$Editor;)V

    .line 253
    const/4 v6, 0x0

    move-object v0, v6

    goto :goto_1
.end method

.method remove(Lokhttp3/Request;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 258
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lokhttp3/Cache;->cache:Lokhttp3/internal/cache/DiskLruCache;

    move-object v3, v1

    invoke-virtual {v3}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v3

    invoke-static {v3}, Lokhttp3/Cache;->key(Lokhttp3/HttpUrl;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lokhttp3/internal/cache/DiskLruCache;->remove(Ljava/lang/String;)Z

    move-result v2

    .line 259
    return-void
.end method

.method public declared-synchronized requestCount()I
    .locals 3

    .prologue
    .line 426
    move-object v0, p0

    move-object v2, p0

    monitor-enter v2

    move-object v1, v0

    :try_start_0
    iget v1, v1, Lokhttp3/Cache;->requestCount:I
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

.method public size()J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 378
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/Cache;->cache:Lokhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v1}, Lokhttp3/internal/cache/DiskLruCache;->size()J

    move-result-wide v1

    move-wide v0, v1

    return-wide v0
.end method

.method declared-synchronized trackConditionalCacheHit()V
    .locals 6

    .prologue
    .line 414
    move-object v0, p0

    move-object v4, p0

    monitor-enter v4

    move-object v1, v0

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    :try_start_0
    iget v2, v2, Lokhttp3/Cache;->hitCount:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lokhttp3/Cache;->hitCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 415
    monitor-exit v4

    return-void

    .line 414
    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0
.end method

.method declared-synchronized trackResponse(Lokhttp3/internal/cache/CacheStrategy;)V
    .locals 7

    .prologue
    .line 402
    move-object v0, p0

    move-object v1, p1

    move-object v5, p0

    monitor-enter v5

    move-object v2, v0

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    :try_start_0
    iget v3, v3, Lokhttp3/Cache;->requestCount:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lokhttp3/Cache;->requestCount:I

    .line 404
    move-object v2, v1

    iget-object v2, v2, Lokhttp3/internal/cache/CacheStrategy;->networkRequest:Lokhttp3/Request;

    if-eqz v2, :cond_1

    .line 406
    move-object v2, v0

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    iget v3, v3, Lokhttp3/Cache;->networkCount:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lokhttp3/Cache;->networkCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 411
    :cond_0
    :goto_0
    monitor-exit v5

    return-void

    .line 407
    :cond_1
    move-object v2, v1

    :try_start_1
    iget-object v2, v2, Lokhttp3/internal/cache/CacheStrategy;->cacheResponse:Lokhttp3/Response;

    if-eqz v2, :cond_0

    .line 409
    move-object v2, v0

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    iget v3, v3, Lokhttp3/Cache;->hitCount:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lokhttp3/Cache;->hitCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 402
    :catchall_0
    move-exception v0

    monitor-exit v5

    throw v0
.end method

.method update(Lokhttp3/Response;Lokhttp3/Response;)V
    .locals 11

    .prologue
    .line 262
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    new-instance v7, Lokhttp3/Cache$Entry;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v9, v2

    invoke-direct {v8, v9}, Lokhttp3/Cache$Entry;-><init>(Lokhttp3/Response;)V

    move-object v3, v7

    .line 263
    move-object v7, v1

    invoke-virtual {v7}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v7

    check-cast v7, Lokhttp3/Cache$CacheResponseBody;

    iget-object v7, v7, Lokhttp3/Cache$CacheResponseBody;->snapshot:Lokhttp3/internal/cache/DiskLruCache$Snapshot;

    move-object v4, v7

    .line 264
    const/4 v7, 0x0

    move-object v5, v7

    .line 266
    move-object v7, v4

    :try_start_0
    invoke-virtual {v7}, Lokhttp3/internal/cache/DiskLruCache$Snapshot;->edit()Lokhttp3/internal/cache/DiskLruCache$Editor;

    move-result-object v7

    move-object v5, v7

    .line 267
    move-object v7, v5

    if-eqz v7, :cond_0

    .line 268
    move-object v7, v3

    move-object v8, v5

    invoke-virtual {v7, v8}, Lokhttp3/Cache$Entry;->writeTo(Lokhttp3/internal/cache/DiskLruCache$Editor;)V

    .line 269
    move-object v7, v5

    invoke-virtual {v7}, Lokhttp3/internal/cache/DiskLruCache$Editor;->commit()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 274
    :cond_0
    :goto_0
    return-void

    .line 271
    :catch_0
    move-exception v7

    move-object v6, v7

    .line 272
    move-object v7, v0

    move-object v8, v5

    invoke-direct {v7, v8}, Lokhttp3/Cache;->abortQuietly(Lokhttp3/internal/cache/DiskLruCache$Editor;)V

    goto :goto_0
.end method

.method public urls()Ljava/util/Iterator;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 327
    move-object v0, p0

    new-instance v1, Lokhttp3/Cache$2;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lokhttp3/Cache$2;-><init>(Lokhttp3/Cache;)V

    move-object v0, v1

    return-object v0
.end method

.method public declared-synchronized writeAbortCount()I
    .locals 3

    .prologue
    .line 370
    move-object v0, p0

    move-object v2, p0

    monitor-enter v2

    move-object v1, v0

    :try_start_0
    iget v1, v1, Lokhttp3/Cache;->writeAbortCount:I
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

.method public declared-synchronized writeSuccessCount()I
    .locals 3

    .prologue
    .line 374
    move-object v0, p0

    move-object v2, p0

    monitor-enter v2

    move-object v1, v0

    :try_start_0
    iget v1, v1, Lokhttp3/Cache;->writeSuccessCount:I
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
