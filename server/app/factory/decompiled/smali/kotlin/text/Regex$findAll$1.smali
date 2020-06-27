.class final Lkotlin/text/Regex$findAll$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Regex.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/text/Regex;->findAll(Ljava/lang/CharSequence;I)Lkotlin/sequences/Sequence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0",
        "<",
        "Lkotlin/text/MatchResult;",
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
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u0004\u0018\u00010\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lkotlin/text/MatchResult;",
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
.field final synthetic $input:Ljava/lang/CharSequence;

.field final synthetic $startIndex:I

.field final synthetic this$0:Lkotlin/text/Regex;


# direct methods
.method constructor <init>(Lkotlin/text/Regex;Ljava/lang/CharSequence;I)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lkotlin/text/Regex$findAll$1;->this$0:Lkotlin/text/Regex;

    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lkotlin/text/Regex$findAll$1;->$input:Ljava/lang/CharSequence;

    move-object v4, v0

    move v5, v3

    iput v5, v4, Lkotlin/text/Regex$findAll$1;->$startIndex:I

    move-object v4, v0

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 86
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lkotlin/text/Regex$findAll$1;->invoke()Lkotlin/text/MatchResult;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public final invoke()Lkotlin/text/MatchResult;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 130
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lkotlin/text/Regex$findAll$1;->this$0:Lkotlin/text/Regex;

    move-object v2, v0

    iget-object v2, v2, Lkotlin/text/Regex$findAll$1;->$input:Ljava/lang/CharSequence;

    move-object v3, v0

    iget v3, v3, Lkotlin/text/Regex$findAll$1;->$startIndex:I

    invoke-virtual {v1, v2, v3}, Lkotlin/text/Regex;->find(Ljava/lang/CharSequence;I)Lkotlin/text/MatchResult;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method
