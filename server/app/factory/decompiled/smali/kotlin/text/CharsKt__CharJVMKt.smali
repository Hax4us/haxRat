.class Lkotlin/text/CharsKt__CharJVMKt;
.super Ljava/lang/Object;
.source "CharJVM.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000&\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000c\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0011\u001a\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\nH\u0001\u001a\u0018\u0010\u000c\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\nH\u0000\u001a\r\u0010\u000e\u001a\u00020\u000f*\u00020\u0002H\u0087\u0008\u001a\r\u0010\u0010\u001a\u00020\u000f*\u00020\u0002H\u0087\u0008\u001a\r\u0010\u0011\u001a\u00020\u000f*\u00020\u0002H\u0087\u0008\u001a\r\u0010\u0012\u001a\u00020\u000f*\u00020\u0002H\u0087\u0008\u001a\r\u0010\u0013\u001a\u00020\u000f*\u00020\u0002H\u0087\u0008\u001a\r\u0010\u0014\u001a\u00020\u000f*\u00020\u0002H\u0087\u0008\u001a\r\u0010\u0015\u001a\u00020\u000f*\u00020\u0002H\u0087\u0008\u001a\r\u0010\u0016\u001a\u00020\u000f*\u00020\u0002H\u0087\u0008\u001a\r\u0010\u0017\u001a\u00020\u000f*\u00020\u0002H\u0087\u0008\u001a\r\u0010\u0018\u001a\u00020\u000f*\u00020\u0002H\u0087\u0008\u001a\r\u0010\u0019\u001a\u00020\u000f*\u00020\u0002H\u0087\u0008\u001a\r\u0010\u001a\u001a\u00020\u000f*\u00020\u0002H\u0087\u0008\u001a\r\u0010\u001b\u001a\u00020\u000f*\u00020\u0002H\u0087\u0008\u001a\n\u0010\u001c\u001a\u00020\u000f*\u00020\u0002\u001a\r\u0010\u001d\u001a\u00020\u0002*\u00020\u0002H\u0087\u0008\u001a\r\u0010\u001e\u001a\u00020\u0002*\u00020\u0002H\u0087\u0008\u001a\r\u0010\u001f\u001a\u00020\u0002*\u00020\u0002H\u0087\u0008\"\u0015\u0010\u0000\u001a\u00020\u0001*\u00020\u00028F\u00a2\u0006\u0006\u001a\u0004\u0008\u0003\u0010\u0004\"\u0015\u0010\u0005\u001a\u00020\u0006*\u00020\u00028F\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006 "
    }
    d2 = {
        "category",
        "Lkotlin/text/CharCategory;",
        "",
        "getCategory",
        "(C)Lkotlin/text/CharCategory;",
        "directionality",
        "Lkotlin/text/CharDirectionality;",
        "getDirectionality",
        "(C)Lkotlin/text/CharDirectionality;",
        "checkRadix",
        "",
        "radix",
        "digitOf",
        "char",
        "isDefined",
        "",
        "isDigit",
        "isHighSurrogate",
        "isISOControl",
        "isIdentifierIgnorable",
        "isJavaIdentifierPart",
        "isJavaIdentifierStart",
        "isLetter",
        "isLetterOrDigit",
        "isLowSurrogate",
        "isLowerCase",
        "isTitleCase",
        "isUpperCase",
        "isWhitespace",
        "toLowerCase",
        "toTitleCase",
        "toUpperCase",
        "kotlin-stdlib"
    }
    k = 0x5
    mv = {
        0x1,
        0x1,
        0xa
    }
    xi = 0x1
    xs = "kotlin/text/CharsKt"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final checkRadix(I)I
    .locals 10
    .annotation build Lkotlin/PublishedApi;
    .end annotation

    .prologue
    .line 144
    move v0, p0

    const/16 v2, 0x24

    const/4 v3, 0x2

    move v4, v0

    move v1, v4

    move v4, v1

    if-gt v3, v4, :cond_0

    move v3, v1

    if-ge v2, v3, :cond_1

    .line 145
    :goto_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v9, v2

    move-object v2, v9

    move-object v3, v9

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "radix "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " was not in valid range "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x2

    move v1, v5

    new-instance v5, Lkotlin/ranges/IntRange;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move v7, v1

    const/16 v8, 0x24

    invoke-direct {v6, v7, v8}, Lkotlin/ranges/IntRange;-><init>(II)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2

    :cond_0
    goto :goto_0

    .line 147
    :cond_1
    move v2, v0

    move v0, v2

    return v0
