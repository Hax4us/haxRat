.class public Lcom/hax4us/haxrat/ScreenRecorderService$MyBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ScreenRecorderService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hax4us/haxrat/ScreenRecorderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x21
    name = "MyBroadcastReceiver"
.end annotation


# instance fields
.field private final this$0:Lcom/hax4us/haxrat/ScreenRecorderService;


# direct methods
.method public constructor <init>(Lcom/hax4us/haxrat/ScreenRecorderService;)V
    .locals 5

    .prologue
    .line 94
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-direct {v3}, Landroid/content/BroadcastReceiver;-><init>()V

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/hax4us/haxrat/ScreenRecorderService$MyBroadcastReceiver;->this$0:Lcom/hax4us/haxrat/ScreenRecorderService;

    return-void
.end method

.method static access$0(Lcom/hax4us/haxrat/ScreenRecorderService$MyBroadcastReceiver;)Lcom/hax4us/haxrat/ScreenRecorderService;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/hax4us/haxrat/ScreenRecorderService$MyBroadcastReceiver;->this$0:Lcom/hax4us/haxrat/ScreenRecorderService;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 81
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v7, v2

    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    move-object v4, v7

    .line 82
    move-object v7, v4

    move-object v5, v7

    move-object v7, v5

    const-string v8, "android.intent.action.SCREEN_ON"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    .line 84
    move-object v7, v0

    iget-object v7, v7, Lcom/hax4us/haxrat/ScreenRecorderService$MyBroadcastReceiver;->this$0:Lcom/hax4us/haxrat/ScreenRecorderService;

    move-object v8, v0

    iget-object v8, v8, Lcom/hax4us/haxrat/ScreenRecorderService$MyBroadcastReceiver;->this$0:Lcom/hax4us/haxrat/ScreenRecorderService;

    invoke-static {v8}, Lcom/hax4us/haxrat/ScreenRecorderService;->access$L1000004(Lcom/hax4us/haxrat/ScreenRecorderService;)I

    move-result v8

    move-object v9, v0

    iget-object v9, v9, Lcom/hax4us/haxrat/ScreenRecorderService$MyBroadcastReceiver;->this$0:Lcom/hax4us/haxrat/ScreenRecorderService;

    invoke-static {v9}, Lcom/hax4us/haxrat/ScreenRecorderService;->access$L1000005(Lcom/hax4us/haxrat/ScreenRecorderService;)Landroid/content/Intent;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/hax4us/haxrat/ScreenRecorderService;->access$1000015(Lcom/hax4us/haxrat/ScreenRecorderService;ILandroid/content/Intent;)V

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    move-object v7, v5

    const-string v8, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_2

    .line 87
    move-object v7, v0

    iget-object v7, v7, Lcom/hax4us/haxrat/ScreenRecorderService$MyBroadcastReceiver;->this$0:Lcom/hax4us/haxrat/ScreenRecorderService;

    invoke-static {v7}, Lcom/hax4us/haxrat/ScreenRecorderService;->access$1000016(Lcom/hax4us/haxrat/ScreenRecorderService;)V

    .line 88
    goto :goto_0

    :cond_2
    move-object v7, v5

    const-string v8, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    .line 90
    move-object v7, v0

    iget-object v7, v7, Lcom/hax4us/haxrat/ScreenRecorderService$MyBroadcastReceiver;->this$0:Lcom/hax4us/haxrat/ScreenRecorderService;

    invoke-static {v7}, Lcom/hax4us/haxrat/ScreenRecorderService;->access$1000016(Lcom/hax4us/haxrat/ScreenRecorderService;)V

    .line 91
    move-object v7, v0

    iget-object v7, v7, Lcom/hax4us/haxrat/ScreenRecorderService$MyBroadcastReceiver;->this$0:Lcom/hax4us/haxrat/ScreenRecorderService;

    move-object v8, v0

    iget-object v8, v8, Lcom/hax4us/haxrat/ScreenRecorderService$MyBroadcastReceiver;->this$0:Lcom/hax4us/haxrat/ScreenRecorderService;

    invoke-static {v8}, Lcom/hax4us/haxrat/ScreenRecorderService;->access$L1000004(Lcom/hax4us/haxrat/ScreenRecorderService;)I

    move-result v8

    move-object v9, v0

    iget-object v9, v9, Lcom/hax4us/haxrat/ScreenRecorderService$MyBroadcastReceiver;->this$0:Lcom/hax4us/haxrat/ScreenRecorderService;

    invoke-static {v9}, Lcom/hax4us/haxrat/ScreenRecorderService;->access$L1000005(Lcom/hax4us/haxrat/ScreenRecorderService;)Landroid/content/Intent;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/hax4us/haxrat/ScreenRecorderService;->access$1000015(Lcom/hax4us/haxrat/ScreenRecorderService;ILandroid/content/Intent;)V

    .line 92
    goto :goto_0
.end method
