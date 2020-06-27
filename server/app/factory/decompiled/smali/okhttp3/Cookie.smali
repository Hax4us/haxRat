.class public final Lokhttp3/Cookie;
.super Ljava/lang/Object;
.source "Cookie.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/Cookie$Builder;
    }
.end annotation


# static fields
.field private static final DAY_OF_MONTH_PATTERN:Ljava/util/regex/Pattern;

.field private static final MONTH_PATTERN:Ljava/util/regex/Pattern;

.field private static final TIME_PATTERN:Ljava/util/regex/Pattern;

.field private static final YEAR_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private final domain:Ljava/lang/String;

.field private final expiresAt:J

.field private final hostOnly:Z

.field private final httpOnly:Z

.field private final name:Ljava/lang/String;

.field private final path:Ljava/lang/String;

.field private final persistent:Z

.field private final secure:Z

.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-string v0, "(\\d{2,4})[^\\d]*"

    .line 45
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lokhttp3/Cookie;->YEAR_PATTERN:Ljava/util/regex/Pattern;

    .line 46
    const-string v0, "(?i)(jan|feb|mar|apr|may|jun|jul|aug|sep|oct|nov|dec).*"

    .line 47
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lokhttp3/Cookie;->MONTH_PATTERN:Ljava/util/regex/Pattern;

    .line 48
    const-string v0, "(\\d{1,2})[^\\d]*"

    .line 49
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lokhttp3/Cookie;->DAY_OF_MONTH_PATTERN:Ljava/util/regex/Pattern;

    .line 50
    const-string v0, "(\\d{1,2}):(\\d{1,2}):(\\d{1,2})[^\\d]*"

    .line 51
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lokhttp3/Cookie;->TIME_PATTERN:Ljava/util/regex/Pattern;

    .line 50
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ZZZZ)V
    .locals 14

    .prologue
    .line 65
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move-object v11, v0

    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    .line 66
    move-object v11, v0

    move-object v12, v1

    iput-object v12, v11, Lokhttp3/Cookie;->name:Ljava/lang/String;

    .line 67
    move-object v11, v0

    move-object v12, v2

    iput-object v12, v11, Lokhttp3/Cookie;->value:Ljava/lang/String;

    .line 68
    move-object v11, v0

    move-wide v12, v3

    iput-wide v12, v11, Lokhttp3/Cookie;->expiresAt:J

    .line 69
    move-object v11, v0

    move-object v12, v5

    iput-object v12, v11, Lokhttp3/Cookie;->domain:Ljava/lang/String;

    .line 70
    move-object v11, v0

    move-object v12, v6

    iput-object v12, v11, Lokhttp3/Cookie;->path:Ljava/lang/String;

    .line 71
    move-object v11, v0

    move v12, v7

    iput-boolean v12, v11, Lokhttp3/Cookie;->secure:Z

    .line 72
    move-object v11, v0

    move v12, v8

    iput-boolean v12, v11, Lokhttp3/Cookie;->httpOnly:Z

    .line 73
    move-object v11, v0

    move v12, v9

    iput-boolean v12, v11, Lokhttp3/Cookie;->hostOnly:Z

    .line 74
    move-object v11, v0

    move v12, v10

    iput-boolean v12, v11, Lokhttp3/Cookie;->persistent:Z

    .line 75
    return-void
.end method

.method constructor <init>(Lokhttp3/Cookie$Builder;)V
    .locals 6

    .prologue
    .line 77
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 78
    move-object v2, v1

    iget-object v2, v2, Lokhttp3/Cookie$Builder;->name:Ljava/lang/String;

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/NullPointerException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "builder.name == null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 79
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Lokhttp3/Cookie$Builder;->value:Ljava/lang/String;

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/NullPointerException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "builder.value == null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 80
    :cond_1
    move-object v2, v1

    iget-object v2, v2, Lokhttp3/Cookie$Builder;->domain:Ljava/lang/String;

    if-nez v2, :cond_2

    new-instance v2, Ljava/lang/NullPointerException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "builder.domain == null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 82
    :cond_2
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Lokhttp3/Cookie$Builder;->name:Ljava/lang/String;

    iput-object v3, v2, Lokhttp3/Cookie;->name:Ljava/lang/String;

    .line 83
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Lokhttp3/Cookie$Builder;->value:Ljava/lang/String;

    iput-object v3, v2, Lokhttp3/Cookie;->value:Ljava/lang/String;

    .line 84
    move-object v2, v0

    move-object v3, v1

    iget-wide v3, v3, Lokhttp3/Cookie$Builder;->expiresAt:J

    iput-wide v3, v2, Lokhttp3/Cookie;->expiresAt:J

    .line 85
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Lokhttp3/Cookie$Builder;->domain:Ljava/lang/String;

    iput-object v3, v2, Lokhttp3/Cookie;->domain:Ljava/lang/String;

    .line 86
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Lokhttp3/Cookie$Builder;->path:Ljava/lang/String;

    iput-object v3, v2, Lokhttp3/Cookie;->path:Ljava/lang/String;

    .line 87
    move-object v2, v0

    move-object v3, v1

    iget-boolean v3, v3, Lokhttp3/Cookie$Builder;->secure:Z

    iput-boolean v3, v2, Lokhttp3/Cookie;->secure:Z

    .line 88
    move-object v2, v0

    move-object v3, v1

    iget-boolean v3, v3, Lokhttp3/Cookie$Builder;->httpOnly:Z

    iput-boolean v3, v2, Lokhttp3/Cookie;->httpOnly:Z

    .line 89
    move-object v2, v0

    move-object v3, v1

    iget-boolean v3, v3, Lokhttp3/Cookie$Builder;->persistent:Z

    iput-boolean v3, v2, Lokhttp3/Cookie;->persistent:Z

    .line 90
    move-object v2, v0

    move-object v3, v1

    iget-boolean v3, v3, Lokhttp3/Cookie$Builder;->hostOnly:Z

    iput-boolean v3, v2, Lokhttp3/Cookie;->hostOnly:Z

    .line 91
    return-void
