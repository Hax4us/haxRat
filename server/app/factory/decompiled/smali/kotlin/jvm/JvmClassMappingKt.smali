.class public final Lkotlin/jvm/JvmClassMappingKt;
.super Ljava/lang/Object;
.source "JvmClassMapping.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000,\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u001b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0000\n\u0002\u0008\u000b\n\u0002\u0010\u000b\n\u0002\u0010\u0011\n\u0002\u0008\u0002\u001a\u001f\u0010\u0018\u001a\u00020\u0019\"\n\u0008\u0000\u0010\u0002\u0018\u0001*\u00020\r*\u0006\u0012\u0002\u0008\u00030\u001a\u00a2\u0006\u0002\u0010\u001b\"\'\u0010\u0000\u001a\n\u0012\u0006\u0008\u0001\u0012\u0002H\u00020\u0001\"\u0008\u0008\u0000\u0010\u0002*\u00020\u0003*\u0002H\u00028F\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005\"0\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0007\"\u0004\u0008\u0000\u0010\u0002*\u0008\u0012\u0004\u0012\u0002H\u00020\u00018GX\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\n\u0010\u000b\"&\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0007\"\u0008\u0008\u0000\u0010\u0002*\u00020\r*\u0002H\u00028\u00c6\u0002\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000e\";\u0010\u000c\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00020\u00010\u0007\"\u0008\u0008\u0000\u0010\u0002*\u00020\r*\u0008\u0012\u0004\u0012\u0002H\u00020\u00018\u00c7\u0002X\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u000f\u0010\t\u001a\u0004\u0008\u0010\u0010\u000b\"+\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0007\"\u0008\u0008\u0000\u0010\u0002*\u00020\r*\u0008\u0012\u0004\u0012\u0002H\u00020\u00018F\u00a2\u0006\u0006\u001a\u0004\u0008\u0012\u0010\u000b\"-\u0010\u0013\u001a\n\u0012\u0004\u0012\u0002H\u0002\u0018\u00010\u0007\"\u0008\u0008\u0000\u0010\u0002*\u00020\r*\u0008\u0012\u0004\u0012\u0002H\u00020\u00018F\u00a2\u0006\u0006\u001a\u0004\u0008\u0014\u0010\u000b\"+\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0008\u0008\u0000\u0010\u0002*\u00020\r*\u0008\u0012\u0004\u0012\u0002H\u00020\u00078G\u00a2\u0006\u0006\u001a\u0004\u0008\u0016\u0010\u0017\u00a8\u0006\u001c"
    }
    d2 = {
        "annotationClass",
        "Lkotlin/reflect/KClass;",
        "T",
        "",
        "getAnnotationClass",
        "(Ljava/lang/annotation/Annotation;)Lkotlin/reflect/KClass;",
        "java",
        "Ljava/lang/Class;",
        "java$annotations",
        "(Lkotlin/reflect/KClass;)V",
        "getJavaClass",
        "(Lkotlin/reflect/KClass;)Ljava/lang/Class;",
        "javaClass",
        "",
        "(Ljava/lang/Object;)Ljava/lang/Class;",
        "javaClass$annotations",
        "getRuntimeClassOfKClassInstance",
        "javaObjectType",
        "getJavaObjectType",
        "javaPrimitiveType",
        "getJavaPrimitiveType",
        "kotlin",
        "getKotlinClass",
        "(Ljava/lang/Class;)Lkotlin/reflect/KClass;",
        "isArrayOf",
        "",
        "",
        "([Ljava/lang/Object;)Z",
        "kotlin-stdlib"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0xa
    }
.end annotation

.annotation build Lkotlin/jvm/JvmName;
    name = "JvmClassMappingKt"
.end annotation


# direct methods
.method public static final getAnnotationClass(Ljava/lang/annotation/Annotation;)Lkotlin/reflect/KClass;
    .locals 6
    .param p0    # Ljava/lang/annotation/Annotation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/annotation/Annotation;",
            ">(TT;)",
            "Lkotlin/reflect/KClass",
            "<+TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, v0

    const-string v2, "$receiver"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    move-object v1, v0

    invoke-interface {v1}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v1

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const-string v3, "(this as java.lang.annot\u2026otation).annotationType()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/JvmClassMappingKt;->getKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    if-nez v2, :cond_0

    new-instance v2, Lkotlin/TypeCastException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "null cannot be cast to non-null type kotlin.reflect.KClass<out T>"

    invoke-direct {v3, v4}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    move-object v0, v1

    return-object v0
.end method

