.class Lkotlin/text/StringsKt__StringBuilderKt;
.super Lkotlin/text/StringsKt__StringBuilderJVMKt;
.source "StringBuilder.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000B\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\r\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0007\u001a.\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u001b\u0010\u0004\u001a\u0017\u0012\u0008\u0012\u00060\u0006j\u0002`\u0007\u0012\u0004\u0012\u00020\u00080\u0005\u00a2\u0006\u0002\u0008\tH\u0087\u0008\u001a&\u0010\u0000\u001a\u00020\u00012\u001b\u0010\u0004\u001a\u0017\u0012\u0008\u0012\u00060\u0006j\u0002`\u0007\u0012\u0004\u0012\u00020\u00080\u0005\u00a2\u0006\u0002\u0008\tH\u0087\u0008\u001a5\u0010\n\u001a\u0002H\u000b\"\u000c\u0008\u0000\u0010\u000b*\u00060\u000cj\u0002`\r*\u0002H\u000b2\u0016\u0010\u000e\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010\u00100\u000f\"\u0004\u0018\u00010\u0010\u00a2\u0006\u0002\u0010\u0011\u001a/\u0010\n\u001a\u00060\u0006j\u0002`\u0007*\u00060\u0006j\u0002`\u00072\u0016\u0010\u000e\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010\u00120\u000f\"\u0004\u0018\u00010\u0012\u00a2\u0006\u0002\u0010\u0013\u001a/\u0010\n\u001a\u00060\u0006j\u0002`\u0007*\u00060\u0006j\u0002`\u00072\u0016\u0010\u000e\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010\u00010\u000f\"\u0004\u0018\u00010\u0001\u00a2\u0006\u0002\u0010\u0014\u001a9\u0010\u0015\u001a\u00020\u0008\"\u0004\u0008\u0000\u0010\u000b*\u00060\u000cj\u0002`\r2\u0006\u0010\u0016\u001a\u0002H\u000b2\u0014\u0010\u0017\u001a\u0010\u0012\u0004\u0012\u0002H\u000b\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u0005H\u0000\u00a2\u0006\u0002\u0010\u0018\u00a8\u0006\u0019"
    }
    d2 = {
        "buildString",
        "",
        "capacity",
        "",
        "builderAction",
        "Lkotlin/Function1;",
        "Ljava/lang/StringBuilder;",
        "Lkotlin/text/StringBuilder;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "append",
        "T",
        "Ljava/lang/Appendable;",
        "Lkotlin/text/Appendable;",
        "value",
        "",
        "",
        "(Ljava/lang/Appendable;[Ljava/lang/CharSequence;)Ljava/lang/Appendable;",
        "",
        "(Ljava/lang/StringBuilder;[Ljava/lang/Object;)Ljava/lang/StringBuilder;",
        "(Ljava/lang/StringBuilder;[Ljava/lang/String;)Ljava/lang/StringBuilder;",
        "appendElement",
        "element",
        "transform",
        "(Ljava/lang/Appendable;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V",
        "kotlin-stdlib"
    }
    k = 0x5
    mv = {
        0x1,
        0x1,
        0xa
    }
    xi = 0x1
    xs = "kotlin/text/StringsKt"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lkotlin/text/StringsKt__StringBuilderJVMKt;-><init>()V

    return-void
.end method

