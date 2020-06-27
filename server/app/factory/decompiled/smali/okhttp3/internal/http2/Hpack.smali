.class final Lokhttp3/internal/http2/Hpack;
.super Ljava/lang/Object;
.source "Hpack.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/http2/Hpack$Writer;,
        Lokhttp3/internal/http2/Hpack$Reader;
    }
.end annotation


# static fields
.field static final NAME_TO_FIRST_INDEX:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lokio/ByteString;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final PREFIX_4_BITS:I = 0xf

.field private static final PREFIX_5_BITS:I = 0x1f

.field private static final PREFIX_6_BITS:I = 0x3f

.field private static final PREFIX_7_BITS:I = 0x7f

.field static final STATIC_HEADER_TABLE:[Lokhttp3/internal/http2/Header;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    .line 47
    const/16 v0, 0x3d

    new-array v0, v0, [Lokhttp3/internal/http2/Header;

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/4 v2, 0x0

    new-instance v3, Lokhttp3/internal/http2/Header;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    sget-object v5, Lokhttp3/internal/http2/Header;->TARGET_AUTHORITY:Lokio/ByteString;

    const-string v6, ""

    invoke-direct {v4, v5, v6}, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/4 v2, 0x1

    new-instance v3, Lokhttp3/internal/http2/Header;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    sget-object v5, Lokhttp3/internal/http2/Header;->TARGET_METHOD:Lokio/ByteString;

    const-string v6, "GET"

    invoke-direct {v4, v5, v6}, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/4 v2, 0x2

    new-instance v3, Lokhttp3/internal/http2/Header;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    sget-object v5, Lokhttp3/internal/http2/Header;->TARGET_METHOD:Lokio/ByteString;

    const-string v6, "POST"

    invoke-direct {v4, v5, v6}, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/4 v2, 0x3

    new-instance v3, Lokhttp3/internal/http2/Header;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    sget-object v5, Lokhttp3/internal/http2/Header;->TARGET_PATH:Lokio/ByteString;

    const-string v6, "/"

    invoke-direct {v4, v5, v6}, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/4 v2, 0x4

    new-instance v3, Lokhttp3/internal/http2/Header;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    sget-object v5, Lokhttp3/internal/http2/Header;->TARGET_PATH:Lokio/ByteString;

    const-string v6, "/index.html"

    invoke-direct {v4, v5, v6}, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/4 v2, 0x5

    new-instance v3, Lokhttp3/internal/http2/Header;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    sget-object v5, Lokhttp3/internal/http2/Header;->TARGET_SCHEME:Lokio/ByteString;

    const-string v6, "http"

    invoke-direct {v4, v5, v6}, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/4 v2, 0x6

    new-instance v3, Lokhttp3/internal/http2/Header;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    sget-object v5, Lokhttp3/internal/http2/Header;->TARGET_SCHEME:Lokio/ByteString;

    const-string v6, "https"

    invoke-direct {v4, v5, v6}, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/4 v2, 0x7

    new-instance v3, Lokhttp3/internal/http2/Header;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    sget-object v5, Lokhttp3/internal/http2/Header;->RESPONSE_STATUS:Lokio/ByteString;

    const-string v6, "200"

    invoke-direct {v4, v5, v6}, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x8

    new-instance v3, Lokhttp3/internal/http2/Header;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    sget-object v5, Lokhttp3/internal/http2/Header;->RESPONSE_STATUS:Lokio/ByteString;

    const-string v6, "204"

    invoke-direct {v4, v5, v6}, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x9

    new-instance v3, Lokhttp3/internal/http2/Header;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    sget-object v5, Lokhttp3/internal/http2/Header;->RESPONSE_STATUS:Lokio/ByteString;

    const-string v6, "206"

    invoke-direct {v4, v5, v6}, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0xa

    new-instance v3, Lokhttp3/internal/http2/Header;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    sget-object v5, Lokhttp3/internal/http2/Header;->RESPONSE_STATUS:Lokio/ByteString;

    const-string v6, "304"

    invoke-direct {v4, v5, v6}, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0xb

    new-instance v3, Lokhttp3/internal/http2/Header;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    sget-object v5, Lokhttp3/internal/http2/Header;->RESPONSE_STATUS:Lokio/ByteString;

    const-string v6, "400"

    invoke-direct {v4, v5, v6}, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0xc

    new-instance v3, Lokhttp3/internal/http2/Header;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    sget-object v5, Lokhttp3/internal/http2/Header;->RESPONSE_STATUS:Lokio/ByteString;

    const-string v6, "404"

    invoke-direct {v4, v5, v6}, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0xd

    new-instance v3, Lokhttp3/internal/http2/Header;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    sget-object v5, Lokhttp3/internal/http2/Header;->RESPONSE_STATUS:Lokio/ByteString;

    const-string v6, "500"

    invoke-direct {v4, v5, v6}, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0xe

    new-instance v3, Lokhttp3/internal/http2/Header;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const-string v5, "accept-charset"

    const-string v6, ""

    invoke-direct {v4, v5, v6}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0xf

    new-instance v3, Lokhttp3/internal/http2/Header;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const-string v5, "accept-encoding"

    const-string v6, "gzip, deflate"

    invoke-direct {v4, v5, v6}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x10

    new-instance v3, Lokhttp3/internal/http2/Header;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const-string v5, "accept-language"

    const-string v6, ""

    invoke-direct {v4, v5, v6}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x11

    new-instance v3, Lokhttp3/internal/http2/Header;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const-string v5, "accept-ranges"

    const-string v6, ""

    invoke-direct {v4, v5, v6}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x12

    new-instance v3, Lokhttp3/internal/http2/Header;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const-string v5, "accept"

    const-string v6, ""

    invoke-direct {v4, v5, v6}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x13

    new-instance v3, Lokhttp3/internal/http2/Header;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const-string v5, "access-control-allow-origin"

    const-string v6, ""

    invoke-direct {v4, v5, v6}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x14

    new-instance v3, Lokhttp3/internal/http2/Header;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const-string v5, "age"

    const-string v6, ""

    invoke-direct {v4, v5, v6}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x15

    new-instance v3, Lokhttp3/internal/http2/Header;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const-string v5, "allow"

    const-string v6, ""

    invoke-direct {v4, v5, v6}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x16

    new-instance v3, Lokhttp3/internal/http2/Header;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const-string v5, "authorization"

    const-string v6, ""

    invoke-direct {v4, v5, v6}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x17

    new-instance v3, Lokhttp3/internal/http2/Header;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const-string v5, "cache-control"

    const-string v6, ""

    invoke-direct {v4, v5, v6}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x18

    new-instance v3, Lokhttp3/internal/http2/Header;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const-string v5, "content-disposition"

    const-string v6, ""

    invoke-direct {v4, v5, v6}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x19

    new-instance v3, Lokhttp3/internal/http2/Header;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const-string v5, "content-encoding"

    const-string v6, ""

    invoke-direct {v4, v5, v6}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x1a

    new-instance v3, Lokhttp3/internal/http2/Header;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const-string v5, "content-language"

    const-string v6, ""

    invoke-direct {v4, v5, v6}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x1b

    new-instance v3, Lokhttp3/internal/http2/Header;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const-string v5, "content-length"

    const-string v6, ""

    invoke-direct {v4, v5, v6}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x1c

    new-instance v3, Lokhttp3/internal/http2/Header;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const-string v5, "content-location"

    const-string v6, ""

    invoke-direct {v4, v5, v6}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x1d

    new-instance v3, Lokhttp3/internal/http2/Header;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const-string v5, "content-range"

    const-string v6, ""

    invoke-direct {v4, v5, v6}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x1e

    new-instance v3, Lokhttp3/internal/http2/Header;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const-string v5, "content-type"

    const-string v6, ""

    invoke-direct {v4, v5, v6}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x1f

    new-instance v3, Lokhttp3/internal/http2/Header;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const-string v5, "cookie"

    const-string v6, ""

    invoke-direct {v4, v5, v6}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x20

    new-instance v3, Lokhttp3/internal/http2/Header;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const-string v5, "date"

    const-string v6, ""

    invoke-direct {v4, v5, v6}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x21

    new-instance v3, Lokhttp3/internal/http2/Header;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const-string v5, "etag"

    const-string v6, ""

    invoke-direct {v4, v5, v6}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x22

    new-instance v3, Lokhttp3/internal/http2/Header;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const-string v5, "expect"

    const-string v6, ""

    invoke-direct {v4, v5, v6}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x23

    new-instance v3, Lokhttp3/internal/http2/Header;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const-string v5, "expires"

    const-string v6, ""

    invoke-direct {v4, v5, v6}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x24

    new-instance v3, Lokhttp3/internal/http2/Header;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const-string v5, "from"

    const-string v6, ""

    invoke-direct {v4, v5, v6}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x25

    new-instance v3, Lokhttp3/internal/http2/Header;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const-string v5, "host"

    const-string v6, ""

    invoke-direct {v4, v5, v6}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x26

    new-instance v3, Lokhttp3/internal/http2/Header;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const-string v5, "if-match"

    const-string v6, ""

    invoke-direct {v4, v5, v6}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x27

    new-instance v3, Lokhttp3/internal/http2/Header;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const-string v5, "if-modified-since"

    const-string v6, ""

    invoke-direct {v4, v5, v6}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x28

    new-instance v3, Lokhttp3/internal/http2/Header;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const-string v5, "if-none-match"

    const-string v6, ""

    invoke-direct {v4, v5, v6}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x29

    new-instance v3, Lokhttp3/internal/http2/Header;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const-string v5, "if-range"

    const-string v6, ""

    invoke-direct {v4, v5, v6}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x2a

    new-instance v3, Lokhttp3/internal/http2/Header;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const-string v5, "if-unmodified-since"

    const-string v6, ""

    invoke-direct {v4, v5, v6}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x2b

    new-instance v3, Lokhttp3/internal/http2/Header;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const-string v5, "last-modified"

    const-string v6, ""

    invoke-direct {v4, v5, v6}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x2c

    new-instance v3, Lokhttp3/internal/http2/Header;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const-string v5, "link"

    const-string v6, ""

    invoke-direct {v4, v5, v6}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x2d

    new-instance v3, Lokhttp3/internal/http2/Header;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const-string v5, "location"

    const-string v6, ""

    invoke-direct {v4, v5, v6}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x2e

    new-instance v3, Lokhttp3/internal/http2/Header;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const-string v5, "max-forwards"

    const-string v6, ""

    invoke-direct {v4, v5, v6}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x2f

    new-instance v3, Lokhttp3/internal/http2/Header;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const-string v5, "proxy-authenticate"

    const-string v6, ""

    invoke-direct {v4, v5, v6}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x30

    new-instance v3, Lokhttp3/internal/http2/Header;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const-string v5, "proxy-authorization"

    const-string v6, ""

    invoke-direct {v4, v5, v6}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x31

    new-instance v3, Lokhttp3/internal/http2/Header;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const-string v5, "range"

    const-string v6, ""

    invoke-direct {v4, v5, v6}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x32

    new-instance v3, Lokhttp3/internal/http2/Header;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const-string v5, "referer"

    const-string v6, ""

    invoke-direct {v4, v5, v6}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x33

    new-instance v3, Lokhttp3/internal/http2/Header;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const-string v5, "refresh"

    const-string v6, ""

    invoke-direct {v4, v5, v6}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x34

    new-instance v3, Lokhttp3/internal/http2/Header;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const-string v5, "retry-after"

    const-string v6, ""

    invoke-direct {v4, v5, v6}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x35

    new-instance v3, Lokhttp3/internal/http2/Header;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const-string v5, "server"

    const-string v6, ""

    invoke-direct {v4, v5, v6}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x36

    new-instance v3, Lokhttp3/internal/http2/Header;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const-string v5, "set-cookie"

    const-string v6, ""

    invoke-direct {v4, v5, v6}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x37

    new-instance v3, Lokhttp3/internal/http2/Header;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const-string v5, "strict-transport-security"

    const-string v6, ""

    invoke-direct {v4, v5, v6}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x38

    new-instance v3, Lokhttp3/internal/http2/Header;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const-string v5, "transfer-encoding"

    const-string v6, ""

    invoke-direct {v4, v5, v6}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x39

    new-instance v3, Lokhttp3/internal/http2/Header;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const-string v5, "user-agent"

    const-string v6, ""

    invoke-direct {v4, v5, v6}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x3a

    new-instance v3, Lokhttp3/internal/http2/Header;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const-string v5, "vary"

    const-string v6, ""

    invoke-direct {v4, v5, v6}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x3b

    new-instance v3, Lokhttp3/internal/http2/Header;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const-string v5, "via"

    const-string v6, ""

    invoke-direct {v4, v5, v6}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x3c

    new-instance v3, Lokhttp3/internal/http2/Header;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const-string v5, "www-authenticate"

    const-string v6, ""

    invoke-direct {v4, v5, v6}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    sput-object v0, Lokhttp3/internal/http2/Hpack;->STATIC_HEADER_TABLE:[Lokhttp3/internal/http2/Header;

    .line 349
    invoke-static {}, Lokhttp3/internal/http2/Hpack;->nameToFirstIndex()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/http2/Hpack;->NAME_TO_FIRST_INDEX:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 111
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 112
    return-void
.end method

.method static checkLowercase(Lokio/ByteString;)Lokio/ByteString;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 591
    move-object v0, p0

    const/4 v4, 0x0

    move v1, v4

    move-object v4, v0

    invoke-virtual {v4}, Lokio/ByteString;->size()I

    move-result v4

    move v2, v4

    :goto_0
    move v4, v1

    move v5, v2

    if-ge v4, v5, :cond_1

    .line 592
    move-object v4, v0

    move v5, v1

    invoke-virtual {v4, v5}, Lokio/ByteString;->getByte(I)B

    move-result v4

    move v3, v4

    .line 593
    move v4, v3

    const/16 v5, 0x41

    if-lt v4, v5, :cond_0

    move v4, v3

    const/16 v5, 0x5a

    if-gt v4, v5, :cond_0

    .line 594
    new-instance v4, Ljava/io/IOException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PROTOCOL_ERROR response malformed: mixed case name: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v0

    invoke-virtual {v7}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 591
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 597
    :cond_1
    move-object v4, v0

    move-object v0, v4

    return-object v0
.end method

.method private static nameToFirstIndex()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lokio/ByteString;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 352
    new-instance v2, Ljava/util/LinkedHashMap;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    sget-object v4, Lokhttp3/internal/http2/Hpack;->STATIC_HEADER_TABLE:[Lokhttp3/internal/http2/Header;

    array-length v4, v4

    invoke-direct {v3, v4}, Ljava/util/LinkedHashMap;-><init>(I)V

    move-object v0, v2

    .line 353
    const/4 v2, 0x0

    move v1, v2

    :goto_0
    move v2, v1

    sget-object v3, Lokhttp3/internal/http2/Hpack;->STATIC_HEADER_TABLE:[Lokhttp3/internal/http2/Header;

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 354
    move-object v2, v0

    sget-object v3, Lokhttp3/internal/http2/Hpack;->STATIC_HEADER_TABLE:[Lokhttp3/internal/http2/Header;

    move v4, v1

    aget-object v3, v3, v4

    iget-object v3, v3, Lokhttp3/internal/http2/Header;->name:Lokio/ByteString;

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 355
    move-object v2, v0

    sget-object v3, Lokhttp3/internal/http2/Hpack;->STATIC_HEADER_TABLE:[Lokhttp3/internal/http2/Header;

    move v4, v1

    aget-object v3, v3, v4

    iget-object v3, v3, Lokhttp3/internal/http2/Header;->name:Lokio/ByteString;

    move v4, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 353
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 358
    :cond_1
    move-object v2, v0

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method
