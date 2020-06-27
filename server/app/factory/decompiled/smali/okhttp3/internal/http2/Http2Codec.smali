.class public final Lokhttp3/internal/http2/Http2Codec;
.super Ljava/lang/Object;
.source "Http2Codec.java"

# interfaces
.implements Lokhttp3/internal/http/HttpCodec;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/http2/Http2Codec$StreamFinishingSource;
    }
.end annotation


# static fields
.field private static final CONNECTION:Lokio/ByteString;

.field private static final ENCODING:Lokio/ByteString;

.field private static final HOST:Lokio/ByteString;

.field private static final HTTP_2_SKIPPED_REQUEST_HEADERS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokio/ByteString;",
            ">;"
        }
    .end annotation
.end field

.field private static final HTTP_2_SKIPPED_RESPONSE_HEADERS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokio/ByteString;",
            ">;"
        }
    .end annotation
.end field

.field private static final KEEP_ALIVE:Lokio/ByteString;

.field private static final PROXY_CONNECTION:Lokio/ByteString;

.field private static final TE:Lokio/ByteString;

.field private static final TRANSFER_ENCODING:Lokio/ByteString;

.field private static final UPGRADE:Lokio/ByteString;


# instance fields
.field private final client:Lokhttp3/OkHttpClient;

.field private final connection:Lokhttp3/internal/http2/Http2Connection;

.field private stream:Lokhttp3/internal/http2/Http2Stream;

