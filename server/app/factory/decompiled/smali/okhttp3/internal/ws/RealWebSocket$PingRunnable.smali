.class final Lokhttp3/internal/ws/RealWebSocket$PingRunnable;
.super Ljava/lang/Object;
.source "RealWebSocket.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/ws/RealWebSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PingRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lokhttp3/internal/ws/RealWebSocket;


# direct methods
.method private constructor <init>(Lokhttp3/internal/ws/RealWebSocket;)V
    .locals 4

    .prologue
    .line 489
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lokhttp3/internal/ws/RealWebSocket$PingRunnable;->this$0:Lokhttp3/internal/ws/RealWebSocket;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lokhttp3/internal/ws/RealWebSocket;Lokhttp3/internal/ws/RealWebSocket$1;)V
    .locals 5

    .prologue
    .line 489
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lokhttp3/internal/ws/RealWebSocket$PingRunnable;-><init>(Lokhttp3/internal/ws/RealWebSocket;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 491
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/internal/ws/RealWebSocket$PingRunnable;->this$0:Lokhttp3/internal/ws/RealWebSocket;

    invoke-static {v1}, Lokhttp3/internal/ws/RealWebSocket;->access$100(Lokhttp3/internal/ws/RealWebSocket;)V

    .line 492
    return-void
.end method