.method public static final getJavaClass(Ljava/lang/Object;)Ljava/lang/Class;
    .locals 7
    .param p0    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v2, v0

    const-string v3, "$receiver"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    if-nez v3, :cond_0

    new-instance v3, Lkotlin/TypeCastException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "null cannot be cast to non-null type java.lang.Class<T>"

    invoke-direct {v4, v5}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    move-object v0, v2

    return-object v0
.end method

.method public static final getJavaClass(Lkotlin/reflect/KClass;)Ljava/lang/Class;
    .locals 6
    .param p0    # Lkotlin/reflect/KClass;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/reflect/KClass",
            "<TT;>;)",
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
        name = "getJavaClass"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, v0

    const-string v2, "$receiver"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    move-object v1, v0

    check-cast v1, Lkotlin/jvm/internal/ClassBasedDeclarationContainer;

    invoke-interface {v1}, Lkotlin/jvm/internal/ClassBasedDeclarationContainer;->getJClass()Ljava/lang/Class;

    move-result-object v1

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    if-nez v2, :cond_0

    new-instance v2, Lkotlin/TypeCastException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "null cannot be cast to non-null type java.lang.Class<T>"

    invoke-direct {v3, v4}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    move-object v0, v1

    return-object v0
.end method

.method public static final getJavaObjectType(Lkotlin/reflect/KClass;)Ljava/lang/Class;
    .locals 8
    .param p0    # Lkotlin/reflect/KClass;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/reflect/KClass",
            "<TT;>;)",
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v3, v0

    const-string v4, "$receiver"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    move-object v3, v0

    check-cast v3, Lkotlin/jvm/internal/ClassBasedDeclarationContainer;

    invoke-interface {v3}, Lkotlin/jvm/internal/ClassBasedDeclarationContainer;->getJClass()Ljava/lang/Class;

    move-result-object v3

    move-object v1, v3

    .line 59
    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/Class;->isPrimitive()Z

    move-result v3

    if-nez v3, :cond_1

    move-object v3, v1

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    if-nez v4, :cond_0

    new-instance v4, Lkotlin/TypeCastException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string v6, "null cannot be cast to non-null type java.lang.Class<T>"

    invoke-direct {v5, v6}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    move-object v0, v3

    .line 61
    :goto_0
    return-object v0

    :cond_1
    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    if-nez v4, :cond_3

    .line 71
    :cond_2
    :goto_1
    move-object v3, v1

    .line 61
    :goto_2
    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    if-nez v4, :cond_4

    new-instance v4, Lkotlin/TypeCastException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string v6, "null cannot be cast to non-null type java.lang.Class<T>"

    invoke-direct {v5, v6}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_3
    move-object v2, v3

    move-object v3, v2

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    move-object v3, v2

    const-string v4, "double"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 69
    const-class v3, Ljava/lang/Double;

    goto :goto_2

    .line 61
    :sswitch_1
    move-object v3, v2

    const-string v4, "boolean"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 62
    const-class v3, Ljava/lang/Boolean;

    goto :goto_2

    .line 61
    :sswitch_2
    move-object v3, v2

    const-string v4, "void"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 70
    const-class v3, Ljava/lang/Void;

    goto :goto_2

    .line 61
    :sswitch_3
    move-object v3, v2

    const-string v4, "byte"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 64
    const-class v3, Ljava/lang/Byte;

    goto :goto_2

    .line 61
    :sswitch_4
    move-object v3, v2

    const-string v4, "char"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 63
    const-class v3, Ljava/lang/Character;

    goto :goto_2

    .line 61
    :sswitch_5
    move-object v3, v2

    const-string v4, "short"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 65
    const-class v3, Ljava/lang/Short;

    goto :goto_2

    .line 61
    :sswitch_6
    move-object v3, v2

    const-string v4, "float"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 67
    const-class v3, Ljava/lang/Float;

    goto :goto_2

    .line 61
    :sswitch_7
    move-object v3, v2

    const-string v4, "int"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 66
    const-class v3, Ljava/lang/Integer;

    goto :goto_2

    .line 61
    :sswitch_8
    move-object v3, v2

    const-string v4, "long"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 68
    const-class v3, Ljava/lang/Long;

    goto/16 :goto_2

    .line 61
    :cond_4
    move-object v0, v3

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        -0x4f08842f -> :sswitch_0
        0x197ef -> :sswitch_7
        0x2e6108 -> :sswitch_3
        0x2e9356 -> :sswitch_4
        0x32c67c -> :sswitch_8
        0x375194 -> :sswitch_2
        0x3db6c28 -> :sswitch_1
        0x5d0225c -> :sswitch_6
        0x685847c -> :sswitch_5
    .end sparse-switch
.end method

