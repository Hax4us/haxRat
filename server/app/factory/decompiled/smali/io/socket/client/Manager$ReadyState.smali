.class final enum Lio/socket/client/Manager$ReadyState;
.super Ljava/lang/Enum;
.source "Manager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/socket/client/Manager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ReadyState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lio/socket/client/Manager$ReadyState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/socket/client/Manager$ReadyState;

.field public static final enum CLOSED:Lio/socket/client/Manager$ReadyState;

.field public static final enum OPEN:Lio/socket/client/Manager$ReadyState;

.field public static final enum OPENING:Lio/socket/client/Manager$ReadyState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 25
    new-instance v0, Lio/socket/client/Manager$ReadyState;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "CLOSED"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lio/socket/client/Manager$ReadyState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/socket/client/Manager$ReadyState;->CLOSED:Lio/socket/client/Manager$ReadyState;

    new-instance v0, Lio/socket/client/Manager$ReadyState;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "OPENING"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lio/socket/client/Manager$ReadyState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/socket/client/Manager$ReadyState;->OPENING:Lio/socket/client/Manager$ReadyState;

    new-instance v0, Lio/socket/client/Manager$ReadyState;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "OPEN"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lio/socket/client/Manager$ReadyState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/socket/client/Manager$ReadyState;->OPEN:Lio/socket/client/Manager$ReadyState;

    .line 24
    const/4 v0, 0x3

    new-array v0, v0, [Lio/socket/client/Manager$ReadyState;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    sget-object v3, Lio/socket/client/Manager$ReadyState;->CLOSED:Lio/socket/client/Manager$ReadyState;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    sget-object v3, Lio/socket/client/Manager$ReadyState;->OPENING:Lio/socket/client/Manager$ReadyState;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    sget-object v3, Lio/socket/client/Manager$ReadyState;->OPEN:Lio/socket/client/Manager$ReadyState;

    aput-object v3, v1, v2

    sput-object v0, Lio/socket/client/Manager$ReadyState;->$VALUES:[Lio/socket/client/Manager$ReadyState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 24
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/socket/client/Manager$ReadyState;
    .locals 3

    .prologue
    .line 24
    move-object v0, p0

    const-class v1, Lio/socket/client/Manager$ReadyState;

    move-object v2, v0

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lio/socket/client/Manager$ReadyState;

    move-object v0, v1

    return-object v0
.end method

.method public static values()[Lio/socket/client/Manager$ReadyState;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lio/socket/client/Manager$ReadyState;->$VALUES:[Lio/socket/client/Manager$ReadyState;

    invoke-virtual {v0}, [Lio/socket/client/Manager$ReadyState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/socket/client/Manager$ReadyState;

    return-object v0
.end method
