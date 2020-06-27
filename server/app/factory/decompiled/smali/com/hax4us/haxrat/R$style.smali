.class public final Lcom/hax4us/haxrat/R$style;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hax4us/haxrat/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x39
    name = "style"
.end annotation


# static fields
.field public static final AppTheme:I = 0x7f080000

.field public static final MyTheme:I = 0x7f080001

.field public static final TransParent:I = 0x7f080002


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 48
    move-object v0, p0

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method
