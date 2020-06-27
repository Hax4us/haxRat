.class public Lkotlin/jvm/internal/FunctionReference;
.super Lkotlin/jvm/internal/CallableReference;
.source "FunctionReference.java"

# interfaces
.implements Lkotlin/jvm/internal/FunctionBase;
.implements Lkotlin/reflect/KFunction;


# instance fields
.field private final arity:I


# direct methods
.method public constructor <init>(I)V
    .locals 4

    .prologue
    .line 15
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    invoke-direct {v2}, Lkotlin/jvm/internal/CallableReference;-><init>()V

    .line 16
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lkotlin/jvm/internal/FunctionReference;->arity:I

    .line 17
    return-void
.end method

.method public constructor <init>(ILjava/lang/Object;)V
    .locals 5
    .annotation build Lkotlin/SinceKotlin;
        version = "1.1"
    .end annotation

    .prologue
    .line 21
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Lkotlin/jvm/internal/CallableReference;-><init>(Ljava/lang/Object;)V

    .line 22
    move-object v3, v0

    move v4, v1

    iput v4, v3, Lkotlin/jvm/internal/FunctionReference;->arity:I

    .line 23
    return-void
.end method


# virtual methods
.method protected computeReflected()Lkotlin/reflect/KCallable;
    .locals 2
    .annotation build Lkotlin/SinceKotlin;
        version = "1.1"
    .end annotation

    .prologue
    .line 39
    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->function(Lkotlin/jvm/internal/FunctionReference;)Lkotlin/reflect/KFunction;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 74
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    move-object v4, v0

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    move v0, v3

    .line 86
    :goto_0
    return v0

    .line 75
    :cond_0
    move-object v3, v1

    instance-of v3, v3, Lkotlin/jvm/internal/FunctionReference;

    if-eqz v3, :cond_4

    .line 76
    move-object v3, v1

    check-cast v3, Lkotlin/jvm/internal/FunctionReference;

    move-object v2, v3

    .line 78
    move-object v3, v0

    invoke-virtual {v3}, Lkotlin/jvm/internal/FunctionReference;->getOwner()Lkotlin/reflect/KDeclarationContainer;

    move-result-object v3

    if-nez v3, :cond_2

    move-object v3, v2

    invoke-virtual {v3}, Lkotlin/jvm/internal/FunctionReference;->getOwner()Lkotlin/reflect/KDeclarationContainer;

    move-result-object v3

    if-nez v3, :cond_3

    :cond_1
    move-object v3, v0

    invoke-virtual {v3}, Lkotlin/jvm/internal/FunctionReference;->getName()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    invoke-virtual {v4}, Lkotlin/jvm/internal/FunctionReference;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object v3, v0

    invoke-virtual {v3}, Lkotlin/jvm/internal/FunctionReference;->getSignature()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    invoke-virtual {v4}, Lkotlin/jvm/internal/FunctionReference;->getSignature()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object v3, v0

    invoke-virtual {v3}, Lkotlin/jvm/internal/FunctionReference;->getBoundReceiver()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v2

    invoke-virtual {v4}, Lkotlin/jvm/internal/FunctionReference;->getBoundReceiver()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    :goto_1
    move v0, v3

    goto :goto_0

    :cond_2
    move-object v3, v0

    invoke-virtual {v3}, Lkotlin/jvm/internal/FunctionReference;->getOwner()Lkotlin/reflect/KDeclarationContainer;

    move-result-object v3

    move-object v4, v2

    invoke-virtual {v4}, Lkotlin/jvm/internal/FunctionReference;->getOwner()Lkotlin/reflect/KDeclarationContainer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    .line 83
    :cond_4
    move-object v3, v1

    instance-of v3, v3, Lkotlin/reflect/KFunction;

    if-eqz v3, :cond_5

    .line 84
    move-object v3, v1

    move-object v4, v0

    invoke-virtual {v4}, Lkotlin/jvm/internal/FunctionReference;->compute()Lkotlin/reflect/KCallable;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    move v0, v3

    goto :goto_0

    .line 86
    :cond_5
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method

.method public getArity()I
    .locals 2

    .prologue
    .line 27
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lkotlin/jvm/internal/FunctionReference;->arity:I

    move v0, v1

    return v0
