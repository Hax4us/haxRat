.class public final enum Lkotlin/internal/contracts/InvocationKind;
.super Ljava/lang/Enum;
.source "ContractBuilder.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lkotlin/internal/contracts/InvocationKind;",
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
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0006\u0008\u0081\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lkotlin/internal/contracts/InvocationKind;",
        "",
        "(Ljava/lang/String;I)V",
        "AT_MOST_ONCE",
        "AT_LEAST_ONCE",
        "EXACTLY_ONCE",
        "UNKNOWN",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xa
    }
.end annotation

.annotation build Lkotlin/SinceKotlin;
    version = "1.2"
.end annotation

.annotation build Lkotlin/internal/ContractsDsl;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lkotlin/internal/contracts/InvocationKind;

.field public static final enum AT_LEAST_ONCE:Lkotlin/internal/contracts/InvocationKind;
    .annotation build Lkotlin/internal/ContractsDsl;
    .end annotation
.end field

.field public static final enum AT_MOST_ONCE:Lkotlin/internal/contracts/InvocationKind;
    .annotation build Lkotlin/internal/ContractsDsl;
    .end annotation
.end field

.field public static final enum EXACTLY_ONCE:Lkotlin/internal/contracts/InvocationKind;
    .annotation build Lkotlin/internal/ContractsDsl;
    .end annotation
.end field

.field public static final enum UNKNOWN:Lkotlin/internal/contracts/InvocationKind;
    .annotation build Lkotlin/internal/ContractsDsl;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v0, 0x4

    new-array v0, v0, [Lkotlin/internal/contracts/InvocationKind;

    move-object v8, v0

    move-object v0, v8

    move-object v1, v8

    move-object v8, v1

    move-object v1, v8

    move-object v2, v8

    const/4 v3, 0x0

    new-instance v4, Lkotlin/internal/contracts/InvocationKind;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const-string v6, "AT_MOST_ONCE"

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lkotlin/internal/contracts/InvocationKind;-><init>(Ljava/lang/String;I)V

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    sput-object v5, Lkotlin/internal/contracts/InvocationKind;->AT_MOST_ONCE:Lkotlin/internal/contracts/InvocationKind;

    aput-object v4, v2, v3

    move-object v8, v1

    move-object v1, v8

    move-object v2, v8

    const/4 v3, 0x1

    new-instance v4, Lkotlin/internal/contracts/InvocationKind;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const-string v6, "AT_LEAST_ONCE"

    const/4 v7, 0x1

    invoke-direct {v5, v6, v7}, Lkotlin/internal/contracts/InvocationKind;-><init>(Ljava/lang/String;I)V

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    sput-object v5, Lkotlin/internal/contracts/InvocationKind;->AT_LEAST_ONCE:Lkotlin/internal/contracts/InvocationKind;

    aput-object v4, v2, v3

    move-object v8, v1

    move-object v1, v8

    move-object v2, v8

    const/4 v3, 0x2

    new-instance v4, Lkotlin/internal/contracts/InvocationKind;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const-string v6, "EXACTLY_ONCE"

    const/4 v7, 0x2

    invoke-direct {v5, v6, v7}, Lkotlin/internal/contracts/InvocationKind;-><init>(Ljava/lang/String;I)V

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    sput-object v5, Lkotlin/internal/contracts/InvocationKind;->EXACTLY_ONCE:Lkotlin/internal/contracts/InvocationKind;

    aput-object v4, v2, v3

    move-object v8, v1

    move-object v1, v8

    move-object v2, v8

    const/4 v3, 0x3

    new-instance v4, Lkotlin/internal/contracts/InvocationKind;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const-string v6, "UNKNOWN"

    const/4 v7, 0x3

    invoke-direct {v5, v6, v7}, Lkotlin/internal/contracts/InvocationKind;-><init>(Ljava/lang/String;I)V

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    sput-object v5, Lkotlin/internal/contracts/InvocationKind;->UNKNOWN:Lkotlin/internal/contracts/InvocationKind;

    aput-object v4, v2, v3

    sput-object v1, Lkotlin/internal/contracts/InvocationKind;->$VALUES:[Lkotlin/internal/contracts/InvocationKind;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 22
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lkotlin/internal/contracts/InvocationKind;
    .locals 3

    move-object v0, p0

    const-class v1, Lkotlin/internal/contracts/InvocationKind;

    move-object v2, v0

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lkotlin/internal/contracts/InvocationKind;

    move-object v0, v1

    return-object v0
.end method

.method public static values()[Lkotlin/internal/contracts/InvocationKind;
    .locals 1

    sget-object v0, Lkotlin/internal/contracts/InvocationKind;->$VALUES:[Lkotlin/internal/contracts/InvocationKind;

    invoke-virtual {v0}, [Lkotlin/internal/contracts/InvocationKind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkotlin/internal/contracts/InvocationKind;

    return-object v0
.end method
