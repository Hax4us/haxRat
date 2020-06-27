.class public Lio/socket/client/Url;
.super Ljava/lang/Object;
.source "Url.java"


# static fields
.field private static PATTERN_HTTP:Ljava/util/regex/Pattern;

.field private static PATTERN_HTTPS:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-string v0, "^http|ws$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/socket/client/Url;->PATTERN_HTTP:Ljava/util/regex/Pattern;

    .line 12
    const-string v0, "^(http|ws)s$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/socket/client/Url;->PATTERN_HTTPS:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 14
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static extractId(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 57
    move-object v0, p0

    new-instance v1, Ljava/net/URL;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lio/socket/client/Url;->extractId(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static extractId(Ljava/net/URL;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 61
    move-object v0, p0

    move-object v3, v0

    invoke-virtual {v3}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 62
    move-object v3, v0

    invoke-virtual {v3}, Ljava/net/URL;->getPort()I

    move-result v3

    move v2, v3

    .line 63
    move v3, v2

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 64
    sget-object v3, Lio/socket/client/Url;->PATTERN_HTTP:Ljava/util/regex/Pattern;

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 65
    const/16 v3, 0x50

    move v2, v3

    .line 70
    :cond_0
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v4}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    return-object v0

    .line 66
    :cond_1
    sget-object v3, Lio/socket/client/Url;->PATTERN_HTTPS:Ljava/util/regex/Pattern;

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 67
    const/16 v3, 0x1bb

    move v2, v3

    goto :goto_0
.end method

.method public static parse(Ljava/lang/String;)Ljava/net/URL;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 17
    move-object v0, p0

    new-instance v1, Ljava/net/URI;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lio/socket/client/Url;->parse(Ljava/net/URI;)Ljava/net/URL;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static parse(Ljava/net/URI;)Ljava/net/URL;
    .locals 14

    .prologue
    .line 21
    move-object v0, p0

    move-object v8, v0

    invoke-virtual {v8}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v8

    move-object v1, v8

    .line 22
    move-object v8, v1

    if-eqz v8, :cond_0

    move-object v8, v1

    const-string v9, "^https?|wss?$"

    invoke-virtual {v8, v9}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 23
    :cond_0
    const-string v8, "https"

    move-object v1, v8

    .line 26
    :cond_1
    move-object v8, v0

    invoke-virtual {v8}, Ljava/net/URI;->getPort()I

    move-result v8

    move v2, v8

    .line 27
    move v8, v2

    const/4 v9, -0x1

    if-ne v8, v9, :cond_2

    .line 28
    sget-object v8, Lio/socket/client/Url;->PATTERN_HTTP:Ljava/util/regex/Pattern;

    move-object v9, v1

    invoke-virtual {v8, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 29
    const/16 v8, 0x50

    move v2, v8

    .line 35
    :cond_2
    :goto_0
    move-object v8, v0

    invoke-virtual {v8}, Ljava/net/URI;->getRawPath()Ljava/lang/String;

    move-result-object v8

    move-object v3, v8

    .line 36
    move-object v8, v3

    if-eqz v8, :cond_3

    move-object v8, v3

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_4

    .line 37
    :cond_3
    const-string v8, "/"

    move-object v3, v8

    .line 40
    :cond_4
    move-object v8, v0

    invoke-virtual {v8}, Ljava/net/URI;->getRawUserInfo()Ljava/lang/String;

    move-result-object v8

    move-object v4, v8

    .line 41
    move-object v8, v0

    invoke-virtual {v8}, Ljava/net/URI;->getRawQuery()Ljava/lang/String;

    move-result-object v8

    move-object v5, v8

    .line 42
    move-object v8, v0

    invoke-virtual {v8}, Ljava/net/URI;->getRawFragment()Ljava/lang/String;

    move-result-object v8

    move-object v6, v8

    .line 44
    :try_start_0
    new-instance v8, Ljava/net/URL;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object v11, v1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "://"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v4

    if-eqz v11, :cond_6

    new-instance v11, Ljava/lang/StringBuilder;

    move-object v13, v11

    move-object v11, v13

    move-object v12, v13

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object v12, v4

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "@"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    :goto_1
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v0

    .line 46
    invoke-virtual {v11}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move v11, v2

    const/4 v12, -0x1

    if-eq v11, v12, :cond_7

    new-instance v11, Ljava/lang/StringBuilder;

    move-object v13, v11

    move-object v11, v13

    move-object v12, v13

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, ":"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move v12, v2

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    :goto_2
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v3

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v5

    if-eqz v11, :cond_8

    new-instance v11, Ljava/lang/StringBuilder;

    move-object v13, v11

    move-object v11, v13

    move-object v12, v13

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "?"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v12, v5

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    :goto_3
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v6

    if-eqz v11, :cond_9

    new-instance v11, Ljava/lang/StringBuilder;

    move-object v13, v11

    move-object v11, v13

    move-object v12, v13

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "#"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v12, v6

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    :goto_4
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    move-object v0, v8

    return-object v0

    .line 30
    :cond_5
    sget-object v8, Lio/socket/client/Url;->PATTERN_HTTPS:Ljava/util/regex/Pattern;

    move-object v9, v1

    invoke-virtual {v8, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 31
    const/16 v8, 0x1bb

    move v2, v8

    goto/16 :goto_0

    .line 44
    :cond_6
    :try_start_1
    const-string v11, ""

    goto/16 :goto_1

    .line 46
    :cond_7
    const-string v11, ""

    goto :goto_2

    :cond_8
    const-string v11, ""

    goto :goto_3

    :cond_9
    const-string v11, ""
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .line 51
    :catch_0
    move-exception v8

    move-object v7, v8

    .line 52
    new-instance v8, Ljava/lang/RuntimeException;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    move-object v10, v7

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v8
.end method
