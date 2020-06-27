.class Lkotlin/MathKt__NumbersKt;
.super Lkotlin/MathKt__BigIntegersKt;
.source "Numbers.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000&\n\u0000\n\u0002\u0010\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0010\u0007\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u001a\u0015\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\u0087\u0008\u001a\u0015\u0010\u0000\u001a\u00020\u0005*\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0007H\u0087\u0008\u001a\r\u0010\u0008\u001a\u00020\t*\u00020\u0001H\u0087\u0008\u001a\r\u0010\u0008\u001a\u00020\t*\u00020\u0005H\u0087\u0008\u001a\r\u0010\n\u001a\u00020\t*\u00020\u0001H\u0087\u0008\u001a\r\u0010\n\u001a\u00020\t*\u00020\u0005H\u0087\u0008\u001a\r\u0010\u000b\u001a\u00020\t*\u00020\u0001H\u0087\u0008\u001a\r\u0010\u000b\u001a\u00020\t*\u00020\u0005H\u0087\u0008\u001a\r\u0010\u000c\u001a\u00020\u0004*\u00020\u0001H\u0087\u0008\u001a\r\u0010\u000c\u001a\u00020\u0007*\u00020\u0005H\u0087\u0008\u001a\r\u0010\r\u001a\u00020\u0004*\u00020\u0001H\u0087\u0008\u001a\r\u0010\r\u001a\u00020\u0007*\u00020\u0005H\u0087\u0008\u00a8\u0006\u000e"
    }
    d2 = {
        "fromBits",
        "",
        "Lkotlin/Double$Companion;",
        "bits",
        "",
        "",
        "Lkotlin/Float$Companion;",
        "",
        "isFinite",
        "",
        "isInfinite",
        "isNaN",
        "toBits",
        "toRawBits",
        "kotlin-stdlib"
    }
    k = 0x5
    mv = {
        0x1,
        0x1,
        0xa
    }
    xi = 0x1
    xs = "kotlin/MathKt"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lkotlin/MathKt__BigIntegersKt;-><init>()V

    return-void
.end method

.method private static final fromBits(Lkotlin/jvm/internal/DoubleCompanionObject;J)D
    .locals 6
    .param p0    # Lkotlin/jvm/internal/DoubleCompanionObject;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/SinceKotlin;
        version = "1.2"
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .prologue
    .line 70
    move-object v0, p0

    move-wide v1, p1

    move-wide v4, v1

    invoke-static {v4, v5}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v4

    move-wide v0, v4

    return-wide v0
.end method

.method private static final fromBits(Lkotlin/jvm/internal/FloatCompanionObject;I)F
    .locals 4
    .param p0    # Lkotlin/jvm/internal/FloatCompanionObject;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/SinceKotlin;
        version = "1.2"
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .prologue
    .line 94
    move-object v0, p0

    move v1, p1

    move v3, v1

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    move v0, v3

    return v0
.end method

.method private static final isFinite(D)Z
    .locals 7
    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .prologue
    .line 40
    move-wide v0, p0

    move-wide v5, v0

    move-wide v3, v5

    move-wide v5, v3

    invoke-static {v5, v6}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v5

    if-nez v5, :cond_0

    move-wide v5, v0

    move-wide v3, v5

    move-wide v5, v3

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v5, 0x1

    :goto_0
    move v0, v5

    return v0

    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private static final isFinite(F)Z
    .locals 4
    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .prologue
    .line 46
    move v0, p0

    move v3, v0

    move v2, v3

    move v3, v2

    invoke-static {v3}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v3

    if-nez v3, :cond_0

    move v3, v0

    move v2, v3

    move v3, v2

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    move v0, v3

    return v0

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private static final isInfinite(D)Z
    .locals 5
    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .prologue
    .line 28
    move-wide v0, p0

    move-wide v3, v0

    invoke-static {v3, v4}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v3

    move v0, v3

    return v0
.end method

.method private static final isInfinite(F)Z
    .locals 3
    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .prologue
    .line 34
    move v0, p0

    move v2, v0

    invoke-static {v2}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method private static final isNaN(D)Z
    .locals 5
    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .prologue
    .line 15
    move-wide v0, p0

    move-wide v3, v0

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    move v0, v3

    return v0
.end method

.method private static final isNaN(F)Z
    .locals 3
    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .prologue
    .line 22
    move v0, p0

    move v2, v0

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method private static final toBits(F)I
    .locals 3
    .annotation build Lkotlin/SinceKotlin;
        version = "1.2"
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .prologue
    .line 78
    move v0, p0

    move v2, v0

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    move v0, v2

    return v0
.end method

.method private static final toBits(D)J
    .locals 5
    .annotation build Lkotlin/SinceKotlin;
        version = "1.2"
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .prologue
    .line 54
    move-wide v0, p0

    move-wide v3, v0

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    move-wide v0, v3

    return-wide v0
.end method

.method private static final toRawBits(F)I
    .locals 3
    .annotation build Lkotlin/SinceKotlin;
        version = "1.2"
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .prologue
    .line 87
    move v0, p0

    move v2, v0

    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    move v0, v2

    return v0
.end method

.method private static final toRawBits(D)J
    .locals 5
    .annotation build Lkotlin/SinceKotlin;
        version = "1.2"
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .prologue
    .line 63
    move-wide v0, p0

    move-wide v3, v0

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v3

    move-wide v0, v3

    return-wide v0
.end method
