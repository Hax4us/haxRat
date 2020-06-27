.class public Lio/socket/hasbinary/HasBinary;
.super Ljava/lang/Object;
.source "HasBinary.java"


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lio/socket/hasbinary/HasBinary;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lio/socket/hasbinary/HasBinary;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 15
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static _hasBinary(Ljava/lang/Object;)Z
    .locals 10

    .prologue
    .line 22
    move-object v0, p0

    move-object v6, v0

    if-nez v6, :cond_0

    const/4 v6, 0x0

    move v0, v6

    .line 61
    :goto_0
    return v0

    .line 24
    :cond_0
    move-object v6, v0

    instance-of v6, v6, [B

    if-eqz v6, :cond_1

    .line 25
    const/4 v6, 0x1

    move v0, v6

    goto :goto_0

    .line 28
    :cond_1
    move-object v6, v0

    instance-of v6, v6, Lorg/json/JSONArray;

    if-eqz v6, :cond_5

    .line 29
    move-object v6, v0

    check-cast v6, Lorg/json/JSONArray;

    move-object v1, v6

    .line 30
    move-object v6, v1

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v6

    move v2, v6

    .line 31
    const/4 v6, 0x0

    move v3, v6

    :goto_1
    move v6, v3

    move v7, v2

    if-ge v6, v7, :cond_4

    .line 34
    move-object v6, v1

    move v7, v3

    :try_start_0
    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->isNull(I)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_2

    const/4 v6, 0x0

    :goto_2
    move-object v4, v6

    .line 39
    move-object v6, v4

    invoke-static {v6}, Lio/socket/hasbinary/HasBinary;->_hasBinary(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 40
    const/4 v6, 0x1

    move v0, v6

    goto :goto_0

    .line 34
    :cond_2
    move-object v6, v1

    move v7, v3

    :try_start_1
    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v6

    goto :goto_2

    .line 35
    :catch_0
    move-exception v6

    move-object v5, v6

    .line 36
    sget-object v6, Lio/socket/hasbinary/HasBinary;->logger:Ljava/util/logging/Logger;

    sget-object v7, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v8, "An error occured while retrieving data from JSONArray"

    move-object v9, v5

    invoke-virtual {v6, v7, v8, v9}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 37
    const/4 v6, 0x0

    move v0, v6

    goto :goto_0

    .line 31
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 61
    :cond_4
    const/4 v6, 0x0

    move v0, v6

    goto :goto_0

    .line 43
    :cond_5
    move-object v6, v0

    instance-of v6, v6, Lorg/json/JSONObject;

    if-eqz v6, :cond_4

    .line 44
    move-object v6, v0

    check-cast v6, Lorg/json/JSONObject;

    move-object v1, v6

    .line 45
    move-object v6, v1

    invoke-virtual {v6}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v6

    move-object v2, v6

    .line 46
    :goto_3
    move-object v6, v2

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 47
    move-object v6, v2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object v3, v6

    .line 50
    move-object v6, v1

    move-object v7, v3

    :try_start_2
    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v6

    move-object v4, v6

    .line 55
    move-object v6, v4

    invoke-static {v6}, Lio/socket/hasbinary/HasBinary;->_hasBinary(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 56
    const/4 v6, 0x1

    move v0, v6

    goto :goto_0

    .line 51
    :catch_1
    move-exception v6

    move-object v5, v6

    .line 52
    sget-object v6, Lio/socket/hasbinary/HasBinary;->logger:Ljava/util/logging/Logger;

    sget-object v7, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v8, "An error occured while retrieving data from JSONObject"

    move-object v9, v5

    invoke-virtual {v6, v7, v8, v9}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 53
    const/4 v6, 0x0

    move v0, v6

    goto/16 :goto_0

    .line 58
    :cond_6
    goto :goto_3
.end method

.method public static hasBinary(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 18
    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Lio/socket/hasbinary/HasBinary;->_hasBinary(Ljava/lang/Object;)Z

    move-result v1

    move v0, v1

    return v0
.end method
