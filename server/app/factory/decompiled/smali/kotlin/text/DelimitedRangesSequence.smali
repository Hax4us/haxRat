.class final Lkotlin/text/DelimitedRangesSequence;
.super Ljava/lang/Object;
.source "Strings.kt"

# interfaces
.implements Lkotlin/sequences/Sequence;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/sequences/Sequence",
        "<",
        "Lkotlin/ranges/IntRange;",
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
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010(\n\u0000\u0008\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001BJ\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012+\u0010\u0008\u001a\'\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0006\u0012\u0012\u0012\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0006\u0018\u00010\n0\t\u00a2\u0006\u0002\u0008\u000b\u00a2\u0006\u0002\u0010\u000cJ\u000f\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u000eH\u0096\u0002R3\u0010\u0008\u001a\'\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0006\u0012\u0012\u0012\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0006\u0018\u00010\n0\t\u00a2\u0006\u0002\u0008\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lkotlin/text/DelimitedRangesSequence;",
        "Lkotlin/sequences/Sequence;",
        "Lkotlin/ranges/IntRange;",
        "input",
        "",
        "startIndex",
        "",
        "limit",
        "getNextMatch",
        "Lkotlin/Function2;",
        "Lkotlin/Pair;",
        "Lkotlin/ExtensionFunctionType;",
        "(Ljava/lang/CharSequence;IILkotlin/jvm/functions/Function2;)V",
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
.field private final getNextMatch:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2",
            "<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/Integer;",
            "Lkotlin/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final input:Ljava/lang/CharSequence;

.field private final limit:I

.field private final startIndex:I


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;IILkotlin/jvm/functions/Function2;)V
    .locals 7
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "II",
            "Lkotlin/jvm/functions/Function2",
            "<-",
            "Ljava/lang/CharSequence;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, v1

    const-string v6, "input"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v5, v4

    const-string v6, "getNextMatch"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1038
    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lkotlin/text/DelimitedRangesSequence;->input:Ljava/lang/CharSequence;

    move-object v5, v0

    move v6, v2

    iput v6, v5, Lkotlin/text/DelimitedRangesSequence;->startIndex:I

    move-object v5, v0

    move v6, v3

    iput v6, v5, Lkotlin/text/DelimitedRangesSequence;->limit:I

    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Lkotlin/text/DelimitedRangesSequence;->getNextMatch:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method public static final synthetic access$getGetNextMatch$p(Lkotlin/text/DelimitedRangesSequence;)Lkotlin/jvm/functions/Function2;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 1038
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lkotlin/text/DelimitedRangesSequence;->getNextMatch:Lkotlin/jvm/functions/Function2;

    move-object v0, v1

    return-object v0
.end method

.method public static final synthetic access$getInput$p(Lkotlin/text/DelimitedRangesSequence;)Ljava/lang/CharSequence;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 1038
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lkotlin/text/DelimitedRangesSequence;->input:Ljava/lang/CharSequence;

    move-object v0, v1

    return-object v0
.end method

.method public static final synthetic access$getLimit$p(Lkotlin/text/DelimitedRangesSequence;)I
    .locals 2

    .prologue
    .line 1038
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lkotlin/text/DelimitedRangesSequence;->limit:I

    move v0, v1

    return v0
.end method

.method public static final synthetic access$getStartIndex$p(Lkotlin/text/DelimitedRangesSequence;)I
    .locals 2

    .prologue
    .line 1038
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lkotlin/text/DelimitedRangesSequence;->startIndex:I

    move v0, v1

    return v0
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lkotlin/ranges/IntRange;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 1045
    move-object v0, p0

    new-instance v1, Lkotlin/text/DelimitedRangesSequence$iterator$1;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lkotlin/text/DelimitedRangesSequence$iterator$1;-><init>(Lkotlin/text/DelimitedRangesSequence;)V

    check-cast v1, Ljava/util/Iterator;

    .line 1093
    move-object v0, v1

    return-object v0
.end method
