.class public Lio/socket/parser/Parser$Encoder;
.super Ljava/lang/Object;
.source "Parser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/socket/parser/Parser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Encoder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/socket/parser/Parser$Encoder$Callback;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 77
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private encodeAsBinary(Lio/socket/parser/Packet;Lio/socket/parser/Parser$Encoder$Callback;)V
    .locals 10

    .prologue
    .line 124
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, v1

    invoke-static {v6}, Lio/socket/parser/Binary;->deconstructPacket(Lio/socket/parser/Packet;)Lio/socket/parser/Binary$DeconstructedPacket;

    move-result-object v6

    move-object v3, v6

    .line 125
    move-object v6, v0

    move-object v7, v3

    iget-object v7, v7, Lio/socket/parser/Binary$DeconstructedPacket;->packet:Lio/socket/parser/Packet;

    invoke-direct {v6, v7}, Lio/socket/parser/Parser$Encoder;->encodeAsString(Lio/socket/parser/Packet;)Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    .line 126
    new-instance v6, Ljava/util/ArrayList;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v3

    iget-object v8, v8, Lio/socket/parser/Binary$DeconstructedPacket;->buffers:[[B

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v5, v6

    .line 128
    move-object v6, v5

    const/4 v7, 0x0

    move-object v8, v4

    invoke-interface {v6, v7, v8}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 129
    move-object v6, v2

    move-object v7, v5

    invoke-interface {v7}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Lio/socket/parser/Parser$Encoder$Callback;->call([Ljava/lang/Object;)V

    .line 130
    return-void
.end method

.method private encodeAsString(Lio/socket/parser/Packet;)Ljava/lang/String;
    .locals 11

    .prologue
    .line 91
    move-object v0, p0

    move-object v1, p1

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v4

    .line 92
    const/4 v4, 0x0

    move v3, v4

    .line 94
    move-object v4, v2

    move-object v5, v1

    iget v5, v5, Lio/socket/parser/Packet;->type:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 96
    const/4 v4, 0x5

    move-object v5, v1

    iget v5, v5, Lio/socket/parser/Packet;->type:I

    if-eq v4, v5, :cond_0

    const/4 v4, 0x6

    move-object v5, v1

    iget v5, v5, Lio/socket/parser/Packet;->type:I

    if-ne v4, v5, :cond_1

    .line 97
    :cond_0
    move-object v4, v2

    move-object v5, v1

    iget v5, v5, Lio/socket/parser/Packet;->attachments:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 98
    move-object v4, v2

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 101
    :cond_1
    move-object v4, v1

    iget-object v4, v4, Lio/socket/parser/Packet;->nsp:Ljava/lang/String;

    if-eqz v4, :cond_2

    move-object v4, v1

    iget-object v4, v4, Lio/socket/parser/Packet;->nsp:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "/"

    move-object v5, v1

    iget-object v5, v5, Lio/socket/parser/Packet;->nsp:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 102
    const/4 v4, 0x1

    move v3, v4

    .line 103
    move-object v4, v2

    move-object v5, v1

    iget-object v5, v5, Lio/socket/parser/Packet;->nsp:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 106
    :cond_2
    move-object v4, v1

    iget v4, v4, Lio/socket/parser/Packet;->id:I

    if-ltz v4, :cond_4

    .line 107
    move v4, v3

    if-eqz v4, :cond_3

    .line 108
    move-object v4, v2

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 109
    const/4 v4, 0x0

    move v3, v4

    .line 111
    :cond_3
    move-object v4, v2

    move-object v5, v1

    iget v5, v5, Lio/socket/parser/Packet;->id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 114
    :cond_4
    move-object v4, v1

    iget-object v4, v4, Lio/socket/parser/Packet;->data:Ljava/lang/Object;

    if-eqz v4, :cond_6

    .line 115
    move v4, v3

    if-eqz v4, :cond_5

    move-object v4, v2

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 116
    :cond_5
    move-object v4, v2

    move-object v5, v1

    iget-object v5, v5, Lio/socket/parser/Packet;->data:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 119
    :cond_6
    invoke-static {}, Lio/socket/parser/Parser;->access$000()Ljava/util/logging/Logger;

    move-result-object v4

    const-string v5, "encoded %s as %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    move-object v9, v1

    aput-object v9, v7, v8

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x1

    move-object v9, v2

    aput-object v9, v7, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 120
    move-object v4, v2

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    return-object v0
.end method


# virtual methods
.method public encode(Lio/socket/parser/Packet;Lio/socket/parser/Parser$Encoder$Callback;)V
    .locals 11

    .prologue
    .line 80
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static {}, Lio/socket/parser/Parser;->access$000()Ljava/util/logging/Logger;

    move-result-object v4

    const-string v5, "encoding packet %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    move-object v9, v1

    aput-object v9, v7, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 82
    const/4 v4, 0x5

    move-object v5, v1

    iget v5, v5, Lio/socket/parser/Packet;->type:I

    if-eq v4, v5, :cond_0

    const/4 v4, 0x6

    move-object v5, v1

    iget v5, v5, Lio/socket/parser/Packet;->type:I

    if-ne v4, v5, :cond_1

    .line 83
    :cond_0
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Lio/socket/parser/Parser$Encoder;->encodeAsBinary(Lio/socket/parser/Packet;Lio/socket/parser/Parser$Encoder$Callback;)V

    .line 88
    :goto_0
    return-void

    .line 85
    :cond_1
    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Lio/socket/parser/Parser$Encoder;->encodeAsString(Lio/socket/parser/Packet;)Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 86
    move-object v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const/4 v7, 0x0

    move-object v8, v3

    aput-object v8, v6, v7

    invoke-interface {v4, v5}, Lio/socket/parser/Parser$Encoder$Callback;->call([Ljava/lang/Object;)V

    goto :goto_0
.end method
