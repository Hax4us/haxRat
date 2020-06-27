.class public Lio/socket/parser/Packet;
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


# instance fields
.field public attachments:I

.field public data:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public id:I

.field public nsp:Ljava/lang/String;

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 12
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 6
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Lio/socket/parser/Packet;->type:I

    .line 7
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Lio/socket/parser/Packet;->id:I

    .line 12
    return-void
.end method

.method public constructor <init>(I)V
    .locals 4

    .prologue
    .line 14
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 6
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Lio/socket/parser/Packet;->type:I

    .line 7
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Lio/socket/parser/Packet;->id:I

    .line 15
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lio/socket/parser/Packet;->type:I

    .line 16
    return-void
.end method

.method public constructor <init>(ILjava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .prologue
    .line 18
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 6
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Lio/socket/parser/Packet;->type:I

    .line 7
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Lio/socket/parser/Packet;->id:I

    .line 19
    move-object v3, v0

    move v4, v1

    iput v4, v3, Lio/socket/parser/Packet;->type:I

    .line 20
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lio/socket/parser/Packet;->data:Ljava/lang/Object;

    .line 21
    return-void
.end method
