.class final Lokhttp3/RequestBody$2;
.super Lokhttp3/RequestBody;
.source "RequestBody.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;[BII)Lokhttp3/RequestBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$byteCount:I

.field final synthetic val$content:[B

.field final synthetic val$contentType:Lokhttp3/MediaType;

.field final synthetic val$offset:I


# direct methods
.method constructor <init>(Lokhttp3/MediaType;I[BI)V
    .locals 7

    .prologue
    .line 86
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lokhttp3/RequestBody$2;->val$contentType:Lokhttp3/MediaType;

    move-object v5, v0

    move v6, v2

    iput v6, v5, Lokhttp3/RequestBody$2;->val$byteCount:I

    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Lokhttp3/RequestBody$2;->val$content:[B

    move-object v5, v0

    move v6, v4

    iput v6, v5, Lokhttp3/RequestBody$2;->val$offset:I

    move-object v5, v0

    invoke-direct {v5}, Lokhttp3/RequestBody;-><init>()V

    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 3

    .prologue
    .line 92
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lokhttp3/RequestBody$2;->val$byteCount:I

    int-to-long v1, v1

    move-wide v0, v1

    return-wide v0
.end method

.method public contentType()Lokhttp3/MediaType;
    .locals 2

    .prologue
    .line 88
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/RequestBody$2;->val$contentType:Lokhttp3/MediaType;

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
    .line 96
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lokhttp3/RequestBody$2;->val$content:[B

    move-object v4, v0

    iget v4, v4, Lokhttp3/RequestBody$2;->val$offset:I

    move-object v5, v0

    iget v5, v5, Lokhttp3/RequestBody$2;->val$byteCount:I

    invoke-interface {v2, v3, v4, v5}, Lokio/BufferedSink;->write([BII)Lokio/BufferedSink;

    move-result-object v2

    .line 97
    return-void
.end method
