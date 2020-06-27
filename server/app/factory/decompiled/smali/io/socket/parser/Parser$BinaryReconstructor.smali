.class Lio/socket/parser/Parser$BinaryReconstructor;
.super Ljava/lang/Object;
.source "Parser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/socket/parser/Parser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BinaryReconstructor"
.end annotation


# instance fields
.field buffers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation
.end field

.field public reconPack:Lio/socket/parser/Packet;


# direct methods
.method constructor <init>(Lio/socket/parser/Packet;)V
    .locals 6

    .prologue
    .line 254
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 255
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lio/socket/parser/Parser$BinaryReconstructor;->reconPack:Lio/socket/parser/Packet;

    .line 256
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lio/socket/parser/Parser$BinaryReconstructor;->buffers:Ljava/util/List;

    .line 257
    return-void
.end method


# virtual methods
.method public finishReconstruction()V
    .locals 5

    .prologue
    .line 271
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lio/socket/parser/Parser$BinaryReconstructor;->reconPack:Lio/socket/parser/Packet;

    .line 272
    move-object v1, v0

    new-instance v2, Ljava/util/ArrayList;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lio/socket/parser/Parser$BinaryReconstructor;->buffers:Ljava/util/List;

    .line 273
    return-void
.end method

.method public takeBinaryData([B)Lio/socket/parser/Packet;
    .locals 6

    .prologue
    .line 260
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Lio/socket/parser/Parser$BinaryReconstructor;->buffers:Ljava/util/List;

    move-object v4, v1

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 261
    move-object v3, v0

    iget-object v3, v3, Lio/socket/parser/Parser$BinaryReconstructor;->buffers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    move-object v4, v0

    iget-object v4, v4, Lio/socket/parser/Parser$BinaryReconstructor;->reconPack:Lio/socket/parser/Packet;

    iget v4, v4, Lio/socket/parser/Packet;->attachments:I

    if-ne v3, v4, :cond_0

    .line 262
    move-object v3, v0

    iget-object v3, v3, Lio/socket/parser/Parser$BinaryReconstructor;->reconPack:Lio/socket/parser/Packet;

    move-object v4, v0

    iget-object v4, v4, Lio/socket/parser/Parser$BinaryReconstructor;->buffers:Ljava/util/List;

    move-object v5, v0

    iget-object v5, v5, Lio/socket/parser/Parser$BinaryReconstructor;->buffers:Ljava/util/List;

    .line 263
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [[B

    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[B

    .line 262
    invoke-static {v3, v4}, Lio/socket/parser/Binary;->reconstructPacket(Lio/socket/parser/Packet;[[B)Lio/socket/parser/Packet;

    move-result-object v3

    move-object v2, v3

    .line 264
    move-object v3, v0

    invoke-virtual {v3}, Lio/socket/parser/Parser$BinaryReconstructor;->finishReconstruction()V

    .line 265
    move-object v3, v2

    move-object v0, v3

    .line 267
    :goto_0
    return-object v0

    :cond_0
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0
.end method
