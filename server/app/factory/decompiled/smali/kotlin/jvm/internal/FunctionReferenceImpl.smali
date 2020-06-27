.class public Lkotlin/jvm/internal/FunctionReferenceImpl;
.super Lkotlin/jvm/internal/FunctionReference;
.source "FunctionReferenceImpl.java"


# instance fields
.field private final name:Ljava/lang/String;

.field private final owner:Lkotlin/reflect/KDeclarationContainer;

.field private final signature:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 16
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v0

    move v6, v1

    invoke-direct {v5, v6}, Lkotlin/jvm/internal/FunctionReference;-><init>(I)V

    .line 17
    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Lkotlin/jvm/internal/FunctionReferenceImpl;->owner:Lkotlin/reflect/KDeclarationContainer;

    .line 18
    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Lkotlin/jvm/internal/FunctionReferenceImpl;->name:Ljava/lang/String;

    .line 19
    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Lkotlin/jvm/internal/FunctionReferenceImpl;->signature:Ljava/lang/String;

    .line 20
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 29
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lkotlin/jvm/internal/FunctionReferenceImpl;->name:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public getOwner()Lkotlin/reflect/KDeclarationContainer;
    .locals 2

    .prologue
    .line 24
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lkotlin/jvm/internal/FunctionReferenceImpl;->owner:Lkotlin/reflect/KDeclarationContainer;

    move-object v0, v1

    return-object v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lkotlin/jvm/internal/FunctionReferenceImpl;->signature:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method
