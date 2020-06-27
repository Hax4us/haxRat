.class public final Lkotlin/text/DelimitedRangesSequence$iterator$1;
.super Ljava/lang/Object;
.source "Strings.kt"

# interfaces
.implements Ljava/util/Iterator;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/text/DelimitedRangesSequence;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Lkotlin/ranges/IntRange;",
        ">;",
        "Lkotlin/jvm/internal/markers/KMappedMarker;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\'\n\u0000\n\u0002\u0010(\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0013\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0018\u001a\u00020\u0019H\u0002J\t\u0010\u001a\u001a\u00020\u001bH\u0096\u0002J\t\u0010\u001c\u001a\u00020\u0002H\u0096\u0002R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001a\u0010\n\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u0007\"\u0004\u0008\u000c\u0010\tR\u001c\u0010\r\u001a\u0004\u0018\u00010\u0002X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u001a\u0010\u0012\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0007\"\u0004\u0008\u0014\u0010\tR\u001a\u0010\u0015\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0007\"\u0004\u0008\u0017\u0010\t\u00a8\u0006\u001d"
    }
    d2 = {
        "kotlin/text/DelimitedRangesSequence$iterator$1",
        "",
        "Lkotlin/ranges/IntRange;",
        "(Lkotlin/text/DelimitedRangesSequence;)V",
        "counter",
        "",
        "getCounter",
        "()I",
        "setCounter",
        "(I)V",
        "currentStartIndex",
        "getCurrentStartIndex",
        "setCurrentStartIndex",
        "nextItem",
        "getNextItem",
        "()Lkotlin/ranges/IntRange;",
        "setNextItem",
        "(Lkotlin/ranges/IntRange;)V",
        "nextSearchIndex",
        "getNextSearchIndex",
        "setNextSearchIndex",
        "nextState",
        "getNextState",
        "setNextState",
        "calcNext",
        "",
        "hasNext",
        "",
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
.field private counter:I

.field private currentStartIndex:I

.field private nextItem:Lkotlin/ranges/IntRange;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private nextSearchIndex:I

.field private nextState:I

.field final synthetic this$0:Lkotlin/text/DelimitedRangesSequence;


# direct methods
.method constructor <init>(Lkotlin/text/DelimitedRangesSequence;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 1045
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lkotlin/text/DelimitedRangesSequence$iterator$1;->this$0:Lkotlin/text/DelimitedRangesSequence;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 1046
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Lkotlin/text/DelimitedRangesSequence$iterator$1;->nextState:I

    .line 1047
    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Lkotlin/text/DelimitedRangesSequence;->access$getStartIndex$p(Lkotlin/text/DelimitedRangesSequence;)I

    move-result v3

    const/4 v4, 0x0

    move-object v5, v1

    invoke-static {v5}, Lkotlin/text/DelimitedRangesSequence;->access$getInput$p(Lkotlin/text/DelimitedRangesSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-static {v3, v4, v5}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v3

    iput v3, v2, Lkotlin/text/DelimitedRangesSequence$iterator$1;->currentStartIndex:I

    .line 1048
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Lkotlin/text/DelimitedRangesSequence$iterator$1;->currentStartIndex:I

    iput v3, v2, Lkotlin/text/DelimitedRangesSequence$iterator$1;->nextSearchIndex:I

    return-void
.end method

.method private final calcNext()V
    .locals 11

    .prologue
    .line 1053
    move-object v0, p0

    move-object v5, v0

    iget v5, v5, Lkotlin/text/DelimitedRangesSequence$iterator$1;->nextSearchIndex:I

    if-gez v5, :cond_0

    .line 1054
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Lkotlin/text/DelimitedRangesSequence$iterator$1;->nextState:I

    .line 1055
    move-object v5, v0

    const/4 v6, 0x0

    check-cast v6, Lkotlin/ranges/IntRange;

    iput-object v6, v5, Lkotlin/text/DelimitedRangesSequence$iterator$1;->nextItem:Lkotlin/ranges/IntRange;

    .line 1073
    :goto_0
    return-void

    .line 1057
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Lkotlin/text/DelimitedRangesSequence$iterator$1;->this$0:Lkotlin/text/DelimitedRangesSequence;

    invoke-static {v5}, Lkotlin/text/DelimitedRangesSequence;->access$getLimit$p(Lkotlin/text/DelimitedRangesSequence;)I

    move-result v5

    if-lez v5, :cond_1

    move-object v5, v0

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    iget v7, v7, Lkotlin/text/DelimitedRangesSequence$iterator$1;->counter:I

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lkotlin/text/DelimitedRangesSequence$iterator$1;->counter:I

    iget v5, v5, Lkotlin/text/DelimitedRangesSequence$iterator$1;->counter:I

    move-object v6, v0

    iget-object v6, v6, Lkotlin/text/DelimitedRangesSequence$iterator$1;->this$0:Lkotlin/text/DelimitedRangesSequence;

    invoke-static {v6}, Lkotlin/text/DelimitedRangesSequence;->access$getLimit$p(Lkotlin/text/DelimitedRangesSequence;)I

    move-result v6

    if-ge v5, v6, :cond_2

    :cond_1
    move-object v5, v0

    iget v5, v5, Lkotlin/text/DelimitedRangesSequence$iterator$1;->nextSearchIndex:I

    move-object v6, v0

    iget-object v6, v6, Lkotlin/text/DelimitedRangesSequence$iterator$1;->this$0:Lkotlin/text/DelimitedRangesSequence;

    invoke-static {v6}, Lkotlin/text/DelimitedRangesSequence;->access$getInput$p(Lkotlin/text/DelimitedRangesSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-le v5, v6, :cond_3

    .line 1058
    :cond_2
    move-object v5, v0

    move-object v6, v0

    iget v6, v6, Lkotlin/text/DelimitedRangesSequence$iterator$1;->currentStartIndex:I

    move v1, v6

    new-instance v6, Lkotlin/ranges/IntRange;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move v8, v1

    move-object v9, v0

    iget-object v9, v9, Lkotlin/text/DelimitedRangesSequence$iterator$1;->this$0:Lkotlin/text/DelimitedRangesSequence;

    invoke-static {v9}, Lkotlin/text/DelimitedRangesSequence;->access$getInput$p(Lkotlin/text/DelimitedRangesSequence;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-static {v9}, Lkotlin/text/StringsKt;->getLastIndex(Ljava/lang/CharSequence;)I

    move-result v9

    invoke-direct {v7, v8, v9}, Lkotlin/ranges/IntRange;-><init>(II)V

    iput-object v6, v5, Lkotlin/text/DelimitedRangesSequence$iterator$1;->nextItem:Lkotlin/ranges/IntRange;

    .line 1059
    move-object v5, v0

    const/4 v6, -0x1

    iput v6, v5, Lkotlin/text/DelimitedRangesSequence$iterator$1;->nextSearchIndex:I

    .line 1070
    :goto_1
    move-object v5, v0

    const/4 v6, 0x1

    iput v6, v5, Lkotlin/text/DelimitedRangesSequence$iterator$1;->nextState:I

    goto :goto_0

    .line 1061
    :cond_3
    move-object v5, v0

    iget-object v5, v5, Lkotlin/text/DelimitedRangesSequence$iterator$1;->this$0:Lkotlin/text/DelimitedRangesSequence;

    invoke-static {v5}, Lkotlin/text/DelimitedRangesSequence;->access$getGetNextMatch$p(Lkotlin/text/DelimitedRangesSequence;)Lkotlin/jvm/functions/Function2;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Lkotlin/text/DelimitedRangesSequence$iterator$1;->this$0:Lkotlin/text/DelimitedRangesSequence;

    invoke-static {v6}, Lkotlin/text/DelimitedRangesSequence;->access$getInput$p(Lkotlin/text/DelimitedRangesSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    move-object v7, v0

    iget v7, v7, Lkotlin/text/DelimitedRangesSequence$iterator$1;->nextSearchIndex:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkotlin/Pair;

    move-object v1, v5

    .line 1062
    move-object v5, v1

    if-nez v5, :cond_4

    .line 1063
    move-object v5, v0

    move-object v6, v0

    iget v6, v6, Lkotlin/text/DelimitedRangesSequence$iterator$1;->currentStartIndex:I

    move v2, v6

    new-instance v6, Lkotlin/ranges/IntRange;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move v8, v2

    move-object v9, v0

    iget-object v9, v9, Lkotlin/text/DelimitedRangesSequence$iterator$1;->this$0:Lkotlin/text/DelimitedRangesSequence;

    invoke-static {v9}, Lkotlin/text/DelimitedRangesSequence;->access$getInput$p(Lkotlin/text/DelimitedRangesSequence;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-static {v9}, Lkotlin/text/StringsKt;->getLastIndex(Ljava/lang/CharSequence;)I

    move-result v9

    invoke-direct {v7, v8, v9}, Lkotlin/ranges/IntRange;-><init>(II)V

    iput-object v6, v5, Lkotlin/text/DelimitedRangesSequence$iterator$1;->nextItem:Lkotlin/ranges/IntRange;

    .line 1064
    move-object v5, v0

    const/4 v6, -0x1

    iput v6, v5, Lkotlin/text/DelimitedRangesSequence$iterator$1;->nextSearchIndex:I

    goto :goto_1

    .line 1066
    :cond_4
    move-object v5, v1

    move-object v4, v5

    move-object v5, v4

    invoke-virtual {v5}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    move v2, v5

    move-object v5, v4

    invoke-virtual {v5}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    move v3, v5

    .line 1067
    move-object v5, v0

    move-object v6, v0

    iget v6, v6, Lkotlin/text/DelimitedRangesSequence$iterator$1;->currentStartIndex:I

    move v7, v2

    invoke-static {v6, v7}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v6

    iput-object v6, v5, Lkotlin/text/DelimitedRangesSequence$iterator$1;->nextItem:Lkotlin/ranges/IntRange;

    .line 1068
    move-object v5, v0

    move v6, v2

    move v7, v3

    add-int/2addr v6, v7

    iput v6, v5, Lkotlin/text/DelimitedRangesSequence$iterator$1;->currentStartIndex:I

    .line 1069
    move-object v5, v0

    move-object v6, v0

    iget v6, v6, Lkotlin/text/DelimitedRangesSequence$iterator$1;->currentStartIndex:I

    move v7, v3

    if-nez v7, :cond_5

    const/4 v7, 0x1

    :goto_2
    add-int/2addr v6, v7

    iput v6, v5, Lkotlin/text/DelimitedRangesSequence$iterator$1;->nextSearchIndex:I

    goto :goto_1

    :cond_5
    const/4 v7, 0x0

    goto :goto_2
.end method


# virtual methods
.method public final getCounter()I
    .locals 2

    .prologue
    .line 1050
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lkotlin/text/DelimitedRangesSequence$iterator$1;->counter:I

    move v0, v1

    return v0
.end method

.method public final getCurrentStartIndex()I
    .locals 2

    .prologue
    .line 1047
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lkotlin/text/DelimitedRangesSequence$iterator$1;->currentStartIndex:I

    move v0, v1

    return v0
.end method

.method public final getNextItem()Lkotlin/ranges/IntRange;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 1049
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lkotlin/text/DelimitedRangesSequence$iterator$1;->nextItem:Lkotlin/ranges/IntRange;

    move-object v0, v1

    return-object v0
.end method

.method public final getNextSearchIndex()I
    .locals 2

    .prologue
    .line 1048
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lkotlin/text/DelimitedRangesSequence$iterator$1;->nextSearchIndex:I

    move v0, v1

    return v0
.end method

.method public final getNextState()I
    .locals 2

    .prologue
    .line 1046
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lkotlin/text/DelimitedRangesSequence$iterator$1;->nextState:I

    move v0, v1

    return v0
.end method

.method public hasNext()Z
    .locals 3

    .prologue
    .line 1089
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lkotlin/text/DelimitedRangesSequence$iterator$1;->nextState:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 1090
    move-object v1, v0

    invoke-direct {v1}, Lkotlin/text/DelimitedRangesSequence$iterator$1;->calcNext()V

    .line 1091
    :cond_0
    move-object v1, v0

    iget v1, v1, Lkotlin/text/DelimitedRangesSequence$iterator$1;->nextState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1045
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lkotlin/text/DelimitedRangesSequence$iterator$1;->next()Lkotlin/ranges/IntRange;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public next()Lkotlin/ranges/IntRange;
    .locals 7
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 1077
    move-object v0, p0

    move-object v2, v0

    iget v2, v2, Lkotlin/text/DelimitedRangesSequence$iterator$1;->nextState:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 1078
    move-object v2, v0

    invoke-direct {v2}, Lkotlin/text/DelimitedRangesSequence$iterator$1;->calcNext()V

    .line 1079
    :cond_0
    move-object v2, v0

    iget v2, v2, Lkotlin/text/DelimitedRangesSequence$iterator$1;->nextState:I

    if-nez v2, :cond_1

    .line 1080
    new-instance v2, Ljava/util/NoSuchElementException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Ljava/util/NoSuchElementException;-><init>()V

    check-cast v2, Ljava/lang/Throwable;

    throw v2

    .line 1081
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lkotlin/text/DelimitedRangesSequence$iterator$1;->nextItem:Lkotlin/ranges/IntRange;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    if-nez v3, :cond_2

    new-instance v3, Lkotlin/TypeCastException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "null cannot be cast to non-null type kotlin.ranges.IntRange"

    invoke-direct {v4, v5}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2
    move-object v1, v2

    .line 1083
    move-object v2, v0

    const/4 v3, 0x0

    check-cast v3, Lkotlin/ranges/IntRange;

    iput-object v3, v2, Lkotlin/text/DelimitedRangesSequence$iterator$1;->nextItem:Lkotlin/ranges/IntRange;

    .line 1084
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Lkotlin/text/DelimitedRangesSequence$iterator$1;->nextState:I

    .line 1085
    move-object v2, v1

    move-object v0, v2

    return-object v0
.end method

.method public remove()V
    .locals 5

    move-object v0, p0

    new-instance v1, Ljava/lang/UnsupportedOperationException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "Operation is not supported for read-only collection"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final setCounter(I)V
    .locals 4

    .prologue
    .line 1050
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lkotlin/text/DelimitedRangesSequence$iterator$1;->counter:I

    return-void
.end method

.method public final setCurrentStartIndex(I)V
    .locals 4

    .prologue
    .line 1047
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lkotlin/text/DelimitedRangesSequence$iterator$1;->currentStartIndex:I

    return-void
.end method

.method public final setNextItem(Lkotlin/ranges/IntRange;)V
    .locals 4
    .param p1    # Lkotlin/ranges/IntRange;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1049
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lkotlin/text/DelimitedRangesSequence$iterator$1;->nextItem:Lkotlin/ranges/IntRange;

    return-void
.end method

.method public final setNextSearchIndex(I)V
    .locals 4

    .prologue
    .line 1048
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lkotlin/text/DelimitedRangesSequence$iterator$1;->nextSearchIndex:I

    return-void
.end method

.method public final setNextState(I)V
    .locals 4

    .prologue
    .line 1046
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lkotlin/text/DelimitedRangesSequence$iterator$1;->nextState:I

    return-void
.end method
