.class public abstract Lkotlin/jvm/internal/MutablePropertyReference1;
.super Lkotlin/jvm/internal/MutablePropertyReference;
.source "MutablePropertyReference1.java"

# interfaces
.implements Lkotlin/reflect/KMutableProperty1;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 14
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lkotlin/jvm/internal/MutablePropertyReference;-><init>()V

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

    invoke-direct {v2, v3}, Lkotlin/jvm/internal/MutablePropertyReference;-><init>(Ljava/lang/Object;)V

    .line 20
    return-void
.end method


# virtual methods
.method protected computeReflected()Lkotlin/reflect/KCallable;
    .locals 2

    .prologue
    .line 24
    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getDelegate(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation build Lkotlin/SinceKotlin;
        version = "1.1"
    .end annotation

    .prologue
    .line 45
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-virtual {v2}, Lkotlin/jvm/internal/MutablePropertyReference1;->getReflected()Lkotlin/reflect/KProperty;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/KMutableProperty1;

    move-object v3, v1

    invoke-interface {v2, v3}, Lkotlin/reflect/KMutableProperty1;->getDelegate(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public bridge synthetic getGetter()Lkotlin/reflect/KProperty$Getter;
    .locals 2

    .prologue
    .line 13
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lkotlin/jvm/internal/MutablePropertyReference1;->getGetter()Lkotlin/reflect/KProperty1$Getter;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getGetter()Lkotlin/reflect/KProperty1$Getter;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lkotlin/jvm/internal/MutablePropertyReference1;->getReflected()Lkotlin/reflect/KProperty;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KMutableProperty1;

    invoke-interface {v1}, Lkotlin/reflect/KMutableProperty1;->getGetter()Lkotlin/reflect/KProperty1$Getter;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public bridge synthetic getSetter()Lkotlin/reflect/KMutableProperty$Setter;
    .locals 2

    .prologue
    .line 13
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lkotlin/jvm/internal/MutablePropertyReference1;->getSetter()Lkotlin/reflect/KMutableProperty1$Setter;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getSetter()Lkotlin/reflect/KMutableProperty1$Setter;
    .locals 2

    .prologue
    .line 39
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lkotlin/jvm/internal/MutablePropertyReference1;->getReflected()Lkotlin/reflect/KProperty;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KMutableProperty1;

    invoke-interface {v1}, Lkotlin/reflect/KMutableProperty1;->getSetter()Lkotlin/reflect/KMutableProperty1$Setter;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 29
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lkotlin/jvm/internal/MutablePropertyReference1;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method
