.class Lkotlin/text/CharsKt__CharKt;
.super Lkotlin/text/CharsKt__CharJVMKt;
.source "Char.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u000b\n\u0002\u0010\u000c\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0000\u001a\u001c\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0001\u001a\n\u0010\u0005\u001a\u00020\u0001*\u00020\u0002\u001a\u0015\u0010\u0006\u001a\u00020\u0007*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0007H\u0087\n\u00a8\u0006\u0008"
    }
    d2 = {
        "equals",
        "",
        "",
        "other",
        "ignoreCase",
        "isSurrogate",
        "plus",
        "",
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

    invoke-direct {v1}, Lkotlin/text/CharsKt__CharJVMKt;-><init>()V

    return-void
.end method

.method public static final equals(CCZ)Z
    .locals 8

    .prologue
    .line 28
    move v0, p0

    move v1, p1

    move v2, p2

    move v6, v0

    move v7, v1

    if-ne v6, v7, :cond_0

    const/4 v6, 0x1

    move v0, v6

    .line 33
    :goto_0
    return v0

    .line 29
    :cond_0
    move v6, v2

    if-nez v6, :cond_1

    const/4 v6, 0x0

    move v0, v6

    goto :goto_0

    .line 31
    :cond_1
    move v6, v0

    move v3, v6

    move v6, v3

    invoke-static {v6}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v6

    move v7, v1

    move v3, v7

    move v4, v6

    move v6, v3

    invoke-static {v6}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v6

    move v5, v6

    move v6, v4

    move v7, v5

    if-ne v6, v7, :cond_2

    const/4 v6, 0x1

    move v0, v6

    goto :goto_0

    .line 32
    :cond_2
    move v6, v0

    move v3, v6

    move v6, v3

    invoke-static {v6}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v6

    move v7, v1

    move v3, v7

    move v4, v6

    move v6, v3

    invoke-static {v6}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v6

    move v5, v6

    move v6, v4

    move v7, v5

    if-ne v6, v7, :cond_3

    const/4 v6, 0x1

    move v0, v6

    goto :goto_0

    .line 33
    :cond_3
    const/4 v6, 0x0

    move v0, v6

    goto :goto_0
.end method

.method public static bridge synthetic equals$default(CCZILjava/lang/Object;)Z
    .locals 8

    .prologue
    move v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, v3

    const/4 v6, 0x2

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_0

    .line 27
    const/4 v5, 0x0

    move v2, v5

    :cond_0
    move v5, v0

    move v6, v1

    move v7, v2

    invoke-static {v5, v6, v7}, Lkotlin/text/CharsKt;->equals(CCZ)Z

    move-result v5

    move v0, v5

    return v0
.end method

.method public static final isSurrogate(C)Z
    .locals 5

    .prologue
    .line 39
    move v0, p0

    const v2, 0xdfff

    const v3, 0xd800

    move v4, v0

    move v1, v4

    move v4, v1

    if-le v3, v4, :cond_1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move v0, v2

    return v0

    :cond_1
    move v3, v1

    if-lt v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method private static final plus(CLjava/lang/String;)Ljava/lang/String;
    .locals 6
    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .prologue
    .line 15
    move v0, p0

    move-object v1, p1

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move v4, v0

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method
