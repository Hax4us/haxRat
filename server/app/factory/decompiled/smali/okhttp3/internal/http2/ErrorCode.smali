.class public final enum Lokhttp3/internal/http2/ErrorCode;
.super Ljava/lang/Enum;
.source "ErrorCode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lokhttp3/internal/http2/ErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lokhttp3/internal/http2/ErrorCode;

.field public static final enum CANCEL:Lokhttp3/internal/http2/ErrorCode;

.field public static final enum FLOW_CONTROL_ERROR:Lokhttp3/internal/http2/ErrorCode;

.field public static final enum INTERNAL_ERROR:Lokhttp3/internal/http2/ErrorCode;

.field public static final enum NO_ERROR:Lokhttp3/internal/http2/ErrorCode;

.field public static final enum PROTOCOL_ERROR:Lokhttp3/internal/http2/ErrorCode;

.field public static final enum REFUSED_STREAM:Lokhttp3/internal/http2/ErrorCode;


# instance fields
.field public final httpCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 21
    new-instance v0, Lokhttp3/internal/http2/ErrorCode;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const-string v2, "NO_ERROR"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lokhttp3/internal/http2/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lokhttp3/internal/http2/ErrorCode;->NO_ERROR:Lokhttp3/internal/http2/ErrorCode;

    .line 23
    new-instance v0, Lokhttp3/internal/http2/ErrorCode;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const-string v2, "PROTOCOL_ERROR"

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Lokhttp3/internal/http2/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lokhttp3/internal/http2/ErrorCode;->PROTOCOL_ERROR:Lokhttp3/internal/http2/ErrorCode;

    .line 25
    new-instance v0, Lokhttp3/internal/http2/ErrorCode;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const-string v2, "INTERNAL_ERROR"

    const/4 v3, 0x2

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4}, Lokhttp3/internal/http2/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lokhttp3/internal/http2/ErrorCode;->INTERNAL_ERROR:Lokhttp3/internal/http2/ErrorCode;

    .line 27
    new-instance v0, Lokhttp3/internal/http2/ErrorCode;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const-string v2, "FLOW_CONTROL_ERROR"

    const/4 v3, 0x3

    const/4 v4, 0x3

    invoke-direct {v1, v2, v3, v4}, Lokhttp3/internal/http2/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lokhttp3/internal/http2/ErrorCode;->FLOW_CONTROL_ERROR:Lokhttp3/internal/http2/ErrorCode;

    .line 29
    new-instance v0, Lokhttp3/internal/http2/ErrorCode;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const-string v2, "REFUSED_STREAM"

    const/4 v3, 0x4

    const/4 v4, 0x7

    invoke-direct {v1, v2, v3, v4}, Lokhttp3/internal/http2/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lokhttp3/internal/http2/ErrorCode;->REFUSED_STREAM:Lokhttp3/internal/http2/ErrorCode;

    .line 31
    new-instance v0, Lokhttp3/internal/http2/ErrorCode;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const-string v2, "CANCEL"

    const/4 v3, 0x5

    const/16 v4, 0x8

    invoke-direct {v1, v2, v3, v4}, Lokhttp3/internal/http2/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lokhttp3/internal/http2/ErrorCode;->CANCEL:Lokhttp3/internal/http2/ErrorCode;

    .line 19
    const/4 v0, 0x6

    new-array v0, v0, [Lokhttp3/internal/http2/ErrorCode;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/4 v2, 0x0

    sget-object v3, Lokhttp3/internal/http2/ErrorCode;->NO_ERROR:Lokhttp3/internal/http2/ErrorCode;

    aput-object v3, v1, v2

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/4 v2, 0x1

    sget-object v3, Lokhttp3/internal/http2/ErrorCode;->PROTOCOL_ERROR:Lokhttp3/internal/http2/ErrorCode;

    aput-object v3, v1, v2

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/4 v2, 0x2

    sget-object v3, Lokhttp3/internal/http2/ErrorCode;->INTERNAL_ERROR:Lokhttp3/internal/http2/ErrorCode;

    aput-object v3, v1, v2

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/4 v2, 0x3

    sget-object v3, Lokhttp3/internal/http2/ErrorCode;->FLOW_CONTROL_ERROR:Lokhttp3/internal/http2/ErrorCode;

    aput-object v3, v1, v2

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/4 v2, 0x4

    sget-object v3, Lokhttp3/internal/http2/ErrorCode;->REFUSED_STREAM:Lokhttp3/internal/http2/ErrorCode;

    aput-object v3, v1, v2

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/4 v2, 0x5

    sget-object v3, Lokhttp3/internal/http2/ErrorCode;->CANCEL:Lokhttp3/internal/http2/ErrorCode;

    aput-object v3, v1, v2

    sput-object v0, Lokhttp3/internal/http2/ErrorCode;->$VALUES:[Lokhttp3/internal/http2/ErrorCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 35
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v0

    move-object v5, v1

    move v6, v2

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 36
    move-object v4, v0

    move v5, v3

    iput v5, v4, Lokhttp3/internal/http2/ErrorCode;->httpCode:I

    .line 37
    return-void
.end method

.method public static fromHttp2(I)Lokhttp3/internal/http2/ErrorCode;
    .locals 7

    .prologue
    .line 40
    move v0, p0

    invoke-static {}, Lokhttp3/internal/http2/ErrorCode;->values()[Lokhttp3/internal/http2/ErrorCode;

    move-result-object v5

    move-object v1, v5

    move-object v5, v1

    array-length v5, v5

    move v2, v5

    const/4 v5, 0x0

    move v3, v5

    :goto_0
    move v5, v3

    move v6, v2

    if-ge v5, v6, :cond_1

    move-object v5, v1

    move v6, v3

    aget-object v5, v5, v6

    move-object v4, v5

    .line 41
    move-object v5, v4

    iget v5, v5, Lokhttp3/internal/http2/ErrorCode;->httpCode:I

    move v6, v0

    if-ne v5, v6, :cond_0

    move-object v5, v4

    move-object v0, v5

    .line 43
    :goto_1
    return-object v0

    .line 40
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 43
    :cond_1
    const/4 v5, 0x0

    move-object v0, v5

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lokhttp3/internal/http2/ErrorCode;
    .locals 3

    .prologue
    .line 19
    move-object v0, p0

    const-class v1, Lokhttp3/internal/http2/ErrorCode;

    move-object v2, v0

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lokhttp3/internal/http2/ErrorCode;

    move-object v0, v1

    return-object v0
.end method

.method public static values()[Lokhttp3/internal/http2/ErrorCode;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lokhttp3/internal/http2/ErrorCode;->$VALUES:[Lokhttp3/internal/http2/ErrorCode;

    invoke-virtual {v0}, [Lokhttp3/internal/http2/ErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lokhttp3/internal/http2/ErrorCode;

    return-object v0
.end method
