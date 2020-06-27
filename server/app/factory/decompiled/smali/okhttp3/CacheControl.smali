.class public final Lokhttp3/CacheControl;
.super Ljava/lang/Object;
.source "CacheControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/CacheControl$Builder;
    }
.end annotation


# static fields
.field public static final FORCE_CACHE:Lokhttp3/CacheControl;

.field public static final FORCE_NETWORK:Lokhttp3/CacheControl;


# instance fields
.field headerValue:Ljava/lang/String;

.field private final isPrivate:Z

.field private final isPublic:Z

.field private final maxAgeSeconds:I

.field private final maxStaleSeconds:I

.field private final minFreshSeconds:I

.field private final mustRevalidate:Z

.field private final noCache:Z

.field private final noStore:Z

.field private final noTransform:Z

.field private final onlyIfCached:Z

.field private final sMaxAgeSeconds:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 18
    new-instance v0, Lokhttp3/CacheControl$Builder;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    invoke-direct {v1}, Lokhttp3/CacheControl$Builder;-><init>()V

    invoke-virtual {v0}, Lokhttp3/CacheControl$Builder;->noCache()Lokhttp3/CacheControl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/CacheControl$Builder;->build()Lokhttp3/CacheControl;

    move-result-object v0

    sput-object v0, Lokhttp3/CacheControl;->FORCE_NETWORK:Lokhttp3/CacheControl;

    .line 25
    new-instance v0, Lokhttp3/CacheControl$Builder;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    invoke-direct {v1}, Lokhttp3/CacheControl$Builder;-><init>()V

    .line 26
    invoke-virtual {v0}, Lokhttp3/CacheControl$Builder;->onlyIfCached()Lokhttp3/CacheControl$Builder;

    move-result-object v0

    const v1, 0x7fffffff

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 27
    invoke-virtual {v0, v1, v2}, Lokhttp3/CacheControl$Builder;->maxStale(ILjava/util/concurrent/TimeUnit;)Lokhttp3/CacheControl$Builder;

    move-result-object v0

    .line 28
    invoke-virtual {v0}, Lokhttp3/CacheControl$Builder;->build()Lokhttp3/CacheControl;

    move-result-object v0

    sput-object v0, Lokhttp3/CacheControl;->FORCE_CACHE:Lokhttp3/CacheControl;

    .line 25
    return-void
.end method

.method constructor <init>(Lokhttp3/CacheControl$Builder;)V
    .locals 4

    .prologue
    .line 61
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 62
    move-object v2, v0

    move-object v3, v1

    iget-boolean v3, v3, Lokhttp3/CacheControl$Builder;->noCache:Z

    iput-boolean v3, v2, Lokhttp3/CacheControl;->noCache:Z

    .line 63
    move-object v2, v0

    move-object v3, v1

    iget-boolean v3, v3, Lokhttp3/CacheControl$Builder;->noStore:Z

    iput-boolean v3, v2, Lokhttp3/CacheControl;->noStore:Z

    .line 64
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Lokhttp3/CacheControl$Builder;->maxAgeSeconds:I

    iput v3, v2, Lokhttp3/CacheControl;->maxAgeSeconds:I

    .line 65
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Lokhttp3/CacheControl;->sMaxAgeSeconds:I

    .line 66
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lokhttp3/CacheControl;->isPrivate:Z

    .line 67
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lokhttp3/CacheControl;->isPublic:Z

    .line 68
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lokhttp3/CacheControl;->mustRevalidate:Z

    .line 69
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Lokhttp3/CacheControl$Builder;->maxStaleSeconds:I

    iput v3, v2, Lokhttp3/CacheControl;->maxStaleSeconds:I

    .line 70
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Lokhttp3/CacheControl$Builder;->minFreshSeconds:I

    iput v3, v2, Lokhttp3/CacheControl;->minFreshSeconds:I

    .line 71
    move-object v2, v0

    move-object v3, v1

    iget-boolean v3, v3, Lokhttp3/CacheControl$Builder;->onlyIfCached:Z

    iput-boolean v3, v2, Lokhttp3/CacheControl;->onlyIfCached:Z

    .line 72
    move-object v2, v0

    move-object v3, v1

    iget-boolean v3, v3, Lokhttp3/CacheControl$Builder;->noTransform:Z

    iput-boolean v3, v2, Lokhttp3/CacheControl;->noTransform:Z

    .line 73
    return-void
.end method

