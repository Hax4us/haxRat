.class public final Lokhttp3/internal/cache/CacheStrategy;
.super Ljava/lang/Object;
.source "CacheStrategy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/cache/CacheStrategy$Factory;
    }
.end annotation


# instance fields
.field public final cacheResponse:Lokhttp3/Response;

.field public final networkRequest:Lokhttp3/Request;


# direct methods
.method constructor <init>(Lokhttp3/Request;Lokhttp3/Response;)V
    .locals 5

    .prologue
    .line 56
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 57
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lokhttp3/internal/cache/CacheStrategy;->networkRequest:Lokhttp3/Request;

    .line 58
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lokhttp3/internal/cache/CacheStrategy;->cacheResponse:Lokhttp3/Response;

    .line 59
    return-void
.end method

.method public static isCacheable(Lokhttp3/Response;Lokhttp3/Request;)Z
    .locals 4

    .prologue
    .line 65
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-virtual {v2}, Lokhttp3/Response;->code()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 95
    :cond_0
    const/4 v2, 0x0

    move v0, v2

    .line 99
    :goto_0
    return v0

    :cond_1
    :goto_1
    :sswitch_0
    move-object v2, v0

    invoke-virtual {v2}, Lokhttp3/Response;->cacheControl()Lokhttp3/CacheControl;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/CacheControl;->noStore()Z

    move-result v2

    if-nez v2, :cond_2

    move-object v2, v1

    invoke-virtual {v2}, Lokhttp3/Request;->cacheControl()Lokhttp3/CacheControl;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/CacheControl;->noStore()Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x1

    :goto_2
    move v0, v2

    goto :goto_0

    .line 85
    :sswitch_1
    move-object v2, v0

    const-string v3, "Expires"

    invoke-virtual {v2, v3}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    move-object v2, v0

    .line 86
    invoke-virtual {v2}, Lokhttp3/Response;->cacheControl()Lokhttp3/CacheControl;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/CacheControl;->maxAgeSeconds()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    move-object v2, v0

    .line 87
    invoke-virtual {v2}, Lokhttp3/Response;->cacheControl()Lokhttp3/CacheControl;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/CacheControl;->isPublic()Z

    move-result v2

    if-nez v2, :cond_1

    move-object v2, v0

    .line 88
    invoke-virtual {v2}, Lokhttp3/Response;->cacheControl()Lokhttp3/CacheControl;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/CacheControl;->isPrivate()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 89
    goto :goto_1

    .line 99
    :cond_2
    const/4 v2, 0x0

    goto :goto_2

    .line 65
    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0xcb -> :sswitch_0
        0xcc -> :sswitch_0
        0x12c -> :sswitch_0
        0x12d -> :sswitch_0
        0x12e -> :sswitch_1
        0x133 -> :sswitch_1
        0x134 -> :sswitch_0
        0x194 -> :sswitch_0
        0x195 -> :sswitch_0
        0x19a -> :sswitch_0
        0x19e -> :sswitch_0
        0x1f5 -> :sswitch_0
    .end sparse-switch
.end method
