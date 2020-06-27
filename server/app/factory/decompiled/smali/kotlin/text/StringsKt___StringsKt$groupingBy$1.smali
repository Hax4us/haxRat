.class public final Lkotlin/text/StringsKt___StringsKt$groupingBy$1;
.super Ljava/lang/Object;
.source "_Strings.kt"

# interfaces
.implements Lkotlin/collections/Grouping;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/text/StringsKt___StringsKt;->groupingBy(Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function1;)Lkotlin/collections/Grouping;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/collections/Grouping",
        "<",
        "Ljava/lang/Character;",
        "TK;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000c\n\u0002\u0008\u0005\n\u0002\u0010(\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00028\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0015\u0010\u0004\u001a\u00028\u00002\u0006\u0010\u0005\u001a\u00020\u0002H\u0016\u00a2\u0006\u0002\u0010\u0006J\u000e\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0008H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "kotlin/text/StringsKt___StringsKt$groupingBy$1",
        "Lkotlin/collections/Grouping;",
        "",
        "(Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function1;)V",
        "keyOf",
        "element",
        "(C)Ljava/lang/Object;",
        "sourceIterator",
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
.field final synthetic $keySelector:Lkotlin/jvm/functions/Function1;

.field final synthetic receiver$0:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function1;)V
    .locals 5

    .prologue
    .line 752
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lkotlin/text/StringsKt___StringsKt$groupingBy$1;->receiver$0:Ljava/lang/CharSequence;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lkotlin/text/StringsKt___StringsKt$groupingBy$1;->$keySelector:Lkotlin/jvm/functions/Function1;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public keyOf(C)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C)TK;"
        }
    .end annotation

    .prologue
    .line 754
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lkotlin/text/StringsKt___StringsKt$groupingBy$1;->$keySelector:Lkotlin/jvm/functions/Function1;

    move v3, v1

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v2, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public bridge synthetic keyOf(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 752
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljava/lang/Character;

    invoke-virtual {v3}, Ljava/lang/Character;->charValue()C

    move-result v3

    invoke-virtual {v2, v3}, Lkotlin/text/StringsKt___StringsKt$groupingBy$1;->keyOf(C)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public sourceIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 753
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lkotlin/text/StringsKt___StringsKt$groupingBy$1;->receiver$0:Ljava/lang/CharSequence;

    invoke-static {v1}, Lkotlin/text/StringsKt;->iterator(Ljava/lang/CharSequence;)Lkotlin/collections/CharIterator;

    move-result-object v1

    check-cast v1, Ljava/util/Iterator;

    move-object v0, v1

    return-object v0
.end method
