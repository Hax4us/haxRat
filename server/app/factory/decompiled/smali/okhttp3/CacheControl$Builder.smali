.class public final Lokhttp3/CacheControl$Builder;
.super Ljava/lang/Object;
.source "CacheControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/CacheControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field maxAgeSeconds:I

.field maxStaleSeconds:I

.field minFreshSeconds:I

.field noCache:Z

.field noStore:Z

.field noTransform:Z

.field onlyIfCached:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 265
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 268
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Lokhttp3/CacheControl$Builder;->maxAgeSeconds:I

    .line 269
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Lokhttp3/CacheControl$Builder;->maxStaleSeconds:I

    .line 270
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Lokhttp3/CacheControl$Builder;->minFreshSeconds:I

    return-void
.end method


# virtual methods
.method public build()Lokhttp3/CacheControl;
    .locals 5

    .prologue
    .line 351
    move-object v0, p0

    new-instance v1, Lokhttp3/CacheControl;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lokhttp3/CacheControl;-><init>(Lokhttp3/CacheControl$Builder;)V

    move-object v0, v1

    return-object v0
.end method

.method public maxAge(ILjava/util/concurrent/TimeUnit;)Lokhttp3/CacheControl$Builder;
    .locals 11

    .prologue
    .line 294
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v5, v1

    if-gez v5, :cond_0

    new-instance v5, Ljava/lang/IllegalArgumentException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "maxAge < 0: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 295
    :cond_0
    move-object v5, v2

    move v6, v1

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v5

    move-wide v3, v5

    .line 296
    move-object v5, v0

    move-wide v6, v3

    const-wide/32 v8, 0x7fffffff

    cmp-long v6, v6, v8

    if-lez v6, :cond_1

    const v6, 0x7fffffff

    :goto_0
    iput v6, v5, Lokhttp3/CacheControl$Builder;->maxAgeSeconds:I

    .line 299
    move-object v5, v0

    move-object v0, v5

    return-object v0

    .line 296
    :cond_1
    move-wide v6, v3

    long-to-int v6, v6

    goto :goto_0
.end method

.method public maxStale(ILjava/util/concurrent/TimeUnit;)Lokhttp3/CacheControl$Builder;
    .locals 11

    .prologue
    .line 310
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v5, v1

    if-gez v5, :cond_0

    new-instance v5, Ljava/lang/IllegalArgumentException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "maxStale < 0: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 311
    :cond_0
    move-object v5, v2

    move v6, v1

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v5

    move-wide v3, v5

    .line 312
    move-object v5, v0

    move-wide v6, v3

    const-wide/32 v8, 0x7fffffff

    cmp-long v6, v6, v8

    if-lez v6, :cond_1

    const v6, 0x7fffffff

    :goto_0
    iput v6, v5, Lokhttp3/CacheControl$Builder;->maxStaleSeconds:I

    .line 315
    move-object v5, v0

    move-object v0, v5

    return-object v0

    .line 312
    :cond_1
    move-wide v6, v3

    long-to-int v6, v6

    goto :goto_0
.end method

.method public minFresh(ILjava/util/concurrent/TimeUnit;)Lokhttp3/CacheControl$Builder;
    .locals 11

    .prologue
    .line 327
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v5, v1

    if-gez v5, :cond_0

    new-instance v5, Ljava/lang/IllegalArgumentException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "minFresh < 0: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 328
    :cond_0
    move-object v5, v2

    move v6, v1

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v5

    move-wide v3, v5

    .line 329
    move-object v5, v0

    move-wide v6, v3

    const-wide/32 v8, 0x7fffffff

    cmp-long v6, v6, v8

    if-lez v6, :cond_1

    const v6, 0x7fffffff

    :goto_0
    iput v6, v5, Lokhttp3/CacheControl$Builder;->minFreshSeconds:I

    .line 332
    move-object v5, v0

    move-object v0, v5

    return-object v0

    .line 329
    :cond_1
    move-wide v6, v3

    long-to-int v6, v6

    goto :goto_0
.end method

.method public noCache()Lokhttp3/CacheControl$Builder;
    .locals 3

    .prologue
    .line 276
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lokhttp3/CacheControl$Builder;->noCache:Z

    .line 277
    move-object v1, v0

    move-object v0, v1

    return-object v0
.end method

.method public noStore()Lokhttp3/CacheControl$Builder;
    .locals 3

    .prologue
    .line 282
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lokhttp3/CacheControl$Builder;->noStore:Z

    .line 283
    move-object v1, v0

    move-object v0, v1

    return-object v0
.end method

.method public noTransform()Lokhttp3/CacheControl$Builder;
    .locals 3

    .prologue
    .line 346
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lokhttp3/CacheControl$Builder;->noTransform:Z

    .line 347
    move-object v1, v0

    move-object v0, v1

    return-object v0
.end method

.method public onlyIfCached()Lokhttp3/CacheControl$Builder;
    .locals 3

    .prologue
    .line 340
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lokhttp3/CacheControl$Builder;->onlyIfCached:Z

    .line 341
    move-object v1, v0

    move-object v0, v1

    return-object v0
.end method
