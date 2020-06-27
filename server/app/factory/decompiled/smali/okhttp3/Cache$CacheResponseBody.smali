.class Lokhttp3/Cache$CacheResponseBody;
.super Lokhttp3/ResponseBody;
.source "Cache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/Cache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CacheResponseBody"
.end annotation


# instance fields
.field private final bodySource:Lokio/BufferedSource;

.field private final contentLength:Ljava/lang/String;

.field private final contentType:Ljava/lang/String;

.field final snapshot:Lokhttp3/internal/cache/DiskLruCache$Snapshot;


# direct methods
.method public constructor <init>(Lokhttp3/internal/cache/DiskLruCache$Snapshot;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12

    .prologue
    .line 743
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v0

    invoke-direct {v5}, Lokhttp3/ResponseBody;-><init>()V

    .line 744
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lokhttp3/Cache$CacheResponseBody;->snapshot:Lokhttp3/internal/cache/DiskLruCache$Snapshot;

    .line 745
    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Lokhttp3/Cache$CacheResponseBody;->contentType:Ljava/lang/String;

    .line 746
    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Lokhttp3/Cache$CacheResponseBody;->contentLength:Ljava/lang/String;

    .line 748
    move-object v5, v1

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lokhttp3/internal/cache/DiskLruCache$Snapshot;->getSource(I)Lokio/Source;

    move-result-object v5

    move-object v4, v5

    .line 749
    move-object v5, v0

    new-instance v6, Lokhttp3/Cache$CacheResponseBody$1;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v0

    move-object v9, v4

    move-object v10, v1

    invoke-direct {v7, v8, v9, v10}, Lokhttp3/Cache$CacheResponseBody$1;-><init>(Lokhttp3/Cache$CacheResponseBody;Lokio/Source;Lokhttp3/internal/cache/DiskLruCache$Snapshot;)V

    invoke-static {v6}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v6

    iput-object v6, v5, Lokhttp3/Cache$CacheResponseBody;->bodySource:Lokio/BufferedSource;

    .line 755
    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 4

    .prologue
    .line 763
    move-object v0, p0

    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lokhttp3/Cache$CacheResponseBody;->contentLength:Ljava/lang/String;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lokhttp3/Cache$CacheResponseBody;->contentLength:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    :goto_0
    move-wide v0, v2

    .line 765
    :goto_1
    return-wide v0

    .line 763
    :cond_0
    const-wide/16 v2, -0x1

    goto :goto_0

    .line 764
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 765
    const-wide/16 v2, -0x1

    move-wide v0, v2

    goto :goto_1
.end method

.method public contentType()Lokhttp3/MediaType;
    .locals 2

    .prologue
    .line 758
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/Cache$CacheResponseBody;->contentType:Ljava/lang/String;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/Cache$CacheResponseBody;->contentType:Ljava/lang/String;

    invoke-static {v1}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v1

    :goto_0
    move-object v0, v1

    return-object v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public source()Lokio/BufferedSource;
    .locals 2

    .prologue
    .line 770
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/Cache$CacheResponseBody;->bodySource:Lokio/BufferedSource;

    move-object v0, v1

    return-object v0
.end method
