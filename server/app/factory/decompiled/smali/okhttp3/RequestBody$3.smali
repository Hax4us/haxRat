.class final Lokhttp3/RequestBody$3;
.super Lokhttp3/RequestBody;
.source "RequestBody.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/io/File;)Lokhttp3/RequestBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$contentType:Lokhttp3/MediaType;

.field final synthetic val$file:Ljava/io/File;


# direct methods
.method constructor <init>(Lokhttp3/MediaType;Ljava/io/File;)V
    .locals 5

    .prologue
    .line 105
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lokhttp3/RequestBody$3;->val$contentType:Lokhttp3/MediaType;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lokhttp3/RequestBody$3;->val$file:Ljava/io/File;

    move-object v3, v0

    invoke-direct {v3}, Lokhttp3/RequestBody;-><init>()V

    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 3

    .prologue
    .line 111
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/RequestBody$3;->val$file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    move-wide v0, v1

    return-wide v0
.end method

.method public contentType()Lokhttp3/MediaType;
    .locals 2

    .prologue
    .line 107
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/RequestBody$3;->val$contentType:Lokhttp3/MediaType;

    move-object v0, v1

    return-object v0
.end method

.method public writeTo(Lokio/BufferedSink;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 115
    move-object v0, p0

    move-object v1, p1

    const/4 v4, 0x0

    move-object v2, v4

    .line 117
    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Lokhttp3/RequestBody$3;->val$file:Ljava/io/File;

    invoke-static {v4}, Lokio/Okio;->source(Ljava/io/File;)Lokio/Source;

    move-result-object v4

    move-object v2, v4

    .line 118
    move-object v4, v1

    move-object v5, v2

    invoke-interface {v4, v5}, Lokio/BufferedSink;->writeAll(Lokio/Source;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v4

    .line 120
    move-object v4, v2

    invoke-static {v4}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 122
    return-void

    .line 120
    :catchall_0
    move-exception v4

    move-object v3, v4

    move-object v4, v2

    invoke-static {v4}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    move-object v4, v3

    throw v4
.end method
