.class public final Lkotlin/internal/PlatformImplementationsKt;
.super Ljava/lang/Object;
.source "PlatformImplementations.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u001e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u0000\n\u0002\u0008\u0004\u001a \u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0005H\u0001\u001a\"\u0010\u0008\u001a\u0002H\t\"\n\u0008\u0000\u0010\t\u0018\u0001*\u00020\n2\u0006\u0010\u000b\u001a\u00020\nH\u0083\u0008\u00a2\u0006\u0002\u0010\u000c\u001a\u0008\u0010\r\u001a\u00020\u0005H\u0002\"\u0010\u0010\u0000\u001a\u00020\u00018\u0000X\u0081\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "IMPLEMENTATIONS",
        "Lkotlin/internal/PlatformImplementations;",
        "apiVersionIsAtLeast",
        "",
        "major",
        "",
        "minor",
        "patch",
        "castToBaseType",
        "T",
        "",
        "instance",
        "(Ljava/lang/Object;)Ljava/lang/Object;",
        "getJavaVersion",
        "kotlin-stdlib"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0xa
    }
.end annotation


# static fields
.field public static final IMPLEMENTATIONS:Lkotlin/internal/PlatformImplementations;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    .line 24
    nop

    .line 25
    invoke-static {}, Lkotlin/internal/PlatformImplementationsKt;->getJavaVersion()I

    move-result v6

    move v0, v6

    .line 26
    move v6, v0

    const v7, 0x10008

    if-lt v6, v7, :cond_0

    .line 27
    nop

    .line 28
    :try_start_0
    const-string v6, "kotlin.internal.jdk8.JDK8PlatformImplementations"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v6

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const-string v8, "Class.forName(\"kotlin.in\u2026entations\").newInstance()"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v1, v6

    nop

    move-object v6, v1

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    if-nez v7, :cond_2

    :try_start_1
    new-instance v7, Lkotlin/TypeCastException;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    const-string v9, "null cannot be cast to non-null type kotlin.internal.PlatformImplementations"

    invoke-direct {v8, v9}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_0
    move-exception v6

    move-object v2, v6

    move-object v6, v1

    :try_start_2
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    move-object v3, v6

    const-class v6, Lkotlin/internal/PlatformImplementations;

    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    move-object v4, v6

    new-instance v6, Ljava/lang/ClassCastException;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v10, v8

    move-object v8, v10

    move-object v9, v10

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Instance classloader: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", base type classloader: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v4

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    move-object v7, v2

    check-cast v7, Ljava/lang/Throwable;

    invoke-virtual {v6, v7}, Ljava/lang/ClassCastException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v6

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const-string v8, "ClassCastException(\"Inst\u2026baseTypeCL\").initCause(e)"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    throw v6
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    .line 29
    :catch_1
    move-exception v6

    move-object v1, v6

    .line 30
    nop

    .line 31
    :try_start_3
    const-string v6, "kotlin.internal.JRE8PlatformImplementations"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v6

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const-string v8, "Class.forName(\"kotlin.in\u2026entations\").newInstance()"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    move-object v1, v6

    nop

    move-object v6, v1

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    if-nez v7, :cond_3

    :try_start_4
    new-instance v7, Lkotlin/TypeCastException;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    const-string v9, "null cannot be cast to non-null type kotlin.internal.PlatformImplementations"

    invoke-direct {v8, v9}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_3

    :catch_2
    move-exception v6

    move-object v2, v6

    move-object v6, v1

    :try_start_5
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    move-object v3, v6

    const-class v6, Lkotlin/internal/PlatformImplementations;

    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    move-object v4, v6

    new-instance v6, Ljava/lang/ClassCastException;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v10, v8

    move-object v8, v10

    move-object v9, v10

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Instance classloader: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", base type classloader: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v4

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    move-object v7, v2

    check-cast v7, Ljava/lang/Throwable;

    invoke-virtual {v6, v7}, Ljava/lang/ClassCastException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v6

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const-string v8, "ClassCastException(\"Inst\u2026baseTypeCL\").initCause(e)"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    throw v6
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_3

    .line 32
    :catch_3
    move-exception v6

    move-object v1, v6

    .line 35
    :cond_0
    move v6, v0

    const v7, 0x10007

    if-lt v6, v7, :cond_1

    .line 36
    nop

    .line 37
    :try_start_6
    const-string v6, "kotlin.internal.jdk7.JDK7PlatformImplementations"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v6

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const-string v8, "Class.forName(\"kotlin.in\u2026entations\").newInstance()"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_6} :catch_5

    move-object v1, v6

    nop

    move-object v6, v1

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    if-nez v7, :cond_4

    :try_start_7
    new-instance v7, Lkotlin/TypeCastException;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    const-string v9, "null cannot be cast to non-null type kotlin.internal.PlatformImplementations"

    invoke-direct {v8, v9}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_7
    .catch Ljava/lang/ClassCastException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_7 .. :try_end_7} :catch_5

    :catch_4
    move-exception v6

    move-object v2, v6

    move-object v6, v1

    :try_start_8
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    move-object v3, v6

    const-class v6, Lkotlin/internal/PlatformImplementations;

    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    move-object v4, v6

    new-instance v6, Ljava/lang/ClassCastException;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v10, v8

    move-object v8, v10

    move-object v9, v10

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Instance classloader: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", base type classloader: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v4

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    move-object v7, v2

    check-cast v7, Ljava/lang/Throwable;

    invoke-virtual {v6, v7}, Ljava/lang/ClassCastException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v6

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const-string v8, "ClassCastException(\"Inst\u2026baseTypeCL\").initCause(e)"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    throw v6
    :try_end_8
    .catch Ljava/lang/ClassNotFoundException; {:try_start_8 .. :try_end_8} :catch_5

    .line 38
    :catch_5
    move-exception v6

    move-object v1, v6

    .line 39
    nop

    .line 40
    :try_start_9
    const-string v6, "kotlin.internal.JRE7PlatformImplementations"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v6

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const-string v8, "Class.forName(\"kotlin.in\u2026entations\").newInstance()"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/ClassNotFoundException; {:try_start_9 .. :try_end_9} :catch_7

    move-object v1, v6

    nop

    move-object v6, v1

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    if-nez v7, :cond_5

    :try_start_a
    new-instance v7, Lkotlin/TypeCastException;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    const-string v9, "null cannot be cast to non-null type kotlin.internal.PlatformImplementations"

    invoke-direct {v8, v9}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_a
    .catch Ljava/lang/ClassCastException; {:try_start_a .. :try_end_a} :catch_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_a .. :try_end_a} :catch_7

    :catch_6
    move-exception v6

    move-object v2, v6

    move-object v6, v1

    :try_start_b
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    move-object v3, v6

    const-class v6, Lkotlin/internal/PlatformImplementations;

    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    move-object v4, v6

    new-instance v6, Ljava/lang/ClassCastException;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v10, v8

    move-object v8, v10

    move-object v9, v10

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Instance classloader: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", base type classloader: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v4

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    move-object v7, v2

    check-cast v7, Ljava/lang/Throwable;

    invoke-virtual {v6, v7}, Ljava/lang/ClassCastException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v6

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const-string v8, "ClassCastException(\"Inst\u2026baseTypeCL\").initCause(e)"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    throw v6
    :try_end_b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_b .. :try_end_b} :catch_7

    .line 41
    :catch_7
    move-exception v6

    move-object v1, v6

    .line 44
    :cond_1
    new-instance v6, Lkotlin/internal/PlatformImplementations;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Lkotlin/internal/PlatformImplementations;-><init>()V

    nop

    .line 24
    :goto_0
    sput-object v6, Lkotlin/internal/PlatformImplementationsKt;->IMPLEMENTATIONS:Lkotlin/internal/PlatformImplementations;

    return-void

    .line 28
    :cond_2
    :try_start_c
    check-cast v6, Lkotlin/internal/PlatformImplementations;
    :try_end_c
    .catch Ljava/lang/ClassCastException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_c .. :try_end_c} :catch_1

    goto :goto_0

    .line 31
    :cond_3
    :try_start_d
    check-cast v6, Lkotlin/internal/PlatformImplementations;
    :try_end_d
    .catch Ljava/lang/ClassCastException; {:try_start_d .. :try_end_d} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_d .. :try_end_d} :catch_3

    goto :goto_0

    .line 37
    :cond_4
    :try_start_e
    check-cast v6, Lkotlin/internal/PlatformImplementations;
    :try_end_e
    .catch Ljava/lang/ClassCastException; {:try_start_e .. :try_end_e} :catch_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_e .. :try_end_e} :catch_5

    goto :goto_0

    .line 40
    :cond_5
    :try_start_f
    check-cast v6, Lkotlin/internal/PlatformImplementations;
    :try_end_f
    .catch Ljava/lang/ClassCastException; {:try_start_f .. :try_end_f} :catch_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_f .. :try_end_f} :catch_7

    goto :goto_0
