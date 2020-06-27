.class public final enum Lkotlin/DeprecationLevel;
.super Ljava/lang/Enum;
.source "Annotations.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lkotlin/DeprecationLevel;",
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
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0005\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lkotlin/DeprecationLevel;",
        "",
        "(Ljava/lang/String;I)V",
        "WARNING",
        "ERROR",
        "HIDDEN",
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
.field private static final synthetic $VALUES:[Lkotlin/DeprecationLevel;

.field public static final enum ERROR:Lkotlin/DeprecationLevel;

.field public static final enum HIDDEN:Lkotlin/DeprecationLevel;

.field public static final enum WARNING:Lkotlin/DeprecationLevel;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v0, 0x3

    new-array v0, v0, [Lkotlin/DeprecationLevel;

    move-object v8, v0

    move-object v0, v8

    move-object v1, v8

    move-object v8, v1

    move-object v1, v8

    move-object v2, v8

    const/4 v3, 0x0

    new-instance v4, Lkotlin/DeprecationLevel;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const-string v6, "WARNING"

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lkotlin/DeprecationLevel;-><init>(Ljava/lang/String;I)V

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    sput-object v5, Lkotlin/DeprecationLevel;->WARNING:Lkotlin/DeprecationLevel;

    aput-object v4, v2, v3

    move-object v8, v1

    move-object v1, v8

    move-object v2, v8

    const/4 v3, 0x1

    new-instance v4, Lkotlin/DeprecationLevel;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const-string v6, "ERROR"

    const/4 v7, 0x1

    invoke-direct {v5, v6, v7}, Lkotlin/DeprecationLevel;-><init>(Ljava/lang/String;I)V

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    sput-object v5, Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;

    aput-object v4, v2, v3

    move-object v8, v1

    move-object v1, v8

    move-object v2, v8

    const/4 v3, 0x2

    new-instance v4, Lkotlin/DeprecationLevel;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const-string v6, "HIDDEN"

    const/4 v7, 0x2

    invoke-direct {v5, v6, v7}, Lkotlin/DeprecationLevel;-><init>(Ljava/lang/String;I)V

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    sput-object v5, Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;

    aput-object v4, v2, v3

    sput-object v1, Lkotlin/DeprecationLevel;->$VALUES:[Lkotlin/DeprecationLevel;

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
    .line 58
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lkotlin/DeprecationLevel;
    .locals 3

    move-object v0, p0

    const-class v1, Lkotlin/DeprecationLevel;

    move-object v2, v0

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lkotlin/DeprecationLevel;

    move-object v0, v1

    return-object v0
.end method

.method public static values()[Lkotlin/DeprecationLevel;
    .locals 1

    sget-object v0, Lkotlin/DeprecationLevel;->$VALUES:[Lkotlin/DeprecationLevel;

    invoke-virtual {v0}, [Lkotlin/DeprecationLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkotlin/DeprecationLevel;

    return-object v0
.end method
