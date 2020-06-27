.class public Lokhttp3/internal/cache/CacheStrategy$Factory;
.super Ljava/lang/Object;
.source "CacheStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/cache/CacheStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# instance fields
.field private ageSeconds:I

.field final cacheResponse:Lokhttp3/Response;

.field private etag:Ljava/lang/String;

.field private expires:Ljava/util/Date;

.field private lastModified:Ljava/util/Date;

.field private lastModifiedString:Ljava/lang/String;

.field final nowMillis:J

.field private receivedResponseMillis:J

.field final request:Lokhttp3/Request;

.field private sentRequestMillis:J

.field private servedDate:Ljava/util/Date;

.field private servedDateString:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLokhttp3/Request;Lokhttp3/Response;)V
    .locals 13

    .prologue
    .line 139
    move-object v0, p0

    move-wide v1, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object v10, v0

    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    .line 137
    move-object v10, v0

    const/4 v11, -0x1

    iput v11, v10, Lokhttp3/internal/cache/CacheStrategy$Factory;->ageSeconds:I

    .line 140
    move-object v10, v0

    move-wide v11, v1

    iput-wide v11, v10, Lokhttp3/internal/cache/CacheStrategy$Factory;->nowMillis:J

    .line 141
    move-object v10, v0

    move-object v11, v3

    iput-object v11, v10, Lokhttp3/internal/cache/CacheStrategy$Factory;->request:Lokhttp3/Request;

    .line 142
    move-object v10, v0

    move-object v11, v4

    iput-object v11, v10, Lokhttp3/internal/cache/CacheStrategy$Factory;->cacheResponse:Lokhttp3/Response;

    .line 144
    move-object v10, v4

    if-eqz v10, :cond_5

    .line 145
    move-object v10, v0

    move-object v11, v4

    invoke-virtual {v11}, Lokhttp3/Response;->sentRequestAtMillis()J

    move-result-wide v11

    iput-wide v11, v10, Lokhttp3/internal/cache/CacheStrategy$Factory;->sentRequestMillis:J

    .line 146
    move-object v10, v0

    move-object v11, v4

    invoke-virtual {v11}, Lokhttp3/Response;->receivedResponseAtMillis()J

    move-result-wide v11

    iput-wide v11, v10, Lokhttp3/internal/cache/CacheStrategy$Factory;->receivedResponseMillis:J

    .line 147
    move-object v10, v4

    invoke-virtual {v10}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v10

    move-object v5, v10

    .line 148
    const/4 v10, 0x0

    move v6, v10

    move-object v10, v5

    invoke-virtual {v10}, Lokhttp3/Headers;->size()I

    move-result v10

    move v7, v10

    :goto_0
    move v10, v6

    move v11, v7

    if-ge v10, v11, :cond_5

    .line 149
    move-object v10, v5

    move v11, v6

    invoke-virtual {v10, v11}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v10

    move-object v8, v10

    .line 150
    move-object v10, v5

    move v11, v6

    invoke-virtual {v10, v11}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v10

    move-object v9, v10

    .line 151
    const-string v10, "Date"

    move-object v11, v8

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 152
    move-object v10, v0

    move-object v11, v9

    invoke-static {v11}, Lokhttp3/internal/http/HttpDate;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v11

    iput-object v11, v10, Lokhttp3/internal/cache/CacheStrategy$Factory;->servedDate:Ljava/util/Date;

    .line 153
    move-object v10, v0

    move-object v11, v9

    iput-object v11, v10, Lokhttp3/internal/cache/CacheStrategy$Factory;->servedDateString:Ljava/lang/String;

    .line 148
    :cond_0
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 154
    :cond_1
    const-string v10, "Expires"

    move-object v11, v8

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 155
    move-object v10, v0

    move-object v11, v9

    invoke-static {v11}, Lokhttp3/internal/http/HttpDate;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v11

    iput-object v11, v10, Lokhttp3/internal/cache/CacheStrategy$Factory;->expires:Ljava/util/Date;

    goto :goto_1

    .line 156
    :cond_2
    const-string v10, "Last-Modified"

    move-object v11, v8

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 157
    move-object v10, v0

    move-object v11, v9

    invoke-static {v11}, Lokhttp3/internal/http/HttpDate;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v11

    iput-object v11, v10, Lokhttp3/internal/cache/CacheStrategy$Factory;->lastModified:Ljava/util/Date;

    .line 158
    move-object v10, v0

    move-object v11, v9

    iput-object v11, v10, Lokhttp3/internal/cache/CacheStrategy$Factory;->lastModifiedString:Ljava/lang/String;

    goto :goto_1

    .line 159
    :cond_3
    const-string v10, "ETag"

    move-object v11, v8

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 160
    move-object v10, v0

    move-object v11, v9

    iput-object v11, v10, Lokhttp3/internal/cache/CacheStrategy$Factory;->etag:Ljava/lang/String;

    goto :goto_1

    .line 161
    :cond_4
    const-string v10, "Age"

    move-object v11, v8

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 162
    move-object v10, v0

    move-object v11, v9

    const/4 v12, -0x1

    invoke-static {v11, v12}, Lokhttp3/internal/http/HttpHeaders;->parseSeconds(Ljava/lang/String;I)I

    move-result v11

    iput v11, v10, Lokhttp3/internal/cache/CacheStrategy$Factory;->ageSeconds:I

    goto :goto_1

    .line 166
    :cond_5
    return-void
