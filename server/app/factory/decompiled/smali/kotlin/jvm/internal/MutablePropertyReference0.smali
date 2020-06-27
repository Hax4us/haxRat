.class public abstract Lkotlin/jvm/internal/MutablePropertyReference0;
.super Lkotlin/jvm/internal/MutablePropertyReference;
.source "MutablePropertyReference0.java"

# interfaces
.implements Lkotlin/reflect/KMutableProperty0;


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

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty0(Lkotlin/jvm/internal/MutablePropertyReference0;)Lkotlin/reflect/KMutableProperty0;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getDelegate()Ljava/lang/Object;
    .locals 2
    .annotation build Lkotlin/SinceKotlin;
        version = "1.1"
    .end annotation

    .prologue
    .line 45
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lkotlin/jvm/internal/MutablePropertyReference0;->getReflected()Lkotlin/reflect/KProperty;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KMutableProperty0;

    invoke-interface {v1}, Lkotlin/reflect/KMutableProperty0;->getDelegate()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public bridge synthetic getGetter()Lkotlin/reflect/KProperty$Getter;
    .locals 2

    .prologue
    .line 13
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lkotlin/jvm/internal/MutablePropertyReference0;->getGetter()Lkotlin/reflect/KProperty0$Getter;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getGetter()Lkotlin/reflect/KProperty0$Getter;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lkotlin/jvm/internal/MutablePropertyReference0;->getReflected()Lkotlin/reflect/KProperty;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KMutableProperty0;

    invoke-interface {v1}, Lkotlin/reflect/KMutableProperty0;->getGetter()Lkotlin/reflect/KProperty0$Getter;

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

    invoke-virtual {v1}, Lkotlin/jvm/internal/MutablePropertyReference0;->getSetter()Lkotlin/reflect/KMutableProperty0$Setter;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getSetter()Lkotlin/reflect/KMutableProperty0$Setter;
    .locals 2

    .prologue
    .line 39
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lkotlin/jvm/internal/MutablePropertyReference0;->getReflected()Lkotlin/reflect/KProperty;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KMutableProperty0;

    invoke-interface {v1}, Lkotlin/reflect/KMutableProperty0;->getSetter()Lkotlin/reflect/KMutableProperty0$Setter;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public invoke()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 29
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lkotlin/jvm/internal/MutablePropertyReference0;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method
