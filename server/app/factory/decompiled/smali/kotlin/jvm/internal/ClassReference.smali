.class public final Lkotlin/jvm/internal/ClassReference;
.super Ljava/lang/Object;
.source "ClassReference.kt"

# interfaces
.implements Lkotlin/reflect/KClass;
.implements Lkotlin/jvm/internal/ClassBasedDeclarationContainer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/reflect/KClass",
        "<",
        "Ljava/lang/Object;",
        ">;",
        "Lkotlin/jvm/internal/ClassBasedDeclarationContainer;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000p\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0010\u001b\n\u0002\u0008\u0003\n\u0002\u0010\u001e\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0012\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0001\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003B\u0011\u0012\n\u0010\u0004\u001a\u0006\u0012\u0002\u0008\u00030\u0005\u00a2\u0006\u0002\u0010\u0006J\u0013\u0010?\u001a\u00020\u00122\u0008\u0010@\u001a\u0004\u0018\u00010\u0002H\u0096\u0002J\u0008\u0010A\u001a\u00020BH\u0002J\u0008\u0010C\u001a\u00020DH\u0016J\u0012\u0010E\u001a\u00020\u00122\u0008\u0010F\u001a\u0004\u0018\u00010\u0002H\u0017J\u0008\u0010G\u001a\u00020-H\u0016R\u001a\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00088VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000bR \u0010\u000c\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00020\u000e0\r8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\u0010R\u001a\u0010\u0011\u001a\u00020\u00128VX\u0097\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u0011\u0010\u0015R\u001a\u0010\u0016\u001a\u00020\u00128VX\u0097\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u0017\u0010\u0014\u001a\u0004\u0008\u0016\u0010\u0015R\u001a\u0010\u0018\u001a\u00020\u00128VX\u0097\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u0019\u0010\u0014\u001a\u0004\u0008\u0018\u0010\u0015R\u001a\u0010\u001a\u001a\u00020\u00128VX\u0097\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u001b\u0010\u0014\u001a\u0004\u0008\u001a\u0010\u0015R\u001a\u0010\u001c\u001a\u00020\u00128VX\u0097\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u001d\u0010\u0014\u001a\u0004\u0008\u001c\u0010\u0015R\u001a\u0010\u001e\u001a\u00020\u00128VX\u0097\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u001f\u0010\u0014\u001a\u0004\u0008\u001e\u0010\u0015R\u001a\u0010 \u001a\u00020\u00128VX\u0097\u0004\u00a2\u0006\u000c\u0012\u0004\u0008!\u0010\u0014\u001a\u0004\u0008 \u0010\u0015R\u0018\u0010\u0004\u001a\u0006\u0012\u0002\u0008\u00030\u0005X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\"\u0010#R\u001e\u0010$\u001a\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030%0\r8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008&\u0010\u0010R\u001e\u0010\'\u001a\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u00010\r8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008(\u0010\u0010R\u0016\u0010)\u001a\u0004\u0018\u00010\u00028VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008*\u0010+R\u0016\u0010,\u001a\u0004\u0018\u00010-8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008.\u0010/R\u0016\u00100\u001a\u0004\u0018\u00010-8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u00081\u0010/R \u00102\u001a\u0008\u0012\u0004\u0012\u0002030\u00088VX\u0097\u0004\u00a2\u0006\u000c\u0012\u0004\u00084\u0010\u0014\u001a\u0004\u00085\u0010\u000bR \u00106\u001a\u0008\u0012\u0004\u0012\u0002070\u00088VX\u0097\u0004\u00a2\u0006\u000c\u0012\u0004\u00088\u0010\u0014\u001a\u0004\u00089\u0010\u000bR\u001c\u0010:\u001a\u0004\u0018\u00010;8VX\u0097\u0004\u00a2\u0006\u000c\u0012\u0004\u0008<\u0010\u0014\u001a\u0004\u0008=\u0010>\u00a8\u0006H"
    }
    d2 = {
        "Lkotlin/jvm/internal/ClassReference;",
        "Lkotlin/reflect/KClass;",
        "",
        "Lkotlin/jvm/internal/ClassBasedDeclarationContainer;",
        "jClass",
        "Ljava/lang/Class;",
        "(Ljava/lang/Class;)V",
        "annotations",
        "",
        "",
        "getAnnotations",
        "()Ljava/util/List;",
        "constructors",
        "",
        "Lkotlin/reflect/KFunction;",
        "getConstructors",
        "()Ljava/util/Collection;",
        "isAbstract",
        "",
        "isAbstract$annotations",
        "()V",
        "()Z",
        "isCompanion",
        "isCompanion$annotations",
        "isData",
        "isData$annotations",
        "isFinal",
        "isFinal$annotations",
        "isInner",
        "isInner$annotations",
        "isOpen",
        "isOpen$annotations",
        "isSealed",
        "isSealed$annotations",
        "getJClass",
        "()Ljava/lang/Class;",
        "members",
        "Lkotlin/reflect/KCallable;",
        "getMembers",
        "nestedClasses",
        "getNestedClasses",
        "objectInstance",
        "getObjectInstance",
        "()Ljava/lang/Object;",
        "qualifiedName",
        "",
        "getQualifiedName",
        "()Ljava/lang/String;",
        "simpleName",
        "getSimpleName",
        "supertypes",
        "Lkotlin/reflect/KType;",
        "supertypes$annotations",
        "getSupertypes",
        "typeParameters",
        "Lkotlin/reflect/KTypeParameter;",
        "typeParameters$annotations",
        "getTypeParameters",
        "visibility",
        "Lkotlin/reflect/KVisibility;",
        "visibility$annotations",
        "getVisibility",
        "()Lkotlin/reflect/KVisibility;",
        "equals",
        "other",
        "error",
        "",
        "hashCode",
        "",
        "isInstance",
        "value",
        "toString",
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
.field private final jClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 4
    .param p1    # Ljava/lang/Class;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    const-string v3, "jClass"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lkotlin/jvm/internal/ClassReference;->jClass:Ljava/lang/Class;

    return-void
.end method

.method private final error()Ljava/lang/Void;
    .locals 4

    .prologue
    .line 75
    move-object v0, p0

    new-instance v1, Lkotlin/jvm/KotlinReflectionNotSupportedError;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Lkotlin/jvm/KotlinReflectionNotSupportedError;-><init>()V

    check-cast v1, Ljava/lang/Throwable;

    throw v1
.end method

.method public static synthetic isAbstract$annotations()V
    .locals 0
    .annotation build Lkotlin/SinceKotlin;
        version = "1.1"
    .end annotation

    return-void
.end method

.method public static synthetic isCompanion$annotations()V
    .locals 0
    .annotation build Lkotlin/SinceKotlin;
        version = "1.1"
    .end annotation

    return-void
.end method

.method public static synthetic isData$annotations()V
    .locals 0
    .annotation build Lkotlin/SinceKotlin;
        version = "1.1"
    .end annotation

    return-void
.end method

.method public static synthetic isFinal$annotations()V
    .locals 0
    .annotation build Lkotlin/SinceKotlin;
        version = "1.1"
    .end annotation

    return-void
.end method

.method public static synthetic isInner$annotations()V
    .locals 0
    .annotation build Lkotlin/SinceKotlin;
        version = "1.1"
    .end annotation

    return-void
.end method

.method public static synthetic isOpen$annotations()V
    .locals 0
    .annotation build Lkotlin/SinceKotlin;
        version = "1.1"
    .end annotation

    return-void
.end method

.method public static synthetic isSealed$annotations()V
    .locals 0
    .annotation build Lkotlin/SinceKotlin;
        version = "1.1"
    .end annotation

    return-void
.end method

.method public static synthetic supertypes$annotations()V
    .locals 0
    .annotation build Lkotlin/SinceKotlin;
        version = "1.1"
    .end annotation

    return-void
.end method

.method public static synthetic typeParameters$annotations()V
    .locals 0
    .annotation build Lkotlin/SinceKotlin;
        version = "1.1"
    .end annotation

    return-void
.end method

.method public static synthetic visibility$annotations()V
    .locals 0
    .annotation build Lkotlin/SinceKotlin;
        version = "1.1"
    .end annotation

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 78
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    instance-of v2, v2, Lkotlin/jvm/internal/ClassReference;

    if-eqz v2, :cond_0

    move-object v2, v0

    invoke-static {v2}, Lkotlin/jvm/JvmClassMappingKt;->getJavaObjectType(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    move-result-object v2

    move-object v3, v1

    check-cast v3, Lkotlin/reflect/KClass;

    invoke-static {v3}, Lkotlin/jvm/JvmClassMappingKt;->getJavaObjectType(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    return v0

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getAnnotations()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 27
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lkotlin/jvm/internal/ClassReference;->error()Ljava/lang/Void;

    move-result-object v1

    const/4 v2, 0x0

    throw v2
.end method

.method public getConstructors()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lkotlin/reflect/KFunction",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 21
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lkotlin/jvm/internal/ClassReference;->error()Ljava/lang/Void;

    move-result-object v1

    const/4 v2, 0x0

    throw v2
.end method

.method public getJClass()Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 10
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lkotlin/jvm/internal/ClassReference;->jClass:Ljava/lang/Class;

    move-object v0, v1

    return-object v0
.end method

.method public getMembers()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lkotlin/reflect/KCallable",
            "<*>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 18
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lkotlin/jvm/internal/ClassReference;->error()Ljava/lang/Void;

    move-result-object v1

    const/4 v2, 0x0

    throw v2
.end method

.method public getNestedClasses()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lkotlin/reflect/KClass",
            "<*>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 24
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lkotlin/jvm/internal/ClassReference;->error()Ljava/lang/Void;

    move-result-object v1

    const/4 v2, 0x0

    throw v2
.end method

.method public getObjectInstance()Ljava/lang/Object;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 30
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lkotlin/jvm/internal/ClassReference;->error()Ljava/lang/Void;

    move-result-object v1

    const/4 v2, 0x0

    throw v2
.end method

.method public getQualifiedName()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 15
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lkotlin/jvm/internal/ClassReference;->error()Ljava/lang/Void;

    move-result-object v1

    const/4 v2, 0x0

    throw v2
.end method

.method public getSimpleName()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 12
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lkotlin/jvm/internal/ClassReference;->error()Ljava/lang/Void;

    move-result-object v1

    const/4 v2, 0x0

    throw v2
.end method

.method public getSupertypes()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lkotlin/reflect/KType;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 41
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lkotlin/jvm/internal/ClassReference;->error()Ljava/lang/Void;

    move-result-object v1

    const/4 v2, 0x0

    throw v2
.end method

.method public getTypeParameters()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lkotlin/reflect/KTypeParameter;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 37
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lkotlin/jvm/internal/ClassReference;->error()Ljava/lang/Void;

    move-result-object v1

    const/4 v2, 0x0

    throw v2
.end method

.method public getVisibility()Lkotlin/reflect/KVisibility;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 45
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lkotlin/jvm/internal/ClassReference;->error()Ljava/lang/Void;

    move-result-object v1

    const/4 v2, 0x0

    throw v2
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 81
    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Lkotlin/jvm/JvmClassMappingKt;->getJavaObjectType(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->hashCode()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public isAbstract()Z
    .locals 3

    .prologue
    .line 57
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lkotlin/jvm/internal/ClassReference;->error()Ljava/lang/Void;

    move-result-object v1

    const/4 v2, 0x0

    throw v2
.end method

.method public isCompanion()Z
    .locals 3

    .prologue
    .line 73
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lkotlin/jvm/internal/ClassReference;->error()Ljava/lang/Void;

    move-result-object v1

    const/4 v2, 0x0

    throw v2
.end method

.method public isData()Z
    .locals 3

    .prologue
    .line 65
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lkotlin/jvm/internal/ClassReference;->error()Ljava/lang/Void;

    move-result-object v1

    const/4 v2, 0x0

    throw v2
.end method

.method public isFinal()Z
    .locals 3

    .prologue
    .line 49
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lkotlin/jvm/internal/ClassReference;->error()Ljava/lang/Void;

    move-result-object v1

    const/4 v2, 0x0

    throw v2
.end method

.method public isInner()Z
    .locals 3

    .prologue
    .line 69
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lkotlin/jvm/internal/ClassReference;->error()Ljava/lang/Void;

    move-result-object v1

    const/4 v2, 0x0

    throw v2
.end method

.method public isInstance(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lkotlin/SinceKotlin;
        version = "1.1"
    .end annotation

    .prologue
    .line 33
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Lkotlin/jvm/internal/ClassReference;->error()Ljava/lang/Void;

    move-result-object v2

    const/4 v3, 0x0

    throw v3
.end method

.method public isOpen()Z
    .locals 3

    .prologue
    .line 53
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lkotlin/jvm/internal/ClassReference;->error()Ljava/lang/Void;

    move-result-object v1

    const/4 v2, 0x0

    throw v2
.end method

.method public isSealed()Z
    .locals 3

    .prologue
    .line 61
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lkotlin/jvm/internal/ClassReference;->error()Ljava/lang/Void;

    move-result-object v1

    const/4 v2, 0x0

    throw v2
.end method

.method public toString()Ljava/lang/String;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 84
    move-object v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v0

    invoke-virtual {v2}, Lkotlin/jvm/internal/ClassReference;->getJClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (Kotlin reflection is not available)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method
