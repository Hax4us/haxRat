.class Lkotlin/MathKt__BigDecimalsKt;
.super Ljava/lang/Object;
.source "BigDecimals.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000$\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u0006\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\u0010\u0008\n\u0002\u0010\t\n\u0002\u0008\u0002\u001a\r\u0010\u0000\u001a\u00020\u0001*\u00020\u0001H\u0087\n\u001a\u0015\u0010\u0002\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0001H\u0087\n\u001a\r\u0010\u0004\u001a\u00020\u0001*\u00020\u0001H\u0087\n\u001a\u0015\u0010\u0005\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0001H\u0087\n\u001a\u0015\u0010\u0006\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0001H\u0087\n\u001a\u0015\u0010\u0007\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0001H\u0087\n\u001a\u0015\u0010\u0008\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0001H\u0087\n\u001a\u0015\u0010\t\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0001H\u0087\n\u001a\r\u0010\n\u001a\u00020\u0001*\u00020\u000bH\u0087\u0008\u001a\u0015\u0010\n\u001a\u00020\u0001*\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0087\u0008\u001a\r\u0010\n\u001a\u00020\u0001*\u00020\u000eH\u0087\u0008\u001a\u0015\u0010\n\u001a\u00020\u0001*\u00020\u000e2\u0006\u0010\u000c\u001a\u00020\rH\u0087\u0008\u001a\r\u0010\n\u001a\u00020\u0001*\u00020\u000fH\u0087\u0008\u001a\u0015\u0010\n\u001a\u00020\u0001*\u00020\u000f2\u0006\u0010\u000c\u001a\u00020\rH\u0087\u0008\u001a\r\u0010\n\u001a\u00020\u0001*\u00020\u0010H\u0087\u0008\u001a\u0015\u0010\n\u001a\u00020\u0001*\u00020\u00102\u0006\u0010\u000c\u001a\u00020\rH\u0087\u0008\u001a\r\u0010\u0011\u001a\u00020\u0001*\u00020\u0001H\u0087\n\u00a8\u0006\u0012"
    }
    d2 = {
        "dec",
        "Ljava/math/BigDecimal;",
        "div",
        "other",
        "inc",
        "minus",
        "mod",
        "plus",
        "rem",
        "times",
        "toBigDecimal",
        "",
        "mathContext",
        "Ljava/math/MathContext;",
        "",
        "",
        "",
        "unaryMinus",
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

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final dec(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;
    .locals 6
    .param p0    # Ljava/math/BigDecimal;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/SinceKotlin;
        version = "1.2"
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v2, v0

    const-string v3, "$receiver"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    move-object v2, v0

    sget-object v3, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    invoke-virtual {v2, v3}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v2

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "this.subtract(BigDecimal.ONE)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v2

    return-object v0
.end method

.method private static final div(Ljava/math/BigDecimal;Ljava/math/BigDecimal;)Ljava/math/BigDecimal;
    .locals 7
    .param p0    # Ljava/math/BigDecimal;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    const-string v4, "$receiver"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    move-object v3, v0

    move-object v4, v1

    sget-object v5, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    invoke-virtual {v3, v4, v5}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;Ljava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v3

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "this.divide(other, RoundingMode.HALF_EVEN)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v3

    return-object v0
.end method

.method private static final inc(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;
    .locals 6
    .param p0    # Ljava/math/BigDecimal;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/SinceKotlin;
        version = "1.2"
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v2, v0

    const-string v3, "$receiver"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    move-object v2, v0

    sget-object v3, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    invoke-virtual {v2, v3}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v2

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "this.add(BigDecimal.ONE)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v2

    return-object v0
.end method

.method private static final minus(Ljava/math/BigDecimal;Ljava/math/BigDecimal;)Ljava/math/BigDecimal;
    .locals 7
    .param p0    # Ljava/math/BigDecimal;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    const-string v4, "$receiver"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v3

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "this.subtract(other)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v3

    return-object v0
.end method

.method private static final mod(Ljava/math/BigDecimal;Ljava/math/BigDecimal;)Ljava/math/BigDecimal;
    .locals 7
    .param p0    # Ljava/math/BigDecimal;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->WARNING:Lkotlin/DeprecationLevel;
        message = "Use rem(other) instead"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "rem(other)"
            imports = {}
        .end subannotation
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    const-string v4, "$receiver"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/math/BigDecimal;->remainder(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v3

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "this.remainder(other)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v3

    return-object v0
.end method

.method private static final plus(Ljava/math/BigDecimal;Ljava/math/BigDecimal;)Ljava/math/BigDecimal;
    .locals 7
    .param p0    # Ljava/math/BigDecimal;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    const-string v4, "$receiver"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v3

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "this.add(other)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v3

    return-object v0
.end method

.method private static final rem(Ljava/math/BigDecimal;Ljava/math/BigDecimal;)Ljava/math/BigDecimal;
    .locals 7
    .param p0    # Ljava/math/BigDecimal;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    const-string v4, "$receiver"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/math/BigDecimal;->remainder(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v3

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "this.remainder(other)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v3

    return-object v0
.end method

.method private static final times(Ljava/math/BigDecimal;Ljava/math/BigDecimal;)Ljava/math/BigDecimal;
    .locals 7
    .param p0    # Ljava/math/BigDecimal;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    const-string v4, "$receiver"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v3

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "this.multiply(other)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v3

    return-object v0
.end method

.method private static final toBigDecimal(D)Ljava/math/BigDecimal;
    .locals 8
    .annotation build Lkotlin/SinceKotlin;
        version = "1.2"
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .prologue
    .line 134
    move-wide v0, p0

    new-instance v3, Ljava/math/BigDecimal;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-wide v5, v0

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    return-object v0
.end method

.method private static final toBigDecimal(DLjava/math/MathContext;)Ljava/math/BigDecimal;
    .locals 9
    .annotation build Lkotlin/SinceKotlin;
        version = "1.2"
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .prologue
    .line 145
    move-wide v0, p0

    move-object v2, p2

    new-instance v4, Ljava/math/BigDecimal;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-wide v6, v0

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v6

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;Ljava/math/MathContext;)V

    move-object v0, v4

    return-object v0
.end method

.method private static final toBigDecimal(F)Ljava/math/BigDecimal;
    .locals 6
    .annotation build Lkotlin/SinceKotlin;
        version = "1.2"
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .prologue
    .line 114
    move v0, p0

    new-instance v2, Ljava/math/BigDecimal;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move v4, v0

    invoke-static {v4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    return-object v0
.end method

.method private static final toBigDecimal(FLjava/math/MathContext;)Ljava/math/BigDecimal;
    .locals 8
    .annotation build Lkotlin/SinceKotlin;
        version = "1.2"
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .prologue
    .line 125
    move v0, p0

    move-object v1, p1

    new-instance v3, Ljava/math/BigDecimal;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move v5, v0

    invoke-static {v5}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v5

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;Ljava/math/MathContext;)V

    move-object v0, v3

    return-object v0
.end method

.method private static final toBigDecimal(I)Ljava/math/BigDecimal;
    .locals 6
    .annotation build Lkotlin/SinceKotlin;
        version = "1.2"
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .prologue
    .line 80
    move v0, p0

    move v2, v0

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v2

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "BigDecimal.valueOf(this.toLong())"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v2

    return-object v0
.end method

.method private static final toBigDecimal(ILjava/math/MathContext;)Ljava/math/BigDecimal;
    .locals 8
    .annotation build Lkotlin/SinceKotlin;
        version = "1.2"
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .prologue
    .line 89
    move v0, p0

    move-object v1, p1

    new-instance v3, Ljava/math/BigDecimal;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move v5, v0

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Ljava/math/BigDecimal;-><init>(ILjava/math/MathContext;)V

    move-object v0, v3

    return-object v0
.end method

.method private static final toBigDecimal(J)Ljava/math/BigDecimal;
    .locals 7
    .annotation build Lkotlin/SinceKotlin;
        version = "1.2"
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .prologue
    .line 96
    move-wide v0, p0

    move-wide v3, v0

    invoke-static {v3, v4}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v3

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "BigDecimal.valueOf(this)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v3

    return-object v0
.end method

.method private static final toBigDecimal(JLjava/math/MathContext;)Ljava/math/BigDecimal;
    .locals 10
    .annotation build Lkotlin/SinceKotlin;
        version = "1.2"
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .prologue
    .line 104
    move-wide v0, p0

    move-object v2, p2

    new-instance v4, Ljava/math/BigDecimal;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-wide v6, v0

    move-object v8, v2

    invoke-direct {v5, v6, v7, v8}, Ljava/math/BigDecimal;-><init>(JLjava/math/MathContext;)V

    move-object v0, v4

    return-object v0
.end method

.method private static final unaryMinus(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;
    .locals 6
    .param p0    # Ljava/math/BigDecimal;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v2, v0

    const-string v3, "$receiver"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    move-object v2, v0

    invoke-virtual {v2}, Ljava/math/BigDecimal;->negate()Ljava/math/BigDecimal;

    move-result-object v2

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "this.negate()"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v2

    return-object v0
.end method
