.class public Lkotlin/jvm/internal/PropertyReference0Impl;
.super Lkotlin/jvm/internal/PropertyReference0;
.source "PropertyReference0Impl.java"


# instance fields
.field private final name:Ljava/lang/String;

.field private final owner:Lkotlin/reflect/KDeclarationContainer;

.field private final signature:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 15
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    invoke-direct {v4}, Lkotlin/jvm/internal/PropertyReference0;-><init>()V

    .line 16
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lkotlin/jvm/internal/PropertyReference0Impl;->owner:Lkotlin/reflect/KDeclarationContainer;

    .line 17
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lkotlin/jvm/internal/PropertyReference0Impl;->name:Ljava/lang/String;

    .line 18
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lkotlin/jvm/internal/PropertyReference0Impl;->signature:Ljava/lang/String;

    .line 19
    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 38
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lkotlin/jvm/internal/PropertyReference0Impl;->getGetter()Lkotlin/reflect/KProperty0$Getter;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v1, v2}, Lkotlin/reflect/KProperty0$Getter;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 28
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lkotlin/jvm/internal/PropertyReference0Impl;->name:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public getOwner()Lkotlin/reflect/KDeclarationContainer;
    .locals 2

    .prologue
    .line 23
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lkotlin/jvm/internal/PropertyReference0Impl;->owner:Lkotlin/reflect/KDeclarationContainer;

    move-object v0, v1

    return-object v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 2

    .prologue
    .line 33
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lkotlin/jvm/internal/PropertyReference0Impl;->signature:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method
