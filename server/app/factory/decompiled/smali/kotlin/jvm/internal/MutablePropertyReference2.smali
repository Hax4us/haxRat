.class public abstract Lkotlin/jvm/internal/MutablePropertyReference2;
.super Lkotlin/jvm/internal/MutablePropertyReference;
.source "MutablePropertyReference2.java"

# interfaces
.implements Lkotlin/reflect/KMutableProperty2;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 13
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lkotlin/jvm/internal/MutablePropertyReference;-><init>()V

    return-void
.end method


# virtual methods
.method protected computeReflected()Lkotlin/reflect/KCallable;
    .locals 2

    .prologue
    .line 16
    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty2(Lkotlin/jvm/internal/MutablePropertyReference2;)Lkotlin/reflect/KMutableProperty2;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getDelegate(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation build Lkotlin/SinceKotlin;
        version = "1.1"
    .end annotation

    .prologue
    .line 37
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    invoke-virtual {v3}, Lkotlin/jvm/internal/MutablePropertyReference2;->getReflected()Lkotlin/reflect/KProperty;

    move-result-object v3

    check-cast v3, Lkotlin/reflect/KMutableProperty2;

    move-object v4, v1

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Lkotlin/reflect/KMutableProperty2;->getDelegate(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method public bridge synthetic getGetter()Lkotlin/reflect/KProperty$Getter;
    .locals 2

    .prologue
    .line 13
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lkotlin/jvm/internal/MutablePropertyReference2;->getGetter()Lkotlin/reflect/KProperty2$Getter;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getGetter()Lkotlin/reflect/KProperty2$Getter;
    .locals 2

    .prologue
    .line 26
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lkotlin/jvm/internal/MutablePropertyReference2;->getReflected()Lkotlin/reflect/KProperty;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KMutableProperty2;

    invoke-interface {v1}, Lkotlin/reflect/KMutableProperty2;->getGetter()Lkotlin/reflect/KProperty2$Getter;

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

    invoke-virtual {v1}, Lkotlin/jvm/internal/MutablePropertyReference2;->getSetter()Lkotlin/reflect/KMutableProperty2$Setter;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getSetter()Lkotlin/reflect/KMutableProperty2$Setter;
    .locals 2

    .prologue
    .line 31
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lkotlin/jvm/internal/MutablePropertyReference2;->getReflected()Lkotlin/reflect/KProperty;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KMutableProperty2;

    invoke-interface {v1}, Lkotlin/reflect/KMutableProperty2;->getSetter()Lkotlin/reflect/KMutableProperty2$Setter;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 21
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lkotlin/jvm/internal/MutablePropertyReference2;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method
