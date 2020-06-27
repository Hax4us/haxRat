.class public final Lokhttp3/internal/http2/Settings;
.super Ljava/lang/Object;
.source "Settings.java"


# static fields
.field static final COUNT:I = 0xa

.field static final DEFAULT_INITIAL_WINDOW_SIZE:I = 0xffff

.field static final ENABLE_PUSH:I = 0x2

.field static final HEADER_TABLE_SIZE:I = 0x1

.field static final INITIAL_WINDOW_SIZE:I = 0x7

.field static final MAX_CONCURRENT_STREAMS:I = 0x4

.field static final MAX_FRAME_SIZE:I = 0x5

.field static final MAX_HEADER_LIST_SIZE:I = 0x6


# instance fields
.field private set:I

.field private final values:[I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 24
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 51
    move-object v1, v0

    const/16 v2, 0xa

    new-array v2, v2, [I

    iput-object v2, v1, Lokhttp3/internal/http2/Settings;->values:[I

    return-void
.end method


# virtual methods
.method clear()V
    .locals 3

    .prologue
    .line 54
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lokhttp3/internal/http2/Settings;->set:I

    .line 55
    move-object v1, v0

    iget-object v1, v1, Lokhttp3/internal/http2/Settings;->values:[I

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    .line 56
    return-void
.end method

.method get(I)I
    .locals 4

    .prologue
    .line 77
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lokhttp3/internal/http2/Settings;->values:[I

    move v3, v1

    aget v2, v2, v3

    move v0, v2

    return v0
.end method

.method getEnablePush(Z)Z
    .locals 5

    .prologue
    .line 93
    move-object v0, p0

    move v1, p1

    const/4 v3, 0x4

    move v2, v3

    .line 94
    move v3, v2

    move-object v4, v0

    iget v4, v4, Lokhttp3/internal/http2/Settings;->set:I

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lokhttp3/internal/http2/Settings;->values:[I

    const/4 v4, 0x2

    aget v3, v3, v4

    :goto_0
    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    const/4 v3, 0x1

    :goto_1
    move v0, v3

    return v0

    :cond_0
    move v3, v1

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method getHeaderTableSize()I
    .locals 4

    .prologue
    .line 87
    move-object v0, p0

    const/4 v2, 0x2

    move v1, v2

    .line 88
    move v2, v1

    move-object v3, v0

    iget v3, v3, Lokhttp3/internal/http2/Settings;->set:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lokhttp3/internal/http2/Settings;->values:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    :goto_0
    move v0, v2

    return v0

    :cond_0
    const/4 v2, -0x1

    goto :goto_0
.end method

.method getInitialWindowSize()I
    .locals 4

    .prologue
    .line 114
    move-object v0, p0

    const/16 v2, 0x80

    move v1, v2

    .line 115
    move v2, v1

    move-object v3, v0

    iget v3, v3, Lokhttp3/internal/http2/Settings;->set:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lokhttp3/internal/http2/Settings;->values:[I

    const/4 v3, 0x7

    aget v2, v2, v3

    :goto_0
    move v0, v2

    return v0

    :cond_0
    const v2, 0xffff

    goto :goto_0
.end method

.method getMaxConcurrentStreams(I)I
    .locals 5

    .prologue
    .line 99
    move-object v0, p0

    move v1, p1

    const/16 v3, 0x10

    move v2, v3

    .line 100
    move v3, v2

    move-object v4, v0

    iget v4, v4, Lokhttp3/internal/http2/Settings;->set:I

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lokhttp3/internal/http2/Settings;->values:[I

    const/4 v4, 0x4

    aget v3, v3, v4

    :goto_0
    move v0, v3

    return v0

    :cond_0
    move v3, v1

    goto :goto_0
.end method

.method getMaxFrameSize(I)I
    .locals 5

    .prologue
    .line 104
    move-object v0, p0

    move v1, p1

    const/16 v3, 0x20

    move v2, v3

    .line 105
    move v3, v2

    move-object v4, v0

    iget v4, v4, Lokhttp3/internal/http2/Settings;->set:I

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lokhttp3/internal/http2/Settings;->values:[I

    const/4 v4, 0x5

    aget v3, v3, v4

    :goto_0
    move v0, v3

    return v0

    :cond_0
    move v3, v1

    goto :goto_0
.end method

.method getMaxHeaderListSize(I)I
    .locals 5

    .prologue
    .line 109
    move-object v0, p0

    move v1, p1

    const/16 v3, 0x40

    move v2, v3

    .line 110
    move v3, v2

    move-object v4, v0

    iget v4, v4, Lokhttp3/internal/http2/Settings;->set:I

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lokhttp3/internal/http2/Settings;->values:[I

    const/4 v4, 0x6

    aget v3, v3, v4

    :goto_0
    move v0, v3

    return v0

    :cond_0
    move v3, v1

    goto :goto_0
.end method

.method isSet(I)Z
    .locals 5

    .prologue
    .line 71
    move-object v0, p0

    move v1, p1

    const/4 v3, 0x1

    move v4, v1

    shl-int/2addr v3, v4

    move v2, v3

    .line 72
    move-object v3, v0

    iget v3, v3, Lokhttp3/internal/http2/Settings;->set:I

    move v4, v2

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    move v0, v3

    return v0

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method merge(Lokhttp3/internal/http2/Settings;)V
    .locals 7

    .prologue
    .line 123
    move-object v0, p0

    move-object v1, p1

    const/4 v3, 0x0

    move v2, v3

    :goto_0
    move v3, v2

    const/16 v4, 0xa

    if-ge v3, v4, :cond_1

    .line 124
    move-object v3, v1

    move v4, v2

    invoke-virtual {v3, v4}, Lokhttp3/internal/http2/Settings;->isSet(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 123
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 125
    :cond_0
    move-object v3, v0

    move v4, v2

    move-object v5, v1

    move v6, v2

    invoke-virtual {v5, v6}, Lokhttp3/internal/http2/Settings;->get(I)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lokhttp3/internal/http2/Settings;->set(II)Lokhttp3/internal/http2/Settings;

    move-result-object v3

    goto :goto_1

    .line 127
    :cond_1
    return-void
.end method

.method set(II)Lokhttp3/internal/http2/Settings;
    .locals 8

    .prologue
    .line 59
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, v1

    move-object v5, v0

    iget-object v5, v5, Lokhttp3/internal/http2/Settings;->values:[I

    array-length v5, v5

    if-lt v4, v5, :cond_0

    .line 60
    move-object v4, v0

    move-object v0, v4

    .line 66
    :goto_0
    return-object v0

    .line 63
    :cond_0
    const/4 v4, 0x1

    move v5, v1

    shl-int/2addr v4, v5

    move v3, v4

    .line 64
    move-object v4, v0

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    iget v5, v5, Lokhttp3/internal/http2/Settings;->set:I

    move v6, v3

    or-int/2addr v5, v6

    iput v5, v4, Lokhttp3/internal/http2/Settings;->set:I

    .line 65
    move-object v4, v0

    iget-object v4, v4, Lokhttp3/internal/http2/Settings;->values:[I

    move v5, v1

    move v6, v2

    aput v6, v4, v5

    .line 66
    move-object v4, v0

    move-object v0, v4

    goto :goto_0
.end method

.method size()I
    .locals 2

    .prologue
    .line 82
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lokhttp3/internal/http2/Settings;->set:I

    invoke-static {v1}, Ljava/lang/Integer;->bitCount(I)I

    move-result v1

    move v0, v1

    return v0
.end method
