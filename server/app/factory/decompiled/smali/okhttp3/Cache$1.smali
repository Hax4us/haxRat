.class Lokhttp3/Cache$1;
.super Ljava/lang/Object;
.source "Cache.java"

# interfaces
.implements Lokhttp3/internal/cache/InternalCache;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/Cache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lokhttp3/Cache;


# direct methods
.method constructor <init>(Lokhttp3/Cache;)V
    .locals 4

    .prologue
    .line 142
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lokhttp3/Cache$1;->this$0:Lokhttp3/Cache;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Lokhttp3/Request;)Lokhttp3/Response;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 144
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lokhttp3/Cache$1;->this$0:Lokhttp3/Cache;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lokhttp3/Cache;->get(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public put(Lokhttp3/Response;)Lokhttp3/internal/cache/CacheRequest;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 148
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lokhttp3/Cache$1;->this$0:Lokhttp3/Cache;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lokhttp3/Cache;->put(Lokhttp3/Response;)Lokhttp3/internal/cache/CacheRequest;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public remove(Lokhttp3/Request;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 152
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lokhttp3/Cache$1;->this$0:Lokhttp3/Cache;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lokhttp3/Cache;->remove(Lokhttp3/Request;)V

    .line 153
    return-void
.end method

.method public trackConditionalCacheHit()V
    .locals 2

    .prologue
    .line 160
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/Cache$1;->this$0:Lokhttp3/Cache;

    invoke-virtual {v1}, Lokhttp3/Cache;->trackConditionalCacheHit()V

    .line 161
    return-void
.end method

.method public trackResponse(Lokhttp3/internal/cache/CacheStrategy;)V
    .locals 4

    .prologue
    .line 164
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lokhttp3/Cache$1;->this$0:Lokhttp3/Cache;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lokhttp3/Cache;->trackResponse(Lokhttp3/internal/cache/CacheStrategy;)V

    .line 165
    return-void
.end method

.method public update(Lokhttp3/Response;Lokhttp3/Response;)V
    .locals 6

    .prologue
    .line 156
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Lokhttp3/Cache$1;->this$0:Lokhttp3/Cache;

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lokhttp3/Cache;->update(Lokhttp3/Response;Lokhttp3/Response;)V

    .line 157
    return-void
.end method
