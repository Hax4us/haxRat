.class public final Lokio/Buffer$UnsafeCursor;
.super Ljava/lang/Object;
.source "Buffer.kt"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokio/Buffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UnsafeCursor"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0010\u001a\u00020\u0011H\u0016J\u000e\u0010\u0012\u001a\u00020\n2\u0006\u0010\u0013\u001a\u00020\u0008J\u0006\u0010\u0014\u001a\u00020\u0008J\u000e\u0010\u0015\u001a\u00020\n2\u0006\u0010\u0016\u001a\u00020\nJ\u000e\u0010\u0017\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nR\u0014\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u00020\u00088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u00020\n8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u00020\u000c8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000f\u001a\u00020\u00088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "Lokio/Buffer$UnsafeCursor;",
        "Ljava/io/Closeable;",
        "()V",
        "buffer",
        "Lokio/Buffer;",
        "data",
        "",
        "end",
        "",
        "offset",
        "",
        "readWrite",
        "",
        "segment",
        "Lokio/Segment;",
        "start",
        "close",
        "",
        "expandBuffer",
        "minByteCount",
        "next",
        "resizeBuffer",
        "newSize",
        "seek",
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
.field public buffer:Lokio/Buffer;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public data:[B
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public end:I
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public offset:J
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public readWrite:Z
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field private segment:Lokio/Segment;

.field public start:I
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 793
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 798
    move-object v1, v0

    const-wide/16 v2, -0x1

    iput-wide v2, v1, Lokio/Buffer$UnsafeCursor;->offset:J

    .line 800
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Lokio/Buffer$UnsafeCursor;->start:I

    .line 801
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Lokio/Buffer$UnsafeCursor;->end:I

    return-void
.end method


# virtual methods
.method public close()V
    .locals 9

    .prologue
    .line 1008
    move-object v0, p0

    move-object v5, v0

    iget-object v5, v5, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    :goto_0
    move v1, v5

    const/4 v5, 0x0

    move v2, v5

    const/4 v5, 0x0

    move v3, v5

    move v5, v1

    if-nez v5, :cond_1

    const/4 v5, 0x0

    move v4, v5

    const-string v5, "not attached to a buffer"

    move-object v3, v5

    new-instance v5, Ljava/lang/IllegalStateException;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v3

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v5, Ljava/lang/Throwable;

    throw v5

    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 1010
    :cond_1
    move-object v5, v0

    const/4 v6, 0x0

    check-cast v6, Lokio/Buffer;

    iput-object v6, v5, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    .line 1011
    move-object v5, v0

    const/4 v6, 0x0

    check-cast v6, Lokio/Segment;

    iput-object v6, v5, Lokio/Buffer$UnsafeCursor;->segment:Lokio/Segment;

    .line 1012
    move-object v5, v0

    const-wide/16 v6, -0x1

    iput-wide v6, v5, Lokio/Buffer$UnsafeCursor;->offset:J

    .line 1013
    move-object v5, v0

    const/4 v6, 0x0

    check-cast v6, [B

    iput-object v6, v5, Lokio/Buffer$UnsafeCursor;->data:[B

    .line 1014
    move-object v5, v0

    const/4 v6, -0x1

    iput v6, v5, Lokio/Buffer$UnsafeCursor;->start:I

    .line 1015
    move-object v5, v0

    const/4 v6, -0x1

    iput v6, v5, Lokio/Buffer$UnsafeCursor;->end:I

    .line 1016
    return-void
.end method

.method public final expandBuffer(I)J
    .locals 13

    .prologue
    .line 985
    move-object v0, p0

    move v1, p1

    move v7, v1

    if-lez v7, :cond_0

    const/4 v7, 0x1

    :goto_0
    move v2, v7

    const/4 v7, 0x0

    move v3, v7

    const/4 v7, 0x0

    move v4, v7

    move v7, v2

    if-nez v7, :cond_1

    const/4 v7, 0x0

    move v5, v7

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "minByteCount <= 0: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v4, v7

    new-instance v7, Ljava/lang/IllegalArgumentException;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v4

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v7, Ljava/lang/Throwable;

    throw v7

    :cond_0
    const/4 v7, 0x0

    goto :goto_0

    .line 986
    :cond_1
    move v7, v1

    const/16 v8, 0x2000

    if-gt v7, v8, :cond_2

    const/4 v7, 0x1

    :goto_1
    move v2, v7

    const/4 v7, 0x0

    move v3, v7

    const/4 v7, 0x0

    move v4, v7

    move v7, v2

    if-nez v7, :cond_3

    const/4 v7, 0x0

    move v5, v7

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "minByteCount > Segment.SIZE: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v4, v7

    new-instance v7, Ljava/lang/IllegalArgumentException;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v4

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v7, Ljava/lang/Throwable;

    throw v7

    :cond_2
    const/4 v7, 0x0

    goto :goto_1

    .line 987
    :cond_3
    move-object v7, v0

    iget-object v7, v7, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    move-object v3, v7

    const/4 v7, 0x0

    move v4, v7

    const/4 v7, 0x0

    move v5, v7

    move-object v7, v3

    if-nez v7, :cond_4

    const/4 v7, 0x0

    move v6, v7

    const-string v7, "not attached to a buffer"

    move-object v5, v7

    new-instance v7, Ljava/lang/IllegalStateException;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v5

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v7, Ljava/lang/Throwable;

    throw v7

    :cond_4
    move-object v7, v3

    move-object v2, v7

    .line 988
    move-object v7, v0

    iget-boolean v7, v7, Lokio/Buffer$UnsafeCursor;->readWrite:Z

    move v3, v7

    const/4 v7, 0x0

    move v4, v7

    const/4 v7, 0x0

    move v5, v7

    move v7, v3

    if-nez v7, :cond_5

    const/4 v7, 0x0

    move v6, v7

    const-string v7, "expandBuffer() only permitted for read/write buffers"

    move-object v5, v7

    new-instance v7, Ljava/lang/IllegalStateException;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v5

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v7, Ljava/lang/Throwable;

    throw v7

    .line 990
    :cond_5
    move-object v7, v2

    invoke-virtual {v7}, Lokio/Buffer;->size()J

    move-result-wide v7

    move-wide v3, v7

    .line 991
    move-object v7, v2

    move v8, v1

    invoke-virtual {v7, v8}, Lokio/Buffer;->writableSegment$okio(I)Lokio/Segment;

    move-result-object v7

    move-object v5, v7

    .line 992
    const/16 v7, 0x2000

    move-object v8, v5

    iget v8, v8, Lokio/Segment;->limit:I

    rsub-int v7, v8, 0x2000

    move v6, v7

    .line 993
    move-object v7, v5

    const/16 v8, 0x2000

    iput v8, v7, Lokio/Segment;->limit:I

    .line 994
    move-object v7, v2

    move-wide v8, v3

    move v10, v6

    int-to-long v10, v10

    add-long/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Lokio/Buffer;->setSize$okio(J)V

    .line 997
    move-object v7, v0

    move-object v8, v5

    iput-object v8, v7, Lokio/Buffer$UnsafeCursor;->segment:Lokio/Segment;

    .line 998
    move-object v7, v0

    move-wide v8, v3

    iput-wide v8, v7, Lokio/Buffer$UnsafeCursor;->offset:J

    .line 999
    move-object v7, v0

    move-object v8, v5

    iget-object v8, v8, Lokio/Segment;->data:[B

    iput-object v8, v7, Lokio/Buffer$UnsafeCursor;->data:[B

    .line 1000
    move-object v7, v0

    const/16 v8, 0x2000

    move v9, v6

    rsub-int v8, v9, 0x2000

    iput v8, v7, Lokio/Buffer$UnsafeCursor;->start:I

    .line 1001
    move-object v7, v0

    const/16 v8, 0x2000

    iput v8, v7, Lokio/Buffer$UnsafeCursor;->end:I

    .line 1003
    move v7, v6

    int-to-long v7, v7

    move-wide v0, v7

    return-wide v0
.end method

.method public final next()I
    .locals 11

    .prologue
    .line 809
    move-object v0, p0

    move-object v5, v0

    iget-wide v5, v5, Lokio/Buffer$UnsafeCursor;->offset:J

    move-object v7, v0

    iget-object v7, v7, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    if-nez v8, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v7}, Lokio/Buffer;->size()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    :goto_0
    move v1, v5

    const/4 v5, 0x0

    move v2, v5

    const/4 v5, 0x0

    move v3, v5

    move v5, v1

    if-nez v5, :cond_2

    const/4 v5, 0x0

    move v4, v5

    const-string v5, "no more bytes"

    move-object v3, v5

    new-instance v5, Ljava/lang/IllegalStateException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v3

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v5, Ljava/lang/Throwable;

    throw v5

    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 810
    :cond_2
    move-object v5, v0

    iget-wide v5, v5, Lokio/Buffer$UnsafeCursor;->offset:J

    const-wide/16 v7, -0x1

    cmp-long v5, v5, v7

    if-nez v5, :cond_3

    move-object v5, v0

    const-wide/16 v6, 0x0

    invoke-virtual {v5, v6, v7}, Lokio/Buffer$UnsafeCursor;->seek(J)I

    move-result v5

    :goto_1
    move v0, v5

    return v0

    :cond_3
    move-object v5, v0

    move-object v6, v0

    iget-wide v6, v6, Lokio/Buffer$UnsafeCursor;->offset:J

    move-object v8, v0

    iget v8, v8, Lokio/Buffer$UnsafeCursor;->end:I

    move-object v9, v0

    iget v9, v9, Lokio/Buffer$UnsafeCursor;->start:I

    sub-int/2addr v8, v9

    int-to-long v8, v8

    add-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Lokio/Buffer$UnsafeCursor;->seek(J)I

    move-result v5

    goto :goto_1
.end method

.method public final resizeBuffer(J)J
    .locals 24

    .prologue
    .line 909
    move-object/from16 v3, p0

    move-wide/from16 v4, p1

    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    move-object/from16 v19, v0

    move-object/from16 v7, v19

    const/16 v19, 0x0

    move/from16 v8, v19

    const/16 v19, 0x0

    move/from16 v9, v19

    move-object/from16 v19, v7

    if-nez v19, :cond_0

    const/16 v19, 0x0

    move/from16 v10, v19

    const-string v19, "not attached to a buffer"

    move-object/from16 v9, v19

    new-instance v19, Ljava/lang/IllegalStateException;

    move-object/from16 v23, v19

    move-object/from16 v19, v23

    move-object/from16 v20, v23

    move-object/from16 v21, v9

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v19, Ljava/lang/Throwable;

    throw v19

    :cond_0
    move-object/from16 v19, v7

    move-object/from16 v6, v19

    .line 910
    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lokio/Buffer$UnsafeCursor;->readWrite:Z

    move/from16 v19, v0

    move/from16 v7, v19

    const/16 v19, 0x0

    move/from16 v8, v19

    const/16 v19, 0x0

    move/from16 v9, v19

    move/from16 v19, v7

    if-nez v19, :cond_1

    const/16 v19, 0x0

    move/from16 v10, v19

    const-string v19, "resizeBuffer() only permitted for read/write buffers"

    move-object/from16 v9, v19

    new-instance v19, Ljava/lang/IllegalStateException;

    move-object/from16 v23, v19

    move-object/from16 v19, v23

    move-object/from16 v20, v23

    move-object/from16 v21, v9

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v19, Ljava/lang/Throwable;

    throw v19

    .line 912
    :cond_1
    move-object/from16 v19, v6

    invoke-virtual/range {v19 .. v19}, Lokio/Buffer;->size()J

    move-result-wide v19

    move-wide/from16 v7, v19

    .line 913
    move-wide/from16 v19, v4

    move-wide/from16 v21, v7

    cmp-long v19, v19, v21

    if-gtz v19, :cond_9

    .line 914
    move-wide/from16 v19, v4

    const-wide/16 v21, 0x0

    cmp-long v19, v19, v21

    if-ltz v19, :cond_2

    const/16 v19, 0x1

    :goto_0
    move/from16 v9, v19

    const/16 v19, 0x0

    move/from16 v10, v19

    const/16 v19, 0x0

    move/from16 v11, v19

    move/from16 v19, v9

    if-nez v19, :cond_3

    const/16 v19, 0x0

    move/from16 v12, v19

    new-instance v19, Ljava/lang/StringBuilder;

    move-object/from16 v23, v19

    move-object/from16 v19, v23

    move-object/from16 v20, v23

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "newSize < 0: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-wide/from16 v20, v4

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v11, v19

    new-instance v19, Ljava/lang/IllegalArgumentException;

    move-object/from16 v23, v19

    move-object/from16 v19, v23

    move-object/from16 v20, v23

    move-object/from16 v21, v11

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v19, Ljava/lang/Throwable;

    throw v19

    :cond_2
    const/16 v19, 0x0

    goto :goto_0

    .line 916
    :cond_3
    move-wide/from16 v19, v7

    move-wide/from16 v21, v4

    sub-long v19, v19, v21

    move-wide/from16 v9, v19

    .line 917
    :goto_1
    move-wide/from16 v19, v9

    const-wide/16 v21, 0x0

    cmp-long v19, v19, v21

    if-lez v19, :cond_7

    .line 918
    move-object/from16 v19, v6

    move-object/from16 v0, v19

    iget-object v0, v0, Lokio/Buffer;->head:Lokio/Segment;

    move-object/from16 v19, v0

    move-object/from16 v23, v19

    move-object/from16 v19, v23

    move-object/from16 v20, v23

    if-nez v20, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_4
    move-object/from16 v0, v19

    iget-object v0, v0, Lokio/Segment;->prev:Lokio/Segment;

    move-object/from16 v19, v0

    move-object/from16 v11, v19

    .line 919
    move-object/from16 v19, v11

    move-object/from16 v23, v19

    move-object/from16 v19, v23

    move-object/from16 v20, v23

    if-nez v20, :cond_5

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_5
    move-object/from16 v0, v19

    iget v0, v0, Lokio/Segment;->limit:I

    move/from16 v19, v0

    move-object/from16 v20, v11

    move-object/from16 v0, v20

    iget v0, v0, Lokio/Segment;->pos:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    move/from16 v12, v19

    .line 920
    move/from16 v19, v12

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v19, v0

    move-wide/from16 v21, v9

    cmp-long v19, v19, v21

    if-gtz v19, :cond_6

    .line 921
    move-object/from16 v19, v6

    move-object/from16 v20, v11

    invoke-virtual/range {v20 .. v20}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lokio/Buffer;->head:Lokio/Segment;

    .line 922
    move-object/from16 v19, v11

    invoke-static/range {v19 .. v19}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    .line 923
    move-wide/from16 v19, v9

    move/from16 v21, v12

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v21, v0

    sub-long v19, v19, v21

    move-wide/from16 v9, v19

    .line 927
    goto :goto_1

    .line 925
    :cond_6
    move-object/from16 v19, v11

    move-object/from16 v23, v19

    move-object/from16 v19, v23

    move-object/from16 v20, v23

    move-object/from16 v0, v20

    iget v0, v0, Lokio/Segment;->limit:I

    move/from16 v20, v0

    move-wide/from16 v21, v9

    move-wide/from16 v0, v21

    long-to-int v0, v0

    move/from16 v21, v0

    sub-int v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lokio/Segment;->limit:I

    .line 930
    :cond_7
    move-object/from16 v19, v3

    const/16 v20, 0x0

    check-cast v20, Lokio/Segment;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lokio/Buffer$UnsafeCursor;->segment:Lokio/Segment;

    .line 931
    move-object/from16 v19, v3

    move-wide/from16 v20, v4

    move-wide/from16 v0, v20

    move-object/from16 v2, v19

    iput-wide v0, v2, Lokio/Buffer$UnsafeCursor;->offset:J

    .line 932
    move-object/from16 v19, v3

    const/16 v20, 0x0

    check-cast v20, [B

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lokio/Buffer$UnsafeCursor;->data:[B

    .line 933
    move-object/from16 v19, v3

    const/16 v20, -0x1

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lokio/Buffer$UnsafeCursor;->start:I

    .line 934
    move-object/from16 v19, v3

    const/16 v20, -0x1

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lokio/Buffer$UnsafeCursor;->end:I

    .line 955
    :cond_8
    move-object/from16 v19, v6

    move-wide/from16 v20, v4

    invoke-virtual/range {v19 .. v21}, Lokio/Buffer;->setSize$okio(J)V

    .line 959
    move-wide/from16 v19, v7

    move-wide/from16 v3, v19

    return-wide v3

    .line 935
    :cond_9
    move-wide/from16 v19, v4

    move-wide/from16 v21, v7

    cmp-long v19, v19, v21

    if-lez v19, :cond_8

    .line 937
    const/16 v19, 0x1

    move/from16 v9, v19

    .line 938
    move-wide/from16 v19, v4

    move-wide/from16 v21, v7

    sub-long v19, v19, v21

    move-wide/from16 v10, v19

    .line 939
    :goto_2
    move-wide/from16 v19, v10

    const-wide/16 v21, 0x0

    cmp-long v19, v19, v21

    if-lez v19, :cond_8

    .line 940
    move-object/from16 v19, v6

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Lokio/Buffer;->writableSegment$okio(I)Lokio/Segment;

    move-result-object v19

    move-object/from16 v12, v19

    .line 941
    const/16 v19, 0x2000

    move-object/from16 v20, v12

    move-object/from16 v0, v20

    iget v0, v0, Lokio/Segment;->limit:I

    move/from16 v20, v0

    move/from16 v0, v20

    rsub-int v0, v0, 0x2000

    move/from16 v19, v0

    move/from16 v14, v19

    const/16 v19, 0x0

    move/from16 v15, v19

    .line 1020
    move/from16 v19, v14

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v19, v0

    move-wide/from16 v16, v19

    const/16 v19, 0x0

    move/from16 v18, v19

    move-wide/from16 v19, v10

    move-wide/from16 v21, v16

    invoke-static/range {v19 .. v22}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v19

    nop

    .line 941
    move-wide/from16 v0, v19

    long-to-int v0, v0

    move/from16 v19, v0

    move/from16 v13, v19

    .line 942
    move-object/from16 v19, v12

    move-object/from16 v23, v19

    move-object/from16 v19, v23

    move-object/from16 v20, v23

    move-object/from16 v0, v20

    iget v0, v0, Lokio/Segment;->limit:I

    move/from16 v20, v0

    move/from16 v21, v13

    add-int v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lokio/Segment;->limit:I

    .line 943
    move-wide/from16 v19, v10

    move/from16 v21, v13

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v21, v0

    sub-long v19, v19, v21

    move-wide/from16 v10, v19

    .line 946
    move/from16 v19, v9

    if-eqz v19, :cond_a

    .line 947
    move-object/from16 v19, v3

    move-object/from16 v20, v12

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lokio/Buffer$UnsafeCursor;->segment:Lokio/Segment;

    .line 948
    move-object/from16 v19, v3

    move-wide/from16 v20, v7

    move-wide/from16 v0, v20

    move-object/from16 v2, v19

    iput-wide v0, v2, Lokio/Buffer$UnsafeCursor;->offset:J

    .line 949
    move-object/from16 v19, v3

    move-object/from16 v20, v12

    move-object/from16 v0, v20

    iget-object v0, v0, Lokio/Segment;->data:[B

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lokio/Buffer$UnsafeCursor;->data:[B

    .line 950
    move-object/from16 v19, v3

    move-object/from16 v20, v12

    move-object/from16 v0, v20

    iget v0, v0, Lokio/Segment;->limit:I

    move/from16 v20, v0

    move/from16 v21, v13

    sub-int v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lokio/Buffer$UnsafeCursor;->start:I

    .line 951
    move-object/from16 v19, v3

    move-object/from16 v20, v12

    move-object/from16 v0, v20

    iget v0, v0, Lokio/Segment;->limit:I

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lokio/Buffer$UnsafeCursor;->end:I

    .line 952
    const/16 v19, 0x0

    move/from16 v9, v19

    .line 939
    :cond_a
    goto/16 :goto_2
.end method

.method public final seek(J)I
    .locals 28

    .prologue
    .line 819
    move-object/from16 v3, p0

    move-wide/from16 v4, p1

    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-object v0, v0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    move-object/from16 v21, v0

    move-object/from16 v7, v21

    const/16 v21, 0x0

    move/from16 v8, v21

    const/16 v21, 0x0

    move/from16 v9, v21

    move-object/from16 v21, v7

    if-nez v21, :cond_0

    const/16 v21, 0x0

    move/from16 v10, v21

    const-string v21, "not attached to a buffer"

    move-object/from16 v9, v21

    new-instance v21, Ljava/lang/IllegalStateException;

    move-object/from16 v27, v21

    move-object/from16 v21, v27

    move-object/from16 v22, v27

    move-object/from16 v23, v9

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v21, Ljava/lang/Throwable;

    throw v21

    :cond_0
    move-object/from16 v21, v7

    move-object/from16 v6, v21

    .line 820
    move-wide/from16 v21, v4

    const/16 v23, -0x1

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v23, v0

    cmp-long v21, v21, v23

    if-ltz v21, :cond_1

    move-wide/from16 v21, v4

    move-object/from16 v23, v6

    invoke-virtual/range {v23 .. v23}, Lokio/Buffer;->size()J

    move-result-wide v23

    cmp-long v21, v21, v23

    if-lez v21, :cond_2

    .line 821
    :cond_1
    sget-object v21, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    move-object/from16 v7, v21

    const-string v21, "offset=%s > size=%s"

    move-object/from16 v8, v21

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    move-object/from16 v27, v21

    move-object/from16 v21, v27

    move-object/from16 v22, v27

    const/16 v23, 0x0

    move-wide/from16 v24, v4

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    aput-object v24, v22, v23

    move-object/from16 v27, v21

    move-object/from16 v21, v27

    move-object/from16 v22, v27

    const/16 v23, 0x1

    move-object/from16 v24, v6

    invoke-virtual/range {v24 .. v24}, Lokio/Buffer;->size()J

    move-result-wide v24

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    aput-object v24, v22, v23

    move-object/from16 v9, v21

    const/16 v21, 0x0

    move/from16 v10, v21

    move-object/from16 v21, v8

    move-object/from16 v22, v9

    move-object/from16 v27, v22

    move-object/from16 v22, v27

    move-object/from16 v23, v27

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    invoke-static/range {v22 .. v23}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v27, v21

    move-object/from16 v21, v27

    move-object/from16 v22, v27

    const-string v23, "java.lang.String.format(format, *args)"

    invoke-static/range {v22 .. v23}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v19, v21

    move-object/from16 v21, v19

    move-object/from16 v20, v21

    new-instance v21, Ljava/lang/ArrayIndexOutOfBoundsException;

    move-object/from16 v27, v21

    move-object/from16 v21, v27

    move-object/from16 v22, v27

    move-object/from16 v23, v20

    invoke-direct/range {v22 .. v23}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    check-cast v21, Ljava/lang/Throwable;

    throw v21

    .line 825
    :cond_2
    move-wide/from16 v21, v4

    const-wide/16 v23, -0x1

    cmp-long v21, v21, v23

    if-eqz v21, :cond_3

    move-wide/from16 v21, v4

    move-object/from16 v23, v6

    invoke-virtual/range {v23 .. v23}, Lokio/Buffer;->size()J

    move-result-wide v23

    cmp-long v21, v21, v23

    if-nez v21, :cond_4

    .line 826
    :cond_3
    move-object/from16 v21, v3

    const/16 v22, 0x0

    check-cast v22, Lokio/Segment;

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lokio/Buffer$UnsafeCursor;->segment:Lokio/Segment;

    .line 827
    move-object/from16 v21, v3

    move-wide/from16 v22, v4

    move-wide/from16 v0, v22

    move-object/from16 v2, v21

    iput-wide v0, v2, Lokio/Buffer$UnsafeCursor;->offset:J

    .line 828
    move-object/from16 v21, v3

    const/16 v22, 0x0

    check-cast v22, [B

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lokio/Buffer$UnsafeCursor;->data:[B

    .line 829
    move-object/from16 v21, v3

    const/16 v22, -0x1

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lokio/Buffer$UnsafeCursor;->start:I

    .line 830
    move-object/from16 v21, v3

    const/16 v22, -0x1

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lokio/Buffer$UnsafeCursor;->end:I

    .line 831
    const/16 v21, -0x1

    move/from16 v3, v21

    .line 888
    :goto_0
    return v3

    .line 835
    :cond_4
    const-wide/16 v21, 0x0

    move-wide/from16 v7, v21

    .line 836
    move-object/from16 v21, v6

    invoke-virtual/range {v21 .. v21}, Lokio/Buffer;->size()J

    move-result-wide v21

    move-wide/from16 v9, v21

    .line 837
    move-object/from16 v21, v6

    move-object/from16 v0, v21

    iget-object v0, v0, Lokio/Buffer;->head:Lokio/Segment;

    move-object/from16 v21, v0

    move-object/from16 v11, v21

    .line 838
    move-object/from16 v21, v6

    move-object/from16 v0, v21

    iget-object v0, v0, Lokio/Buffer;->head:Lokio/Segment;

    move-object/from16 v21, v0

    move-object/from16 v12, v21

    .line 839
    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-object v0, v0, Lokio/Buffer$UnsafeCursor;->segment:Lokio/Segment;

    move-object/from16 v21, v0

    if-eqz v21, :cond_6

    .line 840
    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-wide v0, v0, Lokio/Buffer$UnsafeCursor;->offset:J

    move-wide/from16 v21, v0

    move-object/from16 v23, v3

    move-object/from16 v0, v23

    iget v0, v0, Lokio/Buffer$UnsafeCursor;->start:I

    move/from16 v23, v0

    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-object v0, v0, Lokio/Buffer$UnsafeCursor;->segment:Lokio/Segment;

    move-object/from16 v24, v0

    move-object/from16 v27, v24

    move-object/from16 v24, v27

    move-object/from16 v25, v27

    if-nez v25, :cond_5

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_5
    move-object/from16 v0, v24

    iget v0, v0, Lokio/Segment;->pos:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v23, v0

    sub-long v21, v21, v23

    move-wide/from16 v13, v21

    .line 841
    move-wide/from16 v21, v13

    move-wide/from16 v23, v4

    cmp-long v21, v21, v23

    if-lez v21, :cond_8

    .line 843
    move-wide/from16 v21, v13

    move-wide/from16 v9, v21

    .line 844
    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-object v0, v0, Lokio/Buffer$UnsafeCursor;->segment:Lokio/Segment;

    move-object/from16 v21, v0

    move-object/from16 v12, v21

    .line 849
    :cond_6
    :goto_1
    const/16 v21, 0x0

    move-object/from16 v13, v21

    .line 853
    const-wide/16 v21, 0x0

    move-wide/from16 v14, v21

    .line 854
    move-wide/from16 v21, v9

    move-wide/from16 v23, v4

    sub-long v21, v21, v23

    move-wide/from16 v23, v4

    move-wide/from16 v25, v7

    sub-long v23, v23, v25

    cmp-long v21, v21, v23

    if-lez v21, :cond_9

    .line 856
    move-object/from16 v21, v11

    move-object/from16 v13, v21

    .line 857
    move-wide/from16 v21, v7

    move-wide/from16 v14, v21

    .line 858
    :goto_2
    move-wide/from16 v21, v4

    move-wide/from16 v23, v14

    move-object/from16 v25, v13

    move-object/from16 v27, v25

    move-object/from16 v25, v27

    move-object/from16 v26, v27

    if-nez v26, :cond_7

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_7
    move-object/from16 v0, v25

    iget v0, v0, Lokio/Segment;->limit:I

    move/from16 v25, v0

    move-object/from16 v26, v13

    move-object/from16 v0, v26

    iget v0, v0, Lokio/Segment;->pos:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v25, v0

    add-long v23, v23, v25

    cmp-long v21, v21, v23

    if-ltz v21, :cond_c

    .line 859
    move-wide/from16 v21, v14

    move-object/from16 v23, v13

    move-object/from16 v0, v23

    iget v0, v0, Lokio/Segment;->limit:I

    move/from16 v23, v0

    move-object/from16 v24, v13

    move-object/from16 v0, v24

    iget v0, v0, Lokio/Segment;->pos:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v23, v0

    add-long v21, v21, v23

    move-wide/from16 v14, v21

    .line 860
    move-object/from16 v21, v13

    move-object/from16 v0, v21

    iget-object v0, v0, Lokio/Segment;->next:Lokio/Segment;

    move-object/from16 v21, v0

    move-object/from16 v13, v21

    .line 858
    goto :goto_2

    .line 847
    :cond_8
    move-wide/from16 v21, v13

    move-wide/from16 v7, v21

    .line 848
    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-object v0, v0, Lokio/Buffer$UnsafeCursor;->segment:Lokio/Segment;

    move-object/from16 v21, v0

    move-object/from16 v11, v21

    goto/16 :goto_1

    .line 864
    :cond_9
    move-object/from16 v21, v12

    move-object/from16 v13, v21

    .line 865
    move-wide/from16 v21, v9

    move-wide/from16 v14, v21

    .line 866
    :goto_3
    move-wide/from16 v21, v14

    move-wide/from16 v23, v4

    cmp-long v21, v21, v23

    if-lez v21, :cond_c

    .line 867
    move-object/from16 v21, v13

    move-object/from16 v27, v21

    move-object/from16 v21, v27

    move-object/from16 v22, v27

    if-nez v22, :cond_a

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_a
    move-object/from16 v0, v21

    iget-object v0, v0, Lokio/Segment;->prev:Lokio/Segment;

    move-object/from16 v21, v0

    move-object/from16 v13, v21

    .line 868
    move-wide/from16 v21, v14

    move-object/from16 v23, v13

    move-object/from16 v27, v23

    move-object/from16 v23, v27

    move-object/from16 v24, v27

    if-nez v24, :cond_b

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_b
    move-object/from16 v0, v23

    iget v0, v0, Lokio/Segment;->limit:I

    move/from16 v23, v0

    move-object/from16 v24, v13

    move-object/from16 v0, v24

    iget v0, v0, Lokio/Segment;->pos:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v23, v0

    sub-long v21, v21, v23

    move-wide/from16 v14, v21

    .line 866
    goto :goto_3

    .line 870
    :cond_c
    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-boolean v0, v0, Lokio/Buffer$UnsafeCursor;->readWrite:Z

    move/from16 v21, v0

    if-eqz v21, :cond_10

    move-object/from16 v21, v13

    move-object/from16 v27, v21

    move-object/from16 v21, v27

    move-object/from16 v22, v27

    if-nez v22, :cond_d

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_d
    move-object/from16 v0, v21

    iget-boolean v0, v0, Lokio/Segment;->shared:Z

    move/from16 v21, v0

    if-eqz v21, :cond_10

    .line 874
    move-object/from16 v21, v13

    invoke-virtual/range {v21 .. v21}, Lokio/Segment;->unsharedCopy()Lokio/Segment;

    move-result-object v21

    move-object/from16 v16, v21

    .line 875
    move-object/from16 v21, v6

    move-object/from16 v0, v21

    iget-object v0, v0, Lokio/Buffer;->head:Lokio/Segment;

    move-object/from16 v21, v0

    move-object/from16 v22, v13

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_e

    .line 876
    move-object/from16 v21, v6

    move-object/from16 v22, v16

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lokio/Buffer;->head:Lokio/Segment;

    .line 878
    :cond_e
    move-object/from16 v21, v13

    move-object/from16 v22, v16

    invoke-virtual/range {v21 .. v22}, Lokio/Segment;->push(Lokio/Segment;)Lokio/Segment;

    move-result-object v21

    move-object/from16 v13, v21

    .line 879
    move-object/from16 v21, v13

    move-object/from16 v0, v21

    iget-object v0, v0, Lokio/Segment;->prev:Lokio/Segment;

    move-object/from16 v21, v0

    move-object/from16 v27, v21

    move-object/from16 v21, v27

    move-object/from16 v22, v27

    if-nez v22, :cond_f

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_f
    invoke-virtual/range {v21 .. v21}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v21

    .line 883
    :cond_10
    move-object/from16 v21, v3

    move-object/from16 v22, v13

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lokio/Buffer$UnsafeCursor;->segment:Lokio/Segment;

    .line 884
    move-object/from16 v21, v3

    move-wide/from16 v22, v4

    move-wide/from16 v0, v22

    move-object/from16 v2, v21

    iput-wide v0, v2, Lokio/Buffer$UnsafeCursor;->offset:J

    .line 885
    move-object/from16 v21, v3

    move-object/from16 v22, v13

    move-object/from16 v27, v22

    move-object/from16 v22, v27

    move-object/from16 v23, v27

    if-nez v23, :cond_11

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_11
    move-object/from16 v0, v22

    iget-object v0, v0, Lokio/Segment;->data:[B

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lokio/Buffer$UnsafeCursor;->data:[B

    .line 886
    move-object/from16 v21, v3

    move-object/from16 v22, v13

    move-object/from16 v0, v22

    iget v0, v0, Lokio/Segment;->pos:I

    move/from16 v22, v0

    move-wide/from16 v23, v4

    move-wide/from16 v25, v14

    sub-long v23, v23, v25

    move-wide/from16 v0, v23

    long-to-int v0, v0

    move/from16 v23, v0

    add-int v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lokio/Buffer$UnsafeCursor;->start:I

    .line 887
    move-object/from16 v21, v3

    move-object/from16 v22, v13

    move-object/from16 v0, v22

    iget v0, v0, Lokio/Segment;->limit:I

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lokio/Buffer$UnsafeCursor;->end:I

    .line 888
    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget v0, v0, Lokio/Buffer$UnsafeCursor;->end:I

    move/from16 v21, v0

    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget v0, v0, Lokio/Buffer$UnsafeCursor;->start:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    move/from16 v3, v21

    goto/16 :goto_0
.end method
