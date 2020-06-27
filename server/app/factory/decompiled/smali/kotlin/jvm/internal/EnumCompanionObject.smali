.class public final Lkotlin/jvm/internal/EnumCompanionObject;
.super Ljava/lang/Object;
.source "PrimitiveCompanionObjects.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "Lkotlin/jvm/internal/EnumCompanionObject;",
        "",
        "()V",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xa
    }
.end annotation


# static fields
.field public static final INSTANCE:Lkotlin/jvm/internal/EnumCompanionObject;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 55
    new-instance v1, Lkotlin/jvm/internal/EnumCompanionObject;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Lkotlin/jvm/internal/EnumCompanionObject;-><init>()V

    move-object v0, v1

    move-object v1, v0

    sput-object v1, Lkotlin/jvm/internal/EnumCompanionObject;->INSTANCE:Lkotlin/jvm/internal/EnumCompanionObject;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 55
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method
