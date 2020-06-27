.class public Lio/socket/engineio/client/Socket$Options;
.super Lio/socket/engineio/client/Transport$Options;
.source "Socket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/socket/engineio/client/Socket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Options"
.end annotation


# instance fields
.field public host:Ljava/lang/String;

.field public query:Ljava/lang/String;

.field public rememberUpgrade:Z

.field public transports:[Ljava/lang/String;

.field public upgrade:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 844
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lio/socket/engineio/client/Transport$Options;-><init>()V

    .line 854
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lio/socket/engineio/client/Socket$Options;->upgrade:Z

    return-void
.end method

.method static synthetic access$100(Ljava/net/URI;Lio/socket/engineio/client/Socket$Options;)Lio/socket/engineio/client/Socket$Options;
    .locals 4

    .prologue
    .line 844
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Lio/socket/engineio/client/Socket$Options;->fromURI(Ljava/net/URI;Lio/socket/engineio/client/Socket$Options;)Lio/socket/engineio/client/Socket$Options;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method private static fromURI(Ljava/net/URI;Lio/socket/engineio/client/Socket$Options;)Lio/socket/engineio/client/Socket$Options;
    .locals 7

    .prologue
    .line 862
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    if-nez v3, :cond_0

    .line 863
    new-instance v3, Lio/socket/engineio/client/Socket$Options;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Lio/socket/engineio/client/Socket$Options;-><init>()V

    move-object v1, v3

    .line 866
    :cond_0
    move-object v3, v1

    move-object v4, v0

    invoke-virtual {v4}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lio/socket/engineio/client/Socket$Options;->host:Ljava/lang/String;

    .line 867
    move-object v3, v1

    const-string v4, "https"

    move-object v5, v0

    invoke-virtual {v5}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "wss"

    move-object v5, v0

    invoke-virtual {v5}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_1
    const/4 v4, 0x1

    :goto_0
    iput-boolean v4, v3, Lio/socket/engineio/client/Socket$Options;->secure:Z

    .line 868
    move-object v3, v1

    move-object v4, v0

    invoke-virtual {v4}, Ljava/net/URI;->getPort()I

    move-result v4

    iput v4, v3, Lio/socket/engineio/client/Socket$Options;->port:I

    .line 870
    move-object v3, v0

    invoke-virtual {v3}, Ljava/net/URI;->getRawQuery()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 871
    move-object v3, v2

    if-eqz v3, :cond_2

    .line 872
    move-object v3, v1

    move-object v4, v2

    iput-object v4, v3, Lio/socket/engineio/client/Socket$Options;->query:Ljava/lang/String;

    .line 875
    :cond_2
    move-object v3, v1

    move-object v0, v3

    return-object v0

    .line 867
    :cond_3
    const/4 v4, 0x0

    goto :goto_0
.end method
