.class public final enum Lokhttp3/Protocol;
.super Ljava/lang/Enum;
.source "Protocol.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lokhttp3/Protocol;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lokhttp3/Protocol;

.field public static final enum HTTP_1_0:Lokhttp3/Protocol;

.field public static final enum HTTP_1_1:Lokhttp3/Protocol;

.field public static final enum HTTP_2:Lokhttp3/Protocol;

.field public static final enum SPDY_3:Lokhttp3/Protocol;


# instance fields
.field private final protocol:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 33
    new-instance v0, Lokhttp3/Protocol;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const-string v2, "HTTP_1_0"

    const/4 v3, 0x0

    const-string v4, "http/1.0"

    invoke-direct {v1, v2, v3, v4}, Lokhttp3/Protocol;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lokhttp3/Protocol;->HTTP_1_0:Lokhttp3/Protocol;

    .line 41
    new-instance v0, Lokhttp3/Protocol;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const-string v2, "HTTP_1_1"

    const/4 v3, 0x1

    const-string v4, "http/1.1"

    invoke-direct {v1, v2, v3, v4}, Lokhttp3/Protocol;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    .line 51
    new-instance v0, Lokhttp3/Protocol;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const-string v2, "SPDY_3"

    const/4 v3, 0x2

    const-string v4, "spdy/3.1"

    invoke-direct {v1, v2, v3, v4}, Lokhttp3/Protocol;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lokhttp3/Protocol;->SPDY_3:Lokhttp3/Protocol;

    .line 62
    new-instance v0, Lokhttp3/Protocol;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const-string v2, "HTTP_2"

    const/4 v3, 0x3

    const-string v4, "h2"

    invoke-direct {v1, v2, v3, v4}, Lokhttp3/Protocol;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lokhttp3/Protocol;->HTTP_2:Lokhttp3/Protocol;

    .line 29
    const/4 v0, 0x4

    new-array v0, v0, [Lokhttp3/Protocol;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/4 v2, 0x0

    sget-object v3, Lokhttp3/Protocol;->HTTP_1_0:Lokhttp3/Protocol;

    aput-object v3, v1, v2

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/4 v2, 0x1

    sget-object v3, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    aput-object v3, v1, v2

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/4 v2, 0x2

    sget-object v3, Lokhttp3/Protocol;->SPDY_3:Lokhttp3/Protocol;

    aput-object v3, v1, v2

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/4 v2, 0x3

    sget-object v3, Lokhttp3/Protocol;->HTTP_2:Lokhttp3/Protocol;

    aput-object v3, v1, v2

    sput-object v0, Lokhttp3/Protocol;->$VALUES:[Lokhttp3/Protocol;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 66
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move v6, v2

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 67
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lokhttp3/Protocol;->protocol:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public static get(Ljava/lang/String;)Lokhttp3/Protocol;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 77
    move-object v0, p0

    move-object v1, v0

    sget-object v2, Lokhttp3/Protocol;->HTTP_1_0:Lokhttp3/Protocol;

    iget-object v2, v2, Lokhttp3/Protocol;->protocol:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lokhttp3/Protocol;->HTTP_1_0:Lokhttp3/Protocol;

    move-object v0, v1

    .line 80
    :goto_0
    return-object v0

    .line 78
    :cond_0
    move-object v1, v0

    sget-object v2, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    iget-object v2, v2, Lokhttp3/Protocol;->protocol:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    move-object v0, v1

    goto :goto_0

    .line 79
    :cond_1
    move-object v1, v0

    sget-object v2, Lokhttp3/Protocol;->HTTP_2:Lokhttp3/Protocol;

    iget-object v2, v2, Lokhttp3/Protocol;->protocol:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lokhttp3/Protocol;->HTTP_2:Lokhttp3/Protocol;

    move-object v0, v1

    goto :goto_0

    .line 80
    :cond_2
    move-object v1, v0

    sget-object v2, Lokhttp3/Protocol;->SPDY_3:Lokhttp3/Protocol;

    iget-object v2, v2, Lokhttp3/Protocol;->protocol:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lokhttp3/Protocol;->SPDY_3:Lokhttp3/Protocol;

    move-object v0, v1

    goto :goto_0

    .line 81
    :cond_3
    new-instance v1, Ljava/io/IOException;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected protocol: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static valueOf(Ljava/lang/String;)Lokhttp3/Protocol;
    .locals 3

    .prologue
    .line 29
    move-object v0, p0

    const-class v1, Lokhttp3/Protocol;

    move-object v2, v0

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lokhttp3/Protocol;

    move-object v0, v1

    return-object v0
.end method

.method public static values()[Lokhttp3/Protocol;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lokhttp3/Protocol;->$VALUES:[Lokhttp3/Protocol;

    invoke-virtual {v0}, [Lokhttp3/Protocol;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lokhttp3/Protocol;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 89
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/Protocol;->protocol:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method