.method private constructor <init>(ZZIIZZZIIZZLjava/lang/String;)V
    .locals 15

    .prologue
    .line 46
    move-object v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move-object/from16 v12, p12

    move-object v13, v0

    invoke-direct {v13}, Ljava/lang/Object;-><init>()V

    .line 47
    move-object v13, v0

    move v14, v1

    iput-boolean v14, v13, Lokhttp3/CacheControl;->noCache:Z

    .line 48
    move-object v13, v0

    move v14, v2

    iput-boolean v14, v13, Lokhttp3/CacheControl;->noStore:Z

    .line 49
    move-object v13, v0

    move v14, v3

    iput v14, v13, Lokhttp3/CacheControl;->maxAgeSeconds:I

    .line 50
    move-object v13, v0

    move v14, v4

    iput v14, v13, Lokhttp3/CacheControl;->sMaxAgeSeconds:I

    .line 51
    move-object v13, v0

    move v14, v5

    iput-boolean v14, v13, Lokhttp3/CacheControl;->isPrivate:Z

    .line 52
    move-object v13, v0

    move v14, v6

    iput-boolean v14, v13, Lokhttp3/CacheControl;->isPublic:Z

    .line 53
    move-object v13, v0

    move v14, v7

    iput-boolean v14, v13, Lokhttp3/CacheControl;->mustRevalidate:Z

    .line 54
    move-object v13, v0

    move v14, v8

    iput v14, v13, Lokhttp3/CacheControl;->maxStaleSeconds:I

    .line 55
    move-object v13, v0

    move v14, v9

    iput v14, v13, Lokhttp3/CacheControl;->minFreshSeconds:I

    .line 56
    move-object v13, v0

    move v14, v10

    iput-boolean v14, v13, Lokhttp3/CacheControl;->onlyIfCached:Z

    .line 57
    move-object v13, v0

    move v14, v11

    iput-boolean v14, v13, Lokhttp3/CacheControl;->noTransform:Z

    .line 58
    move-object v13, v0

    move-object v14, v12

    iput-object v14, v13, Lokhttp3/CacheControl;->headerValue:Ljava/lang/String;

    .line 59
    return-void
.end method

