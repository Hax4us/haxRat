.class public final Lokhttp3/internal/http/HttpHeaders;
.super Ljava/lang/Object;
.source "HttpHeaders.java"


# static fields
.field private static final PARAMETER:Ljava/util/regex/Pattern;

.field private static final QUOTED_STRING:Ljava/lang/String; = "\"([^\"]*)\""

.field private static final TOKEN:Ljava/lang/String; = "([^ \"=]*)"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-string v0, " +([^ \"=]*)=(:?\"([^\"]*)\"|([^ \"=]*)) *(:?,|$)"

    .line 43
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/http/HttpHeaders;->PARAMETER:Ljava/util/regex/Pattern;

    .line 42
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 45
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 46
    return-void
.end method

.method public static contentLength(Lokhttp3/Headers;)J
    .locals 3

    .prologue
    .line 53
    move-object v0, p0

    move-object v1, v0

    const-string v2, "Content-Length"

    invoke-virtual {v1, v2}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lokhttp3/internal/http/HttpHeaders;->stringToLong(Ljava/lang/String;)J

    move-result-wide v1

    move-wide v0, v1

    return-wide v0
.end method

.method public static contentLength(Lokhttp3/Response;)J
    .locals 3

    .prologue
    .line 49
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v1

    invoke-static {v1}, Lokhttp3/internal/http/HttpHeaders;->contentLength(Lokhttp3/Headers;)J

    move-result-wide v1

    move-wide v0, v1

    return-wide v0
.end method

