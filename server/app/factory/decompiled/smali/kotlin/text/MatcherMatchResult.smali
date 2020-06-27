.class final Lkotlin/text/MatcherMatchResult;
.super Ljava/lang/Object;
.source "Regex.kt"

# interfaces
.implements Lkotlin/text/MatchResult;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\r\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0002\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\n\u0010\u001b\u001a\u0004\u0018\u00010\u0001H\u0016R\u001a\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00088VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000bR\u0016\u0010\u000c\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\u00020\u000eX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0011\u001a\n \u0013*\u0004\u0018\u00010\u00120\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0014\u001a\u00020\u00158VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0016\u0010\u0017R\u0014\u0010\u0018\u001a\u00020\t8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0019\u0010\u001a\u00a8\u0006\u001c"
    }
    d2 = {
        "Lkotlin/text/MatcherMatchResult;",
        "Lkotlin/text/MatchResult;",
        "matcher",
        "Ljava/util/regex/Matcher;",
        "input",
        "",
        "(Ljava/util/regex/Matcher;Ljava/lang/CharSequence;)V",
        "groupValues",
        "",
        "",
        "getGroupValues",
        "()Ljava/util/List;",
        "groupValues_",
        "groups",
        "Lkotlin/text/MatchGroupCollection;",
        "getGroups",
        "()Lkotlin/text/MatchGroupCollection;",
        "matchResult",
        "Ljava/util/regex/MatchResult;",
        "kotlin.jvm.PlatformType",
        "range",
        "Lkotlin/ranges/IntRange;",
        "getRange",
        "()Lkotlin/ranges/IntRange;",
        "value",
        "getValue",
        "()Ljava/lang/String;",
        "next",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xa
    }
.end annotation


# instance fields
.field private groupValues_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final groups:Lkotlin/text/MatchGroupCollection;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final input:Ljava/lang/CharSequence;

.field private final matchResult:Ljava/util/regex/MatchResult;

.field private final matcher:Ljava/util/regex/Matcher;


# direct methods
.method public constructor <init>(Ljava/util/regex/Matcher;Ljava/lang/CharSequence;)V
    .locals 8
    .param p1    # Ljava/util/regex/Matcher;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v1

    const-string v4, "matcher"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v2

    const-string v4, "input"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 238
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lkotlin/text/MatcherMatchResult;->matcher:Ljava/util/regex/Matcher;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lkotlin/text/MatcherMatchResult;->input:Ljava/lang/CharSequence;

    .line 239
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lkotlin/text/MatcherMatchResult;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->toMatchResult()Ljava/util/regex/MatchResult;

    move-result-object v4

    iput-object v4, v3, Lkotlin/text/MatcherMatchResult;->matchResult:Ljava/util/regex/MatchResult;

    .line 245
    move-object v3, v0

    new-instance v4, Lkotlin/text/MatcherMatchResult$groups$1;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-direct {v5, v6}, Lkotlin/text/MatcherMatchResult$groups$1;-><init>(Lkotlin/text/MatcherMatchResult;)V

    check-cast v4, Lkotlin/text/MatchGroupCollection;

    iput-object v4, v3, Lkotlin/text/MatcherMatchResult;->groups:Lkotlin/text/MatchGroupCollection;

    return-void
.end method

.method public static final synthetic access$getMatchResult$p(Lkotlin/text/MatcherMatchResult;)Ljava/util/regex/MatchResult;
    .locals 2

    .prologue
    .line 238
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lkotlin/text/MatcherMatchResult;->matchResult:Ljava/util/regex/MatchResult;

    move-object v0, v1

    return-object v0
.end method


# virtual methods
.method public getDestructured()Lkotlin/text/MatchResult$Destructured;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 238
    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Lkotlin/text/MatchResult$DefaultImpls;->getDestructured(Lkotlin/text/MatchResult;)Lkotlin/text/MatchResult$Destructured;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getGroupValues()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 267
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lkotlin/text/MatcherMatchResult;->groupValues_:Ljava/util/List;

    if-nez v1, :cond_0

    .line 268
    move-object v1, v0

    new-instance v2, Lkotlin/text/MatcherMatchResult$groupValues$1;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Lkotlin/text/MatcherMatchResult$groupValues$1;-><init>(Lkotlin/text/MatcherMatchResult;)V

    check-cast v2, Ljava/util/List;

    iput-object v2, v1, Lkotlin/text/MatcherMatchResult;->groupValues_:Ljava/util/List;

    .line 273
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lkotlin/text/MatcherMatchResult;->groupValues_:Ljava/util/List;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    if-nez v2, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    move-object v0, v1

    return-object v0
.end method

.method public getGroups()Lkotlin/text/MatchGroupCollection;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 245
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lkotlin/text/MatcherMatchResult;->groups:Lkotlin/text/MatchGroupCollection;

    move-object v0, v1

    return-object v0
.end method

.method public getRange()Lkotlin/ranges/IntRange;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 241
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lkotlin/text/MatcherMatchResult;->matchResult:Ljava/util/regex/MatchResult;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "matchResult"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/text/RegexKt;->access$range(Ljava/util/regex/MatchResult;)Lkotlin/ranges/IntRange;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 243
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lkotlin/text/MatcherMatchResult;->matchResult:Ljava/util/regex/MatchResult;

    invoke-interface {v1}, Ljava/util/regex/MatchResult;->group()Ljava/lang/String;

    move-result-object v1

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "matchResult.group()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v1

    return-object v0
.end method

.method public next()Lkotlin/text/MatchResult;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 277
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lkotlin/text/MatcherMatchResult;->matchResult:Ljava/util/regex/MatchResult;

    invoke-interface {v2}, Ljava/util/regex/MatchResult;->end()I

    move-result v2

    move-object v3, v0

    iget-object v3, v3, Lkotlin/text/MatcherMatchResult;->matchResult:Ljava/util/regex/MatchResult;

    invoke-interface {v3}, Ljava/util/regex/MatchResult;->end()I

    move-result v3

    move-object v4, v0

    iget-object v4, v4, Lkotlin/text/MatcherMatchResult;->matchResult:Ljava/util/regex/MatchResult;

    invoke-interface {v4}, Ljava/util/regex/MatchResult;->start()I

    move-result v4

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    :goto_0
    add-int/2addr v2, v3

    move v1, v2

    .line 278
    move v2, v1

    move-object v3, v0

    iget-object v3, v3, Lkotlin/text/MatcherMatchResult;->input:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-gt v2, v3, :cond_1

    move-object v2, v0

    iget-object v2, v2, Lkotlin/text/MatcherMatchResult;->matcher:Ljava/util/regex/Matcher;

    move v3, v1

    move-object v4, v0

    iget-object v4, v4, Lkotlin/text/MatcherMatchResult;->input:Ljava/lang/CharSequence;

    invoke-static {v2, v3, v4}, Lkotlin/text/RegexKt;->access$findNext(Ljava/util/regex/Matcher;ILjava/lang/CharSequence;)Lkotlin/text/MatchResult;

    move-result-object v2

    :goto_1
    move-object v0, v2

    return-object v0

    .line 277
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 278
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method
