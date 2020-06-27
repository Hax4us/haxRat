.class public Lio/socket/emitter/Emitter;
.super Ljava/lang/Object;
.source "Emitter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/socket/emitter/Emitter$OnceListener;,
        Lio/socket/emitter/Emitter$Listener;
    }
.end annotation


# instance fields
.field private callbacks:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lio/socket/emitter/Emitter$Listener;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 17
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 19
    move-object v1, v0

    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v2, v1, Lio/socket/emitter/Emitter;->callbacks:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method private static sameAs(Lio/socket/emitter/Emitter$Listener;Lio/socket/emitter/Emitter$Listener;)Z
    .locals 4

    .prologue
    .line 97
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 98
    const/4 v2, 0x1

    move v0, v2

    .line 102
    :goto_0
    return v0

    .line 99
    :cond_0
    move-object v2, v1

    instance-of v2, v2, Lio/socket/emitter/Emitter$OnceListener;

    if-eqz v2, :cond_1

    .line 100
    move-object v2, v0

    move-object v3, v1

    check-cast v3, Lio/socket/emitter/Emitter$OnceListener;

    iget-object v3, v3, Lio/socket/emitter/Emitter$OnceListener;->fn:Lio/socket/emitter/Emitter$Listener;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    goto :goto_0

    .line 102
    :cond_1
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method


# virtual methods
.method public varargs emit(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/emitter/Emitter;
    .locals 8

    .prologue
    .line 114
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, v0

    iget-object v6, v6, Lio/socket/emitter/Emitter;->callbacks:Ljava/util/concurrent/ConcurrentMap;

    move-object v7, v1

    invoke-interface {v6, v7}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-object v3, v6

    .line 115
    move-object v6, v3

    if-eqz v6, :cond_0

    .line 116
    move-object v6, v3

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v4, v6

    :goto_0
    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/socket/emitter/Emitter$Listener;

    move-object v5, v6

    .line 117
    move-object v6, v5

    move-object v7, v2

    invoke-interface {v6, v7}, Lio/socket/emitter/Emitter$Listener;->call([Ljava/lang/Object;)V

    .line 118
    goto :goto_0

    .line 120
    :cond_0
    move-object v6, v0

    move-object v0, v6

    return-object v0
.end method

.method public hasListeners(Ljava/lang/String;)Z
    .locals 5

    .prologue
    .line 142
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Lio/socket/emitter/Emitter;->callbacks:Ljava/util/concurrent/ConcurrentMap;

    move-object v4, v1

    invoke-interface {v3, v4}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-object v2, v3

    .line 143
    move-object v3, v2

    if-eqz v3, :cond_0

    move-object v3, v2

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    move v0, v3

    return v0

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public listeners(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lio/socket/emitter/Emitter$Listener;",
            ">;"
        }
    .end annotation

    .prologue
    .line 130
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Lio/socket/emitter/Emitter;->callbacks:Ljava/util/concurrent/ConcurrentMap;

    move-object v4, v1

    invoke-interface {v3, v4}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-object v2, v3

    .line 131
    move-object v3, v2

    if-eqz v3, :cond_0

    new-instance v3, Ljava/util/ArrayList;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v2

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_0
    move-object v0, v3

    return-object v0

    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_0
.end method

.method public off()Lio/socket/emitter/Emitter;
    .locals 2

    .prologue
    .line 59
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lio/socket/emitter/Emitter;->callbacks:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    .line 60
    move-object v1, v0

    move-object v0, v1

    return-object v0
.end method

.method public off(Ljava/lang/String;)Lio/socket/emitter/Emitter;
    .locals 4

    .prologue
    .line 70
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lio/socket/emitter/Emitter;->callbacks:Ljava/util/concurrent/ConcurrentMap;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 71
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public off(Ljava/lang/String;Lio/socket/emitter/Emitter$Listener;)Lio/socket/emitter/Emitter;
    .locals 8

    .prologue
    .line 82
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, v0

    iget-object v6, v6, Lio/socket/emitter/Emitter;->callbacks:Ljava/util/concurrent/ConcurrentMap;

    move-object v7, v1

    invoke-interface {v6, v7}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-object v3, v6

    .line 83
    move-object v6, v3

    if-eqz v6, :cond_0

    .line 84
    move-object v6, v3

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v4, v6

    .line 85
    :goto_0
    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 86
    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/socket/emitter/Emitter$Listener;

    move-object v5, v6

    .line 87
    move-object v6, v2

    move-object v7, v5

    invoke-static {v6, v7}, Lio/socket/emitter/Emitter;->sameAs(Lio/socket/emitter/Emitter$Listener;Lio/socket/emitter/Emitter$Listener;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 88
    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    .line 93
    :cond_0
    move-object v6, v0

    move-object v0, v6

    return-object v0

    .line 91
    :cond_1
    goto :goto_0
.end method

.method public on(Ljava/lang/String;Lio/socket/emitter/Emitter$Listener;)Lio/socket/emitter/Emitter;
    .locals 9

    .prologue
    .line 29
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v0

    iget-object v5, v5, Lio/socket/emitter/Emitter;->callbacks:Ljava/util/concurrent/ConcurrentMap;

    move-object v6, v1

    invoke-interface {v5, v6}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-object v3, v5

    .line 30
    move-object v5, v3

    if-nez v5, :cond_0

    .line 31
    new-instance v5, Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    move-object v3, v5

    .line 32
    move-object v5, v0

    iget-object v5, v5, Lio/socket/emitter/Emitter;->callbacks:Ljava/util/concurrent/ConcurrentMap;

    move-object v6, v1

    move-object v7, v3

    invoke-interface {v5, v6, v7}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-object v4, v5

    .line 33
    move-object v5, v4

    if-eqz v5, :cond_0

    .line 34
    move-object v5, v4

    move-object v3, v5

    .line 37
    :cond_0
    move-object v5, v3

    move-object v6, v2

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 38
    move-object v5, v0

    move-object v0, v5

    return-object v0
.end method

.method public once(Ljava/lang/String;Lio/socket/emitter/Emitter$Listener;)Lio/socket/emitter/Emitter;
    .locals 11

    .prologue
    .line 49
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    new-instance v5, Lio/socket/emitter/Emitter$OnceListener;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    invoke-direct {v6, v7, v8, v9}, Lio/socket/emitter/Emitter$OnceListener;-><init>(Lio/socket/emitter/Emitter;Ljava/lang/String;Lio/socket/emitter/Emitter$Listener;)V

    invoke-virtual {v3, v4, v5}, Lio/socket/emitter/Emitter;->on(Ljava/lang/String;Lio/socket/emitter/Emitter$Listener;)Lio/socket/emitter/Emitter;

    move-result-object v3

    .line 50
    move-object v3, v0

    move-object v0, v3

    return-object v0
.end method
