.class final Lokhttp3/internal/ws/RealWebSocket$Close;
.super Ljava/lang/Object;
.source "RealWebSocket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/ws/RealWebSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Close"
.end annotation


# instance fields
.field final cancelAfterCloseMillis:J

.field final code:I

.field final reason:Lokio/ByteString;


# direct methods
.method constructor <init>(ILokio/ByteString;J)V
    .locals 8

    .prologue
    .line 542
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 543
    move-object v5, v0

    move v6, v1

    iput v6, v5, Lokhttp3/internal/ws/RealWebSocket$Close;->code:I

    .line 544
    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Lokhttp3/internal/ws/RealWebSocket$Close;->reason:Lokio/ByteString;

    .line 545
    move-object v5, v0

    move-wide v6, v3

    iput-wide v6, v5, Lokhttp3/internal/ws/RealWebSocket$Close;->cancelAfterCloseMillis:J

    .line 546
    return-void
.end method