.end method

.method private cacheResponseAge()J
    .locals 15

    .prologue
    .line 296
    move-object v0, p0

    move-object v9, v0

    iget-object v9, v9, Lokhttp3/internal/cache/CacheStrategy$Factory;->servedDate:Ljava/util/Date;

    if-eqz v9, :cond_0

    const-wide/16 v9, 0x0

    move-object v11, v0

    iget-wide v11, v11, Lokhttp3/internal/cache/CacheStrategy$Factory;->receivedResponseMillis:J

    move-object v13, v0

    iget-object v13, v13, Lokhttp3/internal/cache/CacheStrategy$Factory;->servedDate:Ljava/util/Date;

    .line 297
    invoke-virtual {v13}, Ljava/util/Date;->getTime()J

    move-result-wide v13

    sub-long/2addr v11, v13

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    :goto_0
    move-wide v1, v9

    .line 299
    move-object v9, v0

    iget v9, v9, Lokhttp3/internal/cache/CacheStrategy$Factory;->ageSeconds:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_1

    move-wide v9, v1

    sget-object v11, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v12, v0

    iget v12, v12, Lokhttp3/internal/cache/CacheStrategy$Factory;->ageSeconds:I

    int-to-long v12, v12

    .line 300
    invoke-virtual {v11, v12, v13}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v11

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    :goto_1
    move-wide v3, v9

    .line 302
    move-object v9, v0

    iget-wide v9, v9, Lokhttp3/internal/cache/CacheStrategy$Factory;->receivedResponseMillis:J

    move-object v11, v0

    iget-wide v11, v11, Lokhttp3/internal/cache/CacheStrategy$Factory;->sentRequestMillis:J

    sub-long/2addr v9, v11

    move-wide v5, v9

    .line 303
    move-object v9, v0

    iget-wide v9, v9, Lokhttp3/internal/cache/CacheStrategy$Factory;->nowMillis:J

    move-object v11, v0

    iget-wide v11, v11, Lokhttp3/internal/cache/CacheStrategy$Factory;->receivedResponseMillis:J

    sub-long/2addr v9, v11

    move-wide v7, v9

    .line 304
    move-wide v9, v3

    move-wide v11, v5

    add-long/2addr v9, v11

    move-wide v11, v7

    add-long/2addr v9, v11

    move-wide v0, v9

    return-wide v0

    .line 297
    :cond_0
    const-wide/16 v9, 0x0

    goto :goto_0

    .line 300
    :cond_1
    move-wide v9, v1

    goto :goto_1
.end method

