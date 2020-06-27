.class public Lkotlin/jvm/internal/ReflectionFactory;
.super Ljava/lang/Object;
.source "ReflectionFactory.java"


# static fields
.field private static final KOTLIN_JVM_FUNCTIONS:Ljava/lang/String; = "kotlin.jvm.functions."


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 11
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;
    .locals 6

    .prologue
    .line 15
    move-object v0, p0

    move-object v1, p1

    new-instance v2, Lkotlin/jvm/internal/ClassReference;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-direct {v3, v4}, Lkotlin/jvm/internal/ClassReference;-><init>(Ljava/lang/Class;)V

    move-object v0, v2

    return-object v0
.end method

.method public createKotlinClass(Ljava/lang/Class;Ljava/lang/String;)Lkotlin/reflect/KClass;
    .locals 7

    .prologue
    .line 19
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    new-instance v3, Lkotlin/jvm/internal/ClassReference;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Lkotlin/jvm/internal/ClassReference;-><init>(Ljava/lang/Class;)V

    move-object v0, v3

    return-object v0
.end method

.method public function(Lkotlin/jvm/internal/FunctionReference;)Lkotlin/reflect/KFunction;
    .locals 3

    .prologue
    .line 43
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    move-object v0, v2

    return-object v0
.end method

.method public getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;
    .locals 6

    .prologue
    .line 27
    move-object v0, p0

    move-object v1, p1

    new-instance v2, Lkotlin/jvm/internal/ClassReference;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-direct {v3, v4}, Lkotlin/jvm/internal/ClassReference;-><init>(Ljava/lang/Class;)V

    move-object v0, v2

    return-object v0
.end method

.method public getOrCreateKotlinClass(Ljava/lang/Class;Ljava/lang/String;)Lkotlin/reflect/KClass;
    .locals 7

    .prologue
    .line 31
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    new-instance v3, Lkotlin/jvm/internal/ClassReference;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Lkotlin/jvm/internal/ClassReference;-><init>(Ljava/lang/Class;)V

    move-object v0, v3

    return-object v0
.end method

.method public getOrCreateKotlinPackage(Ljava/lang/Class;Ljava/lang/String;)Lkotlin/reflect/KDeclarationContainer;
    .locals 8

    .prologue
    .line 23
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    new-instance v3, Lkotlin/jvm/internal/PackageReference;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Lkotlin/jvm/internal/PackageReference;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    move-object v0, v3

    return-object v0
.end method

.method public mutableProperty0(Lkotlin/jvm/internal/MutablePropertyReference0;)Lkotlin/reflect/KMutableProperty0;
    .locals 3

    .prologue
    .line 53
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    move-object v0, v2

    return-object v0
.end method

.method public mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;
    .locals 3

    .prologue
    .line 61
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    move-object v0, v2

    return-object v0
.end method

.method public mutableProperty2(Lkotlin/jvm/internal/MutablePropertyReference2;)Lkotlin/reflect/KMutableProperty2;
    .locals 3

    .prologue
    .line 69
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    move-object v0, v2

    return-object v0
.end method

.method public property0(Lkotlin/jvm/internal/PropertyReference0;)Lkotlin/reflect/KProperty0;
    .locals 3

    .prologue
    .line 49
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    move-object v0, v2

    return-object v0
.end method

.method public property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;
    .locals 3

    .prologue
    .line 57
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    move-object v0, v2

    return-object v0
.end method

.method public property2(Lkotlin/jvm/internal/PropertyReference2;)Lkotlin/reflect/KProperty2;
    .locals 3

    .prologue
    .line 65
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    move-object v0, v2

    return-object v0
.end method

.method public renderLambdaToString(Lkotlin/jvm/internal/Lambda;)Ljava/lang/String;
    .locals 5
    .annotation build Lkotlin/SinceKotlin;
        version = "1.1"
    .end annotation

    .prologue
    .line 36
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 37
    move-object v3, v2

    const-string v4, "kotlin.jvm.functions."

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v2

    const-string v4, "kotlin.jvm.functions."

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    :goto_0
    move-object v0, v3

    return-object v0

    :cond_0
    move-object v3, v2

    goto :goto_0
.end method
