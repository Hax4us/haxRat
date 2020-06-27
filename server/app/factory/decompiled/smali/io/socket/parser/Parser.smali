.class public Lio/socket/parser/Parser;
.super Ljava/lang/Object;
.source "Parser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/socket/parser/Parser$BinaryReconstructor;,
        Lio/socket/parser/Parser$Decoder;,
        Lio/socket/parser/Parser$Encoder;
    }
.end annotation


# static fields
.field public static final ACK:I = 0x3

.field public static final BINARY_ACK:I = 0x6

.field public static final BINARY_EVENT:I = 0x5

.field public static final CONNECT:I = 0x0

.field public static final DISCONNECT:I = 0x1

.field public static final ERROR:I = 0x4

.field public static final EVENT:I = 0x2

.field private static final logger:Ljava/util/logging/Logger;

.field public static protocol:I

.field public static types:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 15
    const-class v0, Lio/socket/parser/Parser;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lio/socket/parser/Parser;->logger:Ljava/util/logging/Logger;

    .line 52
    const/4 v0, 0x4

    sput v0, Lio/socket/parser/Parser;->protocol:I

    .line 57
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const-string v3, "CONNECT"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    const-string v3, "DISCONNECT"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    const-string v3, "EVENT"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x3

    const-string v3, "ACK"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x4

    const-string v3, "ERROR"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x5

    const-string v3, "BINARY_EVENT"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x6

    const-string v3, "BINARY_ACK"

    aput-object v3, v1, v2

    sput-object v0, Lio/socket/parser/Parser;->types:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 68
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/logging/Logger;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lio/socket/parser/Parser;->logger:Ljava/util/logging/Logger;

    return-object v0
.end method

.method static synthetic access$100()Lio/socket/parser/Packet;
    .locals 1

    .prologue
    .line 13
    invoke-static {}, Lio/socket/parser/Parser;->error()Lio/socket/parser/Packet;

    move-result-object v0

    return-object v0
.end method

.method private static error()Lio/socket/parser/Packet;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/socket/parser/Packet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 71
    new-instance v0, Lio/socket/parser/Packet;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x4

    const-string v3, "parser error"

    invoke-direct {v1, v2, v3}, Lio/socket/parser/Packet;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method
