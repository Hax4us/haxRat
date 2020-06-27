.class public final Lokhttp3/Challenge;
.super Ljava/lang/Object;
.source "Challenge.java"


# instance fields
.field private final realm:Ljava/lang/String;

.field private final scheme:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 25
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 26
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lokhttp3/Challenge;->scheme:Ljava/lang/String;

    .line 27
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lokhttp3/Challenge;->realm:Ljava/lang/String;

    .line 28
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 41
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    instance-of v2, v2, Lokhttp3/Challenge;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lokhttp3/Challenge;->scheme:Ljava/lang/String;

    move-object v3, v1

    check-cast v3, Lokhttp3/Challenge;

    iget-object v3, v3, Lokhttp3/Challenge;->scheme:Ljava/lang/String;

    .line 42
    invoke-static {v2, v3}, Lokhttp3/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lokhttp3/Challenge;->realm:Ljava/lang/String;

    move-object v3, v1

    check-cast v3, Lokhttp3/Challenge;

    iget-object v3, v3, Lokhttp3/Challenge;->realm:Ljava/lang/String;

    .line 43
    invoke-static {v2, v3}, Lokhttp3/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 41
    :goto_0
    move v0, v2

    return v0

    .line 43
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 47
    move-object v0, p0

    const/16 v2, 0x1d

    move v1, v2

    .line 48
    const/16 v2, 0x1f

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget-object v3, v3, Lokhttp3/Challenge;->realm:Ljava/lang/String;

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lokhttp3/Challenge;->realm:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v2, v3

    move v1, v2

    .line 49
    const/16 v2, 0x1f

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget-object v3, v3, Lokhttp3/Challenge;->scheme:Ljava/lang/String;

    if-eqz v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Lokhttp3/Challenge;->scheme:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v2, v3

    move v1, v2

    .line 50
    move v2, v1

    move v0, v2

    return v0

    .line 48
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 49
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public realm()Ljava/lang/String;
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/Challenge;->realm:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public scheme()Ljava/lang/String;
    .locals 2

    .prologue
    .line 32
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/Challenge;->scheme:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 54
    move-object v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v0

    iget-object v2, v2, Lokhttp3/Challenge;->scheme:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " realm=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lokhttp3/Challenge;->realm:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method
