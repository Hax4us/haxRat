.class public Lio/socket/client/IO;
.super Ljava/lang/Object;
.source "IO.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/socket/client/IO$Options;
    }
.end annotation


# static fields
.field private static final logger:Ljava/util/logging/Logger;

.field private static final managers:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lio/socket/client/Manager;",
            ">;"
        }
    .end annotation
.end field

.field public static protocol:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 17
    const-class v0, Lio/socket/client/IO;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lio/socket/client/IO;->logger:Ljava/util/logging/Logger;

    .line 19
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lio/socket/client/IO;->managers:Ljava/util/concurrent/ConcurrentHashMap;

    .line 24
    sget v0, Lio/socket/parser/Parser;->protocol:I

    sput v0, Lio/socket/client/IO;->protocol:I

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setDefaultHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V
    .locals 2

    .prologue
    .line 31
    move-object v0, p0

    move-object v1, v0

    sput-object v1, Lio/socket/client/Manager;->defaultHostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 32
    return-void
.end method

.method public static setDefaultSSLContext(Ljavax/net/ssl/SSLContext;)V
    .locals 2

    .prologue
    .line 27
    move-object v0, p0

    move-object v1, v0

    sput-object v1, Lio/socket/client/Manager;->defaultSSLContext:Ljavax/net/ssl/SSLContext;

    .line 28
    return-void
.end method

.method public static socket(Ljava/lang/String;)Lio/socket/client/Socket;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 37
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lio/socket/client/IO;->socket(Ljava/lang/String;Lio/socket/client/IO$Options;)Lio/socket/client/Socket;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static socket(Ljava/lang/String;Lio/socket/client/IO$Options;)Lio/socket/client/Socket;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 41
    move-object v0, p0

    move-object v1, p1

    new-instance v2, Ljava/net/URI;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    move-object v3, v1

    invoke-static {v2, v3}, Lio/socket/client/IO;->socket(Ljava/net/URI;Lio/socket/client/IO$Options;)Lio/socket/client/Socket;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public static socket(Ljava/net/URI;)Lio/socket/client/Socket;
    .locals 3

    .prologue
    .line 45
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lio/socket/client/IO;->socket(Ljava/net/URI;Lio/socket/client/IO$Options;)Lio/socket/client/Socket;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static socket(Ljava/net/URI;Lio/socket/client/IO$Options;)Lio/socket/client/Socket;
    .locals 16

    .prologue
    .line 56
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v9, v1

    if-nez v9, :cond_0

    .line 57
    new-instance v9, Lio/socket/client/IO$Options;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    invoke-direct {v10}, Lio/socket/client/IO$Options;-><init>()V

    move-object v1, v9

    .line 60
    :cond_0
    move-object v9, v0

    invoke-static {v9}, Lio/socket/client/Url;->parse(Ljava/net/URI;)Ljava/net/URL;

    move-result-object v9

    move-object v2, v9

    .line 63
    move-object v9, v2

    :try_start_0
    invoke-virtual {v9}, Ljava/net/URL;->toURI()Ljava/net/URI;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    move-object v3, v9

    .line 67
    move-object v9, v2

    invoke-static {v9}, Lio/socket/client/Url;->extractId(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v9

    move-object v4, v9

    .line 68
    move-object v9, v2

    invoke-virtual {v9}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v9

    move-object v5, v9

    .line 69
    sget-object v9, Lio/socket/client/IO;->managers:Ljava/util/concurrent/ConcurrentHashMap;

    move-object v10, v4

    invoke-virtual {v9, v10}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    sget-object v9, Lio/socket/client/IO;->managers:Ljava/util/concurrent/ConcurrentHashMap;

    move-object v10, v4

    .line 70
    invoke-virtual {v9, v10}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lio/socket/client/Manager;

    iget-object v9, v9, Lio/socket/client/Manager;->nsps:Ljava/util/concurrent/ConcurrentHashMap;

    move-object v10, v5

    invoke-virtual {v9, v10}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    const/4 v9, 0x1

    :goto_0
    move v6, v9

    .line 71
    move-object v9, v1

    iget-boolean v9, v9, Lio/socket/client/IO$Options;->forceNew:Z

    if-nez v9, :cond_1

    move-object v9, v1

    iget-boolean v9, v9, Lio/socket/client/IO$Options;->multiplex:Z

    if-eqz v9, :cond_1

    move v9, v6

    if-eqz v9, :cond_3

    :cond_1
    const/4 v9, 0x1

    :goto_1
    move v7, v9

    .line 74
    move v9, v7

    if-eqz v9, :cond_4

    .line 75
    sget-object v9, Lio/socket/client/IO;->logger:Ljava/util/logging/Logger;

    const-string v10, "ignoring socket cache for %s"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const/4 v13, 0x0

    move-object v14, v3

    aput-object v14, v12, v13

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 76
    new-instance v9, Lio/socket/client/Manager;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    move-object v11, v3

    move-object v12, v1

    invoke-direct {v10, v11, v12}, Lio/socket/client/Manager;-><init>(Ljava/net/URI;Lio/socket/client/Manager$Options;)V

    move-object v8, v9

    .line 85
    :goto_2
    move-object v9, v8

    move-object v10, v2

    invoke-virtual {v10}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lio/socket/client/Manager;->socket(Ljava/lang/String;)Lio/socket/client/Socket;

    move-result-object v9

    move-object v0, v9

    return-object v0

    .line 64
    :catch_0
    move-exception v9

    move-object v4, v9

    .line 65
    new-instance v9, Ljava/lang/RuntimeException;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    move-object v11, v4

    invoke-direct {v10, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v9

    .line 70
    :cond_2
    const/4 v9, 0x0

    goto :goto_0

    .line 71
    :cond_3
    const/4 v9, 0x0

    goto :goto_1

    .line 78
    :cond_4
    sget-object v9, Lio/socket/client/IO;->managers:Ljava/util/concurrent/ConcurrentHashMap;

    move-object v10, v4

    invoke-virtual {v9, v10}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 79
    sget-object v9, Lio/socket/client/IO;->logger:Ljava/util/logging/Logger;

    const-string v10, "new io instance for %s"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const/4 v13, 0x0

    move-object v14, v3

    aput-object v14, v12, v13

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 80
    sget-object v9, Lio/socket/client/IO;->managers:Ljava/util/concurrent/ConcurrentHashMap;

    move-object v10, v4

    new-instance v11, Lio/socket/client/Manager;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    move-object v13, v3

    move-object v14, v1

    invoke-direct {v12, v13, v14}, Lio/socket/client/Manager;-><init>(Ljava/net/URI;Lio/socket/client/Manager$Options;)V

    invoke-virtual {v9, v10, v11}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 82
    :cond_5
    sget-object v9, Lio/socket/client/IO;->managers:Ljava/util/concurrent/ConcurrentHashMap;

    move-object v10, v4

    invoke-virtual {v9, v10}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lio/socket/client/Manager;

    move-object v8, v9

    goto :goto_2
.end method
