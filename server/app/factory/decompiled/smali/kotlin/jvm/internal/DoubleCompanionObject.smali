.class public final Lkotlin/jvm/internal/DoubleCompanionObject;
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
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0006\n\u0002\u0008\u000b\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u0014\u0010\u0003\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u0014\u0010\u0007\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\u0006R\u0014\u0010\t\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u0006R\u0014\u0010\u000b\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\u0006R\u0014\u0010\r\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u0006\u00a8\u0006\u000f"
    }
    d2 = {
        "Lkotlin/jvm/internal/DoubleCompanionObject;",
        "",
        "()V",
        "MAX_VALUE",
        "",
        "getMAX_VALUE",
        "()D",
        "MIN_VALUE",
        "getMIN_VALUE",
        "NEGATIVE_INFINITY",
        "getNEGATIVE_INFINITY",
        "NaN",
        "getNaN",
        "POSITIVE_INFINITY",
        "getPOSITIVE_INFINITY",
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
.field public static final INSTANCE:Lkotlin/jvm/internal/DoubleCompanionObject;

# The value of this static final field might be set in the static constructor
.field private static final MAX_VALUE:D = 1.7976931348623157E308

# The value of this static final field might be set in the static constructor
.field private static final MIN_VALUE:D = 4.9E-324

# The value of this static final field might be set in the static constructor
.field private static final NEGATIVE_INFINITY:D = -Infinity

# The value of this static final field might be set in the static constructor
.field private static final NaN:D = NaN

# The value of this static final field might be set in the static constructor
.field private static final POSITIVE_INFINITY:D = Infinity


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 8
    new-instance v1, Lkotlin/jvm/internal/DoubleCompanionObject;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Lkotlin/jvm/internal/DoubleCompanionObject;-><init>()V

    move-object v0, v1

    move-object v1, v0

    sput-object v1, Lkotlin/jvm/internal/DoubleCompanionObject;->INSTANCE:Lkotlin/jvm/internal/DoubleCompanionObject;

    .line 9
    const-wide/16 v1, 0x1

    sput-wide v1, Lkotlin/jvm/internal/DoubleCompanionObject;->MIN_VALUE:D

    .line 10
    const-wide v1, 0x7fefffffffffffffL    # Double.MAX_VALUE

    sput-wide v1, Lkotlin/jvm/internal/DoubleCompanionObject;->MAX_VALUE:D

    .line 11
    const-wide/high16 v1, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    sput-wide v1, Lkotlin/jvm/internal/DoubleCompanionObject;->POSITIVE_INFINITY:D

    .line 12
    const-wide/high16 v1, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    sput-wide v1, Lkotlin/jvm/internal/DoubleCompanionObject;->NEGATIVE_INFINITY:D

    .line 13
    const-wide/high16 v1, 0x7ff8000000000000L    # Double.NaN

    sput-wide v1, Lkotlin/jvm/internal/DoubleCompanionObject;->NaN:D

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 8
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getMAX_VALUE()D
    .locals 3

    .prologue
    .line 10
    move-object v0, p0

    sget-wide v1, Lkotlin/jvm/internal/DoubleCompanionObject;->MAX_VALUE:D

    move-wide v0, v1

    return-wide v0
.end method

.method public final getMIN_VALUE()D
    .locals 3

    .prologue
    .line 9
    move-object v0, p0

    sget-wide v1, Lkotlin/jvm/internal/DoubleCompanionObject;->MIN_VALUE:D

    move-wide v0, v1

    return-wide v0
.end method

.method public final getNEGATIVE_INFINITY()D
    .locals 3

    .prologue
    .line 12
    move-object v0, p0

    sget-wide v1, Lkotlin/jvm/internal/DoubleCompanionObject;->NEGATIVE_INFINITY:D

    move-wide v0, v1

    return-wide v0
.end method

.method public final getNaN()D
    .locals 3

    .prologue
    .line 13
    move-object v0, p0

    sget-wide v1, Lkotlin/jvm/internal/DoubleCompanionObject;->NaN:D

    move-wide v0, v1

    return-wide v0
.end method

.method public final getPOSITIVE_INFINITY()D
    .locals 3

    .prologue
    .line 11
    move-object v0, p0

    sget-wide v1, Lkotlin/jvm/internal/DoubleCompanionObject;->POSITIVE_INFINITY:D

    move-wide v0, v1

    return-wide v0
.end method
