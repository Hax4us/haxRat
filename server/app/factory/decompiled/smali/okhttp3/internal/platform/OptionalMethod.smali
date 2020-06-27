.class Lokhttp3/internal/platform/OptionalMethod;
.super Ljava/lang/Object;
.source "OptionalMethod.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final methodName:Ljava/lang/String;

.field private final methodParams:[Ljava/lang/Class;

.field private final returnType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public varargs constructor <init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class;",
            ")V"
        }
    .end annotation

    .prologue
    .line 45
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 46
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lokhttp3/internal/platform/OptionalMethod;->returnType:Ljava/lang/Class;

    .line 47
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lokhttp3/internal/platform/OptionalMethod;->methodName:Ljava/lang/String;

    .line 48
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lokhttp3/internal/platform/OptionalMethod;->methodParams:[Ljava/lang/Class;

    .line 49
    return-void
.end method

.method private getMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    .line 147
    move-object v0, p0

    move-object v1, p1

    const/4 v3, 0x0

    move-object v2, v3

    .line 148
    move-object v3, v0

    iget-object v3, v3, Lokhttp3/internal/platform/OptionalMethod;->methodName:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 149
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lokhttp3/internal/platform/OptionalMethod;->methodName:Ljava/lang/String;

    move-object v5, v0

    iget-object v5, v5, Lokhttp3/internal/platform/OptionalMethod;->methodParams:[Ljava/lang/Class;

    invoke-static {v3, v4, v5}, Lokhttp3/internal/platform/OptionalMethod;->getPublicMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    move-object v2, v3

    .line 150
    move-object v3, v2

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lokhttp3/internal/platform/OptionalMethod;->returnType:Ljava/lang/Class;

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lokhttp3/internal/platform/OptionalMethod;->returnType:Ljava/lang/Class;

    move-object v4, v2

    .line 152
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 155
    const/4 v3, 0x0

    move-object v2, v3

    .line 158
    :cond_0
    move-object v3, v2

    move-object v0, v3

    return-object v0
.end method

.method private static getPublicMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class;",
            ")",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    .line 162
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    const/4 v5, 0x0

    move-object v3, v5

    .line 164
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    :try_start_0
    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    move-object v3, v5

    .line 165
    move-object v5, v3

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getModifiers()I
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    const/4 v6, 0x1

    and-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_0

    .line 166
    const/4 v5, 0x0

    move-object v3, v5

    .line 171
    :cond_0
    :goto_0
    move-object v5, v3

    move-object v0, v5

    return-object v0

    .line 168
    :catch_0
    move-exception v5

    move-object v4, v5

    goto :goto_0
.end method


# virtual methods
.method public varargs invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    .line 106
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, v0

    move-object v7, v1

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-direct {v6, v7}, Lokhttp3/internal/platform/OptionalMethod;->getMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    move-object v3, v6

    .line 107
    move-object v6, v3

    if-nez v6, :cond_0

    .line 108
    new-instance v6, Ljava/lang/AssertionError;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v10, v8

    move-object v8, v10

    move-object v9, v10

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Method "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v0

    iget-object v9, v9, Lokhttp3/internal/platform/OptionalMethod;->methodName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " not supported for object "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v6

    .line 111
    :cond_0
    move-object v6, v3

    move-object v7, v1

    move-object v8, v2

    :try_start_0
    invoke-virtual {v6, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    move-object v0, v6

    return-object v0

    .line 112
    :catch_0
    move-exception v6

    move-object v4, v6

    .line 114
    new-instance v6, Ljava/lang/AssertionError;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v10, v8

    move-object v8, v10

    move-object v9, v10

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unexpectedly could not call: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    move-object v5, v6

    .line 115
    move-object v6, v5

    move-object v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/AssertionError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v6

    .line 116
    move-object v6, v5

    throw v6
.end method

.method public varargs invokeOptional(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    .line 66
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-direct {v5, v6}, Lokhttp3/internal/platform/OptionalMethod;->getMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    move-object v3, v5

    .line 67
    move-object v5, v3

    if-nez v5, :cond_0

    .line 68
    const/4 v5, 0x0

    move-object v0, v5

    .line 73
    :goto_0
    return-object v0

    .line 71
    :cond_0
    move-object v5, v3

    move-object v6, v1

    move-object v7, v2

    :try_start_0
    invoke-virtual {v5, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    .line 72
    :catch_0
    move-exception v5

    move-object v4, v5

    .line 73
    const/4 v5, 0x0

    move-object v0, v5

    goto :goto_0
.end method

.method public varargs invokeOptionalWithoutCheckedException(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 86
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    :try_start_0
    invoke-virtual {v6, v7, v8}, Lokhttp3/internal/platform/OptionalMethod;->invokeOptional(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    move-object v0, v6

    return-object v0

    .line 87
    :catch_0
    move-exception v6

    move-object v3, v6

    .line 88
    move-object v6, v3

    invoke-virtual {v6}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v6

    move-object v4, v6

    .line 89
    move-object v6, v4

    instance-of v6, v6, Ljava/lang/RuntimeException;

    if-eqz v6, :cond_0

    .line 90
    move-object v6, v4

    check-cast v6, Ljava/lang/RuntimeException;

    throw v6

    .line 92
    :cond_0
    new-instance v6, Ljava/lang/AssertionError;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    const-string v8, "Unexpected exception"

    invoke-direct {v7, v8}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    move-object v5, v6

    .line 93
    move-object v6, v5

    move-object v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/AssertionError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v6

    .line 94
    move-object v6, v5

    throw v6
.end method

.method public varargs invokeWithoutCheckedException(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 129
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    :try_start_0
    invoke-virtual {v6, v7, v8}, Lokhttp3/internal/platform/OptionalMethod;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    move-object v0, v6

    return-object v0

    .line 130
    :catch_0
    move-exception v6

    move-object v3, v6

    .line 131
    move-object v6, v3

    invoke-virtual {v6}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v6

    move-object v4, v6

    .line 132
    move-object v6, v4

    instance-of v6, v6, Ljava/lang/RuntimeException;

    if-eqz v6, :cond_0

    .line 133
    move-object v6, v4

    check-cast v6, Ljava/lang/RuntimeException;

    throw v6

    .line 135
    :cond_0
    new-instance v6, Ljava/lang/AssertionError;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    const-string v8, "Unexpected exception"

    invoke-direct {v7, v8}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    move-object v5, v6

    .line 136
    move-object v6, v5

    move-object v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/AssertionError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v6

    .line 137
    move-object v6, v5

    throw v6
.end method

.method public isSupported(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 55
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v2, v3}, Lokhttp3/internal/platform/OptionalMethod;->getMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    return v0

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