.method private headerValue()Ljava/lang/String;
    .locals 6

    .prologue
    .line 247
    move-object v0, p0

    new-instance v2, Ljava/lang/StringBuilder;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, v2

    .line 248
    move-object v2, v0

    iget-boolean v2, v2, Lokhttp3/CacheControl;->noCache:Z

    if-eqz v2, :cond_0

    move-object v2, v1

    const-string v3, "no-cache, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 249
    :cond_0
    move-object v2, v0

    iget-boolean v2, v2, Lokhttp3/CacheControl;->noStore:Z

    if-eqz v2, :cond_1

    move-object v2, v1

    const-string v3, "no-store, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 250
    :cond_1
    move-object v2, v0

    iget v2, v2, Lokhttp3/CacheControl;->maxAgeSeconds:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    move-object v2, v1

    const-string v3, "max-age="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget v3, v3, Lokhttp3/CacheControl;->maxAgeSeconds:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 251
    :cond_2
    move-object v2, v0

    iget v2, v2, Lokhttp3/CacheControl;->sMaxAgeSeconds:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    move-object v2, v1

    const-string v3, "s-maxage="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget v3, v3, Lokhttp3/CacheControl;->sMaxAgeSeconds:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 252
    :cond_3
    move-object v2, v0

    iget-boolean v2, v2, Lokhttp3/CacheControl;->isPrivate:Z

    if-eqz v2, :cond_4

    move-object v2, v1

    const-string v3, "private, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 253
    :cond_4
    move-object v2, v0

    iget-boolean v2, v2, Lokhttp3/CacheControl;->isPublic:Z

    if-eqz v2, :cond_5

    move-object v2, v1

    const-string v3, "public, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 254
    :cond_5
    move-object v2, v0

    iget-boolean v2, v2, Lokhttp3/CacheControl;->mustRevalidate:Z

    if-eqz v2, :cond_6

    move-object v2, v1

    const-string v3, "must-revalidate, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 255
    :cond_6
    move-object v2, v0

    iget v2, v2, Lokhttp3/CacheControl;->maxStaleSeconds:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_7

    move-object v2, v1

    const-string v3, "max-stale="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget v3, v3, Lokhttp3/CacheControl;->maxStaleSeconds:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 256
    :cond_7
    move-object v2, v0

    iget v2, v2, Lokhttp3/CacheControl;->minFreshSeconds:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_8

    move-object v2, v1

    const-string v3, "min-fresh="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget v3, v3, Lokhttp3/CacheControl;->minFreshSeconds:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 257
    :cond_8
    move-object v2, v0

    iget-boolean v2, v2, Lokhttp3/CacheControl;->onlyIfCached:Z

    if-eqz v2, :cond_9

    move-object v2, v1

    const-string v3, "only-if-cached, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 258
    :cond_9
    move-object v2, v0

    iget-boolean v2, v2, Lokhttp3/CacheControl;->noTransform:Z

    if-eqz v2, :cond_a

    move-object v2, v1

    const-string v3, "no-transform, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 259
    :cond_a
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-nez v2, :cond_b

    const-string v2, ""

    move-object v0, v2

    .line 261
    :goto_0
    return-object v0

    .line 260
    :cond_b
    move-object v2, v1

    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    const/4 v4, 0x2

    add-int/lit8 v3, v3, -0x2

    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 261
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method public static parse(Lokhttp3/Headers;)Lokhttp3/CacheControl;
    .locals 40

    .prologue
    .line 145
    move-object/from16 v2, p0

    const/16 v25, 0x0

    move/from16 v3, v25

    .line 146
    const/16 v25, 0x0

    move/from16 v4, v25

    .line 147
    const/16 v25, -0x1

    move/from16 v5, v25

    .line 148
    const/16 v25, -0x1

    move/from16 v6, v25

    .line 149
    const/16 v25, 0x0

    move/from16 v7, v25

    .line 150
    const/16 v25, 0x0

    move/from16 v8, v25

    .line 151
    const/16 v25, 0x0

    move/from16 v9, v25

    .line 152
    const/16 v25, -0x1

    move/from16 v10, v25

    .line 153
    const/16 v25, -0x1

    move/from16 v11, v25

    .line 154
    const/16 v25, 0x0

    move/from16 v12, v25

    .line 155
    const/16 v25, 0x0

    move/from16 v13, v25

    .line 157
    const/16 v25, 0x1

    move/from16 v14, v25

    .line 158
    const/16 v25, 0x0

    move-object/from16 v15, v25

    .line 160
    const/16 v25, 0x0

    move/from16 v16, v25

    move-object/from16 v25, v2

    invoke-virtual/range {v25 .. v25}, Lokhttp3/Headers;->size()I

    move-result v25

    move/from16 v17, v25

    :goto_0
    move/from16 v25, v16

    move/from16 v26, v17

    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_11

    .line 161
    move-object/from16 v25, v2

    move/from16 v26, v16

    invoke-virtual/range {v25 .. v26}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v18, v25

    .line 162
    move-object/from16 v25, v2

    move/from16 v26, v16

    invoke-virtual/range {v25 .. v26}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v19, v25

    .line 164
    move-object/from16 v25, v18

    const-string v26, "Cache-Control"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_3

    .line 165
    move-object/from16 v25, v15

    if-eqz v25, :cond_2

    .line 167
    const/16 v25, 0x0

    move/from16 v14, v25

    .line 178
    :goto_1
    const/16 v25, 0x0

    move/from16 v20, v25

    .line 179
    :goto_2
    move/from16 v25, v20

    move-object/from16 v26, v19

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v26

    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_10

    .line 180
    move/from16 v25, v20

    move/from16 v21, v25

    .line 181
    move-object/from16 v25, v19

    move/from16 v26, v20

    const-string v27, "=,;"

    invoke-static/range {v25 .. v27}, Lokhttp3/internal/http/HttpHeaders;->skipUntil(Ljava/lang/String;ILjava/lang/String;)I

    move-result v25

    move/from16 v20, v25

    .line 182
    move-object/from16 v25, v19

    move/from16 v26, v21

    move/from16 v27, v20

    invoke-virtual/range {v25 .. v27}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v22, v25

    .line 185
    move/from16 v25, v20

    move-object/from16 v26, v19

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v26

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_0

    move-object/from16 v25, v19

    move/from16 v26, v20

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->charAt(I)C

    move-result v25

    const/16 v26, 0x2c

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_0

    move-object/from16 v25, v19

    move/from16 v26, v20

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->charAt(I)C

    move-result v25

    const/16 v26, 0x3b

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_4

    .line 186
    :cond_0
    add-int/lit8 v20, v20, 0x1

    .line 187
    const/16 v25, 0x0

    move-object/from16 v23, v25

    .line 208
    :goto_3
    const-string v25, "no-cache"

    move-object/from16 v26, v22

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_6

    .line 209
    const/16 v25, 0x1

    move/from16 v3, v25

    .line 231
    :cond_1
    :goto_4
    goto :goto_2

    .line 169
    :cond_2
    move-object/from16 v25, v19

    move-object/from16 v15, v25

    goto :goto_1

    .line 171
    :cond_3
    move-object/from16 v25, v18

    const-string v26, "Pragma"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_10

    .line 173
    const/16 v25, 0x0

    move/from16 v14, v25

    goto/16 :goto_1

    .line 189
    :cond_4
    add-int/lit8 v20, v20, 0x1

    .line 190
    move-object/from16 v25, v19

    move/from16 v26, v20

    invoke-static/range {v25 .. v26}, Lokhttp3/internal/http/HttpHeaders;->skipWhitespace(Ljava/lang/String;I)I

    move-result v25

    move/from16 v20, v25

    .line 193
    move/from16 v25, v20

    move-object/from16 v26, v19

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v26

    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_5

    move-object/from16 v25, v19

    move/from16 v26, v20

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->charAt(I)C

    move-result v25

    const/16 v26, 0x22

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_5

    .line 194
    add-int/lit8 v20, v20, 0x1

    .line 195
    move/from16 v25, v20

    move/from16 v24, v25

    .line 196
    move-object/from16 v25, v19

    move/from16 v26, v20

    const-string v27, "\""

    invoke-static/range {v25 .. v27}, Lokhttp3/internal/http/HttpHeaders;->skipUntil(Ljava/lang/String;ILjava/lang/String;)I

    move-result v25

    move/from16 v20, v25

    .line 197
    move-object/from16 v25, v19

    move/from16 v26, v24

    move/from16 v27, v20

    invoke-virtual/range {v25 .. v27}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v23, v25

    .line 198
    add-int/lit8 v20, v20, 0x1

    .line 201
    goto :goto_3

    .line 202
    :cond_5
    move/from16 v25, v20

    move/from16 v24, v25

    .line 203
    move-object/from16 v25, v19

    move/from16 v26, v20

    const-string v27, ",;"

    invoke-static/range {v25 .. v27}, Lokhttp3/internal/http/HttpHeaders;->skipUntil(Ljava/lang/String;ILjava/lang/String;)I

    move-result v25

    move/from16 v20, v25

    .line 204
    move-object/from16 v25, v19

    move/from16 v26, v24

    move/from16 v27, v20

    invoke-virtual/range {v25 .. v27}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v23, v25

    goto/16 :goto_3

    .line 210
    :cond_6
    const-string v25, "no-store"

    move-object/from16 v26, v22

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_7

    .line 211
    const/16 v25, 0x1

    move/from16 v4, v25

    goto/16 :goto_4

    .line 212
    :cond_7
    const-string v25, "max-age"

    move-object/from16 v26, v22

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_8

    .line 213
    move-object/from16 v25, v23

    const/16 v26, -0x1

    invoke-static/range {v25 .. v26}, Lokhttp3/internal/http/HttpHeaders;->parseSeconds(Ljava/lang/String;I)I

    move-result v25

    move/from16 v5, v25

    goto/16 :goto_4

    .line 214
    :cond_8
    const-string v25, "s-maxage"

    move-object/from16 v26, v22

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_9

    .line 215
    move-object/from16 v25, v23

    const/16 v26, -0x1

    invoke-static/range {v25 .. v26}, Lokhttp3/internal/http/HttpHeaders;->parseSeconds(Ljava/lang/String;I)I

    move-result v25

    move/from16 v6, v25

    goto/16 :goto_4

    .line 216
    :cond_9
    const-string v25, "private"

    move-object/from16 v26, v22

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_a

    .line 217
    const/16 v25, 0x1

    move/from16 v7, v25

    goto/16 :goto_4

    .line 218
    :cond_a
    const-string v25, "public"

    move-object/from16 v26, v22

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_b

    .line 219
    const/16 v25, 0x1

    move/from16 v8, v25

    goto/16 :goto_4

    .line 220
    :cond_b
    const-string v25, "must-revalidate"

    move-object/from16 v26, v22

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_c

    .line 221
    const/16 v25, 0x1

    move/from16 v9, v25

    goto/16 :goto_4

    .line 222
    :cond_c
    const-string v25, "max-stale"

    move-object/from16 v26, v22

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_d

    .line 223
    move-object/from16 v25, v23

    const v26, 0x7fffffff

    invoke-static/range {v25 .. v26}, Lokhttp3/internal/http/HttpHeaders;->parseSeconds(Ljava/lang/String;I)I

    move-result v25

    move/from16 v10, v25

    goto/16 :goto_4

    .line 224
    :cond_d
    const-string v25, "min-fresh"

    move-object/from16 v26, v22

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_e

    .line 225
    move-object/from16 v25, v23

    const/16 v26, -0x1

    invoke-static/range {v25 .. v26}, Lokhttp3/internal/http/HttpHeaders;->parseSeconds(Ljava/lang/String;I)I

    move-result v25

    move/from16 v11, v25

    goto/16 :goto_4

    .line 226
    :cond_e
    const-string v25, "only-if-cached"

    move-object/from16 v26, v22

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_f

    .line 227
    const/16 v25, 0x1

    move/from16 v12, v25

    goto/16 :goto_4

    .line 228
    :cond_f
    const-string v25, "no-transform"

    move-object/from16 v26, v22

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_1

    .line 229
    const/16 v25, 0x1

    move/from16 v13, v25

    goto/16 :goto_4

    .line 160
    :cond_10
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_0

    .line 234
    :cond_11
    move/from16 v25, v14

    if-nez v25, :cond_12

    .line 235
    const/16 v25, 0x0

    move-object/from16 v15, v25

    .line 237
    :cond_12
    new-instance v25, Lokhttp3/CacheControl;

    move-object/from16 v39, v25

    move-object/from16 v25, v39

    move-object/from16 v26, v39

    move/from16 v27, v3

    move/from16 v28, v4

    move/from16 v29, v5

    move/from16 v30, v6

    move/from16 v31, v7

    move/from16 v32, v8

    move/from16 v33, v9

    move/from16 v34, v10

    move/from16 v35, v11

    move/from16 v36, v12

    move/from16 v37, v13

    move-object/from16 v38, v15

    invoke-direct/range {v26 .. v38}, Lokhttp3/CacheControl;-><init>(ZZIIZZZIIZZLjava/lang/String;)V

    move-object/from16 v2, v25

    return-object v2
