.class final Lokhttp3/ResponseBody$1;
.super Lokhttp3/ResponseBody;
.source "ResponseBody.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/ResponseBody;->create(Lokhttp3/MediaType;JLokio/BufferedSource;)Lokhttp3/ResponseBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$content:Lokio/BufferedSource;

.field final synthetic val$contentLength:J

.field final synthetic val$contentType:Lokhttp3/MediaType;


# direct methods
.method constructor <init>(Lokhttp3/MediaType;JLokio/BufferedSource;)V
    .locals 8

    .prologue
    .line 216
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lokhttp3/ResponseBody$1;->val$contentType:Lokhttp3/MediaType;

    move-object v5, v0

    move-wide v6, v2

    iput-wide v6, v5, Lokhttp3/ResponseBody$1;->val$contentLength:J

    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Lokhttp3/ResponseBody$1;->val$content:Lokio/BufferedSource;

    move-object v5, v0

    invoke-direct {v5}, Lokhttp3/ResponseBody;-><init>()V

    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 3

    .prologue
    .line 222
    move-object v0, p0

    move-object v1, v0

    iget-wide v1, v1, Lokhttp3/ResponseBody$1;->val$contentLength:J

    move-wide v0, v1

    return-wide v0
.end method

.method public contentType()Lokhttp3/MediaType;
    .locals 2

    .prologue
    .line 218
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/ResponseBody$1;->val$contentType:Lokhttp3/MediaType;

    move-object v0, v1

    return-object v0
.end method

.method public source()Lokio/BufferedSource;
    .locals 2

    .prologue
    .line 226
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/ResponseBody$1;->val$content:Lokio/BufferedSource;

    move-object v0, v1

    return-object v0
.end method
