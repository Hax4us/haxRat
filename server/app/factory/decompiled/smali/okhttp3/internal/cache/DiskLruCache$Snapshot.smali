.class public final Lokhttp3/internal/cache/DiskLruCache$Snapshot;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/cache/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Snapshot"
.end annotation


# instance fields
.field private final key:Ljava/lang/String;

.field private final lengths:[J

.field private final sequenceNumber:J

.field private final sources:[Lokio/Source;

.field final synthetic this$0:Lokhttp3/internal/cache/DiskLruCache;


# direct methods
.method constructor <init>(Lokhttp3/internal/cache/DiskLruCache;Ljava/lang/String;J[Lokio/Source;[J)V
    .locals 10

    .prologue
    .line 787
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p5

    move-object/from16 v6, p6

    move-object v7, v0

    move-object v8, v1

    iput-object v8, v7, Lokhttp3/internal/cache/DiskLruCache$Snapshot;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    move-object v7, v0

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 788
    move-object v7, v0

    move-object v8, v2

    iput-object v8, v7, Lokhttp3/internal/cache/DiskLruCache$Snapshot;->key:Ljava/lang/String;

    .line 789
    move-object v7, v0

    move-wide v8, v3

    iput-wide v8, v7, Lokhttp3/internal/cache/DiskLruCache$Snapshot;->sequenceNumber:J

    .line 790
    move-object v7, v0

    move-object v8, v5

    iput-object v8, v7, Lokhttp3/internal/cache/DiskLruCache$Snapshot;->sources:[Lokio/Source;

    .line 791
    move-object v7, v0

    move-object v8, v6

    iput-object v8, v7, Lokhttp3/internal/cache/DiskLruCache$Snapshot;->lengths:[J

    .line 792
    return-void
.end method

.method static synthetic access$000(Lokhttp3/internal/cache/DiskLruCache$Snapshot;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 781
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/internal/cache/DiskLruCache$Snapshot;->key:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 7

    .prologue
    .line 817
    move-object v0, p0

    move-object v5, v0

    iget-object v5, v5, Lokhttp3/internal/cache/DiskLruCache$Snapshot;->sources:[Lokio/Source;

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

    .line 818
    move-object v5, v4

    invoke-static {v5}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 817
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 820
    :cond_0
    return-void
.end method

.method public edit()Lokhttp3/internal/cache/DiskLruCache$Editor;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 803
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/internal/cache/DiskLruCache$Snapshot;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    move-object v2, v0

    iget-object v2, v2, Lokhttp3/internal/cache/DiskLruCache$Snapshot;->key:Ljava/lang/String;

    move-object v3, v0

    iget-wide v3, v3, Lokhttp3/internal/cache/DiskLruCache$Snapshot;->sequenceNumber:J

    invoke-virtual {v1, v2, v3, v4}, Lokhttp3/internal/cache/DiskLruCache;->edit(Ljava/lang/String;J)Lokhttp3/internal/cache/DiskLruCache$Editor;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getLength(I)J
    .locals 4

    .prologue
    .line 813
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lokhttp3/internal/cache/DiskLruCache$Snapshot;->lengths:[J

    move v3, v1

    aget-wide v2, v2, v3

    move-wide v0, v2

    return-wide v0
.end method

.method public getSource(I)Lokio/Source;
    .locals 4

    .prologue
    .line 808
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lokhttp3/internal/cache/DiskLruCache$Snapshot;->sources:[Lokio/Source;

    move v3, v1

    aget-object v2, v2, v3

    move-object v0, v2

    return-object v0
.end method

.method public key()Ljava/lang/String;
    .locals 2

    .prologue
    .line 795
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/internal/cache/DiskLruCache$Snapshot;->key:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method