.end method


# virtual methods
.method public isPrivate()Z
    .locals 2

    .prologue
    .line 107
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lokhttp3/CacheControl;->isPrivate:Z

    move v0, v1

    return v0
.end method

.method public isPublic()Z
    .locals 2

    .prologue
    .line 111
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lokhttp3/CacheControl;->isPublic:Z

    move v0, v1

    return v0
.end method

.method public maxAgeSeconds()I
    .locals 2

    .prologue
    .line 95
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lokhttp3/CacheControl;->maxAgeSeconds:I

    move v0, v1

    return v0
.end method

.method public maxStaleSeconds()I
    .locals 2

    .prologue
    .line 119
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lokhttp3/CacheControl;->maxStaleSeconds:I

    move v0, v1

    return v0
.end method

.method public minFreshSeconds()I
    .locals 2

    .prologue
    .line 123
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lokhttp3/CacheControl;->minFreshSeconds:I

    move v0, v1

    return v0
.end method

.method public mustRevalidate()Z
    .locals 2

    .prologue
    .line 115
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lokhttp3/CacheControl;->mustRevalidate:Z

    move v0, v1

    return v0
.end method

.method public noCache()Z
    .locals 2

    .prologue
    .line 83
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lokhttp3/CacheControl;->noCache:Z

    move v0, v1

    return v0
