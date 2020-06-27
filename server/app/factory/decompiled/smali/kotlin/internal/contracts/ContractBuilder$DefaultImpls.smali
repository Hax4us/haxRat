.class public final Lkotlin/internal/contracts/ContractBuilder$DefaultImpls;
.super Ljava/lang/Object;
.source "ContractBuilder.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/internal/contracts/ContractBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xa
    }
.end annotation


# direct methods
.method public static bridge synthetic callsInPlace$default(Lkotlin/internal/contracts/ContractBuilder;Lkotlin/Function;Lkotlin/internal/contracts/InvocationKind;ILjava/lang/Object;)Lkotlin/internal/contracts/CallsInPlace;
    .locals 9
    .annotation build Lkotlin/internal/ContractsDsl;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, v4

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/UnsupportedOperationException;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const-string v7, "Super calls with default arguments not supported in this target, function: callsInPlace"

    invoke-direct {v6, v7}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_0
    move v5, v3

    const/4 v6, 0x2

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_1

    .line 17
    sget-object v5, Lkotlin/internal/contracts/InvocationKind;->UNKNOWN:Lkotlin/internal/contracts/InvocationKind;

    move-object v2, v5

    :cond_1
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-interface {v5, v6, v7}, Lkotlin/internal/contracts/ContractBuilder;->callsInPlace(Lkotlin/Function;Lkotlin/internal/contracts/InvocationKind;)Lkotlin/internal/contracts/CallsInPlace;

    move-result-object v5

    move-object v0, v5

    return-object v0
.end method
