.class public Lio/socket/parser/Binary;
.super Ljava/lang/Object;
.source "Binary.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/socket/parser/Binary$DeconstructedPacket;
    }
.end annotation


# static fields
.field private static final KEY_NUM:Ljava/lang/String; = "num"

.field private static final KEY_PLACEHOLDER:Ljava/lang/String; = "_placeholder"

.field private static final logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lio/socket/parser/Binary;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lio/socket/parser/Binary;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 13
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static _deconstructPacket(Ljava/lang/Object;Ljava/util/List;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/List",
            "<[B>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 35
    move-object v0, p0

    move-object v1, p1

    move-object v7, v0

    if-nez v7, :cond_0

    const/4 v7, 0x0

    move-object v0, v7

    .line 76
    :goto_0
    return-object v0

    .line 37
    :cond_0
    move-object v7, v0

    instance-of v7, v7, [B

    if-eqz v7, :cond_1

    .line 38
    new-instance v7, Lorg/json/JSONObject;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    move-object v2, v7

    .line 40
    move-object v7, v2

    :try_start_0
    const-string v8, "_placeholder"

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v7

    .line 41
    move-object v7, v2

    const-string v8, "num"

    move-object v9, v1

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 46
    move-object v7, v1

    move-object v8, v0

    check-cast v8, [B

    check-cast v8, [B

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v7

    .line 47
    move-object v7, v2

    move-object v0, v7

    goto :goto_0

    .line 42
    :catch_0
    move-exception v7

    move-object v3, v7

    .line 43
    sget-object v7, Lio/socket/parser/Binary;->logger:Ljava/util/logging/Logger;

    sget-object v8, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v9, "An error occured while putting data to JSONObject"

    move-object v10, v3

    invoke-virtual {v7, v8, v9, v10}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 44
    const/4 v7, 0x0

    move-object v0, v7

    goto :goto_0

    .line 48
    :cond_1
    move-object v7, v0

    instance-of v7, v7, Lorg/json/JSONArray;

    if-eqz v7, :cond_3

    .line 49
    new-instance v7, Lorg/json/JSONArray;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    invoke-direct {v8}, Lorg/json/JSONArray;-><init>()V

    move-object v2, v7

    .line 50
    move-object v7, v0

    check-cast v7, Lorg/json/JSONArray;

    move-object v3, v7

    .line 51
    move-object v7, v3

    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v7

    move v4, v7

    .line 52
    const/4 v7, 0x0

    move v5, v7

    :goto_1
    move v7, v5

    move v8, v4

    if-ge v7, v8, :cond_2

    .line 54
    move-object v7, v2

    move v8, v5

    move-object v9, v3

    move v10, v5

    :try_start_1
    invoke-virtual {v9, v10}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    move-object v10, v1

    invoke-static {v9, v10}, Lio/socket/parser/Binary;->_deconstructPacket(Ljava/lang/Object;Ljava/util/List;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v7

    .line 52
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 55
    :catch_1
    move-exception v7

    move-object v6, v7

    .line 56
    sget-object v7, Lio/socket/parser/Binary;->logger:Ljava/util/logging/Logger;

    sget-object v8, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v9, "An error occured while putting packet data to JSONObject"

    move-object v10, v6

    invoke-virtual {v7, v8, v9, v10}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 57
    const/4 v7, 0x0

    move-object v0, v7

    goto :goto_0

    .line 60
    :cond_2
    move-object v7, v2

    move-object v0, v7

    goto/16 :goto_0

    .line 61
    :cond_3
    move-object v7, v0

    instance-of v7, v7, Lorg/json/JSONObject;

    if-eqz v7, :cond_5

    .line 62
    new-instance v7, Lorg/json/JSONObject;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    move-object v2, v7

    .line 63
    move-object v7, v0

    check-cast v7, Lorg/json/JSONObject;

    move-object v3, v7

    .line 64
    move-object v7, v3

    invoke-virtual {v7}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v7

    move-object v4, v7

    .line 65
    :goto_2
    move-object v7, v4

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 66
    move-object v7, v4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    move-object v5, v7

    .line 68
    move-object v7, v2

    move-object v8, v5

    move-object v9, v3

    move-object v10, v5

    :try_start_2
    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    move-object v10, v1

    invoke-static {v9, v10}, Lio/socket/parser/Binary;->_deconstructPacket(Ljava/lang/Object;Ljava/util/List;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v7

    .line 73
    goto :goto_2

    .line 69
    :catch_2
    move-exception v7

    move-object v6, v7

    .line 70
    sget-object v7, Lio/socket/parser/Binary;->logger:Ljava/util/logging/Logger;

    sget-object v8, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v9, "An error occured while putting data to JSONObject"

    move-object v10, v6

    invoke-virtual {v7, v8, v9, v10}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 71
    const/4 v7, 0x0

    move-object v0, v7

    goto/16 :goto_0

    .line 74
    :cond_4
    move-object v7, v2

    move-object v0, v7

    goto/16 :goto_0

    .line 76
    :cond_5
    move-object v7, v0

    move-object v0, v7

    goto/16 :goto_0
.end method

.method private static _reconstructPacket(Ljava/lang/Object;[[B)Ljava/lang/Object;
    .locals 10

    .prologue
    .line 87
    move-object v0, p0

    move-object v1, p1

    move-object v6, v0

    instance-of v6, v6, Lorg/json/JSONArray;

    if-eqz v6, :cond_1

    .line 88
    move-object v6, v0

    check-cast v6, Lorg/json/JSONArray;

    move-object v2, v6

    .line 89
    move-object v6, v2

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v6

    move v3, v6

    .line 90
    const/4 v6, 0x0

    move v4, v6

    :goto_0
    move v6, v4

    move v7, v3

    if-ge v6, v7, :cond_0

    .line 92
    move-object v6, v2

    move v7, v4

    move-object v8, v2

    move v9, v4

    :try_start_0
    invoke-virtual {v8, v9}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object v9, v1

    invoke-static {v8, v9}, Lio/socket/parser/Binary;->_reconstructPacket(Ljava/lang/Object;[[B)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 90
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 93
    :catch_0
    move-exception v6

    move-object v5, v6

    .line 94
    sget-object v6, Lio/socket/parser/Binary;->logger:Ljava/util/logging/Logger;

    sget-object v7, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v8, "An error occured while putting packet data to JSONObject"

    move-object v9, v5

    invoke-virtual {v6, v7, v8, v9}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 95
    const/4 v6, 0x0

    move-object v0, v6

    .line 117
    :goto_1
    return-object v0

    .line 98
    :cond_0
    move-object v6, v2

    move-object v0, v6

    goto :goto_1

    .line 99
    :cond_1
    move-object v6, v0

    instance-of v6, v6, Lorg/json/JSONObject;

    if-eqz v6, :cond_5

    .line 100
    move-object v6, v0

    check-cast v6, Lorg/json/JSONObject;

    move-object v2, v6

    .line 101
    move-object v6, v2

    const-string v7, "_placeholder"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 102
    move-object v6, v2

    const-string v7, "num"

    const/4 v8, -0x1

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    move v3, v6

    .line 103
    move v6, v3

    if-ltz v6, :cond_2

    move v6, v3

    move-object v7, v1

    array-length v7, v7

    if-ge v6, v7, :cond_2

    move-object v6, v1

    move v7, v3

    aget-object v6, v6, v7

    :goto_2
    move-object v0, v6

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    goto :goto_2

    .line 105
    :cond_3
    move-object v6, v2

    invoke-virtual {v6}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v6

    move-object v3, v6

    .line 106
    :goto_3
    move-object v6, v3

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 107
    move-object v6, v3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object v4, v6

    .line 109
    move-object v6, v2

    move-object v7, v4

    move-object v8, v2

    move-object v9, v4

    :try_start_1
    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    move-object v9, v1

    invoke-static {v8, v9}, Lio/socket/parser/Binary;->_reconstructPacket(Ljava/lang/Object;[[B)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    .line 114
    goto :goto_3

    .line 110
    :catch_1
    move-exception v6

    move-object v5, v6

    .line 111
    sget-object v6, Lio/socket/parser/Binary;->logger:Ljava/util/logging/Logger;

    sget-object v7, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v8, "An error occured while putting data to JSONObject"

    move-object v9, v5

    invoke-virtual {v6, v7, v8, v9}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 112
    const/4 v6, 0x0

    move-object v0, v6

    goto :goto_1

    .line 115
    :cond_4
    move-object v6, v2

    move-object v0, v6

    goto :goto_1

    .line 117
    :cond_5
    move-object v6, v0

    move-object v0, v6

    goto :goto_1
.end method

.method public static deconstructPacket(Lio/socket/parser/Packet;)Lio/socket/parser/Binary$DeconstructedPacket;
    .locals 7

    .prologue
    .line 23
    move-object v0, p0

    new-instance v3, Ljava/util/ArrayList;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v3

    .line 25
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lio/socket/parser/Packet;->data:Ljava/lang/Object;

    move-object v5, v1

    invoke-static {v4, v5}, Lio/socket/parser/Binary;->_deconstructPacket(Ljava/lang/Object;Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v3, Lio/socket/parser/Packet;->data:Ljava/lang/Object;

    .line 26
    move-object v3, v0

    move-object v4, v1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    iput v4, v3, Lio/socket/parser/Packet;->attachments:I

    .line 28
    new-instance v3, Lio/socket/parser/Binary$DeconstructedPacket;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Lio/socket/parser/Binary$DeconstructedPacket;-><init>()V

    move-object v2, v3

    .line 29
    move-object v3, v2

    move-object v4, v0

    iput-object v4, v3, Lio/socket/parser/Binary$DeconstructedPacket;->packet:Lio/socket/parser/Packet;

    .line 30
    move-object v3, v2

    move-object v4, v1

    move-object v5, v1

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [[B

    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[B

    iput-object v4, v3, Lio/socket/parser/Binary$DeconstructedPacket;->buffers:[[B

    .line 31
    move-object v3, v2

    move-object v0, v3

    return-object v0
.end method

.method public static reconstructPacket(Lio/socket/parser/Packet;[[B)Lio/socket/parser/Packet;
    .locals 5

    .prologue
    .line 81
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lio/socket/parser/Packet;->data:Ljava/lang/Object;

    move-object v4, v1

    invoke-static {v3, v4}, Lio/socket/parser/Binary;->_reconstructPacket(Ljava/lang/Object;[[B)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v2, Lio/socket/parser/Packet;->data:Ljava/lang/Object;

    .line 82
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Lio/socket/parser/Packet;->attachments:I

    .line 83
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method
