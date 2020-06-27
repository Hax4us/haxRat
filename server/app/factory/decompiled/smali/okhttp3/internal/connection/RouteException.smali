.class public final Lokhttp3/internal/connection/RouteException;
.super Ljava/lang/RuntimeException;
.source "RouteException.java"


# static fields
.field private static final addSuppressedExceptionMethod:Ljava/lang/reflect/Method;


# instance fields
.field private lastException:Ljava/io/IOException;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    .line 32
    :try_start_0
    const-class v2, Ljava/lang/Throwable;

    const-string v3, "addSuppressed"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    const-class v7, Ljava/lang/Throwable;

    aput-object v7, v5, v6

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    move-object v0, v2

    .line 36
    :goto_0
    move-object v2, v0

    sput-object v2, Lokhttp3/internal/connection/RouteException;->addSuppressedExceptionMethod:Ljava/lang/reflect/Method;

    .line 37
    return-void

    .line 33
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 34
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0
.end method

.method public constructor <init>(Ljava/io/IOException;)V
    .locals 4

    .prologue
    .line 42
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 43
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lokhttp3/internal/connection/RouteException;->lastException:Ljava/io/IOException;

    .line 44
    return-void
.end method

.method private addSuppressedIfPossible(Ljava/io/IOException;Ljava/io/IOException;)V
    .locals 11

    .prologue
    .line 56
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    sget-object v4, Lokhttp3/internal/connection/RouteException;->addSuppressedExceptionMethod:Ljava/lang/reflect/Method;

    if-eqz v4, :cond_0

    .line 58
    :try_start_0
    sget-object v4, Lokhttp3/internal/connection/RouteException;->addSuppressedExceptionMethod:Ljava/lang/reflect/Method;

    move-object v5, v1

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    move-object v9, v2

    aput-object v9, v7, v8

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 62
    :cond_0
    :goto_0
    return-void

    .line 59
    :catch_0
    move-exception v4

    move-object v3, v4

    goto :goto_0
.end method


# virtual methods
.method public addConnectException(Ljava/io/IOException;)V
    .locals 5

    .prologue
    .line 51
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lokhttp3/internal/connection/RouteException;->lastException:Ljava/io/IOException;

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/connection/RouteException;->addSuppressedIfPossible(Ljava/io/IOException;Ljava/io/IOException;)V

    .line 52
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lokhttp3/internal/connection/RouteException;->lastException:Ljava/io/IOException;

    .line 53
    return-void
.end method

.method public getLastConnectException()Ljava/io/IOException;
    .locals 2

    .prologue
    .line 47
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/internal/connection/RouteException;->lastException:Ljava/io/IOException;

    move-object v0, v1

    return-object v0
.end method
