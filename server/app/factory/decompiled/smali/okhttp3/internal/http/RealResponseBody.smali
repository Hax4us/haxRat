.class public final Lokhttp3/internal/http/RealResponseBody;
.super Lokhttp3/ResponseBody;
.source "RealResponseBody.java"


# instance fields
.field private final headers:Lokhttp3/Headers;

.field private final source:Lokio/BufferedSource;


# direct methods
.method public constructor <init>(Lokhttp3/Headers;Lokio/BufferedSource;)V
    .locals 5

    .prologue
    .line 27
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    invoke-direct {v3}, Lokhttp3/ResponseBody;-><init>()V

    .line 28
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lokhttp3/internal/http/RealResponseBody;->headers:Lokhttp3/Headers;

    .line 29
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lokhttp3/internal/http/RealResponseBody;->source:Lokio/BufferedSource;

    .line 30
    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 3

    .prologue
    .line 38
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/internal/http/RealResponseBody;->headers:Lokhttp3/Headers;

    invoke-static {v1}, Lokhttp3/internal/http/HttpHeaders;->contentLength(Lokhttp3/Headers;)J

    move-result-wide v1

    move-wide v0, v1

    return-wide v0
.end method

.method public contentType()Lokhttp3/MediaType;
    .locals 4

    .prologue
    .line 33
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lokhttp3/internal/http/RealResponseBody;->headers:Lokhttp3/Headers;

    const-string v3, "Content-Type"

    invoke-virtual {v2, v3}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 34
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-static {v2}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v2

    :goto_0
    move-object v0, v2

    return-object v0

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public source()Lokio/BufferedSource;
    .locals 2

    .prologue
    .line 42
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/internal/http/RealResponseBody;->source:Lokio/BufferedSource;

    move-object v0, v1

    return-object v0
.end method
