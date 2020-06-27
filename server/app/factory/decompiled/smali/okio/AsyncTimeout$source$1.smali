.class public final Lokio/AsyncTimeout$source$1;
.super Ljava/lang/Object;
.source "AsyncTimeout.kt"

# interfaces
.implements Lokio/Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokio/AsyncTimeout;->source(Lokio/Source;)Lokio/Source;
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
        "\u0000+\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0018\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u0005H\u0016J\u0008\u0010\t\u001a\u00020\nH\u0016J\u0008\u0010\u000b\u001a\u00020\u000cH\u0016\u00a8\u0006\r"
    }
    d2 = {
        "okio/AsyncTimeout$source$1",
        "Lokio/Source;",
        "close",
        "",
        "read",
        "",
        "sink",
        "Lokio/Buffer;",
        "byteCount",
        "timeout",
        "Lokio/AsyncTimeout;",
        "toString",
        "",
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
.field final synthetic $source:Lokio/Source;

.field final synthetic this$0:Lokio/AsyncTimeout;


# direct methods
.method constructor <init>(Lokio/AsyncTimeout;Lokio/Source;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokio/Source;",
            ")V"
        }
    .end annotation

    .prologue
    .line 127
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lokio/AsyncTimeout$source$1;->this$0:Lokio/AsyncTimeout;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lokio/AsyncTimeout$source$1;->$source:Lokio/Source;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 9

    .prologue
    .line 133
    move-object v0, p0

    move-object v7, v0

    iget-object v7, v7, Lokio/AsyncTimeout$source$1;->this$0:Lokio/AsyncTimeout;

    move-object v1, v7

    const/4 v7, 0x0

    move v2, v7

    .line 341
    const/4 v7, 0x0

    move v3, v7

    .line 342
    move-object v7, v1

    invoke-virtual {v7}, Lokio/AsyncTimeout;->enter()V

    .line 343
    nop

    .line 344
    const/4 v7, 0x0

    move v4, v7

    .line 133
    move-object v7, v0

    :try_start_0
    iget-object v7, v7, Lokio/AsyncTimeout$source$1;->$source:Lokio/Source;

    invoke-interface {v7}, Lokio/Source;->close()V

    sget-object v7, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v7

    .line 345
    const/4 v7, 0x1

    move v3, v7

    .line 346
    move-object v7, v4

    move-object v5, v7

    .line 350
    move-object v7, v1

    invoke-virtual {v7}, Lokio/AsyncTimeout;->exit()Z

    move-result v7

    move v6, v7

    .line 351
    move v7, v6

    if-eqz v7, :cond_2

    move-object v7, v1

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lokio/AsyncTimeout;->access$newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v7

    check-cast v7, Ljava/lang/Throwable;

    throw v7

    .line 352
    :catch_0
    move-exception v7

    move-object v4, v7

    .line 353
    move-object v7, v1

    :try_start_1
    invoke-virtual {v7}, Lokio/AsyncTimeout;->exit()Z

    move-result v7

    if-nez v7, :cond_0

    move-object v7, v4

    check-cast v7, Ljava/lang/Throwable;

    :goto_0
    throw v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v7

    move-object v4, v7

    .line 350
    move-object v7, v1

    invoke-virtual {v7}, Lokio/AsyncTimeout;->exit()Z

    move-result v7

    move v5, v7

    .line 351
    move v7, v5

    if-eqz v7, :cond_1

    move v7, v3

    if-eqz v7, :cond_1

    move-object v7, v1

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lokio/AsyncTimeout;->access$newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v7

    check-cast v7, Ljava/lang/Throwable;

    throw v7

    .line 353
    :cond_0
    move-object v7, v1

    move-object v8, v4

    :try_start_2
    invoke-virtual {v7, v8}, Lokio/AsyncTimeout;->access$newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v7

    check-cast v7, Ljava/lang/Throwable;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 351
    :cond_1
    move-object v7, v4

    throw v7

    .line 134
    :cond_2
    return-void
.end method

.method public read(Lokio/Buffer;J)J
    .locals 17
    .param p1    # Lokio/Buffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-object v13, v1

    const-string v14, "sink"

    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    move-object v13, v0

    iget-object v13, v13, Lokio/AsyncTimeout$source$1;->this$0:Lokio/AsyncTimeout;

    move-object v4, v13

    const/4 v13, 0x0

    move v5, v13

    .line 328
    const/4 v13, 0x0

    move v6, v13

    .line 329
    move-object v13, v4

    invoke-virtual {v13}, Lokio/AsyncTimeout;->enter()V

    .line 330
    nop

    .line 331
    const/4 v13, 0x0

    move v7, v13

    .line 129
    move-object v13, v0

    :try_start_0
    iget-object v13, v13, Lokio/AsyncTimeout$source$1;->$source:Lokio/Source;

    move-object v14, v1

    move-wide v15, v2

    invoke-interface/range {v13 .. v16}, Lokio/Source;->read(Lokio/Buffer;J)J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v13

    move-wide v8, v13

    .line 332
    const/4 v13, 0x1

    move v6, v13

    .line 333
    move-wide v13, v8

    move-wide v10, v13

    .line 337
    move-object v13, v4

    invoke-virtual {v13}, Lokio/AsyncTimeout;->exit()Z

    move-result v13

    move v12, v13

    .line 338
    move v13, v12

    if-eqz v13, :cond_0

    move-object v13, v4

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lokio/AsyncTimeout;->access$newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v13

    check-cast v13, Ljava/lang/Throwable;

    throw v13

    :cond_0
    move-wide v13, v10

    move-wide v0, v13

    return-wide v0

    .line 339
    :catch_0
    move-exception v13

    move-object v8, v13

    .line 340
    move-object v13, v4

    :try_start_1
    invoke-virtual {v13}, Lokio/AsyncTimeout;->exit()Z

    move-result v13

    if-nez v13, :cond_1

    move-object v13, v8

    check-cast v13, Ljava/lang/Throwable;

    :goto_0
    throw v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v13

    move-object v8, v13

    .line 337
    move-object v13, v4

    invoke-virtual {v13}, Lokio/AsyncTimeout;->exit()Z

    move-result v13

    move v10, v13

    .line 338
    move v13, v10

    if-eqz v13, :cond_2

    move v13, v6

    if-eqz v13, :cond_2

    move-object v13, v4

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lokio/AsyncTimeout;->access$newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v13

    check-cast v13, Ljava/lang/Throwable;

    throw v13

    .line 340
    :cond_1
    move-object v13, v4

    move-object v14, v8

    :try_start_2
    invoke-virtual {v13, v14}, Lokio/AsyncTimeout;->access$newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v13

    check-cast v13, Ljava/lang/Throwable;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 338
    :cond_2
    move-object v13, v8

    throw v13
.end method

.method public timeout()Lokio/AsyncTimeout;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 136
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokio/AsyncTimeout$source$1;->this$0:Lokio/AsyncTimeout;

    move-object v0, v1

    return-object v0
.end method

.method public bridge synthetic timeout()Lokio/Timeout;
    .locals 2

    .prologue
    .line 127
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lokio/AsyncTimeout$source$1;->timeout()Lokio/AsyncTimeout;

    move-result-object v1

    check-cast v1, Lokio/Timeout;

    move-object v0, v1

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 138
    move-object v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AsyncTimeout.source("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lokio/AsyncTimeout$source$1;->$source:Lokio/Source;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method
