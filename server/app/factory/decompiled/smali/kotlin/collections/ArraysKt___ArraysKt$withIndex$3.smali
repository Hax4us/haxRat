.class final Lkotlin/collections/ArraysKt___ArraysKt$withIndex$3;
.super Lkotlin/jvm/internal/Lambda;
.source "_Arrays.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/collections/ArraysKt___ArraysKt;->withIndex([S)Ljava/lang/Iterable;
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
        "Lkotlin/collections/ShortIterator;",
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
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lkotlin/collections/ShortIterator;",
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
.field final synthetic receiver$0:[S


# direct methods
.method constructor <init>([S)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lkotlin/collections/ArraysKt___ArraysKt$withIndex$3;->receiver$0:[S

    move-object v2, v0

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lkotlin/collections/ArraysKt___ArraysKt$withIndex$3;->invoke()Lkotlin/collections/ShortIterator;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public final invoke()Lkotlin/collections/ShortIterator;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 8646
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lkotlin/collections/ArraysKt___ArraysKt$withIndex$3;->receiver$0:[S

    invoke-static {v1}, Lkotlin/jvm/internal/ArrayIteratorsKt;->iterator([S)Lkotlin/collections/ShortIterator;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method
