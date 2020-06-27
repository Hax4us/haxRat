.class Lokhttp3/internal/ws/RealWebSocket$1;
.super Ljava/lang/Object;
.source "RealWebSocket.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/internal/ws/RealWebSocket;-><init>(Lokhttp3/Request;Lokhttp3/WebSocketListener;Ljava/util/Random;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lokhttp3/internal/ws/RealWebSocket;


# direct methods
.method constructor <init>(Lokhttp3/internal/ws/RealWebSocket;)V
    .locals 4

    .prologue
    .line 143
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lokhttp3/internal/ws/RealWebSocket$1;->this$0:Lokhttp3/internal/ws/RealWebSocket;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 146
    move-object v0, p0

    :goto_0
    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lokhttp3/internal/ws/RealWebSocket$1;->this$0:Lokhttp3/internal/ws/RealWebSocket;

    invoke-virtual {v2}, Lokhttp3/internal/ws/RealWebSocket;->writeOneFrame()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 151
    :cond_0
    :goto_1
    return-void

    .line 148
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 149
    move-object v2, v0

    iget-object v2, v2, Lokhttp3/internal/ws/RealWebSocket$1;->this$0:Lokhttp3/internal/ws/RealWebSocket;

    move-object v3, v1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lokhttp3/internal/ws/RealWebSocket;->failWebSocket(Ljava/lang/Exception;Lokhttp3/Response;)V

    goto :goto_1
.end method
