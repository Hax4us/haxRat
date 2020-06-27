.class public final enum Lio/socket/engineio/client/Transport$ReadyState;
.super Ljava/lang/Enum;
.source "Transport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/socket/engineio/client/Transport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "ReadyState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lio/socket/engineio/client/Transport$ReadyState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/socket/engineio/client/Transport$ReadyState;

.field public static final enum CLOSED:Lio/socket/engineio/client/Transport$ReadyState;

.field public static final enum OPEN:Lio/socket/engineio/client/Transport$ReadyState;

.field public static final enum OPENING:Lio/socket/engineio/client/Transport$ReadyState;

.field public static final enum PAUSED:Lio/socket/engineio/client/Transport$ReadyState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 18
    new-instance v0, Lio/socket/engineio/client/Transport$ReadyState;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "OPENING"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lio/socket/engineio/client/Transport$ReadyState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/socket/engineio/client/Transport$ReadyState;->OPENING:Lio/socket/engineio/client/Transport$ReadyState;

    new-instance v0, Lio/socket/engineio/client/Transport$ReadyState;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "OPEN"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lio/socket/engineio/client/Transport$ReadyState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/socket/engineio/client/Transport$ReadyState;->OPEN:Lio/socket/engineio/client/Transport$ReadyState;

    new-instance v0, Lio/socket/engineio/client/Transport$ReadyState;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "CLOSED"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lio/socket/engineio/client/Transport$ReadyState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/socket/engineio/client/Transport$ReadyState;->CLOSED:Lio/socket/engineio/client/Transport$ReadyState;

    new-instance v0, Lio/socket/engineio/client/Transport$ReadyState;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "PAUSED"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lio/socket/engineio/client/Transport$ReadyState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/socket/engineio/client/Transport$ReadyState;->PAUSED:Lio/socket/engineio/client/Transport$ReadyState;

    .line 17
    const/4 v0, 0x4

    new-array v0, v0, [Lio/socket/engineio/client/Transport$ReadyState;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    sget-object v3, Lio/socket/engineio/client/Transport$ReadyState;->OPENING:Lio/socket/engineio/client/Transport$ReadyState;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    sget-object v3, Lio/socket/engineio/client/Transport$ReadyState;->OPEN:Lio/socket/engineio/client/Transport$ReadyState;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    sget-object v3, Lio/socket/engineio/client/Transport$ReadyState;->CLOSED:Lio/socket/engineio/client/Transport$ReadyState;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x3

    sget-object v3, Lio/socket/engineio/client/Transport$ReadyState;->PAUSED:Lio/socket/engineio/client/Transport$ReadyState;

    aput-object v3, v1, v2

    sput-object v0, Lio/socket/engineio/client/Transport$ReadyState;->$VALUES:[Lio/socket/engineio/client/Transport$ReadyState;

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
    .line 17
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/socket/engineio/client/Transport$ReadyState;
    .locals 3

    .prologue
    .line 17
    move-object v0, p0

    const-class v1, Lio/socket/engineio/client/Transport$ReadyState;

    move-object v2, v0

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lio/socket/engineio/client/Transport$ReadyState;

    move-object v0, v1

    return-object v0
.end method

.method public static values()[Lio/socket/engineio/client/Transport$ReadyState;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lio/socket/engineio/client/Transport$ReadyState;->$VALUES:[Lio/socket/engineio/client/Transport$ReadyState;

    invoke-virtual {v0}, [Lio/socket/engineio/client/Transport$ReadyState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/socket/engineio/client/Transport$ReadyState;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 22
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method
