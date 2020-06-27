.class public final Lokhttp3/FormBody;
.super Lokhttp3/RequestBody;
.source "FormBody.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/FormBody$Builder;
    }
.end annotation


# static fields
.field private static final CONTENT_TYPE:Lokhttp3/MediaType;


# instance fields
.field private final encodedNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final encodedValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-string v0, "application/x-www-form-urlencoded"

    .line 30
    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    sput-object v0, Lokhttp3/FormBody;->CONTENT_TYPE:Lokhttp3/MediaType;

    .line 29
    return-void
.end method

.method constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 35
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    invoke-direct {v3}, Lokhttp3/RequestBody;-><init>()V

    .line 36
    move-object v3, v0

    move-object v4, v1

    invoke-static {v4}, Lokhttp3/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iput-object v4, v3, Lokhttp3/FormBody;->encodedNames:Ljava/util/List;

    .line 37
    move-object v3, v0

    move-object v4, v2

    invoke-static {v4}, Lokhttp3/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iput-object v4, v3, Lokhttp3/FormBody;->encodedValues:Ljava/util/List;

    .line 38
    return-void
.end method

.method private writeOrCountBytes(Lokio/BufferedSink;Z)J
    .locals 12

    .prologue
    .line 80
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    const-wide/16 v8, 0x0

    move-wide v3, v8

    .line 83
    move v8, v2

    if-eqz v8, :cond_1

    .line 84
    new-instance v8, Lokio/Buffer;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Lokio/Buffer;-><init>()V

    move-object v5, v8

    .line 89
    :goto_0
    const/4 v8, 0x0

    move v6, v8

    move-object v8, v0

    iget-object v8, v8, Lokhttp3/FormBody;->encodedNames:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    move v7, v8

    :goto_1
    move v8, v6

    move v9, v7

    if-ge v8, v9, :cond_2

    .line 90
    move v8, v6

    if-lez v8, :cond_0

    move-object v8, v5

    const/16 v9, 0x26

    invoke-virtual {v8, v9}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    move-result-object v8

    .line 91
    :cond_0
    move-object v8, v5

    move-object v9, v0

    iget-object v9, v9, Lokhttp3/FormBody;->encodedNames:Ljava/util/List;

    move v10, v6

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v8, v9}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;)Lokio/Buffer;

    move-result-object v8

    .line 92
    move-object v8, v5

    const/16 v9, 0x3d

    invoke-virtual {v8, v9}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    move-result-object v8

    .line 93
    move-object v8, v5

    move-object v9, v0

    iget-object v9, v9, Lokhttp3/FormBody;->encodedValues:Ljava/util/List;

    move v10, v6

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v8, v9}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;)Lokio/Buffer;

    move-result-object v8

    .line 89
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 86
    :cond_1
    move-object v8, v1

    invoke-interface {v8}, Lokio/BufferedSink;->buffer()Lokio/Buffer;

    move-result-object v8

    move-object v5, v8

    goto :goto_0

    .line 96
    :cond_2
    move v8, v2

    if-eqz v8, :cond_3

    .line 97
    move-object v8, v5

    invoke-virtual {v8}, Lokio/Buffer;->size()J

    move-result-wide v8

    move-wide v3, v8

    .line 98
    move-object v8, v5

    invoke-virtual {v8}, Lokio/Buffer;->clear()V

    .line 101
    :cond_3
    move-wide v8, v3

    move-wide v0, v8

    return-wide v0
.end method


# virtual methods
.method public contentLength()J
    .locals 4

    .prologue
    .line 66
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lokhttp3/FormBody;->writeOrCountBytes(Lokio/BufferedSink;Z)J

    move-result-wide v1

    move-wide v0, v1

    return-wide v0
.end method

.method public contentType()Lokhttp3/MediaType;
    .locals 2

    .prologue
    .line 62
    move-object v0, p0

    sget-object v1, Lokhttp3/FormBody;->CONTENT_TYPE:Lokhttp3/MediaType;

    move-object v0, v1

    return-object v0
.end method

.method public encodedName(I)Ljava/lang/String;
    .locals 4

    .prologue
    .line 46
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lokhttp3/FormBody;->encodedNames:Ljava/util/List;

    move v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v0, v2

    return-object v0
.end method

.method public encodedValue(I)Ljava/lang/String;
    .locals 4

    .prologue
    .line 54
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lokhttp3/FormBody;->encodedValues:Ljava/util/List;

    move v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v0, v2

    return-object v0
.end method

.method public name(I)Ljava/lang/String;
    .locals 4

    .prologue
    .line 50
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lokhttp3/FormBody;->encodedName(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lokhttp3/HttpUrl;->percentDecode(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 42
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/FormBody;->encodedNames:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public value(I)Ljava/lang/String;
    .locals 4

    .prologue
    .line 58
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lokhttp3/FormBody;->encodedValue(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lokhttp3/HttpUrl;->percentDecode(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public writeTo(Lokio/BufferedSink;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lokhttp3/FormBody;->writeOrCountBytes(Lokio/BufferedSink;Z)J

    move-result-wide v2

    .line 71
    return-void
.end method
