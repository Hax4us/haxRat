.class public Lkotlin/jvm/internal/Ref;
.super Ljava/lang/Object;
.source "Ref.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/jvm/internal/Ref$BooleanRef;,
        Lkotlin/jvm/internal/Ref$CharRef;,
        Lkotlin/jvm/internal/Ref$DoubleRef;,
        Lkotlin/jvm/internal/Ref$FloatRef;,
        Lkotlin/jvm/internal/Ref$LongRef;,
        Lkotlin/jvm/internal/Ref$IntRef;,
        Lkotlin/jvm/internal/Ref$ShortRef;,
        Lkotlin/jvm/internal/Ref$ByteRef;,
        Lkotlin/jvm/internal/Ref$ObjectRef;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 11
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method
