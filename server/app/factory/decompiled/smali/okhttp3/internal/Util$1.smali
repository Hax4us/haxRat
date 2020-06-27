.class final Lokhttp3/internal/Util$1;
.super Ljava/lang/Object;
.source "Util.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/internal/Util;->threadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$daemon:Z

.field final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Z)V
    .locals 5

    .prologue
    .line 191
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lokhttp3/internal/Util$1;->val$name:Ljava/lang/String;

    move-object v3, v0

    move v4, v2

    iput-boolean v4, v3, Lokhttp3/internal/Util$1;->val$daemon:Z

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 8

    .prologue
    .line 193
    move-object v0, p0

    move-object v1, p1

    new-instance v3, Ljava/lang/Thread;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v1

    move-object v6, v0

    iget-object v6, v6, Lokhttp3/internal/Util$1;->val$name:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    move-object v2, v3

    .line 194
    move-object v3, v2

    move-object v4, v0

    iget-boolean v4, v4, Lokhttp3/internal/Util$1;->val$daemon:Z

    invoke-virtual {v3, v4}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 195
    move-object v3, v2

    move-object v0, v3

    return-object v0
.end method
