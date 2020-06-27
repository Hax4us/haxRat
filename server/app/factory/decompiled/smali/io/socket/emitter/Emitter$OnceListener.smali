.class Lio/socket/emitter/Emitter$OnceListener;
.super Ljava/lang/Object;
.source "Emitter.java"

# interfaces
.implements Lio/socket/emitter/Emitter$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/socket/emitter/Emitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnceListener"
.end annotation


# instance fields
.field public final event:Ljava/lang/String;

.field public final fn:Lio/socket/emitter/Emitter$Listener;

.field final synthetic this$0:Lio/socket/emitter/Emitter;


# direct methods
.method public constructor <init>(Lio/socket/emitter/Emitter;Ljava/lang/String;Lio/socket/emitter/Emitter$Listener;)V
    .locals 6

    .prologue
    .line 156
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lio/socket/emitter/Emitter$OnceListener;->this$0:Lio/socket/emitter/Emitter;

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 157
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lio/socket/emitter/Emitter$OnceListener;->event:Ljava/lang/String;

    .line 158
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lio/socket/emitter/Emitter$OnceListener;->fn:Lio/socket/emitter/Emitter$Listener;

    .line 159
    return-void
.end method


# virtual methods
.method public varargs call([Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 163
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lio/socket/emitter/Emitter$OnceListener;->this$0:Lio/socket/emitter/Emitter;

    move-object v3, v0

    iget-object v3, v3, Lio/socket/emitter/Emitter$OnceListener;->event:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v2, v3, v4}, Lio/socket/emitter/Emitter;->off(Ljava/lang/String;Lio/socket/emitter/Emitter$Listener;)Lio/socket/emitter/Emitter;

    move-result-object v2

    .line 164
    move-object v2, v0

    iget-object v2, v2, Lio/socket/emitter/Emitter$OnceListener;->fn:Lio/socket/emitter/Emitter$Listener;

    move-object v3, v1

    invoke-interface {v2, v3}, Lio/socket/emitter/Emitter$Listener;->call([Ljava/lang/Object;)V

    .line 165
    return-void
.end method
