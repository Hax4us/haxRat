.class final Lokhttp3/internal/platform/AndroidPlatform$CloseGuard;
.super Ljava/lang/Object;
.source "AndroidPlatform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/platform/AndroidPlatform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CloseGuard"
.end annotation


# instance fields
.field private final getMethod:Ljava/lang/reflect/Method;

.field private final openMethod:Ljava/lang/reflect/Method;

.field private final warnIfOpenMethod:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    .locals 6

    .prologue
    .line 262
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 263
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lokhttp3/internal/platform/AndroidPlatform$CloseGuard;->getMethod:Ljava/lang/reflect/Method;

    .line 264
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lokhttp3/internal/platform/AndroidPlatform$CloseGuard;->openMethod:Ljava/lang/reflect/Method;

    .line 265
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lokhttp3/internal/platform/AndroidPlatform$CloseGuard;->warnIfOpenMethod:Ljava/lang/reflect/Method;

    .line 266
    return-void
.end method

.method static get()Lokhttp3/internal/platform/AndroidPlatform$CloseGuard;
    .locals 11

    .prologue
    .line 298
    :try_start_0
    const-string v4, "dalvik.system.CloseGuard"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    move-object v3, v4

    .line 299
    move-object v4, v3

    const-string v5, "get"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    move-object v0, v4

    .line 300
    move-object v4, v3

    const-string v5, "open"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    const-class v9, Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    move-object v1, v4

    .line 301
    move-object v4, v3

    const-string v5, "warnIfOpen"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    move-object v2, v4

    .line 307
    :goto_0
    new-instance v4, Lokhttp3/internal/platform/AndroidPlatform$CloseGuard;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    invoke-direct {v5, v6, v7, v8}, Lokhttp3/internal/platform/AndroidPlatform$CloseGuard;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    move-object v0, v4

    return-object v0

    .line 302
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 303
    const/4 v4, 0x0

    move-object v0, v4

    .line 304
    const/4 v4, 0x0

    move-object v1, v4

    .line 305
    const/4 v4, 0x0

    move-object v2, v4

    goto :goto_0
.end method


# virtual methods
.method createAndOpen(Ljava/lang/String;)Ljava/lang/Object;
    .locals 10

    .prologue
    .line 269
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Lokhttp3/internal/platform/AndroidPlatform$CloseGuard;->getMethod:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_0

    .line 271
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Lokhttp3/internal/platform/AndroidPlatform$CloseGuard;->getMethod:Ljava/lang/reflect/Method;

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    .line 272
    move-object v3, v0

    iget-object v3, v3, Lokhttp3/internal/platform/AndroidPlatform$CloseGuard;->openMethod:Ljava/lang/reflect/Method;

    move-object v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v1

    aput-object v8, v6, v7

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 273
    move-object v3, v2

    move-object v0, v3

    .line 277
    :goto_0
    return-object v0

    .line 274
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 277
    :cond_0
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0
.end method

.method warnIfOpen(Ljava/lang/Object;)Z
    .locals 7

    .prologue
    .line 281
    move-object v0, p0

    move-object v1, p1

    const/4 v4, 0x0

    move v2, v4

    .line 282
    move-object v4, v1

    if-eqz v4, :cond_0

    .line 284
    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Lokhttp3/internal/platform/AndroidPlatform$CloseGuard;->warnIfOpenMethod:Ljava/lang/reflect/Method;

    move-object v5, v1

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 285
    const/4 v4, 0x1

    move v2, v4

    .line 289
    :cond_0
    :goto_0
    move v4, v2

    move v0, v4

    return v0

    .line 286
    :catch_0
    move-exception v4

    move-object v3, v4

    goto :goto_0
.end method
