.class public Lkotlin/jvm/internal/Reflection;
.super Ljava/lang/Object;
.source "Reflection.java"


# static fields
.field private static final EMPTY_K_CLASS_ARRAY:[Lkotlin/reflect/KClass;

.field static final REFLECTION_NOT_AVAILABLE:Ljava/lang/String; = " (Kotlin reflection is not available)"

.field private static final factory:Lkotlin/jvm/internal/ReflectionFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 22
    :try_start_0
    const-string v2, "kotlin.reflect.jvm.internal.ReflectionFactoryImpl"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    move-object v1, v2

    .line 23
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/jvm/internal/ReflectionFactory;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3

    move-object v0, v2

    .line 30
    :goto_0
    move-object v2, v0

    if-eqz v2, :cond_0

    move-object v2, v0

    :goto_1
    sput-object v2, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    .line 35
    const/4 v2, 0x0

    new-array v2, v2, [Lkotlin/reflect/KClass;

    sput-object v2, Lkotlin/jvm/internal/Reflection;->EMPTY_K_CLASS_ARRAY:[Lkotlin/reflect/KClass;

    return-void

    .line 25
    :catch_0
    move-exception v2

    move-object v1, v2

    const/4 v2, 0x0

    move-object v0, v2

    .line 28
    goto :goto_0

    .line 26
    :catch_1
    move-exception v2

    move-object v1, v2

    const/4 v2, 0x0

    move-object v0, v2

    .line 28
    goto :goto_0

    .line 27
    :catch_2
    move-exception v2

    move-object v1, v2

    const/4 v2, 0x0

    move-object v0, v2

    .line 28
    goto :goto_0

    :catch_3
    move-exception v2

    move-object v1, v2

    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0

    .line 30
    :cond_0
    new-instance v2, Lkotlin/jvm/internal/ReflectionFactory;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lkotlin/jvm/internal/ReflectionFactory;-><init>()V

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 16
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;
    .locals 3

    .prologue
    .line 38
    move-object v0, p0

    sget-object v1, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    move-object v2, v0

    invoke-virtual {v1, v2}, Lkotlin/jvm/internal/ReflectionFactory;->createKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static createKotlinClass(Ljava/lang/Class;Ljava/lang/String;)Lkotlin/reflect/KClass;
    .locals 5

    .prologue
    .line 42
    move-object v0, p0

    move-object v1, p1

    sget-object v2, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lkotlin/jvm/internal/ReflectionFactory;->createKotlinClass(Ljava/lang/Class;Ljava/lang/String;)Lkotlin/reflect/KClass;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public static function(Lkotlin/jvm/internal/FunctionReference;)Lkotlin/reflect/KFunction;
    .locals 3

    .prologue
    .line 75
    move-object v0, p0

    sget-object v1, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    move-object v2, v0

    invoke-virtual {v1, v2}, Lkotlin/jvm/internal/ReflectionFactory;->function(Lkotlin/jvm/internal/FunctionReference;)Lkotlin/reflect/KFunction;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;
    .locals 3

    .prologue
    .line 50
    move-object v0, p0

    sget-object v1, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    move-object v2, v0

    invoke-virtual {v1, v2}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static getOrCreateKotlinClass(Ljava/lang/Class;Ljava/lang/String;)Lkotlin/reflect/KClass;
    .locals 5

    .prologue
    .line 54
    move-object v0, p0

    move-object v1, p1

    sget-object v2, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;Ljava/lang/String;)Lkotlin/reflect/KClass;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public static getOrCreateKotlinClasses([Ljava/lang/Class;)[Lkotlin/reflect/KClass;
    .locals 8

    .prologue
    .line 58
    move-object v0, p0

    move-object v4, v0

    array-length v4, v4

    move v1, v4

    .line 59
    move v4, v1

    if-nez v4, :cond_0

    sget-object v4, Lkotlin/jvm/internal/Reflection;->EMPTY_K_CLASS_ARRAY:[Lkotlin/reflect/KClass;

    move-object v0, v4

    .line 64
    :goto_0
    return-object v0

    .line 60
    :cond_0
    move v4, v1

    new-array v4, v4, [Lkotlin/reflect/KClass;

    move-object v2, v4

    .line 61
    const/4 v4, 0x0

    move v3, v4

    :goto_1
    move v4, v3

    move v5, v1

    if-ge v4, v5, :cond_1

    .line 62
    move-object v4, v2

    move v5, v3

    move-object v6, v0

    move v7, v3

    aget-object v6, v6, v7

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    aput-object v6, v4, v5

    .line 61
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 64
    :cond_1
    move-object v4, v2

    move-object v0, v4

    goto :goto_0
.end method

.method public static getOrCreateKotlinPackage(Ljava/lang/Class;Ljava/lang/String;)Lkotlin/reflect/KDeclarationContainer;
    .locals 5

    .prologue
    .line 46
    move-object v0, p0

    move-object v1, p1

    sget-object v2, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinPackage(Ljava/lang/Class;Ljava/lang/String;)Lkotlin/reflect/KDeclarationContainer;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public static mutableProperty0(Lkotlin/jvm/internal/MutablePropertyReference0;)Lkotlin/reflect/KMutableProperty0;
    .locals 3

    .prologue
    .line 85
    move-object v0, p0

    sget-object v1, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    move-object v2, v0

    invoke-virtual {v1, v2}, Lkotlin/jvm/internal/ReflectionFactory;->mutableProperty0(Lkotlin/jvm/internal/MutablePropertyReference0;)Lkotlin/reflect/KMutableProperty0;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;
    .locals 3

    .prologue
    .line 93
    move-object v0, p0

    sget-object v1, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    move-object v2, v0

    invoke-virtual {v1, v2}, Lkotlin/jvm/internal/ReflectionFactory;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static mutableProperty2(Lkotlin/jvm/internal/MutablePropertyReference2;)Lkotlin/reflect/KMutableProperty2;
    .locals 3

    .prologue
    .line 101
    move-object v0, p0

    sget-object v1, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    move-object v2, v0

    invoke-virtual {v1, v2}, Lkotlin/jvm/internal/ReflectionFactory;->mutableProperty2(Lkotlin/jvm/internal/MutablePropertyReference2;)Lkotlin/reflect/KMutableProperty2;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static property0(Lkotlin/jvm/internal/PropertyReference0;)Lkotlin/reflect/KProperty0;
    .locals 3

    .prologue
    .line 81
    move-object v0, p0

    sget-object v1, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    move-object v2, v0

    invoke-virtual {v1, v2}, Lkotlin/jvm/internal/ReflectionFactory;->property0(Lkotlin/jvm/internal/PropertyReference0;)Lkotlin/reflect/KProperty0;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;
    .locals 3

    .prologue
    .line 89
    move-object v0, p0

    sget-object v1, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    move-object v2, v0

    invoke-virtual {v1, v2}, Lkotlin/jvm/internal/ReflectionFactory;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static property2(Lkotlin/jvm/internal/PropertyReference2;)Lkotlin/reflect/KProperty2;
    .locals 3

    .prologue
    .line 97
    move-object v0, p0

    sget-object v1, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    move-object v2, v0

    invoke-virtual {v1, v2}, Lkotlin/jvm/internal/ReflectionFactory;->property2(Lkotlin/jvm/internal/PropertyReference2;)Lkotlin/reflect/KProperty2;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static renderLambdaToString(Lkotlin/jvm/internal/Lambda;)Ljava/lang/String;
    .locals 3
    .annotation build Lkotlin/SinceKotlin;
        version = "1.1"
    .end annotation

    .prologue
    .line 69
    move-object v0, p0

    sget-object v1, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    move-object v2, v0

    invoke-virtual {v1, v2}, Lkotlin/jvm/internal/ReflectionFactory;->renderLambdaToString(Lkotlin/jvm/internal/Lambda;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method
