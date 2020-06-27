.class public Lio/socket/parser/Binary$DeconstructedPacket;
.super Ljava/lang/Object;
.source "Binary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/socket/parser/Binary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeconstructedPacket"
.end annotation


# instance fields
.field public buffers:[[B

.field public packet:Lio/socket/parser/Packet;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 120
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method
