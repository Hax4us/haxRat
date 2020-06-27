.class final Lokhttp3/internal/ws/RealWebSocket$CancelRunnable;
.super Ljava/lang/Object;
.source "RealWebSocket.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/ws/RealWebSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "CancelRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lokhttp3/internal/ws/RealWebSocket;


# direct methods
.method constructor <init>(Lokhttp3/internal/ws/RealWebSocket;)V
    .locals 4

    .prologue
    .line 574
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lokhttp3/internal/ws/RealWebSocket$CancelRunnable;->this$0:Lokhttp3/internal/ws/RealWebSocket;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 576
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/internal/ws/RealWebSocket$CancelRunnable;->this$0:Lokhttp3/internal/ws/RealWebSocket;

    invoke-virtual {v1}, Lokhttp3/internal/ws/RealWebSocket;->cancel()V

    .line 577
    return-void
.end method
