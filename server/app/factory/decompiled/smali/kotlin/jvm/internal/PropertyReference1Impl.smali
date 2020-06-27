.class public Lkotlin/jvm/internal/PropertyReference1Impl;
.super Lkotlin/jvm/internal/PropertyReference1;
.source "PropertyReference1Impl.java"


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

    invoke-direct {v4}, Lkotlin/jvm/internal/PropertyReference1;-><init>()V

    .line 16
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lkotlin/jvm/internal/PropertyReference1Impl;->owner:Lkotlin/reflect/KDeclarationContainer;

    .line 17
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lkotlin/jvm/internal/PropertyReference1Impl;->name:Ljava/lang/String;

    .line 18
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lkotlin/jvm/internal/PropertyReference1Impl;->signature:Ljava/lang/String;

    .line 19
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .prologue
    .line 38
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-virtual {v2}, Lkotlin/jvm/internal/PropertyReference1Impl;->getGetter()Lkotlin/reflect/KProperty1$Getter;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    move-object v6, v1

    aput-object v6, v4, v5

    invoke-interface {v2, v3}, Lkotlin/reflect/KProperty1$Getter;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 28
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lkotlin/jvm/internal/PropertyReference1Impl;->name:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public getOwner()Lkotlin/reflect/KDeclarationContainer;
    .locals 2

    .prologue
    .line 23
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lkotlin/jvm/internal/PropertyReference1Impl;->owner:Lkotlin/reflect/KDeclarationContainer;

    move-object v0, v1

    return-object v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 2

    .prologue
    .line 33
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lkotlin/jvm/internal/PropertyReference1Impl;->signature:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method