.end method

.method private static dateCharacterOffset(Ljava/lang/String;IIZ)I
    .locals 9

    .prologue
    .line 380
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v7, v1

    move v4, v7

    :goto_0
    move v7, v4

    move v8, v2

    if-ge v7, v8, :cond_8

    .line 381
    move-object v7, v0

    move v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    move v5, v7

    .line 382
    move v7, v5

    const/16 v8, 0x20

    if-ge v7, v8, :cond_0

    move v7, v5

    const/16 v8, 0x9

    if-ne v7, v8, :cond_4

    :cond_0
    move v7, v5

    const/16 v8, 0x7f

    if-ge v7, v8, :cond_4

    move v7, v5

    const/16 v8, 0x30

    if-lt v7, v8, :cond_1

    move v7, v5

    const/16 v8, 0x39

    if-le v7, v8, :cond_4

    :cond_1
    move v7, v5

    const/16 v8, 0x61

    if-lt v7, v8, :cond_2

    move v7, v5

    const/16 v8, 0x7a

    if-le v7, v8, :cond_4

    :cond_2
    move v7, v5

    const/16 v8, 0x41

    if-lt v7, v8, :cond_3

    move v7, v5

    const/16 v8, 0x5a

    if-le v7, v8, :cond_4

    :cond_3
    move v7, v5

    const/16 v8, 0x3a

    if-ne v7, v8, :cond_5

    :cond_4
    const/4 v7, 0x1

    :goto_1
    move v6, v7

    .line 387
    move v7, v6

    move v8, v3

    if-nez v8, :cond_6

    const/4 v8, 0x1

    :goto_2
    if-ne v7, v8, :cond_7

    move v7, v4

    move v0, v7

    .line 389
    :goto_3
    return v0

    .line 382
    :cond_5
    const/4 v7, 0x0

    goto :goto_1

    .line 387
    :cond_6
    const/4 v8, 0x0

    goto :goto_2

    .line 380
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 389
    :cond_8
    move v7, v2

    move v0, v7

    goto :goto_3
.end method

