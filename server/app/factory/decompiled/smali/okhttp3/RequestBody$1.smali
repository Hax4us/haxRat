.class final Lokhttp3/RequestBody$1;
.super Lokhttp3/RequestBody;
.source "RequestBody.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Lokio/ByteString;)Lokhttp3/RequestBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$content:Lokio/ByteString;

.field final synthetic val$contentType:Lokhttp3/MediaType;


# direct methods
.method constructor <init>(Lokhttp3/MediaType;Lokio/ByteString;)V
    .locals 5

    .prologue
    .line 61
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lokhttp3/RequestBody$1;->val$contentType:Lokhttp3/MediaType;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lokhttp3/RequestBody$1;->val$content:Lokio/ByteString;

    move-object v3, v0

    invoke-direct {v3}, Lokhttp3/RequestBody;-><init>()V

    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 67
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/RequestBody$1;->val$content:Lokio/ByteString;

    invoke-virtual {v1}, Lokio/ByteString;->size()I

    move-result v1

    int-to-long v1, v1

    move-wide v0, v1

    return-wide v0
.end method

.method public contentType()Lokhttp3/MediaType;
    .locals 2

    .prologue
    .line 63
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/RequestBody$1;->val$contentType:Lokhttp3/MediaType;

    move-object v0, v1

    return-object v0
.end method

.method public writeTo(Lokio/BufferedSink;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 71
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lokhttp3/RequestBody$1;->val$content:Lokio/ByteString;

    invoke-interface {v2, v3}, Lokio/BufferedSink;->write(Lokio/ByteString;)Lokio/BufferedSink;

    move-result-object v2

    .line 72
    return-void
.end method
