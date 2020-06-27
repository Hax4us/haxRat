.class public abstract Lokhttp3/internal/NamedRunnable;
.super Ljava/lang/Object;
.source "NamedRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field protected final name:Ljava/lang/String;


# direct methods
.method public varargs constructor <init>(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 24
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 25
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-static {v4, v5}, Lokhttp3/internal/Util;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lokhttp3/internal/NamedRunnable;->name:Ljava/lang/String;

    .line 26
    return-void
.end method


# virtual methods
.method protected abstract execute()V
.end method

.method public final run()V
    .locals 5

    .prologue
    .line 29
    move-object v0, p0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 30
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lokhttp3/internal/NamedRunnable;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 32
    move-object v3, v0

    :try_start_0
    invoke-virtual {v3}, Lokhttp3/internal/NamedRunnable;->execute()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 36
    return-void

    .line 34
    :catchall_0
    move-exception v3

    move-object v2, v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    move-object v3, v2

    throw v3
.end method
