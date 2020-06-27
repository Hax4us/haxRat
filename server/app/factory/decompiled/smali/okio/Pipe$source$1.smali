.class public final Lokio/Pipe$source$1;
.super Ljava/lang/Object;
.source "Pipe.kt"

# interfaces
.implements Lokio/Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokio/Pipe;-><init>(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0004\u001a\u00020\u0005H\u0016J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0007H\u0016J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "okio/Pipe$source$1",
        "Lokio/Source;",
        "timeout",
        "Lokio/Timeout;",
        "close",
        "",
        "read",
        "",
        "sink",
        "Lokio/Buffer;",
        "byteCount",
        "okio"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic this$0:Lokio/Pipe;

.field private final timeout:Lokio/Timeout;


# direct methods
.method constructor <init>(Lokio/Pipe;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 120
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lokio/Pipe$source$1;->this$0:Lokio/Pipe;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 121
    move-object v2, v0

    new-instance v3, Lokio/Timeout;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Lokio/Timeout;-><init>()V

    iput-object v3, v2, Lokio/Pipe$source$1;->timeout:Lokio/Timeout;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 11

    .prologue
    .line 139
    move-object v0, p0

    move-object v6, v0

    iget-object v6, v6, Lokio/Pipe$source$1;->this$0:Lokio/Pipe;

    invoke-virtual {v6}, Lokio/Pipe;->getBuffer$okio()Lokio/Buffer;

    move-result-object v6

    move-object v1, v6

    const/4 v6, 0x0

    move v2, v6

    .line 218
    const/4 v6, 0x0

    move v3, v6

    const/4 v6, 0x0

    move v4, v6

    move-object v6, v1

    monitor-enter v6

    nop

    const/4 v6, 0x0

    move v5, v6

    .line 140
    move-object v6, v0

    :try_start_0
    iget-object v6, v6, Lokio/Pipe$source$1;->this$0:Lokio/Pipe;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lokio/Pipe;->setSourceClosed$okio(Z)V

    .line 141
    move-object v6, v0

    iget-object v6, v6, Lokio/Pipe$source$1;->this$0:Lokio/Pipe;

    invoke-virtual {v6}, Lokio/Pipe;->getBuffer$okio()Lokio/Buffer;

    move-result-object v6

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    if-nez v7, :cond_0

    new-instance v7, Lkotlin/TypeCastException;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    const-string v9, "null cannot be cast to non-null type java.lang.Object"

    invoke-direct {v8, v9}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    :catchall_0
    move-exception v6

    move-object v4, v6

    move-object v6, v1

    monitor-exit v6

    move-object v6, v4

    throw v6

    .line 141
    :cond_0
    :try_start_1
    check-cast v6, Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->notifyAll()V

    .line 142
    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v4, v6

    move-object v6, v1

    monitor-exit v6

    .line 143
    return-void
.end method

.method public read(Lokio/Buffer;J)J
    .locals 25
    .param p1    # Lokio/Buffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    move-object/from16 v20, v2

    const-string v21, "sink"

    invoke-static/range {v20 .. v21}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    move-object/from16 v20, v1

    move-object/from16 v0, v20

    iget-object v0, v0, Lokio/Pipe$source$1;->this$0:Lokio/Pipe;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lokio/Pipe;->getBuffer$okio()Lokio/Buffer;

    move-result-object v20

    move-object/from16 v5, v20

    const/16 v20, 0x0

    move/from16 v6, v20

    .line 217
    const/16 v20, 0x0

    move/from16 v7, v20

    const/16 v20, 0x0

    move/from16 v8, v20

    move-object/from16 v20, v5

    monitor-enter v20

    nop

    const/16 v20, 0x0

    move/from16 v9, v20

    .line 125
    move-object/from16 v20, v1

    :try_start_0
    move-object/from16 v0, v20

    iget-object v0, v0, Lokio/Pipe$source$1;->this$0:Lokio/Pipe;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lokio/Pipe;->getSourceClosed$okio()Z

    move-result v20

    if-nez v20, :cond_0

    const/16 v20, 0x1

    :goto_0
    move/from16 v10, v20

    const/16 v20, 0x0

    move/from16 v11, v20

    const/16 v20, 0x0

    move/from16 v12, v20

    move/from16 v20, v10

    if-nez v20, :cond_2

    const/16 v20, 0x0

    move/from16 v13, v20

    const-string v20, "closed"

    move-object/from16 v12, v20

    new-instance v20, Ljava/lang/IllegalStateException;

    move-object/from16 v24, v20

    move-object/from16 v20, v24

    move-object/from16 v21, v24

    move-object/from16 v22, v12

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v20, Ljava/lang/Throwable;

    throw v20
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    :catchall_0
    move-exception v20

    move-object/from16 v8, v20

    move-object/from16 v20, v5

    monitor-exit v20

    move-object/from16 v20, v8

    throw v20

    .line 125
    :cond_0
    const/16 v20, 0x0

    goto :goto_0

    .line 129
    :cond_1
    move-object/from16 v20, v1

    :try_start_1
    move-object/from16 v0, v20

    iget-object v0, v0, Lokio/Pipe$source$1;->timeout:Lokio/Timeout;

    move-object/from16 v20, v0

    move-object/from16 v21, v1

    move-object/from16 v0, v21

    iget-object v0, v0, Lokio/Pipe$source$1;->this$0:Lokio/Pipe;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lokio/Pipe;->getBuffer$okio()Lokio/Buffer;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lokio/Timeout;->waitUntilNotified(Ljava/lang/Object;)V

    .line 127
    :cond_2
    move-object/from16 v20, v1

    move-object/from16 v0, v20

    iget-object v0, v0, Lokio/Pipe$source$1;->this$0:Lokio/Pipe;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lokio/Pipe;->getBuffer$okio()Lokio/Buffer;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lokio/Buffer;->size()J

    move-result-wide v20

    const-wide/16 v22, 0x0

    cmp-long v20, v20, v22

    if-nez v20, :cond_3

    .line 128
    move-object/from16 v20, v1

    move-object/from16 v0, v20

    iget-object v0, v0, Lokio/Pipe$source$1;->this$0:Lokio/Pipe;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lokio/Pipe;->getSinkClosed$okio()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v20

    if-eqz v20, :cond_1

    const-wide/16 v20, -0x1

    move-wide/from16 v18, v20

    move-object/from16 v20, v5

    monitor-exit v20

    move-wide/from16 v20, v18

    move-wide/from16 v1, v20

    .line 134
    :goto_1
    return-wide v1

    .line 132
    :cond_3
    move-object/from16 v20, v1

    :try_start_2
    move-object/from16 v0, v20

    iget-object v0, v0, Lokio/Pipe$source$1;->this$0:Lokio/Pipe;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lokio/Pipe;->getBuffer$okio()Lokio/Buffer;

    move-result-object v20

    move-object/from16 v21, v2

    move-wide/from16 v22, v3

    invoke-virtual/range {v20 .. v23}, Lokio/Buffer;->read(Lokio/Buffer;J)J

    move-result-wide v20

    move-wide/from16 v14, v20

    .line 133
    move-object/from16 v20, v1

    move-object/from16 v0, v20

    iget-object v0, v0, Lokio/Pipe$source$1;->this$0:Lokio/Pipe;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lokio/Pipe;->getBuffer$okio()Lokio/Buffer;

    move-result-object v20

    move-object/from16 v24, v20

    move-object/from16 v20, v24

    move-object/from16 v21, v24

    if-nez v21, :cond_4

    new-instance v21, Lkotlin/TypeCastException;

    move-object/from16 v24, v21

    move-object/from16 v21, v24

    move-object/from16 v22, v24

    const-string v23, "null cannot be cast to non-null type java.lang.Object"

    invoke-direct/range {v22 .. v23}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v21

    :cond_4
    check-cast v20, Ljava/lang/Object;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->notifyAll()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 134
    move-wide/from16 v20, v14

    move-wide/from16 v16, v20

    move-object/from16 v20, v5

    monitor-exit v20

    move-wide/from16 v20, v16

    move-wide/from16 v1, v20

    goto :goto_1
.end method

.method public timeout()Lokio/Timeout;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 145
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokio/Pipe$source$1;->timeout:Lokio/Timeout;

    move-object v0, v1

    return-object v0
.end method
