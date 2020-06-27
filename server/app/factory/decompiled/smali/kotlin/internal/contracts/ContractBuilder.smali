.class public interface abstract Lkotlin/internal/contracts/ContractBuilder;
.super Ljava/lang/Object;
.source "ContractBuilder.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/internal/contracts/ContractBuilder$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008a\u0018\u00002\u00020\u0001J&\u0010\u0002\u001a\u00020\u0003\"\u0004\u0008\u0000\u0010\u00042\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u0002H\u00040\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008H\'J\u0008\u0010\t\u001a\u00020\nH\'J\u0012\u0010\t\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0001H\'J\u0008\u0010\u000c\u001a\u00020\rH\'\u00a8\u0006\u000e"
    }
    d2 = {
        "Lkotlin/internal/contracts/ContractBuilder;",
        "",
        "callsInPlace",
        "Lkotlin/internal/contracts/CallsInPlace;",
        "R",
        "lambda",
        "Lkotlin/Function;",
        "kind",
        "Lkotlin/internal/contracts/InvocationKind;",
        "returns",
        "Lkotlin/internal/contracts/Returns;",
        "value",
        "returnsNotNull",
        "Lkotlin/internal/contracts/ReturnsNotNull;",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xa
    }
.end annotation

.annotation build Lkotlin/SinceKotlin;
    version = "1.2"
.end annotation

.annotation build Lkotlin/internal/ContractsDsl;
.end annotation


# virtual methods
.method public abstract callsInPlace(Lkotlin/Function;Lkotlin/internal/contracts/InvocationKind;)Lkotlin/internal/contracts/CallsInPlace;
    .param p1    # Lkotlin/Function;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/internal/contracts/InvocationKind;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/Function",
            "<+TR;>;",
            "Lkotlin/internal/contracts/InvocationKind;",
            ")",
            "Lkotlin/internal/contracts/CallsInPlace;"
        }
    .end annotation

    .annotation build Lkotlin/internal/ContractsDsl;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract returns()Lkotlin/internal/contracts/Returns;
    .annotation build Lkotlin/internal/ContractsDsl;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract returns(Ljava/lang/Object;)Lkotlin/internal/contracts/Returns;
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lkotlin/internal/ContractsDsl;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract returnsNotNull()Lkotlin/internal/contracts/ReturnsNotNull;
    .annotation build Lkotlin/internal/ContractsDsl;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method