.method public static final getJavaPrimitiveType(Lkotlin/reflect/KClass;)Ljava/lang/Class;
    .locals 8
    .param p0    # Lkotlin/reflect/KClass;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/reflect/KClass",
            "<TT;>;)",
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v3, v0

    const-string v4, "$receiver"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    move-object v3, v0

    check-cast v3, Lkotlin/jvm/internal/ClassBasedDeclarationContainer;

    invoke-interface {v3}, Lkotlin/jvm/internal/ClassBasedDeclarationContainer;->getJClass()Ljava/lang/Class;

    move-result-object v3

    move-object v1, v3

    .line 36
    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/Class;->isPrimitive()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v1

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    if-nez v4, :cond_0

    new-instance v4, Lkotlin/TypeCastException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string v6, "null cannot be cast to non-null type java.lang.Class<T>"

    invoke-direct {v5, v6}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    move-object v0, v3

    .line 38
    :goto_0
    return-object v0

    :cond_1
    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    if-nez v4, :cond_3

    .line 48
    :cond_2
    :goto_1
    const/4 v3, 0x0

    .line 38
    :goto_2
    move-object v0, v3

    goto :goto_0

    :cond_3
    move-object v2, v3

    move-object v3, v2

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    move-object v3, v2

    const-string v4, "java.lang.Integer"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 43
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    goto :goto_2

    .line 38
    :sswitch_1
    move-object v3, v2

    const-string v4, "java.lang.Float"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 44
    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    goto :goto_2

    .line 38
    :sswitch_2
    move-object v3, v2

    const-string v4, "java.lang.Void"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 47
    sget-object v3, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    goto :goto_2

    .line 38
    :sswitch_3
    move-object v3, v2

    const-string v4, "java.lang.Character"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 40
    sget-object v3, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    goto :goto_2

    .line 38
    :sswitch_4
    move-object v3, v2

    const-string v4, "java.lang.Long"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 45
    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    goto :goto_2

    .line 38
    :sswitch_5
    move-object v3, v2

    const-string v4, "java.lang.Double"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 46
    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    goto :goto_2

    .line 38
    :sswitch_6
    move-object v3, v2

    const-string v4, "java.lang.Short"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 42
    sget-object v3, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    goto :goto_2

    .line 38
    :sswitch_7
    move-object v3, v2

    const-string v4, "java.lang.Boolean"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 39
    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    goto :goto_2

    .line 38
    :sswitch_8
    move-object v3, v2

    const-string v4, "java.lang.Byte"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 41
    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    goto :goto_2

    .line 38
    :sswitch_data_0
    .sparse-switch
        -0x7a988a96 -> :sswitch_0
        -0x1f76ce78 -> :sswitch_1
        -0x1ec16c58 -> :sswitch_6
        0x9415455 -> :sswitch_3
        0x148d6054 -> :sswitch_7
        0x17c0bc5c -> :sswitch_8
        0x17c521d0 -> :sswitch_4
        0x17c9ace8 -> :sswitch_2
        0x2d605225 -> :sswitch_5
    .end sparse-switch
.end method

.method public static final getKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;
    .locals 3
    .param p0    # Ljava/lang/Class;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lkotlin/reflect/KClass",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
        name = "getKotlinClass"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, v0

    const-string v2, "$receiver"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    move-object v1, v0

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static final getRuntimeClassOfKClassInstance(Lkotlin/reflect/KClass;)Ljava/lang/Class;
    .locals 7
    .param p0    # Lkotlin/reflect/KClass;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/reflect/KClass",
            "<TT;>;)",
            "Ljava/lang/Class",
            "<",
            "Lkotlin/reflect/KClass",
            "<TT;>;>;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
        name = "getRuntimeClassOfKClassInstance"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v2, v0

    const-string v3, "$receiver"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    move-object v2, v0

    check-cast v2, Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    if-nez v3, :cond_0

    new-instance v3, Lkotlin/TypeCastException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "null cannot be cast to non-null type java.lang.Class<kotlin.reflect.KClass<T>>"

    invoke-direct {v4, v5}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    move-object v0, v2

    return-object v0
.end method

.method private static final isArrayOf([Ljava/lang/Object;)Z
    .locals 3
    .param p0    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 101
    move-object v0, p0

    const/4 v1, 0x4

    const-string v2, "T"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v1, Ljava/lang/Object;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public static synthetic java$annotations(Lkotlin/reflect/KClass;)V
    .locals 0

    return-void
.end method

.method public static synthetic javaClass$annotations(Lkotlin/reflect/KClass;)V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "Use \'java\' property to get Java class corresponding to this Kotlin class or cast this instance to Any if you really want to get the runtime Java class of this implementation of KClass."
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "(this as Any).javaClass"
            imports = {}
        .end subannotation
    .end annotation

    return-void
.end method
