.class public interface abstract Lkotlin/internal/contracts/SimpleEffect;
.super Ljava/lang/Object;
.source "Effect.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0008a\u0018\u00002\u00020\u0001J\u0011\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u00a7\u0004\u00a8\u0006\u0006"
    }
    d2 = {
        "Lkotlin/internal/contracts/SimpleEffect;",
        "",
        "implies",
        "Lkotlin/internal/contracts/ConditionalEffect;",
        "booleanExpression",
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

.annotation build Lkotlin/SinceKotlin;
    version = "1.2"
.end annotation

.annotation build Lkotlin/internal/ContractsDsl;
.end annotation


# virtual methods
.method public abstract implies(Z)Lkotlin/internal/contracts/ConditionalEffect;
    .annotation build Lkotlin/internal/ContractsDsl;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method
