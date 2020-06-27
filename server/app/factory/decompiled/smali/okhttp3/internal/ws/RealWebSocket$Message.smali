.class final Lokhttp3/internal/ws/RealWebSocket$Message;
.super Ljava/lang/Object;
.source "RealWebSocket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/ws/RealWebSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Message"
.end annotation


# instance fields
.field final data:Lokio/ByteString;

.field final formatOpcode:I


# direct methods
.method constructor <init>(ILokio/ByteString;)V
    .locals 5

    .prologue
    .line 531
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 532
    move-object v3, v0

    move v4, v1

    iput v4, v3, Lokhttp3/internal/ws/RealWebSocket$Message;->formatOpcode:I

    .line 533
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lokhttp3/internal/ws/RealWebSocket$Message;->data:Lokio/ByteString;

    .line 534
    return-void
.end method
