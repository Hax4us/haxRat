.class public final Lkotlin/jvm/internal/Ref$CharRef;
.super Ljava/lang/Object;
.source "Ref.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/jvm/internal/Ref;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CharRef"
.end annotation


# instance fields
.field public element:C


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 76
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 81
    move-object v0, p0

    move-object v1, v0

    iget-char v1, v1, Lkotlin/jvm/internal/Ref$CharRef;->element:C

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method
