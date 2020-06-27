.class public final Lkotlin/experimental/BitwiseOperationsKt;
.super Ljava/lang/Object;
.source "bitwiseOperations.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0005\n\u0000\n\u0002\u0010\n\n\u0002\u0008\u0004\u001a\u0015\u0010\u0000\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\u0087\u000c\u001a\u0015\u0010\u0000\u001a\u00020\u0003*\u00020\u00032\u0006\u0010\u0002\u001a\u00020\u0003H\u0087\u000c\u001a\r\u0010\u0004\u001a\u00020\u0001*\u00020\u0001H\u0087\u0008\u001a\r\u0010\u0004\u001a\u00020\u0003*\u00020\u0003H\u0087\u0008\u001a\u0015\u0010\u0005\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\u0087\u000c\u001a\u0015\u0010\u0005\u001a\u00020\u0003*\u00020\u00032\u0006\u0010\u0002\u001a\u00020\u0003H\u0087\u000c\u001a\u0015\u0010\u0006\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\u0087\u000c\u001a\u0015\u0010\u0006\u001a\u00020\u0003*\u00020\u00032\u0006\u0010\u0002\u001a\u00020\u0003H\u0087\u000c\u00a8\u0006\u0007"
    }
    d2 = {
        "and",
        "",
        "other",
        "",
        "inv",
        "or",
        "xor",
        "kotlin-stdlib"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0xa
    }
.end annotation


# direct methods
.method private static final and(BB)B
    .locals 5
    .annotation build Lkotlin/SinceKotlin;
        version = "1.1"
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .prologue
    .line 11
    move v0, p0

    move v1, p1

    move v3, v0

    move v4, v1

    and-int/2addr v3, v4

    int-to-byte v3, v3

    move v0, v3

    return v0
.end method

.method private static final and(SS)S
    .locals 5
    .annotation build Lkotlin/SinceKotlin;
        version = "1.1"
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .prologue
    .line 32
    move v0, p0

    move v1, p1

    move v3, v0

    move v4, v1

    and-int/2addr v3, v4

    int-to-short v3, v3

    move v0, v3

    return v0
.end method

.method private static final inv(B)B
    .locals 4
    .annotation build Lkotlin/SinceKotlin;
        version = "1.1"
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .prologue
    .line 26
    move v0, p0

    move v2, v0

    const/4 v3, -0x1

    xor-int/lit8 v2, v2, -0x1

    int-to-byte v2, v2

    move v0, v2

    return v0
.end method

.method private static final inv(S)S
    .locals 4
    .annotation build Lkotlin/SinceKotlin;
        version = "1.1"
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .prologue
    .line 47
    move v0, p0

    move v2, v0

    const/4 v3, -0x1

    xor-int/lit8 v2, v2, -0x1

    int-to-short v2, v2

    move v0, v2

    return v0
.end method

.method private static final or(BB)B
    .locals 5
    .annotation build Lkotlin/SinceKotlin;
        version = "1.1"
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .prologue
    .line 16
    move v0, p0

    move v1, p1

    move v3, v0

    move v4, v1

    or-int/2addr v3, v4

    int-to-byte v3, v3

    move v0, v3

    return v0
.end method

.method private static final or(SS)S
    .locals 5
    .annotation build Lkotlin/SinceKotlin;
        version = "1.1"
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .prologue
    .line 37
    move v0, p0

    move v1, p1

    move v3, v0

    move v4, v1

    or-int/2addr v3, v4

    int-to-short v3, v3

    move v0, v3

    return v0
.end method

.method private static final xor(BB)B
    .locals 5
    .annotation build Lkotlin/SinceKotlin;
        version = "1.1"
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .prologue
    .line 21
    move v0, p0

    move v1, p1

    move v3, v0

    move v4, v1

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    move v0, v3

    return v0
.end method

.method private static final xor(SS)S
    .locals 5
    .annotation build Lkotlin/SinceKotlin;
        version = "1.1"
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .prologue
    .line 42
    move v0, p0

    move v1, p1

    move v3, v0

    move v4, v1

    xor-int/2addr v3, v4

    int-to-short v3, v3

    move v0, v3

    return v0
.end method
