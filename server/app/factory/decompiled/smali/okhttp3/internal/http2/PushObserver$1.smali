.class final Lokhttp3/internal/http2/PushObserver$1;
.super Ljava/lang/Object;
.source "PushObserver.java"

# interfaces
.implements Lokhttp3/internal/http2/PushObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/http2/PushObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 76
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onData(ILokio/BufferedSource;IZ)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 88
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v2

    move v6, v3

    int-to-long v6, v6

    invoke-interface {v5, v6, v7}, Lokio/BufferedSource;->skip(J)V

    .line 89
    const/4 v5, 0x1

    move v0, v5

    return v0
.end method

.method public onHeaders(ILjava/util/List;Z)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/http2/Header;",
            ">;Z)Z"
        }
    .end annotation

    .prologue
    .line 83
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    const/4 v4, 0x1

    move v0, v4

    return v0
.end method

.method public onRequest(ILjava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/http2/Header;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 79
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    const/4 v3, 0x1

    move v0, v3

    return v0
.end method

.method public onReset(ILokhttp3/internal/http2/ErrorCode;)V
    .locals 0

    .prologue
    .line 93
    return-void
.end method
