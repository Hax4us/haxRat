.class final enum Lokhttp3/HttpUrl$Builder$ParseResult;
.super Ljava/lang/Enum;
.source "HttpUrl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/HttpUrl$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ParseResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lokhttp3/HttpUrl$Builder$ParseResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lokhttp3/HttpUrl$Builder$ParseResult;

.field public static final enum INVALID_HOST:Lokhttp3/HttpUrl$Builder$ParseResult;

.field public static final enum INVALID_PORT:Lokhttp3/HttpUrl$Builder$ParseResult;

.field public static final enum MISSING_SCHEME:Lokhttp3/HttpUrl$Builder$ParseResult;

.field public static final enum SUCCESS:Lokhttp3/HttpUrl$Builder$ParseResult;

.field public static final enum UNSUPPORTED_SCHEME:Lokhttp3/HttpUrl$Builder$ParseResult;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 1283
    new-instance v0, Lokhttp3/HttpUrl$Builder$ParseResult;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "SUCCESS"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lokhttp3/HttpUrl$Builder$ParseResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lokhttp3/HttpUrl$Builder$ParseResult;->SUCCESS:Lokhttp3/HttpUrl$Builder$ParseResult;

    .line 1284
    new-instance v0, Lokhttp3/HttpUrl$Builder$ParseResult;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "MISSING_SCHEME"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lokhttp3/HttpUrl$Builder$ParseResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lokhttp3/HttpUrl$Builder$ParseResult;->MISSING_SCHEME:Lokhttp3/HttpUrl$Builder$ParseResult;

    .line 1285
    new-instance v0, Lokhttp3/HttpUrl$Builder$ParseResult;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "UNSUPPORTED_SCHEME"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lokhttp3/HttpUrl$Builder$ParseResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lokhttp3/HttpUrl$Builder$ParseResult;->UNSUPPORTED_SCHEME:Lokhttp3/HttpUrl$Builder$ParseResult;

    .line 1286
    new-instance v0, Lokhttp3/HttpUrl$Builder$ParseResult;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "INVALID_PORT"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lokhttp3/HttpUrl$Builder$ParseResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lokhttp3/HttpUrl$Builder$ParseResult;->INVALID_PORT:Lokhttp3/HttpUrl$Builder$ParseResult;

    .line 1287
    new-instance v0, Lokhttp3/HttpUrl$Builder$ParseResult;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "INVALID_HOST"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Lokhttp3/HttpUrl$Builder$ParseResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lokhttp3/HttpUrl$Builder$ParseResult;->INVALID_HOST:Lokhttp3/HttpUrl$Builder$ParseResult;

    .line 1282
    const/4 v0, 0x5

    new-array v0, v0, [Lokhttp3/HttpUrl$Builder$ParseResult;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    sget-object v3, Lokhttp3/HttpUrl$Builder$ParseResult;->SUCCESS:Lokhttp3/HttpUrl$Builder$ParseResult;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    sget-object v3, Lokhttp3/HttpUrl$Builder$ParseResult;->MISSING_SCHEME:Lokhttp3/HttpUrl$Builder$ParseResult;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    sget-object v3, Lokhttp3/HttpUrl$Builder$ParseResult;->UNSUPPORTED_SCHEME:Lokhttp3/HttpUrl$Builder$ParseResult;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x3

    sget-object v3, Lokhttp3/HttpUrl$Builder$ParseResult;->INVALID_PORT:Lokhttp3/HttpUrl$Builder$ParseResult;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x4

    sget-object v3, Lokhttp3/HttpUrl$Builder$ParseResult;->INVALID_HOST:Lokhttp3/HttpUrl$Builder$ParseResult;

    aput-object v3, v1, v2

    sput-object v0, Lokhttp3/HttpUrl$Builder$ParseResult;->$VALUES:[Lokhttp3/HttpUrl$Builder$ParseResult;

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
    .line 1282
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder$ParseResult;
    .locals 3

    .prologue
    .line 1282
    move-object v0, p0

    const-class v1, Lokhttp3/HttpUrl$Builder$ParseResult;

    move-object v2, v0

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lokhttp3/HttpUrl$Builder$ParseResult;

    move-object v0, v1

    return-object v0
.end method

.method public static values()[Lokhttp3/HttpUrl$Builder$ParseResult;
    .locals 1

    .prologue
    .line 1282
    sget-object v0, Lokhttp3/HttpUrl$Builder$ParseResult;->$VALUES:[Lokhttp3/HttpUrl$Builder$ParseResult;

    invoke-virtual {v0}, [Lokhttp3/HttpUrl$Builder$ParseResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lokhttp3/HttpUrl$Builder$ParseResult;

    return-object v0
.end method
