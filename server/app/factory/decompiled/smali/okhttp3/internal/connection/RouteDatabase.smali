.class public final Lokhttp3/internal/connection/RouteDatabase;
.super Ljava/lang/Object;
.source "RouteDatabase.java"


# instance fields
.field private final failedRoutes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lokhttp3/Route;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 28
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 29
    move-object v1, v0

    new-instance v2, Ljava/util/LinkedHashSet;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v2, v1, Lokhttp3/internal/connection/RouteDatabase;->failedRoutes:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public declared-synchronized connected(Lokhttp3/Route;)V
    .locals 5

    .prologue
    .line 38
    move-object v0, p0

    move-object v1, p1

    move-object v4, p0

    monitor-enter v4

    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lokhttp3/internal/connection/RouteDatabase;->failedRoutes:Ljava/util/Set;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 39
    monitor-exit v4

    return-void

    .line 38
    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0
.end method

.method public declared-synchronized failed(Lokhttp3/Route;)V
    .locals 5

    .prologue
    .line 33
    move-object v0, p0

    move-object v1, p1

    move-object v4, p0

    monitor-enter v4

    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lokhttp3/internal/connection/RouteDatabase;->failedRoutes:Ljava/util/Set;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 34
    monitor-exit v4

    return-void

    .line 33
    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0
.end method

.method public declared-synchronized shouldPostpone(Lokhttp3/Route;)Z
    .locals 5

    .prologue
    .line 43
    move-object v0, p0

    move-object v1, p1

    move-object v4, p0

    monitor-enter v4

    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lokhttp3/internal/connection/RouteDatabase;->failedRoutes:Ljava/util/Set;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    move v0, v2

    monitor-exit v4

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0
.end method
