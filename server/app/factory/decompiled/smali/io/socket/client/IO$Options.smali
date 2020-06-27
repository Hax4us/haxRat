.class public Lio/socket/client/IO$Options;
.super Lio/socket/client/Manager$Options;
.source "IO.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/socket/client/IO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Options"
.end annotation


# instance fields
.field public forceNew:Z

.field public multiplex:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 89
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lio/socket/client/Manager$Options;-><init>()V

    .line 96
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lio/socket/client/IO$Options;->multiplex:Z

    return-void
.end method