.end method

.method public static final apiVersionIsAtLeast(III)Z
    .locals 7
    .annotation build Lkotlin/PublishedApi;
    .end annotation

    .annotation build Lkotlin/SinceKotlin;
        version = "1.2"
    .end annotation

    .prologue
    .line 88
    move v0, p0

    move v1, p1

    move v2, p2

    sget-object v3, Lkotlin/KotlinVersion;->CURRENT:Lkotlin/KotlinVersion;

    move v4, v0

    move v5, v1

    move v6, v2

    invoke-virtual {v3, v4, v5, v6}, Lkotlin/KotlinVersion;->isAtLeast(III)Z

    move-result v3

    move v0, v3

    return v0
.end method

.method private static final castToBaseType(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .prologue
    .line 49
    move-object v0, p0

    nop

    .line 50
    move-object v5, v0

    const/4 v6, 0x1

    :try_start_0
    const-string v7, "T"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    check-cast v5, Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v5

    return-object v0

    .line 51
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 52
    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    move-object v3, v5

    .line 53
    const/4 v5, 0x4

    const-string v6, "T"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v5, Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    move-object v4, v5

    .line 54
    new-instance v5, Ljava/lang/ClassCastException;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Instance classloader: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", base type classloader: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    move-object v6, v2

    check-cast v6, Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/ClassCastException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v5

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-string v7, "ClassCastException(\"Inst\u2026baseTypeCL\").initCause(e)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    throw v5
.end method

.method private static final getJavaVersion()I
    .locals 17

    .prologue
    .line 59
    const v10, 0x10006

    move v0, v10

    .line 60
    const-string v10, "java.specification.version"

    invoke-static {v10}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    if-eqz v11, :cond_0

    move-object v1, v10

    .line 61
    move-object v10, v1

    check-cast v10, Ljava/lang/CharSequence;

    const/16 v11, 0x2e

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x6

    const/4 v15, 0x0

    invoke-static/range {v10 .. v15}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v10

    move v2, v10

    .line 62
    move v10, v2

    if-gez v10, :cond_1

    .line 63
    nop

    move-object v10, v1

    move-object v3, v10

    move-object v10, v3

    :try_start_0
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    const/high16 v11, 0x10000

    mul-int/2addr v10, v11

    move v3, v10

    :goto_0
    move v10, v3

    move v0, v10

    .line 70
    :goto_1
    return v0

    .line 60
    :cond_0
    move v10, v0

    move v0, v10

    goto :goto_1

    .line 63
    :catch_0
    move-exception v10

    move-object v4, v10

    move v10, v0

    move v3, v10

    goto :goto_0

    .line 65
    :cond_1
    move-object v10, v1

    check-cast v10, Ljava/lang/CharSequence;

    const/16 v11, 0x2e

    move v12, v2

    const/4 v13, 0x1

    add-int/lit8 v12, v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x4

    const/4 v15, 0x0

    invoke-static/range {v10 .. v15}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v10

    move v3, v10

    .line 66
    move v10, v3

    if-gez v10, :cond_2

    move-object v10, v1

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    move v3, v10

    .line 68
    :cond_2
    move-object v10, v1

    move-object v5, v10

    const/4 v10, 0x0

    move v6, v10

    move-object v10, v5

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    if-nez v11, :cond_3

    new-instance v11, Lkotlin/TypeCastException;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    const-string v13, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {v12, v13}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v11

    :cond_3
    move v11, v6

    move v12, v2

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    const-string v12, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, v10

    .line 69
    move-object v10, v1

    move-object v6, v10

    move v10, v2

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    move v7, v10

    move-object v10, v6

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    if-nez v11, :cond_4

    new-instance v11, Lkotlin/TypeCastException;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    const-string v13, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {v12, v13}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v11

    :cond_4
    move v11, v7

    move v12, v3

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    const-string v12, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v5, v10

    .line 70
    nop

    .line 71
    move-object v10, v4

    move-object v6, v10

    move-object v10, v6

    :try_start_1
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    const/high16 v11, 0x10000

    mul-int/2addr v10, v11

    move-object v11, v5

    move-object v6, v11

    move v8, v10

    move-object v10, v6

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v10

    move v9, v10

    move v10, v8

    move v11, v9

    add-int/2addr v10, v11

    move v6, v10

    .line 70
    :goto_2
    move v10, v6

    move v0, v10

    goto/16 :goto_1

    .line 72
    :catch_1
    move-exception v10

    move-object v7, v10

    .line 73
    move v10, v0

    move v6, v10

    goto :goto_2
.end method
