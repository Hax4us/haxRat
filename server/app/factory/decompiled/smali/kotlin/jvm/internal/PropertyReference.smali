.class public abstract Lkotlin/jvm/internal/PropertyReference;
.super Lkotlin/jvm/internal/CallableReference;
.source "PropertyReference.java"

# interfaces
.implements Lkotlin/reflect/KProperty;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 14
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lkotlin/jvm/internal/CallableReference;-><init>()V

    .line 15
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 4
    .annotation build Lkotlin/SinceKotlin;
        version = "1.1"
    .end annotation

    .prologue
    .line 19
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lkotlin/jvm/internal/CallableReference;-><init>(Ljava/lang/Object;)V

    .line 20
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 42
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    move-object v4, v0

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    move v0, v3

    .line 53
    :goto_0
    return v0

    .line 43
    :cond_0
    move-object v3, v1

    instance-of v3, v3, Lkotlin/jvm/internal/PropertyReference;

    if-eqz v3, :cond_2

    .line 44
    move-object v3, v1

    check-cast v3, Lkotlin/jvm/internal/PropertyReference;

    move-object v2, v3

    .line 45
    move-object v3, v0

    invoke-virtual {v3}, Lkotlin/jvm/internal/PropertyReference;->getOwner()Lkotlin/reflect/KDeclarationContainer;

    move-result-object v3

    move-object v4, v2

    invoke-virtual {v4}, Lkotlin/jvm/internal/PropertyReference;->getOwner()Lkotlin/reflect/KDeclarationContainer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v0

    invoke-virtual {v3}, Lkotlin/jvm/internal/PropertyReference;->getName()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    invoke-virtual {v4}, Lkotlin/jvm/internal/PropertyReference;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v0

    invoke-virtual {v3}, Lkotlin/jvm/internal/PropertyReference;->getSignature()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    invoke-virtual {v4}, Lkotlin/jvm/internal/PropertyReference;->getSignature()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v0

    invoke-virtual {v3}, Lkotlin/jvm/internal/PropertyReference;->getBoundReceiver()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v2

    invoke-virtual {v4}, Lkotlin/jvm/internal/PropertyReference;->getBoundReceiver()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    :goto_1
    move v0, v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 50
    :cond_2
    move-object v3, v1

    instance-of v3, v3, Lkotlin/reflect/KProperty;

    if-eqz v3, :cond_3

    .line 51
    move-object v3, v1

    move-object v4, v0

    invoke-virtual {v4}, Lkotlin/jvm/internal/PropertyReference;->compute()Lkotlin/reflect/KCallable;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    move v0, v3

    goto :goto_0

    .line 53
    :cond_3
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method

.method protected bridge synthetic getReflected()Lkotlin/reflect/KCallable;
    .locals 2

    .prologue
    .line 12
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lkotlin/jvm/internal/PropertyReference;->getReflected()Lkotlin/reflect/KProperty;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method protected getReflected()Lkotlin/reflect/KProperty;
    .locals 2
    .annotation build Lkotlin/SinceKotlin;
        version = "1.1"
    .end annotation

    .prologue
    .line 25
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Lkotlin/jvm/internal/CallableReference;->getReflected()Lkotlin/reflect/KCallable;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    move-object v0, v1

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 58
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lkotlin/jvm/internal/PropertyReference;->getOwner()Lkotlin/reflect/KDeclarationContainer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    const/16 v2, 0x1f

    mul-int/lit8 v1, v1, 0x1f

    move-object v2, v0

    invoke-virtual {v2}, Lkotlin/jvm/internal/PropertyReference;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    const/16 v2, 0x1f

    mul-int/lit8 v1, v1, 0x1f

    move-object v2, v0

    invoke-virtual {v2}, Lkotlin/jvm/internal/PropertyReference;->getSignature()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    move v0, v1

    return v0
.end method

.method public isConst()Z
    .locals 2
    .annotation build Lkotlin/SinceKotlin;
        version = "1.1"
    .end annotation

    .prologue
    .line 37
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lkotlin/jvm/internal/PropertyReference;->getReflected()Lkotlin/reflect/KProperty;

    move-result-object v1

    invoke-interface {v1}, Lkotlin/reflect/KProperty;->isConst()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public isLateinit()Z
    .locals 2
    .annotation build Lkotlin/SinceKotlin;
        version = "1.1"
    .end annotation

    .prologue
    .line 31
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lkotlin/jvm/internal/PropertyReference;->getReflected()Lkotlin/reflect/KProperty;

    move-result-object v1

    invoke-interface {v1}, Lkotlin/reflect/KProperty;->isLateinit()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 63
    move-object v0, p0

    move-object v2, v0

    invoke-virtual {v2}, Lkotlin/jvm/internal/PropertyReference;->compute()Lkotlin/reflect/KCallable;

    move-result-object v2

    move-object v1, v2

    .line 64
    move-object v2, v1

    move-object v3, v0

    if-eq v2, v3, :cond_0

    .line 65
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 68
    :goto_0
    return-object v0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "property "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v3}, Lkotlin/jvm/internal/PropertyReference;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (Kotlin reflection is not available)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method
