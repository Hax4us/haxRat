.class public final Lkotlin/text/MatcherMatchResult$groups$1;
.super Lkotlin/collections/AbstractCollection;
.source "Regex.kt"

# interfaces
.implements Lkotlin/text/MatchNamedGroupCollection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/text/MatcherMatchResult;-><init>(Ljava/util/regex/Matcher;Ljava/lang/CharSequence;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/collections/AbstractCollection",
        "<",
        "Lkotlin/text/MatchGroup;",
        ">;",
        "Lkotlin/text/MatchNamedGroupCollection;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000/\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010(\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u00012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0002B\u0005\u00a2\u0006\u0002\u0010\u0004J\u0013\u0010\t\u001a\u0004\u0018\u00010\u00032\u0006\u0010\n\u001a\u00020\u0006H\u0096\u0002J\u0013\u0010\t\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u000b\u001a\u00020\u000cH\u0096\u0002J\u0008\u0010\r\u001a\u00020\u000eH\u0016J\u0011\u0010\u000f\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0010H\u0096\u0002R\u0014\u0010\u0005\u001a\u00020\u00068VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u0011"
    }
    d2 = {
        "kotlin/text/MatcherMatchResult$groups$1",
        "Lkotlin/text/MatchNamedGroupCollection;",
        "Lkotlin/collections/AbstractCollection;",
        "Lkotlin/text/MatchGroup;",
        "(Lkotlin/text/MatcherMatchResult;)V",
        "size",
        "",
        "getSize",
        "()I",
        "get",
        "index",
        "name",
        "",
        "isEmpty",
        "",
        "iterator",
        "",
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
.field final synthetic this$0:Lkotlin/text/MatcherMatchResult;


# direct methods
.method constructor <init>(Lkotlin/text/MatcherMatchResult;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 245
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lkotlin/text/MatcherMatchResult$groups$1;->this$0:Lkotlin/text/MatcherMatchResult;

    move-object v2, v0

    invoke-direct {v2}, Lkotlin/collections/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge contains(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 245
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    if-eqz v3, :cond_0

    instance-of v2, v2, Lkotlin/text/MatchGroup;

    :goto_0
    if-eqz v2, :cond_1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Lkotlin/text/MatchGroup;

    invoke-virtual {v2, v3}, Lkotlin/text/MatcherMatchResult$groups$1;->contains(Lkotlin/text/MatchGroup;)Z

    move-result v2

    move v0, v2

    :goto_1
    return v0

    :cond_0
    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    move v0, v2

    goto :goto_1
.end method

.method public bridge contains(Lkotlin/text/MatchGroup;)Z
    .locals 4

    .prologue
    .line 245
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lkotlin/collections/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method public get(I)Lkotlin/text/MatchGroup;
    .locals 9
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 251
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    iget-object v3, v3, Lkotlin/text/MatcherMatchResult$groups$1;->this$0:Lkotlin/text/MatcherMatchResult;

    invoke-static {v3}, Lkotlin/text/MatcherMatchResult;->access$getMatchResult$p(Lkotlin/text/MatcherMatchResult;)Ljava/util/regex/MatchResult;

    move-result-object v3

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const-string v5, "matchResult"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move v4, v1

    invoke-static {v3, v4}, Lkotlin/text/RegexKt;->access$range(Ljava/util/regex/MatchResult;I)Lkotlin/ranges/IntRange;

    move-result-object v3

    move-object v2, v3

    .line 252
    move-object v3, v2

    invoke-virtual {v3}, Lkotlin/ranges/IntRange;->getStart()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ltz v3, :cond_0

    .line 253
    new-instance v3, Lkotlin/text/MatchGroup;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    iget-object v5, v5, Lkotlin/text/MatcherMatchResult$groups$1;->this$0:Lkotlin/text/MatcherMatchResult;

    invoke-static {v5}, Lkotlin/text/MatcherMatchResult;->access$getMatchResult$p(Lkotlin/text/MatcherMatchResult;)Ljava/util/regex/MatchResult;

    move-result-object v5

    move v6, v1

    invoke-interface {v5, v6}, Ljava/util/regex/MatchResult;->group(I)Ljava/lang/String;

    move-result-object v5

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const-string v7, "matchResult.group(index)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Lkotlin/text/MatchGroup;-><init>(Ljava/lang/String;Lkotlin/ranges/IntRange;)V

    .line 252
    :goto_0
    move-object v0, v3

    return-object v0

    .line 255
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public get(Ljava/lang/String;)Lkotlin/text/MatchGroup;
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    const-string v3, "name"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 259
    sget-object v2, Lkotlin/internal/PlatformImplementationsKt;->IMPLEMENTATIONS:Lkotlin/internal/PlatformImplementations;

    move-object v3, v0

    iget-object v3, v3, Lkotlin/text/MatcherMatchResult$groups$1;->this$0:Lkotlin/text/MatcherMatchResult;

    invoke-static {v3}, Lkotlin/text/MatcherMatchResult;->access$getMatchResult$p(Lkotlin/text/MatcherMatchResult;)Ljava/util/regex/MatchResult;

    move-result-object v3

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "matchResult"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lkotlin/internal/PlatformImplementations;->getMatchResultNamedGroup(Ljava/util/regex/MatchResult;Ljava/lang/String;)Lkotlin/text/MatchGroup;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public getSize()I
    .locals 3

    .prologue
    .line 246
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lkotlin/text/MatcherMatchResult$groups$1;->this$0:Lkotlin/text/MatcherMatchResult;

    invoke-static {v1}, Lkotlin/text/MatcherMatchResult;->access$getMatchResult$p(Lkotlin/text/MatcherMatchResult;)Ljava/util/regex/MatchResult;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/regex/MatchResult;->groupCount()I

    move-result v1

    const/4 v2, 0x1

    add-int/lit8 v1, v1, 0x1

    move v0, v1

    return v0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 247
    move-object v0, p0

    const/4 v1, 0x0

    move v0, v1

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lkotlin/text/MatchGroup;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 249
    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->getIndices(Ljava/util/Collection;)Lkotlin/ranges/IntRange;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->asSequence(Ljava/lang/Iterable;)Lkotlin/sequences/Sequence;

    move-result-object v1

    new-instance v2, Lkotlin/text/MatcherMatchResult$groups$1$iterator$1;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Lkotlin/text/MatcherMatchResult$groups$1$iterator$1;-><init>(Lkotlin/text/MatcherMatchResult$groups$1;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-static {v1, v2}, Lkotlin/sequences/SequencesKt;->map(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v1

    invoke-interface {v1}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method