.method private computeFreshnessLifetime()J
    .locals 10

    .prologue
    .line 267
    move-object v0, p0

    move-object v6, v0

    iget-object v6, v6, Lokhttp3/internal/cache/CacheStrategy$Factory;->cacheResponse:Lokhttp3/Response;

    invoke-virtual {v6}, Lokhttp3/Response;->cacheControl()Lokhttp3/CacheControl;

    move-result-object v6

    move-object v1, v6

    .line 268
    move-object v6, v1

    invoke-virtual {v6}, Lokhttp3/CacheControl;->maxAgeSeconds()I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_0

    .line 269
    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v7, v1

    invoke-virtual {v7}, Lokhttp3/CacheControl;->maxAgeSeconds()I

    move-result v7

    int-to-long v7, v7

    invoke-virtual {v6, v7, v8}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    move-wide v0, v6

    .line 288
    :goto_0
    return-wide v0

    .line 270
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Lokhttp3/internal/cache/CacheStrategy$Factory;->expires:Ljava/util/Date;

    if-eqz v6, :cond_3

    .line 271
    move-object v6, v0

    iget-object v6, v6, Lokhttp3/internal/cache/CacheStrategy$Factory;->servedDate:Ljava/util/Date;

    if-eqz v6, :cond_1

    move-object v6, v0

    iget-object v6, v6, Lokhttp3/internal/cache/CacheStrategy$Factory;->servedDate:Ljava/util/Date;

    .line 272
    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    :goto_1
    move-wide v2, v6

    .line 274
    move-object v6, v0

    iget-object v6, v6, Lokhttp3/internal/cache/CacheStrategy$Factory;->expires:Ljava/util/Date;

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    move-wide v8, v2

    sub-long/2addr v6, v8

    move-wide v4, v6

    .line 275
    move-wide v6, v4

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_2

    move-wide v6, v4

    :goto_2
    move-wide v0, v6

    goto :goto_0

    .line 272
    :cond_1
    move-object v6, v0

    iget-wide v6, v6, Lokhttp3/internal/cache/CacheStrategy$Factory;->receivedResponseMillis:J

    goto :goto_1

    .line 275
    :cond_2
    const-wide/16 v6, 0x0

    goto :goto_2

    .line 276
    :cond_3
    move-object v6, v0

    iget-object v6, v6, Lokhttp3/internal/cache/CacheStrategy$Factory;->lastModified:Ljava/util/Date;

    if-eqz v6, :cond_6

    move-object v6, v0

    iget-object v6, v6, Lokhttp3/internal/cache/CacheStrategy$Factory;->cacheResponse:Lokhttp3/Response;

    .line 277
    invoke-virtual {v6}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v6

    invoke-virtual {v6}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v6

    invoke-virtual {v6}, Lokhttp3/HttpUrl;->query()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_6

    .line 282
    move-object v6, v0

    iget-object v6, v6, Lokhttp3/internal/cache/CacheStrategy$Factory;->servedDate:Ljava/util/Date;

    if-eqz v6, :cond_4

    move-object v6, v0

    iget-object v6, v6, Lokhttp3/internal/cache/CacheStrategy$Factory;->servedDate:Ljava/util/Date;

    .line 283
    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    :goto_3
    move-wide v2, v6

    .line 285
    move-wide v6, v2

    move-object v8, v0

    iget-object v8, v8, Lokhttp3/internal/cache/CacheStrategy$Factory;->lastModified:Ljava/util/Date;

    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    sub-long/2addr v6, v8

    move-wide v4, v6

    .line 286
    move-wide v6, v4

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_5

    move-wide v6, v4

    const-wide/16 v8, 0xa

    div-long/2addr v6, v8

    :goto_4
    move-wide v0, v6

    goto :goto_0

    .line 283
    :cond_4
    move-object v6, v0

    iget-wide v6, v6, Lokhttp3/internal/cache/CacheStrategy$Factory;->sentRequestMillis:J

    goto :goto_3

    .line 286
    :cond_5
    const-wide/16 v6, 0x0

    goto :goto_4

    .line 288
    :cond_6
    const-wide/16 v6, 0x0

    move-wide v0, v6

    goto :goto_0
.end method

