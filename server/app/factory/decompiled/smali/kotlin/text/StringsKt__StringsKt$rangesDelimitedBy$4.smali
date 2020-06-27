.class final Lkotlin/text/StringsKt__StringsKt$rangesDelimitedBy$4;
.super Lkotlin/jvm/internal/Lambda;
.source "Strings.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/text/StringsKt__StringsKt;->rangesDelimitedBy$StringsKt__StringsKt(Ljava/lang/CharSequence;[Ljava/lang/String;IZI)Lkotlin/sequences/Sequence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2",
        "<",
        "Ljava/lang/CharSequence;",
        "Ljava/lang/Integer;",
        "Lkotlin/Pair",
        "<+",
        "Ljava/lang/Integer;",
        "+",
        "Ljava/lang/Integer;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0010\r\n\u0002\u0008\u0002\u0010\u0000\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0001*\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0002H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "Lkotlin/Pair;",
        "",
        "",
        "startIndex",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xa
    }
.end annotation


# instance fields
.field final synthetic $delimitersList:Ljava/util/List;

.field final synthetic $ignoreCase:Z


# direct methods
.method constructor <init>(Ljava/util/List;Z)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lkotlin/text/StringsKt__StringsKt$rangesDelimitedBy$4;->$delimitersList:Ljava/util/List;

    move-object v3, v0

    move v4, v2

    iput-boolean v4, v3, Lkotlin/text/StringsKt__StringsKt$rangesDelimitedBy$4;->$ignoreCase:Z

    move-object v3, v0

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    check-cast v4, Ljava/lang/CharSequence;

    move-object v5, v2

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lkotlin/text/StringsKt__StringsKt$rangesDelimitedBy$4;->invoke(Ljava/lang/CharSequence;I)Lkotlin/Pair;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method public final invoke(Ljava/lang/CharSequence;I)Lkotlin/Pair;
    .locals 12
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "I)",
            "Lkotlin/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v6, v1

    const-string v7, "$receiver"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1133
    move-object v6, v1

    move-object v7, v0

    iget-object v7, v7, Lkotlin/text/StringsKt__StringsKt$rangesDelimitedBy$4;->$delimitersList:Ljava/util/List;

    check-cast v7, Ljava/util/Collection;

    move v8, v2

    move-object v9, v0

    iget-boolean v9, v9, Lkotlin/text/StringsKt__StringsKt$rangesDelimitedBy$4;->$ignoreCase:Z

    const/4 v10, 0x0

    invoke-static {v6, v7, v8, v9, v10}, Lkotlin/text/StringsKt__StringsKt;->access$findAnyOf(Ljava/lang/CharSequence;Ljava/util/Collection;IZZ)Lkotlin/Pair;

    move-result-object v6

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    if-eqz v7, :cond_0

    move-object v3, v6

    move-object v6, v3

    move-object v4, v6

    move-object v6, v4

    invoke-virtual {v6}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v4

    invoke-virtual {v7}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v6, v7}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    :goto_0
    move-object v0, v6

    return-object v0

    :cond_0
    const/4 v6, 0x0

    goto :goto_0
.end method
