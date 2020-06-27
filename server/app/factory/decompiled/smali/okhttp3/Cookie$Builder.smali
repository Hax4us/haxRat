.class public final Lokhttp3/Cookie$Builder;
.super Ljava/lang/Object;
.source "Cookie.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/Cookie;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field domain:Ljava/lang/String;

.field expiresAt:J

.field hostOnly:Z

.field httpOnly:Z

.field name:Ljava/lang/String;

.field path:Ljava/lang/String;

.field persistent:Z

.field secure:Z

.field value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 451
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 454
    move-object v1, v0

    const-wide v2, 0xe677d21fdbffL

    iput-wide v2, v1, Lokhttp3/Cookie$Builder;->expiresAt:J

    .line 456
    move-object v1, v0

    const-string v2, "/"

    iput-object v2, v1, Lokhttp3/Cookie$Builder;->path:Ljava/lang/String;

    return-void
.end method

.method private domain(Ljava/lang/String;Z)Lokhttp3/Cookie$Builder;
    .locals 9

    .prologue
    .line 501
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, v1

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/NullPointerException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const-string v6, "domain == null"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 502
    :cond_0
    move-object v4, v1

    invoke-static {v4}, Lokhttp3/internal/Util;->domainToAscii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 503
    move-object v4, v3

    if-nez v4, :cond_1

    .line 504
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unexpected domain: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 506
    :cond_1
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lokhttp3/Cookie$Builder;->domain:Ljava/lang/String;

    .line 507
    move-object v4, v0

    move v5, v2

    iput-boolean v5, v4, Lokhttp3/Cookie$Builder;->hostOnly:Z

    .line 508
    move-object v4, v0

    move-object v0, v4

    return-object v0
.end method


# virtual methods
.method public build()Lokhttp3/Cookie;
    .locals 5

    .prologue
    .line 528
    move-object v0, p0

    new-instance v1, Lokhttp3/Cookie;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lokhttp3/Cookie;-><init>(Lokhttp3/Cookie$Builder;)V

    move-object v0, v1

    return-object v0
.end method

.method public domain(Ljava/lang/String;)Lokhttp3/Cookie$Builder;
    .locals 5

    .prologue
    .line 489
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lokhttp3/Cookie$Builder;->domain(Ljava/lang/String;Z)Lokhttp3/Cookie$Builder;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public expiresAt(J)Lokhttp3/Cookie$Builder;
    .locals 7

    .prologue
    .line 477
    move-object v0, p0

    move-wide v1, p1

    move-wide v3, v1

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-gtz v3, :cond_0

    const-wide/high16 v3, -0x8000000000000000L

    move-wide v1, v3

    .line 478
    :cond_0
    move-wide v3, v1

    const-wide v5, 0xe677d21fdbffL

    cmp-long v3, v3, v5

    if-lez v3, :cond_1

    const-wide v3, 0xe677d21fdbffL

    move-wide v1, v3

    .line 479
    :cond_1
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Lokhttp3/Cookie$Builder;->expiresAt:J

    .line 480
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lokhttp3/Cookie$Builder;->persistent:Z

    .line 481
    move-object v3, v0

    move-object v0, v3

    return-object v0
.end method

.method public hostOnlyDomain(Ljava/lang/String;)Lokhttp3/Cookie$Builder;
    .locals 5

    .prologue
    .line 497
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lokhttp3/Cookie$Builder;->domain(Ljava/lang/String;Z)Lokhttp3/Cookie$Builder;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public httpOnly()Lokhttp3/Cookie$Builder;
    .locals 3

    .prologue
    .line 523
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lokhttp3/Cookie$Builder;->httpOnly:Z

    .line 524
    move-object v1, v0

    move-object v0, v1

    return-object v0
.end method

.method public name(Ljava/lang/String;)Lokhttp3/Cookie$Builder;
    .locals 6

    .prologue
    .line 463
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/NullPointerException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "name == null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 464
    :cond_0
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "name is not trimmed"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 465
    :cond_1
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lokhttp3/Cookie$Builder;->name:Ljava/lang/String;

    .line 466
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public path(Ljava/lang/String;)Lokhttp3/Cookie$Builder;
    .locals 6

    .prologue
    .line 512
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "path must start with \'/\'"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 513
    :cond_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lokhttp3/Cookie$Builder;->path:Ljava/lang/String;

    .line 514
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public secure()Lokhttp3/Cookie$Builder;
    .locals 3

    .prologue
    .line 518
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lokhttp3/Cookie$Builder;->secure:Z

    .line 519
    move-object v1, v0

    move-object v0, v1

    return-object v0
.end method

.method public value(Ljava/lang/String;)Lokhttp3/Cookie$Builder;
    .locals 6

    .prologue
    .line 470
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/NullPointerException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "value == null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 471
    :cond_0
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "value is not trimmed"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 472
    :cond_1
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lokhttp3/Cookie$Builder;->value:Ljava/lang/String;

    .line 473
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method
