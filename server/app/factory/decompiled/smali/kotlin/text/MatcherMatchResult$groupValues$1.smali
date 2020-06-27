.class public final Lkotlin/text/MatcherMatchResult$groupValues$1;
.super Lkotlin/collections/AbstractList;
.source "Regex.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/text/MatcherMatchResult;->getGroupValues()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/collections/AbstractList",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0011\u0010\u0008\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u0005H\u0096\u0002R\u0014\u0010\u0004\u001a\u00020\u00058VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\n"
    }
    d2 = {
        "kotlin/text/MatcherMatchResult$groupValues$1",
        "Lkotlin/collections/AbstractList;",
        "",
        "(Lkotlin/text/MatcherMatchResult;)V",
        "size",
        "",
        "getSize",
        "()I",
        "get",
        "index",
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
    .line 268
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lkotlin/text/MatcherMatchResult$groupValues$1;->this$0:Lkotlin/text/MatcherMatchResult;

    move-object v2, v0

    invoke-direct {v2}, Lkotlin/collections/AbstractList;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge contains(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 268
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_0

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lkotlin/text/MatcherMatchResult$groupValues$1;->contains(Ljava/lang/String;)Z

    move-result v2

    move v0, v2

    :goto_0
    return v0

    :cond_0
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public bridge contains(Ljava/lang/String;)Z
    .locals 4

    .prologue
    .line 268
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lkotlin/collections/AbstractList;->contains(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 268
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lkotlin/text/MatcherMatchResult$groupValues$1;->get(I)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public get(I)Ljava/lang/String;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 270
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lkotlin/text/MatcherMatchResult$groupValues$1;->this$0:Lkotlin/text/MatcherMatchResult;

    invoke-static {v2}, Lkotlin/text/MatcherMatchResult;->access$getMatchResult$p(Lkotlin/text/MatcherMatchResult;)Ljava/util/regex/MatchResult;

    move-result-object v2

    move v3, v1

    invoke-interface {v2, v3}, Ljava/util/regex/MatchResult;->group(I)Ljava/lang/String;

    move-result-object v2

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    if-eqz v3, :cond_0

    :goto_0
    move-object v0, v2

    return-object v0

    :cond_0
    const-string v2, ""

    goto :goto_0
.end method

.method public getSize()I
    .locals 3

    .prologue
    .line 269
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lkotlin/text/MatcherMatchResult$groupValues$1;->this$0:Lkotlin/text/MatcherMatchResult;

    invoke-static {v1}, Lkotlin/text/MatcherMatchResult;->access$getMatchResult$p(Lkotlin/text/MatcherMatchResult;)Ljava/util/regex/MatchResult;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/regex/MatchResult;->groupCount()I

    move-result v1

    const/4 v2, 0x1

    add-int/lit8 v1, v1, 0x1

    move v0, v1

    return v0
.end method

.method public final bridge indexOf(Ljava/lang/Object;)I
    .locals 4

    .prologue
    .line 268
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_0

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lkotlin/text/MatcherMatchResult$groupValues$1;->indexOf(Ljava/lang/String;)I

    move-result v2

    move v0, v2

    :goto_0
    return v0

    :cond_0
    const/4 v2, -0x1

    move v0, v2

    goto :goto_0
.end method

.method public bridge indexOf(Ljava/lang/String;)I
    .locals 4

    .prologue
    .line 268
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lkotlin/collections/AbstractList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    move v0, v2

    return v0
.end method

.method public final bridge lastIndexOf(Ljava/lang/Object;)I
    .locals 4

    .prologue
    .line 268
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_0

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lkotlin/text/MatcherMatchResult$groupValues$1;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    move v0, v2

    :goto_0
    return v0

    :cond_0
    const/4 v2, -0x1

    move v0, v2

    goto :goto_0
.end method

.method public bridge lastIndexOf(Ljava/lang/String;)I
    .locals 4

    .prologue
    .line 268
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lkotlin/collections/AbstractList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v2

    move v0, v2

    return v0
.end method