.field final streamAllocation:Lokhttp3/internal/connection/StreamAllocation;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 51
    const-string v0, "connection"

    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/http2/Http2Codec;->CONNECTION:Lokio/ByteString;

    .line 52
    const-string v0, "host"

    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/http2/Http2Codec;->HOST:Lokio/ByteString;

    .line 53
    const-string v0, "keep-alive"

    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/http2/Http2Codec;->KEEP_ALIVE:Lokio/ByteString;

    .line 54
    const-string v0, "proxy-connection"

    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/http2/Http2Codec;->PROXY_CONNECTION:Lokio/ByteString;

    .line 55
    const-string v0, "transfer-encoding"

    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/http2/Http2Codec;->TRANSFER_ENCODING:Lokio/ByteString;

    .line 56
    const-string v0, "te"

    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/http2/Http2Codec;->TE:Lokio/ByteString;

    .line 57
    const-string v0, "encoding"

    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/http2/Http2Codec;->ENCODING:Lokio/ByteString;

    .line 58
    const-string v0, "upgrade"

    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/http2/Http2Codec;->UPGRADE:Lokio/ByteString;

    .line 61
    const/16 v0, 0xc

    new-array v0, v0, [Lokio/ByteString;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    sget-object v3, Lokhttp3/internal/http2/Http2Codec;->CONNECTION:Lokio/ByteString;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    sget-object v3, Lokhttp3/internal/http2/Http2Codec;->HOST:Lokio/ByteString;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    sget-object v3, Lokhttp3/internal/http2/Http2Codec;->KEEP_ALIVE:Lokio/ByteString;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x3

    sget-object v3, Lokhttp3/internal/http2/Http2Codec;->PROXY_CONNECTION:Lokio/ByteString;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x4

    sget-object v3, Lokhttp3/internal/http2/Http2Codec;->TE:Lokio/ByteString;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x5

    sget-object v3, Lokhttp3/internal/http2/Http2Codec;->TRANSFER_ENCODING:Lokio/ByteString;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x6

    sget-object v3, Lokhttp3/internal/http2/Http2Codec;->ENCODING:Lokio/ByteString;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x7

    sget-object v3, Lokhttp3/internal/http2/Http2Codec;->UPGRADE:Lokio/ByteString;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x8

    sget-object v3, Lokhttp3/internal/http2/Header;->TARGET_METHOD:Lokio/ByteString;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x9

    sget-object v3, Lokhttp3/internal/http2/Header;->TARGET_PATH:Lokio/ByteString;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xa

    sget-object v3, Lokhttp3/internal/http2/Header;->TARGET_SCHEME:Lokio/ByteString;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xb

    sget-object v3, Lokhttp3/internal/http2/Header;->TARGET_AUTHORITY:Lokio/ByteString;

    aput-object v3, v1, v2

    invoke-static {v0}, Lokhttp3/internal/Util;->immutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/http2/Http2Codec;->HTTP_2_SKIPPED_REQUEST_HEADERS:Ljava/util/List;

    .line 74
    const/16 v0, 0x8

    new-array v0, v0, [Lokio/ByteString;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    sget-object v3, Lokhttp3/internal/http2/Http2Codec;->CONNECTION:Lokio/ByteString;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    sget-object v3, Lokhttp3/internal/http2/Http2Codec;->HOST:Lokio/ByteString;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    sget-object v3, Lokhttp3/internal/http2/Http2Codec;->KEEP_ALIVE:Lokio/ByteString;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x3

    sget-object v3, Lokhttp3/internal/http2/Http2Codec;->PROXY_CONNECTION:Lokio/ByteString;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x4

    sget-object v3, Lokhttp3/internal/http2/Http2Codec;->TE:Lokio/ByteString;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x5

    sget-object v3, Lokhttp3/internal/http2/Http2Codec;->TRANSFER_ENCODING:Lokio/ByteString;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x6

    sget-object v3, Lokhttp3/internal/http2/Http2Codec;->ENCODING:Lokio/ByteString;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x7

    sget-object v3, Lokhttp3/internal/http2/Http2Codec;->UPGRADE:Lokio/ByteString;

    aput-object v3, v1, v2

    invoke-static {v0}, Lokhttp3/internal/Util;->immutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/http2/Http2Codec;->HTTP_2_SKIPPED_RESPONSE_HEADERS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lokhttp3/OkHttpClient;Lokhttp3/internal/connection/StreamAllocation;Lokhttp3/internal/http2/Http2Connection;)V
    .locals 6

    .prologue
    .line 90
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 91
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lokhttp3/internal/http2/Http2Codec;->client:Lokhttp3/OkHttpClient;

    .line 92
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lokhttp3/internal/http2/Http2Codec;->streamAllocation:Lokhttp3/internal/connection/StreamAllocation;

    .line 93
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lokhttp3/internal/http2/Http2Codec;->connection:Lokhttp3/internal/http2/Http2Connection;

    .line 94
    return-void
.end method

.method public static http2HeadersList(Lokhttp3/Request;)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Request;",
            ")",
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/http2/Header;",
            ">;"
        }
    .end annotation

    .prologue
    .line 119
    move-object v0, p0

    move-object v6, v0

    invoke-virtual {v6}, Lokhttp3/Request;->headers()Lokhttp3/Headers;

    move-result-object v6

    move-object v1, v6

    .line 120
    new-instance v6, Ljava/util/ArrayList;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v8, v1

    invoke-virtual {v8}, Lokhttp3/Headers;->size()I

    move-result v8

    const/4 v9, 0x4

    add-int/lit8 v8, v8, 0x4

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    move-object v2, v6

    .line 121
    move-object v6, v2

    new-instance v7, Lokhttp3/internal/http2/Header;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    sget-object v9, Lokhttp3/internal/http2/Header;->TARGET_METHOD:Lokio/ByteString;

    move-object v10, v0

    invoke-virtual {v10}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v6

    .line 122
    move-object v6, v2

    new-instance v7, Lokhttp3/internal/http2/Header;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    sget-object v9, Lokhttp3/internal/http2/Header;->TARGET_PATH:Lokio/ByteString;

    move-object v10, v0

    invoke-virtual {v10}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v10

    invoke-static {v10}, Lokhttp3/internal/http/RequestLine;->requestPath(Lokhttp3/HttpUrl;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v6

    .line 123
    move-object v6, v2

    new-instance v7, Lokhttp3/internal/http2/Header;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    sget-object v9, Lokhttp3/internal/http2/Header;->TARGET_AUTHORITY:Lokio/ByteString;

    move-object v10, v0

    invoke-virtual {v10}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {v10, v11}, Lokhttp3/internal/Util;->hostHeader(Lokhttp3/HttpUrl;Z)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v6

    .line 124
    move-object v6, v2

    new-instance v7, Lokhttp3/internal/http2/Header;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    sget-object v9, Lokhttp3/internal/http2/Header;->TARGET_SCHEME:Lokio/ByteString;

    move-object v10, v0

    invoke-virtual {v10}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v10

    invoke-virtual {v10}, Lokhttp3/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v6

    .line 126
    const/4 v6, 0x0

    move v3, v6

    move-object v6, v1

    invoke-virtual {v6}, Lokhttp3/Headers;->size()I

    move-result v6

    move v4, v6

    :goto_0
    move v6, v3

    move v7, v4

    if-ge v6, v7, :cond_1

    .line 128
    move-object v6, v1

    move v7, v3

    invoke-virtual {v6, v7}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v6

    move-object v5, v6

    .line 129
    sget-object v6, Lokhttp3/internal/http2/Http2Codec;->HTTP_2_SKIPPED_REQUEST_HEADERS:Ljava/util/List;

    move-object v7, v5

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 130
    move-object v6, v2

    new-instance v7, Lokhttp3/internal/http2/Header;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v5

    move-object v10, v1

    move v11, v3

    invoke-virtual {v10, v11}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v6

    .line 126
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 133
    :cond_1
    move-object v6, v2

    move-object v0, v6

    return-object v0
.end method

.method public static readHttp2HeadersList(Ljava/util/List;)Lokhttp3/Response$Builder;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/http2/Header;",
            ">;)",
            "Lokhttp3/Response$Builder;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 138
    move-object v0, p0

    const/4 v7, 0x0

    move-object v1, v7

    .line 140
    new-instance v7, Lokhttp3/Headers$Builder;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    invoke-direct {v8}, Lokhttp3/Headers$Builder;-><init>()V

    move-object v2, v7

    .line 141
    const/4 v7, 0x0

    move v3, v7

    move-object v7, v0

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    move v4, v7

    :goto_0
    move v7, v3

    move v8, v4

    if-ge v7, v8, :cond_2

    .line 142
    move-object v7, v0

    move v8, v3

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lokhttp3/internal/http2/Header;

    iget-object v7, v7, Lokhttp3/internal/http2/Header;->name:Lokio/ByteString;

    move-object v5, v7

    .line 144
    move-object v7, v0

    move v8, v3

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lokhttp3/internal/http2/Header;

    iget-object v7, v7, Lokhttp3/internal/http2/Header;->value:Lokio/ByteString;

    invoke-virtual {v7}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    .line 145
    move-object v7, v5

    sget-object v8, Lokhttp3/internal/http2/Header;->RESPONSE_STATUS:Lokio/ByteString;

    invoke-virtual {v7, v8}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 146
    move-object v7, v6

    move-object v1, v7

    .line 141
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 147
    :cond_1
    sget-object v7, Lokhttp3/internal/http2/Http2Codec;->HTTP_2_SKIPPED_RESPONSE_HEADERS:Ljava/util/List;

    move-object v8, v5

    invoke-interface {v7, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 148
    sget-object v7, Lokhttp3/internal/Internal;->instance:Lokhttp3/internal/Internal;

    move-object v8, v2

    move-object v9, v5

    invoke-virtual {v9}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v9

    move-object v10, v6

    invoke-virtual {v7, v8, v9, v10}, Lokhttp3/internal/Internal;->addLenient(Lokhttp3/Headers$Builder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 151
    :cond_2
    move-object v7, v1

    if-nez v7, :cond_3

    new-instance v7, Ljava/net/ProtocolException;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const-string v9, "Expected \':status\' header not present"

    invoke-direct {v8, v9}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 153
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "HTTP/1.1 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lokhttp3/internal/http/StatusLine;->parse(Ljava/lang/String;)Lokhttp3/internal/http/StatusLine;

    move-result-object v7

    move-object v3, v7

    .line 154
    new-instance v7, Lokhttp3/Response$Builder;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    invoke-direct {v8}, Lokhttp3/Response$Builder;-><init>()V

    sget-object v8, Lokhttp3/Protocol;->HTTP_2:Lokhttp3/Protocol;

    .line 155
    invoke-virtual {v7, v8}, Lokhttp3/Response$Builder;->protocol(Lokhttp3/Protocol;)Lokhttp3/Response$Builder;

    move-result-object v7

    move-object v8, v3

    iget v8, v8, Lokhttp3/internal/http/StatusLine;->code:I

    .line 156
    invoke-virtual {v7, v8}, Lokhttp3/Response$Builder;->code(I)Lokhttp3/Response$Builder;

    move-result-object v7

    move-object v8, v3

    iget-object v8, v8, Lokhttp3/internal/http/StatusLine;->message:Ljava/lang/String;

    .line 157
    invoke-virtual {v7, v8}, Lokhttp3/Response$Builder;->message(Ljava/lang/String;)Lokhttp3/Response$Builder;

    move-result-object v7

    move-object v8, v2

    .line 158
    invoke-virtual {v8}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    move-result-object v8

    invoke-virtual {v7, v8}, Lokhttp3/Response$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Response$Builder;

    move-result-object v7

    .line 154
    move-object v0, v7

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 3

    .prologue
    .line 167
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/internal/http2/Http2Codec;->stream:Lokhttp3/internal/http2/Http2Stream;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/internal/http2/Http2Codec;->stream:Lokhttp3/internal/http2/Http2Stream;

    sget-object v2, Lokhttp3/internal/http2/ErrorCode;->CANCEL:Lokhttp3/internal/http2/ErrorCode;

    invoke-virtual {v1, v2}, Lokhttp3/internal/http2/Http2Stream;->closeLater(Lokhttp3/internal/http2/ErrorCode;)V

    .line 168
    :cond_0
    return-void
.end method

.method public createRequestBody(Lokhttp3/Request;J)Lokio/Sink;
    .locals 5

    .prologue
    .line 97
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, v0

    iget-object v4, v4, Lokhttp3/internal/http2/Http2Codec;->stream:Lokhttp3/internal/http2/Http2Stream;

    invoke-virtual {v4}, Lokhttp3/internal/http2/Http2Stream;->getSink()Lokio/Sink;

    move-result-object v4

    move-object v0, v4

    return-object v0
.end method

.method public finishRequest()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 111
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/internal/http2/Http2Codec;->stream:Lokhttp3/internal/http2/Http2Stream;

    invoke-virtual {v1}, Lokhttp3/internal/http2/Http2Stream;->getSink()Lokio/Sink;

    move-result-object v1

    invoke-interface {v1}, Lokio/Sink;->close()V

    .line 112
    return-void
.end method

.method public openResponseBody(Lokhttp3/Response;)Lokhttp3/ResponseBody;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 162
    move-object v0, p0

    move-object v1, p1

    new-instance v3, Lokhttp3/internal/http2/Http2Codec$StreamFinishingSource;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lokhttp3/internal/http2/Http2Codec;->stream:Lokhttp3/internal/http2/Http2Stream;

    invoke-virtual {v6}, Lokhttp3/internal/http2/Http2Stream;->getSource()Lokio/Source;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lokhttp3/internal/http2/Http2Codec$StreamFinishingSource;-><init>(Lokhttp3/internal/http2/Http2Codec;Lokio/Source;)V

    move-object v2, v3

    .line 163
    new-instance v3, Lokhttp3/internal/http/RealResponseBody;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v1

    invoke-virtual {v5}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v5

    move-object v6, v2

    invoke-static {v6}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lokhttp3/internal/http/RealResponseBody;-><init>(Lokhttp3/Headers;Lokio/BufferedSource;)V

    move-object v0, v3

    return-object v0
.end method

.method public readResponseHeaders()Lokhttp3/Response$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 115
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/internal/http2/Http2Codec;->stream:Lokhttp3/internal/http2/Http2Stream;

    invoke-virtual {v1}, Lokhttp3/internal/http2/Http2Stream;->getResponseHeaders()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lokhttp3/internal/http2/Http2Codec;->readHttp2HeadersList(Ljava/util/List;)Lokhttp3/Response$Builder;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public writeRequestHeaders(Lokhttp3/Request;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 101
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    iget-object v4, v4, Lokhttp3/internal/http2/Http2Codec;->stream:Lokhttp3/internal/http2/Http2Stream;

    if-eqz v4, :cond_0

    .line 108
    :goto_0
    return-void

    .line 103
    :cond_0
    move-object v4, v1

    invoke-virtual {v4}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    :goto_1
    move v2, v4

    .line 104
    move-object v4, v1

    invoke-static {v4}, Lokhttp3/internal/http2/Http2Codec;->http2HeadersList(Lokhttp3/Request;)Ljava/util/List;

    move-result-object v4

    move-object v3, v4

    .line 105
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lokhttp3/internal/http2/Http2Codec;->connection:Lokhttp3/internal/http2/Http2Connection;

    move-object v6, v3

    move v7, v2

    invoke-virtual {v5, v6, v7}, Lokhttp3/internal/http2/Http2Connection;->newStream(Ljava/util/List;Z)Lokhttp3/internal/http2/Http2Stream;

    move-result-object v5

    iput-object v5, v4, Lokhttp3/internal/http2/Http2Codec;->stream:Lokhttp3/internal/http2/Http2Stream;

    .line 106
    move-object v4, v0

    iget-object v4, v4, Lokhttp3/internal/http2/Http2Codec;->stream:Lokhttp3/internal/http2/Http2Stream;

    invoke-virtual {v4}, Lokhttp3/internal/http2/Http2Stream;->readTimeout()Lokio/Timeout;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Lokhttp3/internal/http2/Http2Codec;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v5}, Lokhttp3/OkHttpClient;->readTimeoutMillis()I

    move-result v5

    int-to-long v5, v5

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v5, v6, v7}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    move-result-object v4

    .line 107
    move-object v4, v0

    iget-object v4, v4, Lokhttp3/internal/http2/Http2Codec;->stream:Lokhttp3/internal/http2/Http2Stream;

    invoke-virtual {v4}, Lokhttp3/internal/http2/Http2Stream;->writeTimeout()Lokio/Timeout;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Lokhttp3/internal/http2/Http2Codec;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v5}, Lokhttp3/OkHttpClient;->writeTimeoutMillis()I

    move-result v5

    int-to-long v5, v5

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v5, v6, v7}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    move-result-object v4

    .line 108
    goto :goto_0

    .line 103
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method
