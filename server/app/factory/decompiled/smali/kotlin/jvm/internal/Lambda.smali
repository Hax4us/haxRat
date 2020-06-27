.class public abstract Lkotlin/jvm/internal/Lambda;
.super Ljava/lang/Object;
.source "Lambda.kt"

# interfaces
.implements Lkotlin/jvm/internal/FunctionBase;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008&\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0005\u001a\u00020\u0003H\u0016J\u0010\u0010\u0006\u001a\n \u0008*\u0004\u0018\u00010\u00070\u0007H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/internal/FunctionBase;",
        "arity",
        "",
        "(I)V",
        "getArity",
        "toString",
        "",
        "kotlin.jvm.PlatformType",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xa
    }
.end annotation


# instance fields
.field private final arity:I


# direct methods
.method public constructor <init>(I)V
    .locals 4

    .prologue
    .line 8
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lkotlin/jvm/internal/Lambda;->arity:I

    return-void
.end method


# virtual methods
.method public getArity()I
    .locals 2

    .prologue
    .line 9
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lkotlin/jvm/internal/Lambda;->arity:I

    move v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 11
    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->renderLambdaToString(Lkotlin/jvm/internal/Lambda;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method
