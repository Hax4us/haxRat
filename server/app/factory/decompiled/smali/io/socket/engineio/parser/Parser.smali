.class public Lio/socket/engineio/parser/Parser;
.super Ljava/lang/Object;
.source "Parser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/socket/engineio/parser/Parser$DecodePayloadCallback;,
        Lio/socket/engineio/parser/Parser$EncodeCallback;
    }
.end annotation


# static fields
.field private static final MAX_INT_CHAR_LENGTH:I

.field public static final PROTOCOL:I = 0x3

.field private static err:Lio/socket/engineio/parser/Packet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/socket/engineio/parser/Packet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final packets:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final packetslist:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    .line 15
    const v2, 0x7fffffff

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sput v2, Lio/socket/engineio/parser/Parser;->MAX_INT_CHAR_LENGTH:I

    .line 19
    new-instance v2, Lio/socket/engineio/parser/Parser$1;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Lio/socket/engineio/parser/Parser$1;-><init>()V

    sput-object v2, Lio/socket/engineio/parser/Parser;->packets:Ljava/util/Map;

    .line 29
    new-instance v2, Ljava/util/HashMap;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lio/socket/engineio/parser/Parser;->packetslist:Ljava/util/Map;

    .line 31
    sget-object v2, Lio/socket/engineio/parser/Parser;->packets:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v0, v2

    :goto_0
    move-object v2, v0

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    move-object v1, v2

    .line 32
    sget-object v2, Lio/socket/engineio/parser/Parser;->packetslist:Ljava/util/Map;

    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v1

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 33
    goto :goto_0

    .line 36
    :cond_0
    new-instance v2, Lio/socket/engineio/parser/Packet;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const-string v4, "error"

    const-string v5, "parser error"

    invoke-direct {v3, v4, v5}, Lio/socket/engineio/parser/Packet;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    sput-object v2, Lio/socket/engineio/parser/Parser;->err:Lio/socket/engineio/parser/Packet;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 39
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)[B
    .locals 2

    .prologue
    .line 13
    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Lio/socket/engineio/parser/Parser;->stringToByteArray(Ljava/lang/String;)[B

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method private static byteArrayToString([B)Ljava/lang/String;
    .locals 10

    .prologue
    .line 261
    move-object v0, p0

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, v6

    .line 262
    move-object v6, v0

    move-object v2, v6

    move-object v6, v2

    array-length v6, v6

    move v3, v6

    const/4 v6, 0x0

    move v4, v6

    :goto_0
    move v6, v4

    move v7, v3

    if-ge v6, v7, :cond_0

    move-object v6, v2

    move v7, v4

    aget-byte v6, v6, v7

    move v5, v6

    .line 263
    move-object v6, v1

    move v7, v5

    const/16 v8, 0xff

    and-int/lit16 v7, v7, 0xff

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 262
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 265
    :cond_0
    move-object v6, v1

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    return-object v0
.end method

.method public static decodePacket(Ljava/lang/String;)Lio/socket/engineio/parser/Packet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/socket/engineio/parser/Packet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 75
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lio/socket/engineio/parser/Parser;->decodePacket(Ljava/lang/String;Z)Lio/socket/engineio/parser/Packet;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static decodePacket(Ljava/lang/String;Z)Lio/socket/engineio/parser/Packet;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Lio/socket/engineio/parser/Packet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 81
    move-object v0, p0

    move v1, p1

    move-object v4, v0

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->getNumericValue(C)I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    move v2, v4

    .line 86
    :goto_0
    move v4, v1

    if-eqz v4, :cond_0

    .line 88
    move-object v4, v0

    :try_start_1
    invoke-static {v4}, Lio/socket/utf8/UTF8;->decode(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lio/socket/utf8/UTF8Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    move-object v0, v4

    .line 94
    :cond_0
    move v4, v2

    if-ltz v4, :cond_1

    move v4, v2

    sget-object v5, Lio/socket/engineio/parser/Parser;->packetslist:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    if-lt v4, v5, :cond_2

    .line 95
    :cond_1
    sget-object v4, Lio/socket/engineio/parser/Parser;->err:Lio/socket/engineio/parser/Packet;

    move-object v0, v4

    .line 101
    :goto_1
    return-object v0

    .line 82
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 83
    const/4 v4, -0x1

    move v2, v4

    goto :goto_0

    .line 89
    :catch_1
    move-exception v4

    move-object v3, v4

    .line 90
    sget-object v4, Lio/socket/engineio/parser/Parser;->err:Lio/socket/engineio/parser/Packet;

    move-object v0, v4

    goto :goto_1

    .line 98
    :cond_2
    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_3

    .line 99
    new-instance v4, Lio/socket/engineio/parser/Packet;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    sget-object v6, Lio/socket/engineio/parser/Parser;->packetslist:Ljava/util/Map;

    move v7, v2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object v7, v0

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lio/socket/engineio/parser/Packet;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v0, v4

    goto :goto_1

    .line 101
    :cond_3
    new-instance v4, Lio/socket/engineio/parser/Packet;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    sget-object v6, Lio/socket/engineio/parser/Parser;->packetslist:Ljava/util/Map;

    move v7, v2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {v5, v6}, Lio/socket/engineio/parser/Packet;-><init>(Ljava/lang/String;)V

    move-object v0, v4

    goto :goto_1
.end method

.method public static decodePacket([B)Lio/socket/engineio/parser/Packet;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Lio/socket/engineio/parser/Packet",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 106
    move-object v0, p0

    move-object v3, v0

    const/4 v4, 0x0

    aget-byte v3, v3, v4

    move v1, v3

    .line 107
    move-object v3, v0

    array-length v3, v3

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    new-array v3, v3, [B

    move-object v2, v3

    .line 108
    move-object v3, v0

    const/4 v4, 0x1

    move-object v5, v2

    const/4 v6, 0x0

    move-object v7, v2

    array-length v7, v7

    invoke-static {v3, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 109
    new-instance v3, Lio/socket/engineio/parser/Packet;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    sget-object v5, Lio/socket/engineio/parser/Parser;->packetslist:Ljava/util/Map;

    move v6, v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Lio/socket/engineio/parser/Packet;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v0, v3

    return-object v0
.end method

.method public static decodePayload(Ljava/lang/String;Lio/socket/engineio/parser/Parser$DecodePayloadCallback;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/socket/engineio/parser/Parser$DecodePayloadCallback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 153
    move-object v0, p0

    move-object/from16 v1, p1

    move-object v10, v0

    if-eqz v10, :cond_0

    move-object v10, v0

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_1

    .line 154
    :cond_0
    move-object v10, v1

    sget-object v11, Lio/socket/engineio/parser/Parser;->err:Lio/socket/engineio/parser/Packet;

    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-interface {v10, v11, v12, v13}, Lio/socket/engineio/parser/Parser$DecodePayloadCallback;->call(Lio/socket/engineio/parser/Packet;II)Z

    move-result v10

    .line 200
    :goto_0
    return-void

    .line 158
    :cond_1
    new-instance v10, Ljava/lang/StringBuilder;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v10

    .line 159
    const/4 v10, 0x0

    move v3, v10

    move-object v10, v0

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    move v4, v10

    :goto_1
    move v10, v3

    move v11, v4

    if-ge v10, v11, :cond_5

    .line 160
    move-object v10, v0

    move v11, v3

    invoke-virtual {v10, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    move v5, v10

    .line 162
    const/16 v10, 0x3a

    move v11, v5

    if-eq v10, v11, :cond_2

    .line 163
    move-object v10, v2

    move v11, v5

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 159
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 167
    :cond_2
    move-object v10, v2

    :try_start_0
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    move v6, v10

    .line 175
    move-object v10, v0

    move v11, v3

    const/4 v12, 0x1

    add-int/lit8 v11, v11, 0x1

    move v12, v3

    const/4 v13, 0x1

    add-int/lit8 v12, v12, 0x1

    move v13, v6

    add-int/2addr v12, v13

    :try_start_1
    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v10

    move-object v7, v10

    .line 181
    move-object v10, v7

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_4

    .line 182
    move-object v10, v7

    const/4 v11, 0x1

    invoke-static {v10, v11}, Lio/socket/engineio/parser/Parser;->decodePacket(Ljava/lang/String;Z)Lio/socket/engineio/parser/Packet;

    move-result-object v10

    move-object v8, v10

    .line 183
    sget-object v10, Lio/socket/engineio/parser/Parser;->err:Lio/socket/engineio/parser/Packet;

    iget-object v10, v10, Lio/socket/engineio/parser/Packet;->type:Ljava/lang/String;

    move-object v11, v8

    iget-object v11, v11, Lio/socket/engineio/parser/Packet;->type:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    sget-object v10, Lio/socket/engineio/parser/Parser;->err:Lio/socket/engineio/parser/Packet;

    iget-object v10, v10, Lio/socket/engineio/parser/Packet;->data:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    move-object v11, v8

    iget-object v11, v11, Lio/socket/engineio/parser/Packet;->data:Ljava/lang/Object;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 184
    move-object v10, v1

    sget-object v11, Lio/socket/engineio/parser/Parser;->err:Lio/socket/engineio/parser/Packet;

    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-interface {v10, v11, v12, v13}, Lio/socket/engineio/parser/Parser$DecodePayloadCallback;->call(Lio/socket/engineio/parser/Packet;II)Z

    move-result v10

    .line 185
    goto :goto_0

    .line 168
    :catch_0
    move-exception v10

    move-object v7, v10

    .line 169
    move-object v10, v1

    sget-object v11, Lio/socket/engineio/parser/Parser;->err:Lio/socket/engineio/parser/Packet;

    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-interface {v10, v11, v12, v13}, Lio/socket/engineio/parser/Parser$DecodePayloadCallback;->call(Lio/socket/engineio/parser/Packet;II)Z

    move-result v10

    .line 170
    goto/16 :goto_0

    .line 176
    :catch_1
    move-exception v10

    move-object v8, v10

    .line 177
    move-object v10, v1

    sget-object v11, Lio/socket/engineio/parser/Parser;->err:Lio/socket/engineio/parser/Packet;

    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-interface {v10, v11, v12, v13}, Lio/socket/engineio/parser/Parser$DecodePayloadCallback;->call(Lio/socket/engineio/parser/Packet;II)Z

    move-result v10

    .line 178
    goto/16 :goto_0

    .line 188
    :cond_3
    move-object v10, v1

    move-object v11, v8

    move v12, v3

    move v13, v6

    add-int/2addr v12, v13

    move v13, v4

    invoke-interface {v10, v11, v12, v13}, Lio/socket/engineio/parser/Parser$DecodePayloadCallback;->call(Lio/socket/engineio/parser/Packet;II)Z

    move-result v10

    move v9, v10

    .line 189
    move v10, v9

    if-nez v10, :cond_4

    goto/16 :goto_0

    .line 192
    :cond_4
    move v10, v3

    move v11, v6

    add-int/2addr v10, v11

    move v3, v10

    .line 193
    new-instance v10, Ljava/lang/StringBuilder;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v10

    goto/16 :goto_2

    .line 197
    :cond_5
    move-object v10, v2

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    if-lez v10, :cond_6

    .line 198
    move-object v10, v1

    sget-object v11, Lio/socket/engineio/parser/Parser;->err:Lio/socket/engineio/parser/Packet;

    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-interface {v10, v11, v12, v13}, Lio/socket/engineio/parser/Parser$DecodePayloadCallback;->call(Lio/socket/engineio/parser/Packet;II)Z

    move-result v10

    .line 200
    :cond_6
    goto/16 :goto_0
.end method

.method public static decodePayload([BLio/socket/engineio/parser/Parser$DecodePayloadCallback;)V
    .locals 14

    .prologue
    .line 203
    move-object v0, p0

    move-object v1, p1

    move-object v9, v0

    invoke-static {v9}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v9

    move-object v2, v9

    .line 204
    new-instance v9, Ljava/util/ArrayList;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v9

    .line 206
    :goto_0
    move-object v9, v2

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v9

    if-lez v9, :cond_5

    .line 207
    new-instance v9, Ljava/lang/StringBuilder;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v9

    .line 208
    move-object v9, v2

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v9

    const/16 v10, 0xff

    and-int/lit16 v9, v9, 0xff

    if-nez v9, :cond_0

    const/4 v9, 0x1

    :goto_1
    move v5, v9

    .line 209
    const/4 v9, 0x0

    move v6, v9

    .line 210
    const/4 v9, 0x1

    move v7, v9

    .line 211
    :goto_2
    move-object v9, v2

    move v10, v7

    invoke-virtual {v9, v10}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v9

    const/16 v10, 0xff

    and-int/lit16 v9, v9, 0xff

    move v8, v9

    .line 212
    move v9, v8

    const/16 v10, 0xff

    if-ne v9, v10, :cond_1

    .line 220
    :goto_3
    move v9, v6

    if-eqz v9, :cond_3

    .line 222
    move-object v9, v1

    move-object v7, v9

    .line 223
    move-object v9, v7

    sget-object v10, Lio/socket/engineio/parser/Parser;->err:Lio/socket/engineio/parser/Packet;

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-interface {v9, v10, v11, v12}, Lio/socket/engineio/parser/Parser$DecodePayloadCallback;->call(Lio/socket/engineio/parser/Packet;II)Z

    move-result v9

    .line 258
    :goto_4
    return-void

    .line 208
    :cond_0
    const/4 v9, 0x0

    goto :goto_1

    .line 214
    :cond_1
    move-object v9, v4

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    sget v10, Lio/socket/engineio/parser/Parser;->MAX_INT_CHAR_LENGTH:I

    if-le v9, v10, :cond_2

    .line 215
    const/4 v9, 0x1

    move v6, v9

    .line 216
    goto :goto_3

    .line 218
    :cond_2
    move-object v9, v4

    move v10, v8

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 210
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 226
    :cond_3
    move-object v9, v2

    move-object v10, v4

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v9, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v9

    .line 227
    move-object v9, v2

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v9

    move-object v2, v9

    .line 229
    move-object v9, v4

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    move v7, v9

    .line 231
    move-object v9, v2

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v9

    .line 232
    move-object v9, v2

    move v10, v7

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v9, v10}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object v9

    .line 233
    move-object v9, v2

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v9

    new-array v9, v9, [B

    move-object v8, v9

    .line 234
    move-object v9, v2

    move-object v10, v8

    invoke-virtual {v9, v10}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    move-result-object v9

    .line 235
    move v9, v5

    if-eqz v9, :cond_4

    .line 236
    move-object v9, v3

    move-object v10, v8

    invoke-static {v10}, Lio/socket/engineio/parser/Parser;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v9

    .line 240
    :goto_5
    move-object v9, v2

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    move-result-object v9

    .line 241
    move-object v9, v2

    move v10, v7

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v9, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v9

    .line 242
    move-object v9, v2

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v9

    move-object v2, v9

    .line 243
    goto/16 :goto_0

    .line 238
    :cond_4
    move-object v9, v3

    move-object v10, v8

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v9

    goto :goto_5

    .line 245
    :cond_5
    move-object v9, v3

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    move v4, v9

    .line 246
    const/4 v9, 0x0

    move v5, v9

    :goto_6
    move v9, v5

    move v10, v4

    if-ge v9, v10, :cond_8

    .line 247
    move-object v9, v3

    move v10, v5

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    move-object v6, v9

    .line 248
    move-object v9, v6

    instance-of v9, v9, Ljava/lang/String;

    if-eqz v9, :cond_7

    .line 250
    move-object v9, v1

    move-object v7, v9

    .line 251
    move-object v9, v7

    move-object v10, v6

    check-cast v10, Ljava/lang/String;

    const/4 v11, 0x1

    invoke-static {v10, v11}, Lio/socket/engineio/parser/Parser;->decodePacket(Ljava/lang/String;Z)Lio/socket/engineio/parser/Packet;

    move-result-object v10

    move v11, v5

    move v12, v4

    invoke-interface {v9, v10, v11, v12}, Lio/socket/engineio/parser/Parser$DecodePayloadCallback;->call(Lio/socket/engineio/parser/Packet;II)Z

    move-result v9

    .line 246
    :cond_6
    :goto_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 252
    :cond_7
    move-object v9, v6

    instance-of v9, v9, [B

    if-eqz v9, :cond_6

    .line 254
    move-object v9, v1

    move-object v7, v9

    .line 255
    move-object v9, v7

    move-object v10, v6

    check-cast v10, [B

    check-cast v10, [B

    invoke-static {v10}, Lio/socket/engineio/parser/Parser;->decodePacket([B)Lio/socket/engineio/parser/Packet;

    move-result-object v10

    move v11, v5

    move v12, v4

    invoke-interface {v9, v10, v11, v12}, Lio/socket/engineio/parser/Parser$DecodePayloadCallback;->call(Lio/socket/engineio/parser/Packet;II)Z

    move-result v9

    goto :goto_7

    .line 258
    :cond_8
    goto/16 :goto_4
.end method

.method private static encodeByteArray(Lio/socket/engineio/parser/Packet;Lio/socket/engineio/parser/Parser$EncodeCallback;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/socket/engineio/parser/Packet",
            "<[B>;",
            "Lio/socket/engineio/parser/Parser$EncodeCallback",
            "<[B>;)V"
        }
    .end annotation

    .prologue
    .line 67
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    iget-object v4, v4, Lio/socket/engineio/parser/Packet;->data:Ljava/lang/Object;

    check-cast v4, [B

    move-object v2, v4

    .line 68
    const/4 v4, 0x1

    move-object v5, v2

    array-length v5, v5

    add-int/2addr v4, v5

    new-array v4, v4, [B

    move-object v3, v4

    .line 69
    move-object v4, v3

    const/4 v5, 0x0

    sget-object v6, Lio/socket/engineio/parser/Parser;->packets:Ljava/util/Map;

    move-object v7, v0

    iget-object v7, v7, Lio/socket/engineio/parser/Packet;->type:Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->byteValue()B

    move-result v6

    aput-byte v6, v4, v5

    .line 70
    move-object v4, v2

    const/4 v5, 0x0

    move-object v6, v3

    const/4 v7, 0x1

    move-object v8, v2

    array-length v8, v8

    invoke-static {v4, v5, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 71
    move-object v4, v1

    move-object v5, v3

    invoke-interface {v4, v5}, Lio/socket/engineio/parser/Parser$EncodeCallback;->call(Ljava/lang/Object;)V

    .line 72
    return-void
.end method

.method public static encodePacket(Lio/socket/engineio/parser/Packet;Lio/socket/engineio/parser/Parser$EncodeCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/socket/utf8/UTF8Exception;
        }
    .end annotation

    .prologue
    .line 42
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const/4 v3, 0x0

    move-object v4, v1

    invoke-static {v2, v3, v4}, Lio/socket/engineio/parser/Parser;->encodePacket(Lio/socket/engineio/parser/Packet;ZLio/socket/engineio/parser/Parser$EncodeCallback;)V

    .line 43
    return-void
.end method

.method public static encodePacket(Lio/socket/engineio/parser/Packet;ZLio/socket/engineio/parser/Parser$EncodeCallback;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/socket/utf8/UTF8Exception;
        }
    .end annotation

    .prologue
    .line 46
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v5, v0

    iget-object v5, v5, Lio/socket/engineio/parser/Packet;->data:Ljava/lang/Object;

    instance-of v5, v5, [B

    if-eqz v5, :cond_0

    .line 48
    move-object v5, v0

    move-object v3, v5

    .line 50
    move-object v5, v2

    move-object v4, v5

    .line 51
    move-object v5, v3

    move-object v6, v4

    invoke-static {v5, v6}, Lio/socket/engineio/parser/Parser;->encodeByteArray(Lio/socket/engineio/parser/Packet;Lio/socket/engineio/parser/Parser$EncodeCallback;)V

    .line 64
    :goto_0
    return-void

    .line 55
    :cond_0
    sget-object v5, Lio/socket/engineio/parser/Parser;->packets:Ljava/util/Map;

    move-object v6, v0

    iget-object v6, v6, Lio/socket/engineio/parser/Packet;->type:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    .line 57
    const/4 v5, 0x0

    move-object v6, v0

    iget-object v6, v6, Lio/socket/engineio/parser/Packet;->data:Ljava/lang/Object;

    if-eq v5, v6, :cond_1

    .line 58
    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move v6, v1

    if-eqz v6, :cond_2

    move-object v6, v0

    iget-object v6, v6, Lio/socket/engineio/parser/Packet;->data:Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lio/socket/utf8/UTF8;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :goto_1
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    .line 62
    :cond_1
    move-object v5, v2

    move-object v4, v5

    .line 63
    move-object v5, v4

    move-object v6, v3

    invoke-interface {v5, v6}, Lio/socket/engineio/parser/Parser$EncodeCallback;->call(Ljava/lang/Object;)V

    .line 64
    goto :goto_0

    .line 58
    :cond_2
    move-object v6, v0

    iget-object v6, v6, Lio/socket/engineio/parser/Packet;->data:Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_1
.end method

.method public static encodePayload([Lio/socket/engineio/parser/Packet;Lio/socket/engineio/parser/Parser$EncodeCallback;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lio/socket/engineio/parser/Packet;",
            "Lio/socket/engineio/parser/Parser$EncodeCallback",
            "<[B>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/socket/utf8/UTF8Exception;
        }
    .end annotation

    .prologue
    .line 113
    move-object v0, p0

    move-object v1, p1

    move-object v7, v0

    array-length v7, v7

    if-nez v7, :cond_0

    .line 114
    move-object v7, v1

    const/4 v8, 0x0

    new-array v8, v8, [B

    invoke-interface {v7, v8}, Lio/socket/engineio/parser/Parser$EncodeCallback;->call(Ljava/lang/Object;)V

    .line 150
    :goto_0
    return-void

    .line 118
    :cond_0
    new-instance v7, Ljava/util/ArrayList;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v0

    array-length v9, v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    move-object v2, v7

    .line 120
    move-object v7, v0

    move-object v3, v7

    move-object v7, v3

    array-length v7, v7

    move v4, v7

    const/4 v7, 0x0

    move v5, v7

    :goto_1
    move v7, v5

    move v8, v4

    if-ge v7, v8, :cond_1

    move-object v7, v3

    move v8, v5

    aget-object v7, v7, v8

    move-object v6, v7

    .line 121
    move-object v7, v6

    const/4 v8, 0x1

    new-instance v9, Lio/socket/engineio/parser/Parser$2;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    move-object v11, v2

    invoke-direct {v10, v11}, Lio/socket/engineio/parser/Parser$2;-><init>(Ljava/util/ArrayList;)V

    invoke-static {v7, v8, v9}, Lio/socket/engineio/parser/Parser;->encodePacket(Lio/socket/engineio/parser/Packet;ZLio/socket/engineio/parser/Parser$EncodeCallback;)V

    .line 120
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 149
    :cond_1
    move-object v7, v1

    move-object v8, v2

    move-object v9, v2

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v9, v9, [[B

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [[B

    invoke-static {v8}, Lio/socket/engineio/parser/Buffer;->concat([[B)[B

    move-result-object v8

    invoke-interface {v7, v8}, Lio/socket/engineio/parser/Parser$EncodeCallback;->call(Ljava/lang/Object;)V

    .line 150
    goto :goto_0
.end method

.method private static stringToByteArray(Ljava/lang/String;)[B
    .locals 8

    .prologue
    .line 269
    move-object v0, p0

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    move v1, v4

    .line 270
    move v4, v1

    new-array v4, v4, [B

    move-object v2, v4

    .line 271
    const/4 v4, 0x0

    move v3, v4

    :goto_0
    move v4, v3

    move v5, v1

    if-ge v4, v5, :cond_0

    .line 272
    move-object v4, v2

    move v5, v3

    move-object v6, v0

    move v7, v3

    invoke-static {v6, v7}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v6

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 271
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 274
    :cond_0
    move-object v4, v2

    move-object v0, v4

    return-object v0
.end method
