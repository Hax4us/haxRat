.class public final Lkotlin/coroutines/experimental/ContinuationInterceptor$Key;
.super Ljava/lang/Object;
.source "ContinuationInterceptor.kt"

# interfaces
.implements Lkotlin/coroutines/experimental/CoroutineContext$Key;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/coroutines/experimental/ContinuationInterceptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Key"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/coroutines/experimental/CoroutineContext$Key",
        "<",
        "Lkotlin/coroutines/experimental/ContinuationInterceptor;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lkotlin/coroutines/experimental/ContinuationInterceptor$Key;",
        "Lkotlin/coroutines/experimental/CoroutineContext$Key;",
        "Lkotlin/coroutines/experimental/ContinuationInterceptor;",
        "()V",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xa
    }
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Lkotlin/coroutines/experimental/ContinuationInterceptor$Key;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 18
    new-instance v1, Lkotlin/coroutines/experimental/ContinuationInterceptor$Key;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Lkotlin/coroutines/experimental/ContinuationInterceptor$Key;-><init>()V

    move-object v0, v1

    move-object v1, v0

    sput-object v1, Lkotlin/coroutines/experimental/ContinuationInterceptor$Key;->$$INSTANCE:Lkotlin/coroutines/experimental/ContinuationInterceptor$Key;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 18
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method