.method private getCandidate()Lokhttp3/internal/cache/CacheStrategy;
    .locals 24

    .prologue
    .line 185
    move-object/from16 v2, p0

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->cacheResponse:Lokhttp3/Response;

    move-object/from16 v17, v0

    if-nez v17, :cond_0

    .line 186
    new-instance v17, Lokhttp3/internal/cache/CacheStrategy;

    move-object/from16 v23, v17

    move-object/from16 v17, v23

    move-object/from16 v18, v23

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->request:Lokhttp3/Request;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-direct/range {v18 .. v20}, Lokhttp3/internal/cache/CacheStrategy;-><init>(Lokhttp3/Request;Lokhttp3/Response;)V

    move-object/from16 v2, v17

    .line 259
    :goto_0
    return-object v2

    .line 190
    :cond_0
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->request:Lokhttp3/Request;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lokhttp3/Request;->isHttps()Z

    move-result v17

    if-eqz v17, :cond_1

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->cacheResponse:Lokhttp3/Response;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lokhttp3/Response;->handshake()Lokhttp3/Handshake;

    move-result-object v17

    if-nez v17, :cond_1

    .line 191
    new-instance v17, Lokhttp3/internal/cache/CacheStrategy;

    move-object/from16 v23, v17

    move-object/from16 v17, v23

    move-object/from16 v18, v23

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->request:Lokhttp3/Request;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-direct/range {v18 .. v20}, Lokhttp3/internal/cache/CacheStrategy;-><init>(Lokhttp3/Request;Lokhttp3/Response;)V

    move-object/from16 v2, v17

    goto :goto_0

    .line 197
    :cond_1
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->cacheResponse:Lokhttp3/Response;

    move-object/from16 v17, v0

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->request:Lokhttp3/Request;

    move-object/from16 v18, v0

    invoke-static/range {v17 .. v18}, Lokhttp3/internal/cache/CacheStrategy;->isCacheable(Lokhttp3/Response;Lokhttp3/Request;)Z

    move-result v17

    if-nez v17, :cond_2

    .line 198
    new-instance v17, Lokhttp3/internal/cache/CacheStrategy;

    move-object/from16 v23, v17

    move-object/from16 v17, v23

    move-object/from16 v18, v23

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->request:Lokhttp3/Request;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-direct/range {v18 .. v20}, Lokhttp3/internal/cache/CacheStrategy;-><init>(Lokhttp3/Request;Lokhttp3/Response;)V

    move-object/from16 v2, v17

    goto :goto_0

    .line 201
    :cond_2
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->request:Lokhttp3/Request;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lokhttp3/Request;->cacheControl()Lokhttp3/CacheControl;

    move-result-object v17

    move-object/from16 v3, v17

    .line 202
    move-object/from16 v17, v3

    invoke-virtual/range {v17 .. v17}, Lokhttp3/CacheControl;->noCache()Z

    move-result v17

    if-nez v17, :cond_3

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->request:Lokhttp3/Request;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lokhttp3/internal/cache/CacheStrategy$Factory;->hasConditions(Lokhttp3/Request;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 203
    :cond_3
    new-instance v17, Lokhttp3/internal/cache/CacheStrategy;

    move-object/from16 v23, v17

    move-object/from16 v17, v23

    move-object/from16 v18, v23

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->request:Lokhttp3/Request;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-direct/range {v18 .. v20}, Lokhttp3/internal/cache/CacheStrategy;-><init>(Lokhttp3/Request;Lokhttp3/Response;)V

    move-object/from16 v2, v17

    goto/16 :goto_0

    .line 206
    :cond_4
    move-object/from16 v17, v2

    invoke-direct/range {v17 .. v17}, Lokhttp3/internal/cache/CacheStrategy$Factory;->cacheResponseAge()J

    move-result-wide v17

    move-wide/from16 v4, v17

    .line 207
    move-object/from16 v17, v2

    invoke-direct/range {v17 .. v17}, Lokhttp3/internal/cache/CacheStrategy$Factory;->computeFreshnessLifetime()J

    move-result-wide v17

    move-wide/from16 v6, v17

    .line 209
    move-object/from16 v17, v3

    invoke-virtual/range {v17 .. v17}, Lokhttp3/CacheControl;->maxAgeSeconds()I

    move-result v17

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_5

    .line 210
    move-wide/from16 v17, v6

    sget-object v19, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v20, v3

    invoke-virtual/range {v20 .. v20}, Lokhttp3/CacheControl;->maxAgeSeconds()I

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v19

    invoke-static/range {v17 .. v20}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v17

    move-wide/from16 v6, v17

    .line 213
    :cond_5
    const-wide/16 v17, 0x0

    move-wide/from16 v8, v17

    .line 214
    move-object/from16 v17, v3

    invoke-virtual/range {v17 .. v17}, Lokhttp3/CacheControl;->minFreshSeconds()I

    move-result v17

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_6

    .line 215
    sget-object v17, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v18, v3

    invoke-virtual/range {v18 .. v18}, Lokhttp3/CacheControl;->minFreshSeconds()I

    move-result v18

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    invoke-virtual/range {v17 .. v19}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v17

    move-wide/from16 v8, v17

    .line 218
    :cond_6
    const-wide/16 v17, 0x0

    move-wide/from16 v10, v17

    .line 219
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->cacheResponse:Lokhttp3/Response;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lokhttp3/Response;->cacheControl()Lokhttp3/CacheControl;

    move-result-object v17

    move-object/from16 v12, v17

    .line 220
    move-object/from16 v17, v12

    invoke-virtual/range {v17 .. v17}, Lokhttp3/CacheControl;->mustRevalidate()Z

    move-result v17

    if-nez v17, :cond_7

    move-object/from16 v17, v3

    invoke-virtual/range {v17 .. v17}, Lokhttp3/CacheControl;->maxStaleSeconds()I

    move-result v17

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_7

    .line 221
    sget-object v17, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v18, v3

    invoke-virtual/range {v18 .. v18}, Lokhttp3/CacheControl;->maxStaleSeconds()I

    move-result v18

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    invoke-virtual/range {v17 .. v19}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v17

    move-wide/from16 v10, v17

    .line 224
    :cond_7
    move-object/from16 v17, v12

    invoke-virtual/range {v17 .. v17}, Lokhttp3/CacheControl;->noCache()Z

    move-result v17

    if-nez v17, :cond_a

    move-wide/from16 v17, v4

    move-wide/from16 v19, v8

    add-long v17, v17, v19

    move-wide/from16 v19, v6

    move-wide/from16 v21, v10

    add-long v19, v19, v21

    cmp-long v17, v17, v19

    if-gez v17, :cond_a

    .line 225
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->cacheResponse:Lokhttp3/Response;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object v17

    move-object/from16 v13, v17

    .line 226
    move-wide/from16 v17, v4

    move-wide/from16 v19, v8

    add-long v17, v17, v19

    move-wide/from16 v19, v6

    cmp-long v17, v17, v19

    if-ltz v17, :cond_8

    .line 227
    move-object/from16 v17, v13

    const-string v18, "Warning"

    const-string v19, "110 HttpURLConnection \"Response is stale\""

    invoke-virtual/range {v17 .. v19}, Lokhttp3/Response$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Response$Builder;

    move-result-object v17

    .line 229
    :cond_8
    const-wide/32 v17, 0x5265c00

    move-wide/from16 v14, v17

    .line 230
    move-wide/from16 v17, v4

    move-wide/from16 v19, v14

    cmp-long v17, v17, v19

    if-lez v17, :cond_9

    move-object/from16 v17, v2

    invoke-direct/range {v17 .. v17}, Lokhttp3/internal/cache/CacheStrategy$Factory;->isFreshnessLifetimeHeuristic()Z

    move-result v17

    if-eqz v17, :cond_9

    .line 231
    move-object/from16 v17, v13

    const-string v18, "Warning"

    const-string v19, "113 HttpURLConnection \"Heuristic expiration\""

    invoke-virtual/range {v17 .. v19}, Lokhttp3/Response$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Response$Builder;

    move-result-object v17

    .line 233
    :cond_9
    new-instance v17, Lokhttp3/internal/cache/CacheStrategy;

    move-object/from16 v23, v17

    move-object/from16 v17, v23

    move-object/from16 v18, v23

    const/16 v19, 0x0

    move-object/from16 v20, v13

    invoke-virtual/range {v20 .. v20}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v20

    invoke-direct/range {v18 .. v20}, Lokhttp3/internal/cache/CacheStrategy;-><init>(Lokhttp3/Request;Lokhttp3/Response;)V

    move-object/from16 v2, v17

    goto/16 :goto_0

    .line 240
    :cond_a
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->etag:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_b

    .line 241
    const-string v17, "If-None-Match"

    move-object/from16 v13, v17

    .line 242
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->etag:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v14, v17

    .line 253
    :goto_1
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->request:Lokhttp3/Request;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lokhttp3/Request;->headers()Lokhttp3/Headers;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lokhttp3/Headers;->newBuilder()Lokhttp3/Headers$Builder;

    move-result-object v17

    move-object/from16 v15, v17

    .line 254
    sget-object v17, Lokhttp3/internal/Internal;->instance:Lokhttp3/internal/Internal;

    move-object/from16 v18, v15

    move-object/from16 v19, v13

    move-object/from16 v20, v14

    invoke-virtual/range {v17 .. v20}, Lokhttp3/internal/Internal;->addLenient(Lokhttp3/Headers$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->request:Lokhttp3/Request;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v17

    move-object/from16 v18, v15

    .line 257
    invoke-virtual/range {v18 .. v18}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lokhttp3/Request$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Request$Builder;

    move-result-object v17

    .line 258
    invoke-virtual/range {v17 .. v17}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v17

    move-object/from16 v16, v17

    .line 259
    new-instance v17, Lokhttp3/internal/cache/CacheStrategy;

    move-object/from16 v23, v17

    move-object/from16 v17, v23

    move-object/from16 v18, v23

    move-object/from16 v19, v16

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->cacheResponse:Lokhttp3/Response;

    move-object/from16 v20, v0

    invoke-direct/range {v18 .. v20}, Lokhttp3/internal/cache/CacheStrategy;-><init>(Lokhttp3/Request;Lokhttp3/Response;)V

    move-object/from16 v2, v17

    goto/16 :goto_0

    .line 243
    :cond_b
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->lastModified:Ljava/util/Date;

    move-object/from16 v17, v0

    if-eqz v17, :cond_c

    .line 244
    const-string v17, "If-Modified-Since"

    move-object/from16 v13, v17

    .line 245
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->lastModifiedString:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v14, v17

    goto :goto_1

    .line 246
    :cond_c
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->servedDate:Ljava/util/Date;

    move-object/from16 v17, v0

    if-eqz v17, :cond_d

    .line 247
    const-string v17, "If-Modified-Since"

    move-object/from16 v13, v17

    .line 248
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->servedDateString:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v14, v17

    goto/16 :goto_1

    .line 250
    :cond_d
    new-instance v17, Lokhttp3/internal/cache/CacheStrategy;

    move-object/from16 v23, v17

    move-object/from16 v17, v23

    move-object/from16 v18, v23

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->request:Lokhttp3/Request;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-direct/range {v18 .. v20}, Lokhttp3/internal/cache/CacheStrategy;-><init>(Lokhttp3/Request;Lokhttp3/Response;)V

    move-object/from16 v2, v17

    goto/16 :goto_0
.end method

.method private static hasConditions(Lokhttp3/Request;)Z
    .locals 3

    .prologue
    .line 321
    move-object v0, p0

    move-object v1, v0

    const-string v2, "If-Modified-Since"

    invoke-virtual {v1, v2}, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    move-object v1, v0

    const-string v2, "If-None-Match"

    invoke-virtual {v1, v2}, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isFreshnessLifetimeHeuristic()Z
    .locals 3

    .prologue
    .line 312
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/internal/cache/CacheStrategy$Factory;->cacheResponse:Lokhttp3/Response;

    invoke-virtual {v1}, Lokhttp3/Response;->cacheControl()Lokhttp3/CacheControl;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/CacheControl;->maxAgeSeconds()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/internal/cache/CacheStrategy$Factory;->expires:Ljava/util/Date;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public get()Lokhttp3/internal/cache/CacheStrategy;
    .locals 7

    .prologue
    .line 172
    move-object v0, p0

    move-object v2, v0

    invoke-direct {v2}, Lokhttp3/internal/cache/CacheStrategy$Factory;->getCandidate()Lokhttp3/internal/cache/CacheStrategy;

    move-result-object v2

    move-object v1, v2

    .line 174
    move-object v2, v1

    iget-object v2, v2, Lokhttp3/internal/cache/CacheStrategy;->networkRequest:Lokhttp3/Request;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lokhttp3/internal/cache/CacheStrategy$Factory;->request:Lokhttp3/Request;

    invoke-virtual {v2}, Lokhttp3/Request;->cacheControl()Lokhttp3/CacheControl;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/CacheControl;->onlyIfCached()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 176
    new-instance v2, Lokhttp3/internal/cache/CacheStrategy;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lokhttp3/internal/cache/CacheStrategy;-><init>(Lokhttp3/Request;Lokhttp3/Response;)V

    move-object v0, v2

    .line 179
    :goto_0
    return-object v0

    :cond_0
    move-object v2, v1

    move-object v0, v2

    goto :goto_0
.end method
