.class Lokhttp3/ConnectionPool$1;
.super Ljava/lang/Object;
.source "ConnectionPool.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/ConnectionPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lokhttp3/ConnectionPool;


# direct methods
.method constructor <init>(Lokhttp3/ConnectionPool;)V
    .locals 4

    .prologue
    .line 55
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lokhttp3/ConnectionPool$1;->this$0:Lokhttp3/ConnectionPool;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    .line 58
    move-object v0, p0

    :goto_0
    move-object v8, v0

    iget-object v8, v8, Lokhttp3/ConnectionPool$1;->this$0:Lokhttp3/ConnectionPool;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Lokhttp3/ConnectionPool;->cleanup(J)J

    move-result-wide v8

    move-wide v1, v8

    .line 59
    move-wide v8, v1

    const-wide/16 v10, -0x1

    cmp-long v8, v8, v10

    if-nez v8, :cond_0

    return-void

    .line 60
    :cond_0
    move-wide v8, v1

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-lez v8, :cond_1

    .line 61
    move-wide v8, v1

    const-wide/32 v10, 0xf4240

    div-long/2addr v8, v10

    move-wide v3, v8

    .line 62
    move-wide v8, v1

    move-wide v10, v3

    const-wide/32 v12, 0xf4240

    mul-long/2addr v10, v12

    sub-long/2addr v8, v10

    move-wide v1, v8

    .line 63
    move-object v8, v0

    iget-object v8, v8, Lokhttp3/ConnectionPool$1;->this$0:Lokhttp3/ConnectionPool;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move-object v5, v9

    monitor-enter v8

    .line 65
    move-object v8, v0

    :try_start_0
    iget-object v8, v8, Lokhttp3/ConnectionPool$1;->this$0:Lokhttp3/ConnectionPool;

    move-wide v9, v3

    move-wide v11, v1

    long-to-int v11, v11

    invoke-virtual {v8, v9, v10, v11}, Ljava/lang/Object;->wait(JI)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    :goto_1
    move-object v8, v5

    :try_start_1
    monitor-exit v8

    .line 70
    :cond_1
    goto :goto_0

    .line 66
    :catch_0
    move-exception v8

    move-object v6, v8

    goto :goto_1

    .line 68
    :catchall_0
    move-exception v8

    move-object v7, v8

    move-object v8, v5

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v8, v7

    throw v8
.end method