.end method

.method public noStore()Z
    .locals 2

    .prologue
    .line 88
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lokhttp3/CacheControl;->noStore:Z

    move v0, v1

    return v0
.end method

.method public noTransform()Z
    .locals 2

    .prologue
    .line 137
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lokhttp3/CacheControl;->noTransform:Z

    move v0, v1

    return v0
.end method

.method public onlyIfCached()Z
    .locals 2

    .prologue
    .line 133
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lokhttp3/CacheControl;->onlyIfCached:Z

    move v0, v1

    return v0
.end method

.method public sMaxAgeSeconds()I
    .locals 2

    .prologue
    .line 103
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lokhttp3/CacheControl;->sMaxAgeSeconds:I

    move v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 242
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lokhttp3/CacheControl;->headerValue:Ljava/lang/String;

    move-object v1, v2

    .line 243
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    :goto_0
    move-object v0, v2

    return-object v0

    :cond_0
    move-object v2, v0

    move-object v3, v0

    invoke-direct {v3}, Lokhttp3/CacheControl;->headerValue()Ljava/lang/String;

    move-result-object v3

    move-object v5, v2

    move-object v6, v3

    move-object v2, v6

    move-object v3, v5

    move-object v4, v6

    iput-object v4, v3, Lokhttp3/CacheControl;->headerValue:Ljava/lang/String;

    goto :goto_0
.end method