.method private static domainMatch(Lokhttp3/HttpUrl;Ljava/lang/String;)Z
    .locals 6

    .prologue
    .line 183
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-virtual {v3}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 185
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 186
    const/4 v3, 0x1

    move v0, v3

    .line 195
    :goto_0
    return v0

    .line 189
    :cond_0
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v2

    move-object v4, v2

    .line 190
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    move-object v5, v1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v4, v5

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2e

    if-ne v3, v4, :cond_1

    move-object v3, v2

    .line 191
    invoke-static {v3}, Lokhttp3/internal/Util;->verifyAsIpAddress(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 192
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0

    .line 195
    :cond_1
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method

.method static parse(JLokhttp3/HttpUrl;Ljava/lang/String;)Lokhttp3/Cookie;
    .locals 40

    .prologue
    .line 222
    move-wide/from16 v2, p0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    const/16 v27, 0x0

    move/from16 v6, v27

    .line 223
    move-object/from16 v27, v5

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    move-result v27

    move/from16 v7, v27

    .line 224
    move-object/from16 v27, v5

    move/from16 v28, v6

    move/from16 v29, v7

    const/16 v30, 0x3b

    invoke-static/range {v27 .. v30}, Lokhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;IIC)I

    move-result v27

    move/from16 v8, v27

    .line 226
    move-object/from16 v27, v5

    move/from16 v28, v6

    move/from16 v29, v8

    const/16 v30, 0x3d

    invoke-static/range {v27 .. v30}, Lokhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;IIC)I

    move-result v27

    move/from16 v9, v27

    .line 227
    move/from16 v27, v9

    move/from16 v28, v8

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_0

    const/16 v27, 0x0

    move-object/from16 v2, v27

    .line 314
    :goto_0
    return-object v2

    .line 229
    :cond_0
    move-object/from16 v27, v5

    move/from16 v28, v6

    move/from16 v29, v9

    invoke-static/range {v27 .. v29}, Lokhttp3/internal/Util;->trimSubstring(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v10, v27

    .line 230
    move-object/from16 v27, v10

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->isEmpty()Z

    move-result v27

    if-eqz v27, :cond_1

    const/16 v27, 0x0

    move-object/from16 v2, v27

    goto :goto_0

    .line 232
    :cond_1
    move-object/from16 v27, v5

    move/from16 v28, v9

    const/16 v29, 0x1

    add-int/lit8 v28, v28, 0x1

    move/from16 v29, v8

    invoke-static/range {v27 .. v29}, Lokhttp3/internal/Util;->trimSubstring(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v11, v27

    .line 234
    const-wide v27, 0xe677d21fdbffL

    move-wide/from16 v12, v27

    .line 235
    const-wide/16 v27, -0x1

    move-wide/from16 v14, v27

    .line 236
    const/16 v27, 0x0

    move-object/from16 v16, v27

    .line 237
    const/16 v27, 0x0

    move-object/from16 v17, v27

    .line 238
    const/16 v27, 0x0

    move/from16 v18, v27

    .line 239
    const/16 v27, 0x0

    move/from16 v19, v27

    .line 240
    const/16 v27, 0x1

    move/from16 v20, v27

    .line 241
    const/16 v27, 0x0

    move/from16 v21, v27

    .line 243
    move/from16 v27, v8

    const/16 v28, 0x1

    add-int/lit8 v27, v27, 0x1

    move/from16 v6, v27

    .line 244
    :goto_1
    move/from16 v27, v6

    move/from16 v28, v7

    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_9

    .line 245
    move-object/from16 v27, v5

    move/from16 v28, v6

    move/from16 v29, v7

    const/16 v30, 0x3b

    invoke-static/range {v27 .. v30}, Lokhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;IIC)I

    move-result v27

    move/from16 v22, v27

    .line 247
    move-object/from16 v27, v5

    move/from16 v28, v6

    move/from16 v29, v22

    const/16 v30, 0x3d

    invoke-static/range {v27 .. v30}, Lokhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;IIC)I

    move-result v27

    move/from16 v23, v27

    .line 248
    move-object/from16 v27, v5

    move/from16 v28, v6

    move/from16 v29, v23

    invoke-static/range {v27 .. v29}, Lokhttp3/internal/Util;->trimSubstring(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v24, v27

    .line 249
    move/from16 v27, v23

    move/from16 v28, v22

    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_3

    move-object/from16 v27, v5

    move/from16 v28, v23

    const/16 v29, 0x1

    add-int/lit8 v28, v28, 0x1

    move/from16 v29, v22

    .line 250
    invoke-static/range {v27 .. v29}, Lokhttp3/internal/Util;->trimSubstring(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v27

    :goto_2
    move-object/from16 v25, v27

    .line 253
    move-object/from16 v27, v24

    const-string v28, "expires"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_4

    .line 255
    move-object/from16 v27, v25

    const/16 v28, 0x0

    move-object/from16 v29, v25

    :try_start_0
    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v29

    invoke-static/range {v27 .. v29}, Lokhttp3/Cookie;->parseExpires(Ljava/lang/String;II)J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v27

    move-wide/from16 v12, v27

    .line 256
    const/16 v27, 0x1

    move/from16 v21, v27

    .line 282
    :cond_2
    :goto_3
    move/from16 v27, v22

    const/16 v28, 0x1

    add-int/lit8 v27, v27, 0x1

    move/from16 v6, v27

    .line 283
    goto :goto_1

    .line 250
    :cond_3
    const-string v27, ""

    goto :goto_2

    .line 257
    :catch_0
    move-exception v27

    move-object/from16 v26, v27

    .line 259
    goto :goto_3

    .line 260
    :cond_4
    move-object/from16 v27, v24

    const-string v28, "max-age"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_5

    .line 262
    move-object/from16 v27, v25

    :try_start_1
    invoke-static/range {v27 .. v27}, Lokhttp3/Cookie;->parseMaxAge(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v27

    move-wide/from16 v14, v27

    .line 263
    const/16 v27, 0x1

    move/from16 v21, v27

    .line 266
    goto :goto_3

    .line 264
    :catch_1
    move-exception v27

    move-object/from16 v26, v27

    .line 266
    goto :goto_3

    .line 267
    :cond_5
    move-object/from16 v27, v24

    const-string v28, "domain"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_6

    .line 269
    move-object/from16 v27, v25

    :try_start_2
    invoke-static/range {v27 .. v27}, Lokhttp3/Cookie;->parseDomain(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v27

    move-object/from16 v16, v27

    .line 270
    const/16 v27, 0x0

    move/from16 v20, v27

    .line 273
    goto :goto_3

    .line 271
    :catch_2
    move-exception v27

    move-object/from16 v26, v27

    .line 273
    goto :goto_3

    .line 274
    :cond_6
    move-object/from16 v27, v24

    const-string v28, "path"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_7

    .line 275
    move-object/from16 v27, v25

    move-object/from16 v17, v27

    goto :goto_3

    .line 276
    :cond_7
    move-object/from16 v27, v24

    const-string v28, "secure"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_8

    .line 277
    const/16 v27, 0x1

    move/from16 v18, v27

    goto :goto_3

    .line 278
    :cond_8
    move-object/from16 v27, v24

    const-string v28, "httponly"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_2

    .line 279
    const/16 v27, 0x1

    move/from16 v19, v27

    goto :goto_3

    .line 287
    :cond_9
    move-wide/from16 v27, v14

    const-wide/high16 v29, -0x8000000000000000L

    cmp-long v27, v27, v29

    if-nez v27, :cond_e

    .line 288
    const-wide/high16 v27, -0x8000000000000000L

    move-wide/from16 v12, v27

    .line 300
    :cond_a
    :goto_4
    move-object/from16 v27, v16

    if-nez v27, :cond_11

    .line 301
    move-object/from16 v27, v4

    invoke-virtual/range {v27 .. v27}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v16, v27

    .line 308
    :cond_b
    move-object/from16 v27, v17

    if-eqz v27, :cond_c

    move-object/from16 v27, v17

    const-string v28, "/"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v27

    if-nez v27, :cond_d

    .line 309
    :cond_c
    move-object/from16 v27, v4

    invoke-virtual/range {v27 .. v27}, Lokhttp3/HttpUrl;->encodedPath()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v22, v27

    .line 310
    move-object/from16 v27, v22

    const/16 v28, 0x2f

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v27

    move/from16 v23, v27

    .line 311
    move/from16 v27, v23

    if-eqz v27, :cond_12

    move-object/from16 v27, v22

    const/16 v28, 0x0

    move/from16 v29, v23

    invoke-virtual/range {v27 .. v29}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v27

    :goto_5
    move-object/from16 v17, v27

    .line 314
    :cond_d
    new-instance v27, Lokhttp3/Cookie;

    move-object/from16 v39, v27

    move-object/from16 v27, v39

    move-object/from16 v28, v39

    move-object/from16 v29, v10

    move-object/from16 v30, v11

    move-wide/from16 v31, v12

    move-object/from16 v33, v16

    move-object/from16 v34, v17

    move/from16 v35, v18

    move/from16 v36, v19

    move/from16 v37, v20

    move/from16 v38, v21

    invoke-direct/range {v28 .. v38}, Lokhttp3/Cookie;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ZZZZ)V

    move-object/from16 v2, v27

    goto/16 :goto_0

    .line 289
    :cond_e
    move-wide/from16 v27, v14

    const-wide/16 v29, -0x1

    cmp-long v27, v27, v29

    if-eqz v27, :cond_a

    .line 290
    move-wide/from16 v27, v14

    const-wide v29, 0x20c49ba5e353f7L

    cmp-long v27, v27, v29

    if-gtz v27, :cond_10

    move-wide/from16 v27, v14

    const-wide/16 v29, 0x3e8

    mul-long v27, v27, v29

    :goto_6
    move-wide/from16 v22, v27

    .line 293
    move-wide/from16 v27, v2

    move-wide/from16 v29, v22

    add-long v27, v27, v29

    move-wide/from16 v12, v27

    .line 294
    move-wide/from16 v27, v12

    move-wide/from16 v29, v2

    cmp-long v27, v27, v29

    if-ltz v27, :cond_f

    move-wide/from16 v27, v12

    const-wide v29, 0xe677d21fdbffL

    cmp-long v27, v27, v29

    if-lez v27, :cond_a

    .line 295
    :cond_f
    const-wide v27, 0xe677d21fdbffL

    move-wide/from16 v12, v27

    goto/16 :goto_4

    .line 290
    :cond_10
    const-wide v27, 0x7fffffffffffffffL

    goto :goto_6

    .line 302
    :cond_11
    move-object/from16 v27, v4

    move-object/from16 v28, v16

    invoke-static/range {v27 .. v28}, Lokhttp3/Cookie;->domainMatch(Lokhttp3/HttpUrl;Ljava/lang/String;)Z

    move-result v27

    if-nez v27, :cond_b

    .line 303
    const/16 v27, 0x0

    move-object/from16 v2, v27

    goto/16 :goto_0

    .line 311
    :cond_12
    const-string v27, "/"

    goto :goto_5
.end method

.method public static parse(Lokhttp3/HttpUrl;Ljava/lang/String;)Lokhttp3/Cookie;
    .locals 6

    .prologue
    .line 218
    move-object v0, p0

    move-object v1, p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object v4, v0

    move-object v5, v1

    invoke-static {v2, v3, v4, v5}, Lokhttp3/Cookie;->parse(JLokhttp3/HttpUrl;Ljava/lang/String;)Lokhttp3/Cookie;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public static parseAll(Lokhttp3/HttpUrl;Lokhttp3/Headers;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/HttpUrl;",
            "Lokhttp3/Headers;",
            ")",
            "Ljava/util/List",
            "<",
            "Lokhttp3/Cookie;",
            ">;"
        }
    .end annotation

    .prologue
    .line 432
    move-object v0, p0

    move-object v1, p1

    move-object v7, v1

    const-string v8, "Set-Cookie"

    invoke-virtual {v7, v8}, Lokhttp3/Headers;->values(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    move-object v2, v7

    .line 433
    const/4 v7, 0x0

    move-object v3, v7

    .line 435
    const/4 v7, 0x0

    move v4, v7

    move-object v7, v2

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    move v5, v7

    :goto_0
    move v7, v4

    move v8, v5

    if-ge v7, v8, :cond_2

    .line 436
    move-object v7, v0

    move-object v8, v2

    move v9, v4

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v7, v8}, Lokhttp3/Cookie;->parse(Lokhttp3/HttpUrl;Ljava/lang/String;)Lokhttp3/Cookie;

    move-result-object v7

    move-object v6, v7

    .line 437
    move-object v7, v6

    if-nez v7, :cond_0

    .line 435
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 438
    :cond_0
    move-object v7, v3

    if-nez v7, :cond_1

    new-instance v7, Ljava/util/ArrayList;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v7

    .line 439
    :cond_1
    move-object v7, v3

    move-object v8, v6

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v7

    goto :goto_1

    .line 442
    :cond_2
    move-object v7, v3

    if-eqz v7, :cond_3

    move-object v7, v3

    .line 443
    invoke-static {v7}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    .line 442
    :goto_2
    move-object v0, v7

    return-object v0

    .line 444
    :cond_3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

    goto :goto_2
.end method

.method private static parseDomain(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 417
    move-object v0, p0

    move-object v2, v0

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 418
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 420
    :cond_0
    move-object v2, v0

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 421
    move-object v2, v0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 423
    :cond_1
    move-object v2, v0

    invoke-static {v2}, Lokhttp3/internal/Util;->domainToAscii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 424
    move-object v2, v1

    if-nez v2, :cond_2

    .line 425
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 427
    :cond_2
    move-object v2, v1

    move-object v0, v2

    return-object v0
.end method

.method private static parseExpires(Ljava/lang/String;II)J
    .locals 17

    .prologue
    .line 320
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object v12, v0

    move v13, v1

    move v14, v2

    const/4 v15, 0x0

    invoke-static {v12, v13, v14, v15}, Lokhttp3/Cookie;->dateCharacterOffset(Ljava/lang/String;IIZ)I

    move-result v12

    move v1, v12

    .line 322
    const/4 v12, -0x1

    move v3, v12

    .line 323
    const/4 v12, -0x1

    move v4, v12

    .line 324
    const/4 v12, -0x1

    move v5, v12

    .line 325
    const/4 v12, -0x1

    move v6, v12

    .line 326
    const/4 v12, -0x1

    move v7, v12

    .line 327
    const/4 v12, -0x1

    move v8, v12

    .line 328
    sget-object v12, Lokhttp3/Cookie;->TIME_PATTERN:Ljava/util/regex/Pattern;

    move-object v13, v0

    invoke-virtual {v12, v13}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v12

    move-object v9, v12

    .line 330
    :goto_0
    move v12, v1

    move v13, v2

    if-ge v12, v13, :cond_4

    .line 331
    move-object v12, v0

    move v13, v1

    const/4 v14, 0x1

    add-int/lit8 v13, v13, 0x1

    move v14, v2

    const/4 v15, 0x1

    invoke-static {v12, v13, v14, v15}, Lokhttp3/Cookie;->dateCharacterOffset(Ljava/lang/String;IIZ)I

    move-result v12

    move v10, v12

    .line 332
    move-object v12, v9

    move v13, v1

    move v14, v10

    invoke-virtual {v12, v13, v14}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    move-result-object v12

    .line 334
    move v12, v3

    const/4 v13, -0x1

    if-ne v12, v13, :cond_1

    move-object v12, v9

    sget-object v13, Lokhttp3/Cookie;->TIME_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v12, v13}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/regex/Matcher;->matches()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 335
    move-object v12, v9

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    move v3, v12

    .line 336
    move-object v12, v9

    const/4 v13, 0x2

    invoke-virtual {v12, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    move v4, v12

    .line 337
    move-object v12, v9

    const/4 v13, 0x3

    invoke-virtual {v12, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    move v5, v12

    .line 347
    :cond_0
    :goto_1
    move-object v12, v0

    move v13, v10

    const/4 v14, 0x1

    add-int/lit8 v13, v13, 0x1

    move v14, v2

    const/4 v15, 0x0

    invoke-static {v12, v13, v14, v15}, Lokhttp3/Cookie;->dateCharacterOffset(Ljava/lang/String;IIZ)I

    move-result v12

    move v1, v12

    .line 348
    goto :goto_0

    .line 338
    :cond_1
    move v12, v6

    const/4 v13, -0x1

    if-ne v12, v13, :cond_2

    move-object v12, v9

    sget-object v13, Lokhttp3/Cookie;->DAY_OF_MONTH_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v12, v13}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/regex/Matcher;->matches()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 339
    move-object v12, v9

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    move v6, v12

    goto :goto_1

    .line 340
    :cond_2
    move v12, v7

    const/4 v13, -0x1

    if-ne v12, v13, :cond_3

    move-object v12, v9

    sget-object v13, Lokhttp3/Cookie;->MONTH_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v12, v13}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/regex/Matcher;->matches()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 341
    move-object v12, v9

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v12

    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v12, v13}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v12

    move-object v11, v12

    .line 342
    sget-object v12, Lokhttp3/Cookie;->MONTH_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v12}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v12

    move-object v13, v11

    invoke-virtual {v12, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    const/4 v13, 0x4

    div-int/lit8 v12, v12, 0x4

    move v7, v12

    .line 343
    goto :goto_1

    :cond_3
    move v12, v8

    const/4 v13, -0x1

    if-ne v12, v13, :cond_0

    move-object v12, v9

    sget-object v13, Lokhttp3/Cookie;->YEAR_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v12, v13}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/regex/Matcher;->matches()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 344
    move-object v12, v9

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    move v8, v12

    goto :goto_1

    .line 351
    :cond_4
    move v12, v8

    const/16 v13, 0x46

    if-lt v12, v13, :cond_5

    move v12, v8

    const/16 v13, 0x63

    if-gt v12, v13, :cond_5

    add-int/lit16 v8, v8, 0x76c

    .line 352
    :cond_5
    move v12, v8

    if-ltz v12, :cond_6

    move v12, v8

    const/16 v13, 0x45

    if-gt v12, v13, :cond_6

    add-int/lit16 v8, v8, 0x7d0

    .line 356
    :cond_6
    move v12, v8

    const/16 v13, 0x641

    if-ge v12, v13, :cond_7

    new-instance v12, Ljava/lang/IllegalArgumentException;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    invoke-direct {v13}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v12

    .line 357
    :cond_7
    move v12, v7

    const/4 v13, -0x1

    if-ne v12, v13, :cond_8

    new-instance v12, Ljava/lang/IllegalArgumentException;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    invoke-direct {v13}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v12

    .line 358
    :cond_8
    move v12, v6

    const/4 v13, 0x1

    if-lt v12, v13, :cond_9

    move v12, v6

    const/16 v13, 0x1f

    if-le v12, v13, :cond_a

    :cond_9
    new-instance v12, Ljava/lang/IllegalArgumentException;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    invoke-direct {v13}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v12

    .line 359
    :cond_a
    move v12, v3

    if-ltz v12, :cond_b

    move v12, v3

    const/16 v13, 0x17

    if-le v12, v13, :cond_c

    :cond_b
    new-instance v12, Ljava/lang/IllegalArgumentException;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    invoke-direct {v13}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v12

    .line 360
    :cond_c
    move v12, v4

    if-ltz v12, :cond_d

    move v12, v4

    const/16 v13, 0x3b

    if-le v12, v13, :cond_e

    :cond_d
    new-instance v12, Ljava/lang/IllegalArgumentException;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    invoke-direct {v13}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v12

    .line 361
    :cond_e
    move v12, v5

    if-ltz v12, :cond_f

    move v12, v5

    const/16 v13, 0x3b

    if-le v12, v13, :cond_10

    :cond_f
    new-instance v12, Ljava/lang/IllegalArgumentException;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    invoke-direct {v13}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v12

    .line 363
    :cond_10
    new-instance v12, Ljava/util/GregorianCalendar;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    sget-object v14, Lokhttp3/internal/Util;->UTC:Ljava/util/TimeZone;

    invoke-direct {v13, v14}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    move-object v10, v12

    .line 364
    move-object v12, v10

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Ljava/util/Calendar;->setLenient(Z)V

    .line 365
    move-object v12, v10

    const/4 v13, 0x1

    move v14, v8

    invoke-virtual {v12, v13, v14}, Ljava/util/Calendar;->set(II)V

    .line 366
    move-object v12, v10

    const/4 v13, 0x2

    move v14, v7

    const/4 v15, 0x1

    add-int/lit8 v14, v14, -0x1

    invoke-virtual {v12, v13, v14}, Ljava/util/Calendar;->set(II)V

    .line 367
    move-object v12, v10

    const/4 v13, 0x5

    move v14, v6

    invoke-virtual {v12, v13, v14}, Ljava/util/Calendar;->set(II)V

    .line 368
    move-object v12, v10

    const/16 v13, 0xb

    move v14, v3

    invoke-virtual {v12, v13, v14}, Ljava/util/Calendar;->set(II)V

    .line 369
    move-object v12, v10

    const/16 v13, 0xc

    move v14, v4

    invoke-virtual {v12, v13, v14}, Ljava/util/Calendar;->set(II)V

    .line 370
    move-object v12, v10

    const/16 v13, 0xd

    move v14, v5

    invoke-virtual {v12, v13, v14}, Ljava/util/Calendar;->set(II)V

    .line 371
    move-object v12, v10

    const/16 v13, 0xe

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Ljava/util/Calendar;->set(II)V

    .line 372
    move-object v12, v10

    invoke-virtual {v12}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v12

    move-wide v0, v12

    return-wide v0
.end method

.method private static parseMaxAge(Ljava/lang/String;)J
    .locals 7

    .prologue
    .line 401
    move-object v0, p0

    move-object v3, v0

    :try_start_0
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v3

    move-wide v1, v3

    .line 402
    move-wide v3, v1

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-gtz v3, :cond_0

    const-wide/high16 v3, -0x8000000000000000L

    :goto_0
    move-wide v0, v3

    .line 406
    :goto_1
    return-wide v0

    .line 402
    :cond_0
    move-wide v3, v1

    goto :goto_0

    .line 403
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 405
    move-object v3, v0

    const-string v4, "-?\\d+"

    invoke-virtual {v3, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 406
    move-object v3, v0

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-wide/high16 v3, -0x8000000000000000L

    :goto_2
    move-wide v0, v3

    goto :goto_1

    :cond_1
    const-wide v3, 0x7fffffffffffffffL

    goto :goto_2

    .line 408
    :cond_2
    move-object v3, v1

    throw v3
.end method

.method private static pathMatch(Lokhttp3/HttpUrl;Ljava/lang/String;)Z
    .locals 5

    .prologue
    .line 199
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-virtual {v3}, Lokhttp3/HttpUrl;->encodedPath()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 201
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 202
    const/4 v3, 0x1

    move v0, v3

    .line 210
    :goto_0
    return v0

    .line 205
    :cond_0
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 206
    move-object v3, v1

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    move v0, v3

    goto :goto_0

    .line 207
    :cond_1
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2f

    if-ne v3, v4, :cond_2

    const/4 v3, 0x1

    move v0, v3

    goto :goto_0

    .line 210
    :cond_2
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method


# virtual methods
.method public domain()Ljava/lang/String;
    .locals 2

    .prologue
    .line 140
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/Cookie;->domain:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    .prologue
    .line 577
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    instance-of v3, v3, Lokhttp3/Cookie;

    if-nez v3, :cond_0

    const/4 v3, 0x0

    move v0, v3

    .line 579
    :goto_0
    return v0

    .line 578
    :cond_0
    move-object v3, v1

    check-cast v3, Lokhttp3/Cookie;

    move-object v2, v3

    .line 579
    move-object v3, v2

    iget-object v3, v3, Lokhttp3/Cookie;->name:Ljava/lang/String;

    move-object v4, v0

    iget-object v4, v4, Lokhttp3/Cookie;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v2

    iget-object v3, v3, Lokhttp3/Cookie;->value:Ljava/lang/String;

    move-object v4, v0

    iget-object v4, v4, Lokhttp3/Cookie;->value:Ljava/lang/String;

    .line 580
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v2

    iget-object v3, v3, Lokhttp3/Cookie;->domain:Ljava/lang/String;

    move-object v4, v0

    iget-object v4, v4, Lokhttp3/Cookie;->domain:Ljava/lang/String;

    .line 581
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v2

    iget-object v3, v3, Lokhttp3/Cookie;->path:Ljava/lang/String;

    move-object v4, v0

    iget-object v4, v4, Lokhttp3/Cookie;->path:Ljava/lang/String;

    .line 582
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v2

    iget-wide v3, v3, Lokhttp3/Cookie;->expiresAt:J

    move-object v5, v0

    iget-wide v5, v5, Lokhttp3/Cookie;->expiresAt:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    move-object v3, v2

    iget-boolean v3, v3, Lokhttp3/Cookie;->secure:Z

    move-object v4, v0

    iget-boolean v4, v4, Lokhttp3/Cookie;->secure:Z

    if-ne v3, v4, :cond_1

    move-object v3, v2

    iget-boolean v3, v3, Lokhttp3/Cookie;->httpOnly:Z

    move-object v4, v0

    iget-boolean v4, v4, Lokhttp3/Cookie;->httpOnly:Z

    if-ne v3, v4, :cond_1

    move-object v3, v2

    iget-boolean v3, v3, Lokhttp3/Cookie;->persistent:Z

    move-object v4, v0

    iget-boolean v4, v4, Lokhttp3/Cookie;->persistent:Z

    if-ne v3, v4, :cond_1

    move-object v3, v2

    iget-boolean v3, v3, Lokhttp3/Cookie;->hostOnly:Z

    move-object v4, v0

    iget-boolean v4, v4, Lokhttp3/Cookie;->hostOnly:Z

    if-ne v3, v4, :cond_1

    const/4 v3, 0x1

    .line 579
    :goto_1
    move v0, v3

    goto :goto_0

    .line 582
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public expiresAt()J
    .locals 3

    .prologue
    .line 118
    move-object v0, p0

    move-object v1, v0

    iget-wide v1, v1, Lokhttp3/Cookie;->expiresAt:J

    move-wide v0, v1

    return-wide v0
.end method

.method public hashCode()I
    .locals 8

    .prologue
    .line 591
    move-object v0, p0

    const/16 v2, 0x11

    move v1, v2

    .line 592
    const/16 v2, 0x1f

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget-object v3, v3, Lokhttp3/Cookie;->name:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    move v1, v2

    .line 593
    const/16 v2, 0x1f

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget-object v3, v3, Lokhttp3/Cookie;->value:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    move v1, v2

    .line 594
    const/16 v2, 0x1f

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget-object v3, v3, Lokhttp3/Cookie;->domain:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    move v1, v2

    .line 595
    const/16 v2, 0x1f

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget-object v3, v3, Lokhttp3/Cookie;->path:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    move v1, v2

    .line 596
    const/16 v2, 0x1f

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget-wide v3, v3, Lokhttp3/Cookie;->expiresAt:J

    move-object v5, v0

    iget-wide v5, v5, Lokhttp3/Cookie;->expiresAt:J

    const/16 v7, 0x20

    ushr-long/2addr v5, v7

    xor-long/2addr v3, v5

    long-to-int v3, v3

    add-int/2addr v2, v3

    move v1, v2

    .line 597
    const/16 v2, 0x1f

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget-boolean v3, v3, Lokhttp3/Cookie;->secure:Z

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    :goto_0
    add-int/2addr v2, v3

    move v1, v2

    .line 598
    const/16 v2, 0x1f

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget-boolean v3, v3, Lokhttp3/Cookie;->httpOnly:Z

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    :goto_1
    add-int/2addr v2, v3

    move v1, v2

    .line 599
    const/16 v2, 0x1f

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget-boolean v3, v3, Lokhttp3/Cookie;->persistent:Z

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    :goto_2
    add-int/2addr v2, v3

    move v1, v2

    .line 600
    const/16 v2, 0x1f

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget-boolean v3, v3, Lokhttp3/Cookie;->hostOnly:Z

    if-eqz v3, :cond_3

    const/4 v3, 0x0

    :goto_3
    add-int/2addr v2, v3

    move v1, v2

    .line 601
    move v2, v1

    move v0, v2

    return v0

    .line 597
    :cond_0
    const/4 v3, 0x1

    goto :goto_0

    .line 598
    :cond_1
    const/4 v3, 0x1

    goto :goto_1

    .line 599
    :cond_2
    const/4 v3, 0x1

    goto :goto_2

    .line 600
    :cond_3
    const/4 v3, 0x1

    goto :goto_3
.end method

.method public hostOnly()Z
    .locals 2

    .prologue
    .line 132
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lokhttp3/Cookie;->hostOnly:Z

    move v0, v1

    return v0
.end method

.method public httpOnly()Z
    .locals 2

    .prologue
    .line 157
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lokhttp3/Cookie;->httpOnly:Z

    move v0, v1

    return v0
.end method

.method public matches(Lokhttp3/HttpUrl;)Z
    .locals 5

    .prologue
    .line 170
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-boolean v3, v3, Lokhttp3/Cookie;->hostOnly:Z

    if-eqz v3, :cond_0

    move-object v3, v1

    .line 171
    invoke-virtual {v3}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lokhttp3/Cookie;->domain:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 172
    :goto_0
    move v2, v3

    .line 173
    move v3, v2

    if-nez v3, :cond_1

    const/4 v3, 0x0

    move v0, v3

    .line 179
    :goto_1
    return v0

    .line 171
    :cond_0
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lokhttp3/Cookie;->domain:Ljava/lang/String;

    .line 172
    invoke-static {v3, v4}, Lokhttp3/Cookie;->domainMatch(Lokhttp3/HttpUrl;Ljava/lang/String;)Z

    move-result v3

    goto :goto_0

    .line 175
    :cond_1
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lokhttp3/Cookie;->path:Ljava/lang/String;

    invoke-static {v3, v4}, Lokhttp3/Cookie;->pathMatch(Lokhttp3/HttpUrl;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x0

    move v0, v3

    goto :goto_1

    .line 177
    :cond_2
    move-object v3, v0

    iget-boolean v3, v3, Lokhttp3/Cookie;->secure:Z

    if-eqz v3, :cond_3

    move-object v3, v1

    invoke-virtual {v3}, Lokhttp3/HttpUrl;->isHttps()Z

    move-result v3

    if-nez v3, :cond_3

    const/4 v3, 0x0

    move v0, v3

    goto :goto_1

    .line 179
    :cond_3
    const/4 v3, 0x1

    move v0, v3

    goto :goto_1
.end method

.method public name()Ljava/lang/String;
    .locals 2

    .prologue
    .line 95
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/Cookie;->name:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public path()Ljava/lang/String;
    .locals 2

    .prologue
    .line 149
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/Cookie;->path:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public persistent()Z
    .locals 2

    .prologue
    .line 105
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lokhttp3/Cookie;->persistent:Z

    move v0, v1

    return v0
.end method

.method public secure()Z
    .locals 2

    .prologue
    .line 162
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lokhttp3/Cookie;->secure:Z

    move v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 533
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lokhttp3/Cookie;->toString(Z)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method toString(Z)Ljava/lang/String;
    .locals 9

    .prologue
    .line 542
    move-object v0, p0

    move v1, p1

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v3

    .line 543
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lokhttp3/Cookie;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 544
    move-object v3, v2

    const/16 v4, 0x3d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 545
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lokhttp3/Cookie;->value:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 547
    move-object v3, v0

    iget-boolean v3, v3, Lokhttp3/Cookie;->persistent:Z

    if-eqz v3, :cond_0

    .line 548
    move-object v3, v0

    iget-wide v3, v3, Lokhttp3/Cookie;->expiresAt:J

    const-wide/high16 v5, -0x8000000000000000L

    cmp-long v3, v3, v5

    if-nez v3, :cond_5

    .line 549
    move-object v3, v2

    const-string v4, "; max-age=0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 555
    :cond_0
    :goto_0
    move-object v3, v0

    iget-boolean v3, v3, Lokhttp3/Cookie;->hostOnly:Z

    if-nez v3, :cond_2

    .line 556
    move-object v3, v2

    const-string v4, "; domain="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 557
    move v3, v1

    if-eqz v3, :cond_1

    .line 558
    move-object v3, v2

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 560
    :cond_1
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lokhttp3/Cookie;->domain:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 563
    :cond_2
    move-object v3, v2

    const-string v4, "; path="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lokhttp3/Cookie;->path:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 565
    move-object v3, v0

    iget-boolean v3, v3, Lokhttp3/Cookie;->secure:Z

    if-eqz v3, :cond_3

    .line 566
    move-object v3, v2

    const-string v4, "; secure"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 569
    :cond_3
    move-object v3, v0

    iget-boolean v3, v3, Lokhttp3/Cookie;->httpOnly:Z

    if-eqz v3, :cond_4

    .line 570
    move-object v3, v2

    const-string v4, "; httponly"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 573
    :cond_4
    move-object v3, v2

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    return-object v0

    .line 551
    :cond_5
    move-object v3, v2

    const-string v4, "; expires="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/util/Date;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    iget-wide v6, v6, Lokhttp3/Cookie;->expiresAt:J

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-static {v4}, Lokhttp3/internal/http/HttpDate;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    goto :goto_0
.end method

.method public value()Ljava/lang/String;
    .locals 2

    .prologue
    .line 100
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/Cookie;->value:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method