.end method

.method protected bridge synthetic getReflected()Lkotlin/reflect/KCallable;
    .locals 2

    .prologue
    .line 12
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lkotlin/jvm/internal/FunctionReference;->getReflected()Lkotlin/reflect/KFunction;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method protected getReflected()Lkotlin/reflect/KFunction;
    .locals 2
    .annotation build Lkotlin/SinceKotlin;
        version = "1.1"
    .end annotation

    .prologue
    .line 33
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Lkotlin/jvm/internal/CallableReference;->getReflected()Lkotlin/reflect/KCallable;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KFunction;

    move-object v0, v1

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 91
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lkotlin/jvm/internal/FunctionReference;->getOwner()Lkotlin/reflect/KDeclarationContainer;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v2, v0

    invoke-virtual {v2}, Lkotlin/jvm/internal/FunctionReference;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    const/16 v2, 0x1f

    mul-int/lit8 v1, v1, 0x1f

    move-object v2, v0

    invoke-virtual {v2}, Lkotlin/jvm/internal/FunctionReference;->getSignature()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    move v0, v1

    return v0

    :cond_0
    move-object v1, v0

    invoke-virtual {v1}, Lkotlin/jvm/internal/FunctionReference;->getOwner()Lkotlin/reflect/KDeclarationContainer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    const/16 v2, 0x1f

    mul-int/lit8 v1, v1, 0x1f

    goto :goto_0
.end method

.method public isExternal()Z
    .locals 2
    .annotation build Lkotlin/SinceKotlin;
        version = "1.1"
    .end annotation

    .prologue
    .line 51
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lkotlin/jvm/internal/FunctionReference;->getReflected()Lkotlin/reflect/KFunction;

    move-result-object v1

    invoke-interface {v1}, Lkotlin/reflect/KFunction;->isExternal()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public isInfix()Z
    .locals 2
    .annotation build Lkotlin/SinceKotlin;
        version = "1.1"
    .end annotation

    .prologue
    .line 63
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lkotlin/jvm/internal/FunctionReference;->getReflected()Lkotlin/reflect/KFunction;

    move-result-object v1

    invoke-interface {v1}, Lkotlin/reflect/KFunction;->isInfix()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public isInline()Z
    .locals 2
    .annotation build Lkotlin/SinceKotlin;
        version = "1.1"
    .end annotation

    .prologue
    .line 45
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lkotlin/jvm/internal/FunctionReference;->getReflected()Lkotlin/reflect/KFunction;

    move-result-object v1

    invoke-interface {v1}, Lkotlin/reflect/KFunction;->isInline()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public isOperator()Z
    .locals 2
    .annotation build Lkotlin/SinceKotlin;
        version = "1.1"
    .end annotation

    .prologue
    .line 57
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lkotlin/jvm/internal/FunctionReference;->getReflected()Lkotlin/reflect/KFunction;

    move-result-object v1

    invoke-interface {v1}, Lkotlin/reflect/KFunction;->isOperator()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public isSuspend()Z
    .locals 2
    .annotation build Lkotlin/SinceKotlin;
        version = "1.1"
    .end annotation

    .prologue
    .line 69
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lkotlin/jvm/internal/FunctionReference;->getReflected()Lkotlin/reflect/KFunction;

    move-result-object v1

    invoke-interface {v1}, Lkotlin/reflect/KFunction;->isSuspend()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 96
    move-object v0, p0

    move-object v2, v0

    invoke-virtual {v2}, Lkotlin/jvm/internal/FunctionReference;->compute()Lkotlin/reflect/KCallable;

    move-result-object v2

    move-object v1, v2

    .line 97
    move-object v2, v1

    move-object v3, v0

    if-eq v2, v3, :cond_0

    .line 98
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 102
    :goto_0
    return-object v0

    :cond_0
    const-string v2, "<init>"

    move-object v3, v0

    invoke-virtual {v3}, Lkotlin/jvm/internal/FunctionReference;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "constructor (Kotlin reflection is not available)"

    :goto_1
    move-object v0, v2

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "function "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v3}, Lkotlin/jvm/internal/FunctionReference;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (Kotlin reflection is not available)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method
