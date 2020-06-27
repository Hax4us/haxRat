.class public final Lokhttp3/internal/http2/Header;
.super Ljava/lang/Object;
.source "Header.java"


# static fields
.field public static final PSEUDO_PREFIX:Lokio/ByteString;

.field public static final RESPONSE_STATUS:Lokio/ByteString;

.field public static final TARGET_AUTHORITY:Lokio/ByteString;

.field public static final TARGET_METHOD:Lokio/ByteString;

.field public static final TARGET_PATH:Lokio/ByteString;

.field public static final TARGET_SCHEME:Lokio/ByteString;


# instance fields
.field final hpackSize:I

.field public final name:Lokio/ByteString;

.field public final value:Lokio/ByteString;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-string v0, ":"

    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/http2/Header;->PSEUDO_PREFIX:Lokio/ByteString;

    .line 25
    const-string v0, ":status"

    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/http2/Header;->RESPONSE_STATUS:Lokio/ByteString;

    .line 26
    const-string v0, ":method"

    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/http2/Header;->TARGET_METHOD:Lokio/ByteString;

    .line 27
    const-string v0, ":path"

    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/http2/Header;->TARGET_PATH:Lokio/ByteString;

    .line 28
    const-string v0, ":scheme"

    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/http2/Header;->TARGET_SCHEME:Lokio/ByteString;

    .line 29
    const-string v0, ":authority"

    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/http2/Header;->TARGET_AUTHORITY:Lokio/ByteString;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 39
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    invoke-static {v4}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v4

    move-object v5, v2

    invoke-static {v5}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Lokio/ByteString;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Lokio/ByteString;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 43
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-static {v5}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Lokio/ByteString;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Lokio/ByteString;Lokio/ByteString;)V
    .locals 6

    .prologue
    .line 46
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 47
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lokhttp3/internal/http2/Header;->name:Lokio/ByteString;

    .line 48
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lokhttp3/internal/http2/Header;->value:Lokio/ByteString;

    .line 49
    move-object v3, v0

    const/16 v4, 0x20

    move-object v5, v1

    invoke-virtual {v5}, Lokio/ByteString;->size()I

    move-result v5

    add-int/2addr v4, v5

    move-object v5, v2

    invoke-virtual {v5}, Lokio/ByteString;->size()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v3, Lokhttp3/internal/http2/Header;->hpackSize:I

    .line 50
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 53
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    instance-of v3, v3, Lokhttp3/internal/http2/Header;

    if-eqz v3, :cond_1

    .line 54
    move-object v3, v1

    check-cast v3, Lokhttp3/internal/http2/Header;

    move-object v2, v3

    .line 55
    move-object v3, v0

    iget-object v3, v3, Lokhttp3/internal/http2/Header;->name:Lokio/ByteString;

    move-object v4, v2

    iget-object v4, v4, Lokhttp3/internal/http2/Header;->name:Lokio/ByteString;

    invoke-virtual {v3, v4}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lokhttp3/internal/http2/Header;->value:Lokio/ByteString;

    move-object v4, v2

    iget-object v4, v4, Lokhttp3/internal/http2/Header;->value:Lokio/ByteString;

    .line 56
    invoke-virtual {v3, v4}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    .line 55
    :goto_0
    move v0, v3

    .line 58
    :goto_1
    return v0

    .line 56
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 58
    :cond_1
    const/4 v3, 0x0

    move v0, v3

    goto :goto_1
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 62
    move-object v0, p0

    const/16 v2, 0x11

    move v1, v2

    .line 63
    const/16 v2, 0x1f

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget-object v3, v3, Lokhttp3/internal/http2/Header;->name:Lokio/ByteString;

    invoke-virtual {v3}, Lokio/ByteString;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    move v1, v2

    .line 64
    const/16 v2, 0x1f

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget-object v3, v3, Lokhttp3/internal/http2/Header;->value:Lokio/ByteString;

    invoke-virtual {v3}, Lokio/ByteString;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    move v1, v2

    .line 65
    move v2, v1

    move v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 69
    move-object v0, p0

    const-string v1, "%s: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x0

    move-object v5, v0

    iget-object v5, v5, Lokhttp3/internal/http2/Header;->name:Lokio/ByteString;

    invoke-virtual {v5}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x1

    move-object v5, v0

    iget-object v5, v5, Lokhttp3/internal/http2/Header;->value:Lokio/ByteString;

    invoke-virtual {v5}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2}, Lokhttp3/internal/Util;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method
