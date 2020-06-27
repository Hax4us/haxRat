.class public final Lokhttp3/internal/http/StatusLine;
.super Ljava/lang/Object;
.source "StatusLine.java"


# static fields
.field public static final HTTP_CONTINUE:I = 0x64

.field public static final HTTP_PERM_REDIRECT:I = 0x134

.field public static final HTTP_TEMP_REDIRECT:I = 0x133


# instance fields
.field public final code:I

.field public final message:Ljava/lang/String;

.field public final protocol:Lokhttp3/Protocol;


# direct methods
.method public constructor <init>(Lokhttp3/Protocol;ILjava/lang/String;)V
    .locals 6

    .prologue
    .line 34
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 35
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lokhttp3/internal/http/StatusLine;->protocol:Lokhttp3/Protocol;

    .line 36
    move-object v4, v0

    move v5, v2

    iput v5, v4, Lokhttp3/internal/http/StatusLine;->code:I

    .line 37
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lokhttp3/internal/http/StatusLine;->message:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public static get(Lokhttp3/Response;)Lokhttp3/internal/http/StatusLine;
    .locals 7

    .prologue
    .line 41
    move-object v0, p0

    new-instance v1, Lokhttp3/internal/http/StatusLine;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    move-object v3, v0

    invoke-virtual {v3}, Lokhttp3/Response;->protocol()Lokhttp3/Protocol;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v4}, Lokhttp3/Response;->code()I

    move-result v4

    move-object v5, v0

    invoke-virtual {v5}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lokhttp3/internal/http/StatusLine;-><init>(Lokhttp3/Protocol;ILjava/lang/String;)V

    move-object v0, v1

    return-object v0
.end method

.method public static parse(Ljava/lang/String;)Lokhttp3/internal/http/StatusLine;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 51
    move-object v0, p0

    move-object v5, v0

    const-string v6, "HTTP/1."

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 52
    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x9

    if-lt v5, v6, :cond_0

    move-object v5, v0

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x20

    if-eq v5, v6, :cond_1

    .line 53
    :cond_0
    new-instance v5, Ljava/net/ProtocolException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unexpected status line: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 55
    :cond_1
    move-object v5, v0

    const/4 v6, 0x7

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x30

    add-int/lit8 v5, v5, -0x30

    move v3, v5

    .line 56
    const/16 v5, 0x9

    move v1, v5

    .line 57
    move v5, v3

    if-nez v5, :cond_2

    .line 58
    sget-object v5, Lokhttp3/Protocol;->HTTP_1_0:Lokhttp3/Protocol;

    move-object v2, v5

    .line 73
    :goto_0
    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    move v6, v1

    const/4 v7, 0x3

    add-int/lit8 v6, v6, 0x3

    if-ge v5, v6, :cond_6

    .line 74
    new-instance v5, Ljava/net/ProtocolException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unexpected status line: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 59
    :cond_2
    move v5, v3

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    .line 60
    sget-object v5, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    move-object v2, v5

    goto :goto_0

    .line 62
    :cond_3
    new-instance v5, Ljava/net/ProtocolException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unexpected status line: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 64
    :cond_4
    move-object v5, v0

    const-string v6, "ICY "

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 66
    sget-object v5, Lokhttp3/Protocol;->HTTP_1_0:Lokhttp3/Protocol;

    move-object v2, v5

    .line 67
    const/4 v5, 0x4

    move v1, v5

    goto :goto_0

    .line 69
    :cond_5
    new-instance v5, Ljava/net/ProtocolException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unexpected status line: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 78
    :cond_6
    move-object v5, v0

    move v6, v1

    move v7, v1

    const/4 v8, 0x3

    add-int/lit8 v7, v7, 0x3

    :try_start_0
    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    move v3, v5

    .line 85
    const-string v5, ""

    move-object v4, v5

    .line 86
    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    move v6, v1

    const/4 v7, 0x3

    add-int/lit8 v6, v6, 0x3

    if-le v5, v6, :cond_8

    .line 87
    move-object v5, v0

    move v6, v1

    const/4 v7, 0x3

    add-int/lit8 v6, v6, 0x3

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x20

    if-eq v5, v6, :cond_7

    .line 88
    new-instance v5, Ljava/net/ProtocolException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unexpected status line: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 79
    :catch_0
    move-exception v5

    move-object v4, v5

    .line 80
    new-instance v5, Ljava/net/ProtocolException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unexpected status line: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 90
    :cond_7
    move-object v5, v0

    move v6, v1

    const/4 v7, 0x4

    add-int/lit8 v6, v6, 0x4

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    .line 93
    :cond_8
    new-instance v5, Lokhttp3/internal/http/StatusLine;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v2

    move v8, v3

    move-object v9, v4

    invoke-direct {v6, v7, v8, v9}, Lokhttp3/internal/http/StatusLine;-><init>(Lokhttp3/Protocol;ILjava/lang/String;)V

    move-object v0, v5

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 97
    move-object v0, p0

    new-instance v2, Ljava/lang/StringBuilder;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, v2

    .line 98
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lokhttp3/internal/http/StatusLine;->protocol:Lokhttp3/Protocol;

    sget-object v4, Lokhttp3/Protocol;->HTTP_1_0:Lokhttp3/Protocol;

    if-ne v3, v4, :cond_1

    const-string v3, "HTTP/1.0"

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 99
    move-object v2, v1

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget v3, v3, Lokhttp3/internal/http/StatusLine;->code:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 100
    move-object v2, v0

    iget-object v2, v2, Lokhttp3/internal/http/StatusLine;->message:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 101
    move-object v2, v1

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lokhttp3/internal/http/StatusLine;->message:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 103
    :cond_0
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    return-object v0

    .line 98
    :cond_1
    const-string v3, "HTTP/1.1"

    goto :goto_0
.end method
