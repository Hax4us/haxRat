.class public Lio/socket/backo/Backoff;
.super Ljava/lang/Object;
.source "Backoff.java"


# instance fields
.field private attempts:I

.field private factor:I

.field private jitter:D

.field private max:J

.field private ms:J


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 14
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 8
    move-object v1, v0

    const-wide/16 v2, 0x64

    iput-wide v2, v1, Lio/socket/backo/Backoff;->ms:J

    .line 9
    move-object v1, v0

    const-wide/16 v2, 0x2710

    iput-wide v2, v1, Lio/socket/backo/Backoff;->max:J

    .line 10
    move-object v1, v0

    const/4 v2, 0x2

    iput v2, v1, Lio/socket/backo/Backoff;->factor:I

    .line 14
    return-void
.end method


# virtual methods
.method public duration()J
    .locals 13

    .prologue
    .line 17
    move-object v0, p0

    move-object v5, v0

    iget-wide v5, v5, Lio/socket/backo/Backoff;->ms:J

    invoke-static {v5, v6}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    move-object v6, v0

    iget v6, v6, Lio/socket/backo/Backoff;->factor:I

    int-to-long v6, v6

    .line 18
    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v6

    move-object v7, v0

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    iget v8, v8, Lio/socket/backo/Backoff;->attempts:I

    move-object v11, v7

    move v12, v8

    move v7, v12

    move-object v8, v11

    move v9, v12

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    iput v9, v8, Lio/socket/backo/Backoff;->attempts:I

    invoke-virtual {v6, v7}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    move-object v1, v5

    .line 19
    move-object v5, v0

    iget-wide v5, v5, Lio/socket/backo/Backoff;->jitter:D

    const-wide/16 v7, 0x0

    cmpl-double v5, v5, v7

    if-eqz v5, :cond_0

    .line 20
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v5

    move-wide v2, v5

    .line 21
    move-wide v5, v2

    invoke-static {v5, v6}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v5

    move-object v6, v0

    iget-wide v6, v6, Lio/socket/backo/Backoff;->jitter:D

    .line 22
    invoke-static {v6, v7}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v5

    new-instance v6, Ljava/math/BigDecimal;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v1

    invoke-direct {v7, v8}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    .line 23
    invoke-virtual {v5, v6}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v5

    move-object v4, v5

    .line 24
    move-wide v5, v2

    const-wide/high16 v7, 0x4024000000000000L    # 10.0

    mul-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v5, v5

    const/4 v6, 0x1

    and-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_1

    move-object v5, v1

    move-object v6, v4

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    :goto_0
    move-object v1, v5

    .line 26
    :cond_0
    move-object v5, v1

    move-object v6, v0

    iget-wide v6, v6, Lio/socket/backo/Backoff;->max:J

    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->min(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v5

    move-wide v0, v5

    return-wide v0

    .line 24
    :cond_1
    move-object v5, v1

    move-object v6, v4

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    goto :goto_0
.end method

.method public getAttempts()I
    .locals 2

    .prologue
    .line 54
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lio/socket/backo/Backoff;->attempts:I

    move v0, v1

    return v0
.end method

.method public reset()V
    .locals 3

    .prologue
    .line 30
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lio/socket/backo/Backoff;->attempts:I

    .line 31
    return-void
.end method

.method public setFactor(I)Lio/socket/backo/Backoff;
    .locals 4

    .prologue
    .line 44
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lio/socket/backo/Backoff;->factor:I

    .line 45
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public setJitter(D)Lio/socket/backo/Backoff;
    .locals 6

    .prologue
    .line 49
    move-object v0, p0

    move-wide v1, p1

    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Lio/socket/backo/Backoff;->jitter:D

    .line 50
    move-object v3, v0

    move-object v0, v3

    return-object v0
.end method

.method public setMax(J)Lio/socket/backo/Backoff;
    .locals 6

    .prologue
    .line 39
    move-object v0, p0

    move-wide v1, p1

    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Lio/socket/backo/Backoff;->max:J

    .line 40
    move-object v3, v0

    move-object v0, v3

    return-object v0
.end method

.method public setMin(J)Lio/socket/backo/Backoff;
    .locals 6

    .prologue
    .line 34
    move-object v0, p0

    move-wide v1, p1

    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Lio/socket/backo/Backoff;->ms:J

    .line 35
    move-object v3, v0

    move-object v0, v3

    return-object v0
.end method
