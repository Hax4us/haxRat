.class final Lio/socket/client/On$1;
.super Ljava/lang/Object;
.source "On.java"

# interfaces
.implements Lio/socket/client/On$Handle;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/socket/client/On;->on(Lio/socket/emitter/Emitter;Ljava/lang/String;Lio/socket/emitter/Emitter$Listener;)Lio/socket/client/On$Handle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$ev:Ljava/lang/String;

.field final synthetic val$fn:Lio/socket/emitter/Emitter$Listener;

.field final synthetic val$obj:Lio/socket/emitter/Emitter;


# direct methods
.method constructor <init>(Lio/socket/emitter/Emitter;Ljava/lang/String;Lio/socket/emitter/Emitter$Listener;)V
    .locals 6

    .prologue
    .line 11
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lio/socket/client/On$1;->val$obj:Lio/socket/emitter/Emitter;

    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lio/socket/client/On$1;->val$ev:Ljava/lang/String;

    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lio/socket/client/On$1;->val$fn:Lio/socket/emitter/Emitter$Listener;

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 4

    .prologue
    .line 14
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lio/socket/client/On$1;->val$obj:Lio/socket/emitter/Emitter;

    move-object v2, v0

    iget-object v2, v2, Lio/socket/client/On$1;->val$ev:Ljava/lang/String;

    move-object v3, v0

    iget-object v3, v3, Lio/socket/client/On$1;->val$fn:Lio/socket/emitter/Emitter$Listener;

    invoke-virtual {v1, v2, v3}, Lio/socket/emitter/Emitter;->off(Ljava/lang/String;Lio/socket/emitter/Emitter$Listener;)Lio/socket/emitter/Emitter;

    move-result-object v1

    .line 15
    return-void
.end method
