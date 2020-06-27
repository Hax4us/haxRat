.class public Lio/socket/client/Manager$Options;
.super Lio/socket/engineio/client/Socket$Options;
.source "Manager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/socket/client/Manager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Options"
.end annotation


# instance fields
.field public randomizationFactor:D

.field public reconnection:Z

.field public reconnectionAttempts:I

.field public reconnectionDelay:J

.field public reconnectionDelayMax:J

.field public timeout:J


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 610
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lio/socket/engineio/client/Socket$Options;-><init>()V

    .line 612
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lio/socket/client/Manager$Options;->reconnection:Z

    .line 621
    move-object v1, v0

    const-wide/16 v2, 0x4e20

    iput-wide v2, v1, Lio/socket/client/Manager$Options;->timeout:J

    return-void
.end method
