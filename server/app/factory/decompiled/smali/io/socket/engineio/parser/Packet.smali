.class public Lio/socket/engineio/parser/Packet;
.super Ljava/lang/Object;
.source "Packet.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final CLOSE:Ljava/lang/String; = "close"

.field public static final ERROR:Ljava/lang/String; = "error"

.field public static final MESSAGE:Ljava/lang/String; = "message"

.field public static final NOOP:Ljava/lang/String; = "noop"

.field public static final OPEN:Ljava/lang/String; = "open"

.field public static final PING:Ljava/lang/String; = "ping"

.field public static final PONG:Ljava/lang/String; = "pong"

.field public static final UPGRADE:Ljava/lang/String; = "upgrade"


# instance fields
.field public data:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 20
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lio/socket/engineio/parser/Packet;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 23
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 24
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lio/socket/engineio/parser/Packet;->type:Ljava/lang/String;

    .line 25
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lio/socket/engineio/parser/Packet;->data:Ljava/lang/Object;

    .line 26
    return-void
.end method