.method public static hasBody(Lokhttp3/Response;)Z
    .locals 6

    .prologue
    .line 188
    move-object v0, p0

    move-object v2, v0

    invoke-virtual {v2}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v2

    const-string v3, "HEAD"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 189
    const/4 v2, 0x0

    move v0, v2

    .line 206
    :goto_0
    return v0

    .line 192
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Lokhttp3/Response;->code()I

    move-result v2

    move v1, v2

    .line 193
    move v2, v1

    const/16 v3, 0x64

    if-lt v2, v3, :cond_1

    move v2, v1

    const/16 v3, 0xc8

    if-lt v2, v3, :cond_2

    :cond_1
    move v2, v1

    const/16 v3, 0xcc

    if-eq v2, v3, :cond_2

    move v2, v1

    const/16 v3, 0x130

    if-eq v2, v3, :cond_2

    .line 196
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0

    .line 201
    :cond_2
    move-object v2, v0

    invoke-static {v2}, Lokhttp3/internal/http/HttpHeaders;->contentLength(Lokhttp3/Response;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    const-string v2, "chunked"

    move-object v3, v0

    const-string v4, "Transfer-Encoding"

    .line 202
    invoke-virtual {v3, v4}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 203
    :cond_3
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0

    .line 206
    :cond_4
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public static hasVaryAll(Lokhttp3/Headers;)Z
    .locals 3

    .prologue
    .line 88
    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Lokhttp3/internal/http/HttpHeaders;->varyFields(Lokhttp3/Headers;)Ljava/util/Set;

    move-result-object v1

    const-string v2, "*"

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public static hasVaryAll(Lokhttp3/Response;)Z
    .locals 2

    .prologue
    .line 81
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v1

    invoke-static {v1}, Lokhttp3/internal/http/HttpHeaders;->hasVaryAll(Lokhttp3/Headers;)Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public static parseChallenges(Lokhttp3/Headers;Ljava/lang/String;)Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Headers;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lokhttp3/Challenge;",
            ">;"
        }
    .end annotation

    .prologue
    .line 155
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v11, Ljava/util/ArrayList;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v11

    .line 156
    move-object v11, v0

    move-object v12, v1

    invoke-virtual {v11, v12}, Lokhttp3/Headers;->values(Ljava/lang/String;)Ljava/util/List;

    move-result-object v11

    move-object v3, v11

    .line 157
    move-object v11, v3

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move-object v4, v11

    :goto_0
    move-object v11, v4

    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    move-object v11, v4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    move-object v5, v11

    .line 158
    move-object v11, v5

    const/16 v12, 0x20

    invoke-virtual {v11, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    move v6, v11

    .line 159
    move v11, v6

    const/4 v12, -0x1

    if-ne v11, v12, :cond_0

    goto :goto_0

    .line 161
    :cond_0
    sget-object v11, Lokhttp3/internal/http/HttpHeaders;->PARAMETER:Ljava/util/regex/Pattern;

    move-object v12, v5

    invoke-virtual {v11, v12}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v11

    move-object v7, v11

    .line 162
    move v11, v6

    move v8, v11

    :goto_1
    move-object v11, v7

    move v12, v8

    invoke-virtual {v11, v12}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 163
    move-object v11, v5

    const/4 v12, 0x1

    move-object v13, v7

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Ljava/util/regex/Matcher;->start(I)I

    move-result v13

    const-string v14, "realm"

    const/4 v15, 0x0

    const/16 v16, 0x5

    invoke-virtual/range {v11 .. v16}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 164
    move-object v11, v5

    const/4 v12, 0x0

    move v13, v6

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    move-object v9, v11

    .line 165
    move-object v11, v7

    const/4 v12, 0x3

    invoke-virtual {v11, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v11

    move-object v10, v11

    .line 166
    move-object v11, v10

    if-eqz v11, :cond_2

    .line 167
    move-object v11, v2

    new-instance v12, Lokhttp3/Challenge;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    move-object v14, v9

    move-object v15, v10

    invoke-direct {v13, v14, v15}, Lokhttp3/Challenge;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v11

    .line 172
    :cond_1
    goto :goto_0

    .line 162
    :cond_2
    move-object v11, v7

    invoke-virtual {v11}, Ljava/util/regex/Matcher;->end()I

    move-result v11

    move v8, v11

    goto :goto_1

    .line 173
    :cond_3
    move-object v11, v2

    move-object v0, v11

    return-object v0
.end method

.method public static parseSeconds(Ljava/lang/String;I)I
    .locals 8

    .prologue
    .line 242
    move-object v0, p0

    move v1, p1

    move-object v4, v0

    :try_start_0
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    move-wide v2, v4

    .line 243
    move-wide v4, v2

    const-wide/32 v6, 0x7fffffff

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    .line 244
    const v4, 0x7fffffff

    move v0, v4

    .line 251
    :goto_0
    return v0

    .line 245
    :cond_0
    move-wide v4, v2

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-gez v4, :cond_1

    .line 246
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    .line 248
    :cond_1
    move-wide v4, v2

    long-to-int v4, v4

    move v0, v4

    goto :goto_0

    .line 250
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 251
    move v4, v1

    move v0, v4

    goto :goto_0
.end method

.method public static receiveHeaders(Lokhttp3/CookieJar;Lokhttp3/HttpUrl;Lokhttp3/Headers;)V
    .locals 7

    .prologue
    .line 177
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    sget-object v5, Lokhttp3/CookieJar;->NO_COOKIES:Lokhttp3/CookieJar;

    if-ne v4, v5, :cond_0

    .line 183
    :goto_0
    return-void

    .line 179
    :cond_0
    move-object v4, v1

    move-object v5, v2

    invoke-static {v4, v5}, Lokhttp3/Cookie;->parseAll(Lokhttp3/HttpUrl;Lokhttp3/Headers;)Ljava/util/List;

    move-result-object v4

    move-object v3, v4

    .line 180
    move-object v4, v3

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .line 182
    :cond_1
    move-object v4, v0

    move-object v5, v1

    move-object v6, v3

    invoke-interface {v4, v5, v6}, Lokhttp3/CookieJar;->saveFromResponse(Lokhttp3/HttpUrl;Ljava/util/List;)V

    .line 183
    goto :goto_0
.end method

.method public static skipUntil(Ljava/lang/String;ILjava/lang/String;)I
    .locals 6

    .prologue
    .line 214
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    :goto_0
    move v3, v1

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 215
    move-object v3, v2

    move-object v4, v0

    move v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 219
    :cond_0
    move v3, v1

    move v0, v3

    return v0

    .line 214
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static skipWhitespace(Ljava/lang/String;I)I
    .locals 5

    .prologue
    .line 227
    move-object v0, p0

    move v1, p1

    :goto_0
    move v3, v1

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 228
    move-object v3, v0

    move v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    move v2, v3

    .line 229
    move v3, v2

    const/16 v4, 0x20

    if-eq v3, v4, :cond_1

    move v3, v2

    const/16 v4, 0x9

    if-eq v3, v4, :cond_1

    .line 233
    :cond_0
    move v3, v1

    move v0, v3

    return v0

    .line 227
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static stringToLong(Ljava/lang/String;)J
    .locals 4

    .prologue
    .line 57
    move-object v0, p0

    move-object v2, v0

    if-nez v2, :cond_0

    const-wide/16 v2, -0x1

    move-wide v0, v2

    .line 61
    :goto_0
    return-wide v0

    .line 59
    :cond_0
    move-object v2, v0

    :try_start_0
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    move-wide v0, v2

    goto :goto_0

    .line 60
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 61
    const-wide/16 v2, -0x1

    move-wide v0, v2

    goto :goto_0
.end method

.method public static varyFields(Lokhttp3/Headers;)Ljava/util/Set;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Headers;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 99
    move-object v0, p0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v9

    move-object v1, v9

    .line 100
    const/4 v9, 0x0

    move v2, v9

    move-object v9, v0

    invoke-virtual {v9}, Lokhttp3/Headers;->size()I

    move-result v9

    move v3, v9

    :goto_0
    move v9, v2

    move v10, v3

    if-ge v9, v10, :cond_3

    .line 101
    const-string v9, "Vary"

    move-object v10, v0

    move v11, v2

    invoke-virtual {v10, v11}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 100
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 103
    :cond_1
    move-object v9, v0

    move v10, v2

    invoke-virtual {v9, v10}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v9

    move-object v4, v9

    .line 104
    move-object v9, v1

    invoke-interface {v9}, Ljava/util/Set;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 105
    new-instance v9, Ljava/util/TreeSet;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    sget-object v11, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v10, v11}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    move-object v1, v9

    .line 107
    :cond_2
    move-object v9, v4

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    move-object v5, v9

    move-object v9, v5

    array-length v9, v9

    move v6, v9

    const/4 v9, 0x0

    move v7, v9

    :goto_1
    move v9, v7

    move v10, v6

    if-ge v9, v10, :cond_0

    move-object v9, v5

    move v10, v7

    aget-object v9, v9, v10

    move-object v8, v9

    .line 108
    move-object v9, v1

    move-object v10, v8

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v9

    .line 107
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 111
    :cond_3
    move-object v9, v1

    move-object v0, v9

    return-object v0
.end method

.method private static varyFields(Lokhttp3/Response;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Response;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 92
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v1

    invoke-static {v1}, Lokhttp3/internal/http/HttpHeaders;->varyFields(Lokhttp3/Headers;)Ljava/util/Set;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static varyHeaders(Lokhttp3/Headers;Lokhttp3/Headers;)Lokhttp3/Headers;
    .locals 12

    .prologue
    .line 132
    move-object v0, p0

    move-object v1, p1

    move-object v7, v1

    invoke-static {v7}, Lokhttp3/internal/http/HttpHeaders;->varyFields(Lokhttp3/Headers;)Ljava/util/Set;

    move-result-object v7

    move-object v2, v7

    .line 133
    move-object v7, v2

    invoke-interface {v7}, Ljava/util/Set;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_0

    new-instance v7, Lokhttp3/Headers$Builder;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    invoke-direct {v8}, Lokhttp3/Headers$Builder;-><init>()V

    invoke-virtual {v7}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    move-result-object v7

    move-object v0, v7

    .line 142
    :goto_0
    return-object v0

    .line 135
    :cond_0
    new-instance v7, Lokhttp3/Headers$Builder;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    invoke-direct {v8}, Lokhttp3/Headers$Builder;-><init>()V

    move-object v3, v7

    .line 136
    const/4 v7, 0x0

    move v4, v7

    move-object v7, v0

    invoke-virtual {v7}, Lokhttp3/Headers;->size()I

    move-result v7

    move v5, v7

    :goto_1
    move v7, v4

    move v8, v5

    if-ge v7, v8, :cond_2

    .line 137
    move-object v7, v0

    move v8, v4

    invoke-virtual {v7, v8}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    .line 138
    move-object v7, v2

    move-object v8, v6

    invoke-interface {v7, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 139
    move-object v7, v3

    move-object v8, v6

    move-object v9, v0

    move v10, v4

    invoke-virtual {v9, v10}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lokhttp3/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    move-result-object v7

    .line 136
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 142
    :cond_2
    move-object v7, v3

    invoke-virtual {v7}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    move-result-object v7

    move-object v0, v7

    goto :goto_0
.end method

.method public static varyHeaders(Lokhttp3/Response;)Lokhttp3/Headers;
    .locals 5

    .prologue
    .line 122
    move-object v0, p0

    move-object v3, v0

    invoke-virtual {v3}, Lokhttp3/Response;->networkResponse()Lokhttp3/Response;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/Request;->headers()Lokhttp3/Headers;

    move-result-object v3

    move-object v1, v3

    .line 123
    move-object v3, v0

    invoke-virtual {v3}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v3

    move-object v2, v3

    .line 124
    move-object v3, v1

    move-object v4, v2

    invoke-static {v3, v4}, Lokhttp3/internal/http/HttpHeaders;->varyHeaders(Lokhttp3/Headers;Lokhttp3/Headers;)Lokhttp3/Headers;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method public static varyMatches(Lokhttp3/Response;Lokhttp3/Headers;Lokhttp3/Request;)Z
    .locals 8

    .prologue
    .line 71
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v0

    invoke-static {v5}, Lokhttp3/internal/http/HttpHeaders;->varyFields(Lokhttp3/Response;)Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v3, v5

    :goto_0
    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object v4, v5

    .line 72
    move-object v5, v1

    move-object v6, v4

    invoke-virtual {v5, v6}, Lokhttp3/Headers;->values(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    move-object v6, v2

    move-object v7, v4

    invoke-virtual {v6, v7}, Lokhttp3/Request;->headers(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    invoke-static {v5, v6}, Lokhttp3/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v5, 0x0

    move v0, v5

    .line 74
    :goto_1
    return v0

    .line 73
    :cond_0
    goto :goto_0

    .line 74
    :cond_1
    const/4 v5, 0x1

    move v0, v5

    goto :goto_1
.end method