.method public static final varargs append(Ljava/lang/Appendable;[Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 7
    .param p0    # Ljava/lang/Appendable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # [Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Appendable;",
            ">(TT;[",
            "Ljava/lang/CharSequence;",
            ")TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v5, v0

    const-string v6, "$receiver"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v5, v1

    const-string v6, "value"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    move-object v5, v1

    array-length v5, v5

    move v4, v5

    const/4 v5, 0x0

    move v3, v5

    :goto_0
    move v5, v3

    move v6, v4

    if-ge v5, v6, :cond_0

    move-object v5, v1

    move v6, v3

    aget-object v5, v5, v6

    move-object v2, v5

    .line 33
    move-object v5, v0

    move-object v6, v2

    invoke-interface {v5, v6}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v5

    .line 32
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 34
    :cond_0
    move-object v5, v0

    move-object v0, v5

    return-object v0
.end method

.method public static final varargs append(Ljava/lang/StringBuilder;[Ljava/lang/Object;)Ljava/lang/StringBuilder;
    .locals 7
    .param p0    # Ljava/lang/StringBuilder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v5, v0

    const-string v6, "$receiver"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v5, v1

    const-string v6, "value"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    move-object v5, v1

    array-length v5, v5

    move v4, v5

    const/4 v5, 0x0

    move v3, v5

    :goto_0
    move v5, v3

    move v6, v4

    if-ge v5, v6, :cond_0

    move-object v5, v1

    move v6, v3

    aget-object v5, v5, v6

    move-object v2, v5

    .line 51
    move-object v5, v0

    move-object v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 50
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 52
    :cond_0
    move-object v5, v0

    move-object v0, v5

    return-object v0
.end method

.method public static final varargs append(Ljava/lang/StringBuilder;[Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 7
    .param p0    # Ljava/lang/StringBuilder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # [Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v5, v0

    const-string v6, "$receiver"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v5, v1

    const-string v6, "value"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    move-object v5, v1

    array-length v5, v5

    move v4, v5

    const/4 v5, 0x0

    move v3, v5

    :goto_0
    move v5, v3

    move v6, v4

    if-ge v5, v6, :cond_0

    move-object v5, v1

    move v6, v3

    aget-object v5, v5, v6

    move-object v2, v5

    .line 42
    move-object v5, v0

    move-object v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 41
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 43
    :cond_0
    move-object v5, v0

    move-object v0, v5

    return-object v0
.end method

.method public static final appendElement(Ljava/lang/Appendable;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V
    .locals 7
    .param p0    # Ljava/lang/Appendable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Appendable;",
            "TT;",
            "Lkotlin/jvm/functions/Function1",
            "<-TT;+",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    const-string v4, "$receiver"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    move-object v3, v2

    if-eqz v3, :cond_0

    move-object v3, v0

    move-object v4, v2

    move-object v5, v1

    invoke-interface {v4, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-interface {v3, v4}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v3

    .line 62
    :goto_0
    return-void

    .line 59
    :cond_0
    move-object v3, v1

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    if-eqz v4, :cond_1

    instance-of v3, v3, Ljava/lang/CharSequence;

    :goto_1
    if-eqz v3, :cond_2

    move-object v3, v0

    move-object v4, v1

    check-cast v4, Ljava/lang/CharSequence;

    invoke-interface {v3, v4}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    goto :goto_1

    .line 60
    :cond_2
    move-object v3, v1

    instance-of v3, v3, Ljava/lang/Character;

    if-eqz v3, :cond_3

    move-object v3, v0

    move-object v4, v1

    check-cast v4, Ljava/lang/Character;

    invoke-virtual {v4}, Ljava/lang/Character;->charValue()C

    move-result v4

    invoke-interface {v3, v4}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    move-result-object v3

    goto :goto_0

    .line 61
    :cond_3
    move-object v3, v0

    move-object v4, v1

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-interface {v3, v4}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v3

    goto :goto_0
.end method

.method private static final buildString(ILkotlin/jvm/functions/Function1;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/jvm/functions/Function1",
            "<-",
            "Ljava/lang/StringBuilder;",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation build Lkotlin/SinceKotlin;
        version = "1.1"
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .prologue
    .line 26
    move v0, p0

    move-object v1, p1

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move v6, v0

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v3, v4

    move-object v4, v1

    move-object v5, v3

    invoke-interface {v4, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v4, v3

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string v6, "StringBuilder(capacity).\u2026builderAction).toString()"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v4

    return-object v0
.end method

.method private static final buildString(Lkotlin/jvm/functions/Function1;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1",
            "<-",
            "Ljava/lang/StringBuilder;",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .prologue
    .line 17
    move-object v0, p0

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v3

    move-object v3, v0

    move-object v4, v2

    invoke-interface {v3, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v3, v2

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "StringBuilder().apply(builderAction).toString()"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v3

    return-object v0
.end method
