.class public final enum Lkotlin/Experimental$Level;
.super Ljava/lang/Enum;
.source "Experimental.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/Experimental;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Level"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lkotlin/Experimental$Level;",
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
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0004\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Lkotlin/Experimental$Level;",
        "",
        "(Ljava/lang/String;I)V",
        "WARNING",
        "ERROR",
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
.field private static final synthetic $VALUES:[Lkotlin/Experimental$Level;

.field public static final enum ERROR:Lkotlin/Experimental$Level;

.field public static final enum WARNING:Lkotlin/Experimental$Level;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v0, 0x2

    new-array v0, v0, [Lkotlin/Experimental$Level;

    move-object v8, v0

    move-object v0, v8

    move-object v1, v8

    move-object v8, v1

    move-object v1, v8

    move-object v2, v8

    const/4 v3, 0x0

    new-instance v4, Lkotlin/Experimental$Level;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const-string v6, "WARNING"

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lkotlin/Experimental$Level;-><init>(Ljava/lang/String;I)V

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    sput-object v5, Lkotlin/Experimental$Level;->WARNING:Lkotlin/Experimental$Level;

    aput-object v4, v2, v3

    move-object v8, v1

    move-object v1, v8

    move-object v2, v8

    const/4 v3, 0x1

    new-instance v4, Lkotlin/Experimental$Level;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const-string v6, "ERROR"

    const/4 v7, 0x1

    invoke-direct {v5, v6, v7}, Lkotlin/Experimental$Level;-><init>(Ljava/lang/String;I)V

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    sput-object v5, Lkotlin/Experimental$Level;->ERROR:Lkotlin/Experimental$Level;

    aput-object v4, v2, v3

    sput-object v1, Lkotlin/Experimental$Level;->$VALUES:[Lkotlin/Experimental$Level;

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
    .line 32
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lkotlin/Experimental$Level;
    .locals 3

    move-object v0, p0

    const-class v1, Lkotlin/Experimental$Level;

    move-object v2, v0

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lkotlin/Experimental$Level;

    move-object v0, v1

    return-object v0
.end method

.method public static values()[Lkotlin/Experimental$Level;
    .locals 1

    sget-object v0, Lkotlin/Experimental$Level;->$VALUES:[Lkotlin/Experimental$Level;

    invoke-virtual {v0}, [Lkotlin/Experimental$Level;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkotlin/Experimental$Level;

    return-object v0
.end method