.end method

.method public static final digitOf(CI)I
    .locals 4

    .prologue
    .line 137
    move v0, p0

    move v1, p1

    move v2, v0

    move v3, v1

    invoke-static {v2, v3}, Ljava/lang/Character;->digit(II)I

    move-result v2

    move v0, v2

    return v0
.end method

.method public static final getCategory(C)Lkotlin/text/CharCategory;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 110
    move v0, p0

    sget-object v1, Lkotlin/text/CharCategory;->Companion:Lkotlin/text/CharCategory$Companion;

    move v2, v0

    invoke-static {v2}, Ljava/lang/Character;->getType(C)I

    move-result v2

    invoke-virtual {v1, v2}, Lkotlin/text/CharCategory$Companion;->valueOf(I)Lkotlin/text/CharCategory;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static final getDirectionality(C)Lkotlin/text/CharDirectionality;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 115
    move v0, p0

    sget-object v1, Lkotlin/text/CharDirectionality;->Companion:Lkotlin/text/CharDirectionality$Companion;

    move v2, v0

    invoke-static {v2}, Ljava/lang/Character;->getDirectionality(C)B

    move-result v2

    invoke-virtual {v1, v2}, Lkotlin/text/CharDirectionality$Companion;->valueOf(I)Lkotlin/text/CharDirectionality;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method private static final isDefined(C)Z
    .locals 3
    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .prologue
    .line 17
    move v0, p0

    move v2, v0

    invoke-static {v2}, Ljava/lang/Character;->isDefined(C)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method private static final isDigit(C)Z
    .locals 3
    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .prologue
    .line 35
    move v0, p0

    move v2, v0

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method private static final isHighSurrogate(C)Z
    .locals 3
    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .prologue
    .line 121
    move v0, p0

    move v2, v0

    invoke-static {v2}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method private static final isISOControl(C)Z
    .locals 3
    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .prologue
    .line 49
    move v0, p0

    move v2, v0

    invoke-static {v2}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method private static final isIdentifierIgnorable(C)Z
    .locals 3
    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .prologue
    .line 43
    move v0, p0

    move v2, v0

    invoke-static {v2}, Ljava/lang/Character;->isIdentifierIgnorable(C)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method private static final isJavaIdentifierPart(C)Z
    .locals 3
    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .prologue
    .line 55
    move v0, p0

    move v2, v0

    invoke-static {v2}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method private static final isJavaIdentifierStart(C)Z
    .locals 3
    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .prologue
    .line 61
    move v0, p0

    move v2, v0

    invoke-static {v2}, Ljava/lang/Character;->isJavaIdentifierStart(C)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method private static final isLetter(C)Z
    .locals 3
    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .prologue
    .line 23
    move v0, p0

    move v2, v0

    invoke-static {v2}, Ljava/lang/Character;->isLetter(C)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method private static final isLetterOrDigit(C)Z
    .locals 3
    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .prologue
    .line 29
    move v0, p0

    move v2, v0

    invoke-static {v2}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method private static final isLowSurrogate(C)Z
    .locals 3
    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .prologue
    .line 127
    move v0, p0

    move v2, v0

    invoke-static {v2}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method private static final isLowerCase(C)Z
    .locals 3
    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .prologue
    .line 79
    move v0, p0

    move v2, v0

    invoke-static {v2}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method private static final isTitleCase(C)Z
    .locals 3
    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .prologue
    .line 97
    move v0, p0

    move v2, v0

    invoke-static {v2}, Ljava/lang/Character;->isTitleCase(C)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method private static final isUpperCase(C)Z
    .locals 3
    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .prologue
    .line 73
    move v0, p0

    move v2, v0

    invoke-static {v2}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method public static final isWhitespace(C)Z
    .locals 2

    .prologue
    .line 67
    move v0, p0

    move v1, v0

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v0

    invoke-static {v1}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static final toLowerCase(C)C
    .locals 3
    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .prologue
    .line 91
    move v0, p0

    move v2, v0

    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v2

    move v0, v2

    return v0
.end method

.method private static final toTitleCase(C)C
    .locals 3
    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .prologue
    .line 105
    move v0, p0

    move v2, v0

    invoke-static {v2}, Ljava/lang/Character;->toTitleCase(C)C

    move-result v2

    move v0, v2

    return v0
.end method

.method private static final toUpperCase(C)C
    .locals 3
    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .prologue
    .line 85
    move v0, p0

    move v2, v0

    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v2

    move v0, v2

    return v0
.end method
