.class final Lokhttp3/internal/tls/DistinguishedNameParser;
.super Ljava/lang/Object;
.source "DistinguishedNameParser.java"


# instance fields
.field private beg:I

.field private chars:[C

.field private cur:I

.field private final dn:Ljava/lang/String;

.field private end:I

.field private final length:I

.field private pos:I


# direct methods
.method public constructor <init>(Ljavax/security/auth/x500/X500Principal;)V
    .locals 5

    .prologue
    .line 38
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 42
    move-object v2, v0

    move-object v3, v1

    const-string v4, "RFC2253"

    invoke-virtual {v3, v4}, Ljavax/security/auth/x500/X500Principal;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lokhttp3/internal/tls/DistinguishedNameParser;->dn:Ljava/lang/String;

    .line 43
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lokhttp3/internal/tls/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iput v3, v2, Lokhttp3/internal/tls/DistinguishedNameParser;->length:I

    .line 44
    return-void
.end method

.method private escapedAV()Ljava/lang/String;
    .locals 9

    .prologue
    .line 187
    move-object v0, p0

    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    iput v2, v1, Lokhttp3/internal/tls/DistinguishedNameParser;->beg:I

    .line 188
    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    iput v2, v1, Lokhttp3/internal/tls/DistinguishedNameParser;->end:I

    .line 190
    :cond_0
    :goto_0
    move-object v1, v0

    iget v1, v1, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    move-object v2, v0

    iget v2, v2, Lokhttp3/internal/tls/DistinguishedNameParser;->length:I

    if-lt v1, v2, :cond_1

    .line 192
    new-instance v1, Ljava/lang/String;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    move-object v3, v0

    iget-object v3, v3, Lokhttp3/internal/tls/DistinguishedNameParser;->chars:[C

    move-object v4, v0

    iget v4, v4, Lokhttp3/internal/tls/DistinguishedNameParser;->beg:I

    move-object v5, v0

    iget v5, v5, Lokhttp3/internal/tls/DistinguishedNameParser;->end:I

    move-object v6, v0

    iget v6, v6, Lokhttp3/internal/tls/DistinguishedNameParser;->beg:I

    sub-int/2addr v5, v6

    invoke-direct {v2, v3, v4, v5}, Ljava/lang/String;-><init>([CII)V

    move-object v0, v1

    .line 220
    :goto_1
    return-object v0

    .line 195
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Lokhttp3/internal/tls/DistinguishedNameParser;->chars:[C

    move-object v2, v0

    iget v2, v2, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    aget-char v1, v1, v2

    sparse-switch v1, :sswitch_data_0

    .line 224
    move-object v1, v0

    iget-object v1, v1, Lokhttp3/internal/tls/DistinguishedNameParser;->chars:[C

    move-object v2, v0

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    iget v3, v3, Lokhttp3/internal/tls/DistinguishedNameParser;->end:I

    move-object v7, v2

    move v8, v3

    move v2, v8

    move-object v3, v7

    move v4, v8

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lokhttp3/internal/tls/DistinguishedNameParser;->end:I

    move-object v3, v0

    iget-object v3, v3, Lokhttp3/internal/tls/DistinguishedNameParser;->chars:[C

    move-object v4, v0

    iget v4, v4, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    aget-char v3, v3, v4

    aput-char v3, v1, v2

    .line 225
    move-object v1, v0

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    iget v2, v2, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    goto :goto_0

    .line 200
    :sswitch_0
    new-instance v1, Ljava/lang/String;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    move-object v3, v0

    iget-object v3, v3, Lokhttp3/internal/tls/DistinguishedNameParser;->chars:[C

    move-object v4, v0

    iget v4, v4, Lokhttp3/internal/tls/DistinguishedNameParser;->beg:I

    move-object v5, v0

    iget v5, v5, Lokhttp3/internal/tls/DistinguishedNameParser;->end:I

    move-object v6, v0

    iget v6, v6, Lokhttp3/internal/tls/DistinguishedNameParser;->beg:I

    sub-int/2addr v5, v6

    invoke-direct {v2, v3, v4, v5}, Ljava/lang/String;-><init>([CII)V

    move-object v0, v1

    goto :goto_1

    .line 203
    :sswitch_1
    move-object v1, v0

    iget-object v1, v1, Lokhttp3/internal/tls/DistinguishedNameParser;->chars:[C

    move-object v2, v0

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    iget v3, v3, Lokhttp3/internal/tls/DistinguishedNameParser;->end:I

    move-object v7, v2

    move v8, v3

    move v2, v8

    move-object v3, v7

    move v4, v8

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lokhttp3/internal/tls/DistinguishedNameParser;->end:I

    move-object v3, v0

    invoke-direct {v3}, Lokhttp3/internal/tls/DistinguishedNameParser;->getEscaped()C

    move-result v3

    aput-char v3, v1, v2

    .line 204
    move-object v1, v0

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    iget v2, v2, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    .line 205
    goto/16 :goto_0

    .line 209
    :sswitch_2
    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Lokhttp3/internal/tls/DistinguishedNameParser;->end:I

    iput v2, v1, Lokhttp3/internal/tls/DistinguishedNameParser;->cur:I

    .line 211
    move-object v1, v0

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    iget v2, v2, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    .line 212
    move-object v1, v0

    iget-object v1, v1, Lokhttp3/internal/tls/DistinguishedNameParser;->chars:[C

    move-object v2, v0

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    iget v3, v3, Lokhttp3/internal/tls/DistinguishedNameParser;->end:I

    move-object v7, v2

    move v8, v3

    move v2, v8

    move-object v3, v7

    move v4, v8

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lokhttp3/internal/tls/DistinguishedNameParser;->end:I

    const/16 v3, 0x20

    aput-char v3, v1, v2

    .line 214
    :goto_2
    move-object v1, v0

    iget v1, v1, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    move-object v2, v0

    iget v2, v2, Lokhttp3/internal/tls/DistinguishedNameParser;->length:I

    if-ge v1, v2, :cond_2

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/internal/tls/DistinguishedNameParser;->chars:[C

    move-object v2, v0

    iget v2, v2, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    aget-char v1, v1, v2

    const/16 v2, 0x20

    if-ne v1, v2, :cond_2

    .line 215
    move-object v1, v0

    iget-object v1, v1, Lokhttp3/internal/tls/DistinguishedNameParser;->chars:[C

    move-object v2, v0

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    iget v3, v3, Lokhttp3/internal/tls/DistinguishedNameParser;->end:I

    move-object v7, v2

    move v8, v3

    move v2, v8

    move-object v3, v7

    move v4, v8

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lokhttp3/internal/tls/DistinguishedNameParser;->end:I

    const/16 v3, 0x20

    aput-char v3, v1, v2

    .line 214
    move-object v1, v0

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    iget v2, v2, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    goto :goto_2

    .line 217
    :cond_2
    move-object v1, v0

    iget v1, v1, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    move-object v2, v0

    iget v2, v2, Lokhttp3/internal/tls/DistinguishedNameParser;->length:I

    if-eq v1, v2, :cond_3

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/internal/tls/DistinguishedNameParser;->chars:[C

    move-object v2, v0

    iget v2, v2, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    aget-char v1, v1, v2

    const/16 v2, 0x2c

    if-eq v1, v2, :cond_3

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/internal/tls/DistinguishedNameParser;->chars:[C

    move-object v2, v0

    iget v2, v2, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    aget-char v1, v1, v2

    const/16 v2, 0x2b

    if-eq v1, v2, :cond_3

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/internal/tls/DistinguishedNameParser;->chars:[C

    move-object v2, v0

    iget v2, v2, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    aget-char v1, v1, v2

    const/16 v2, 0x3b

    if-ne v1, v2, :cond_0

    .line 220
    :cond_3
    new-instance v1, Ljava/lang/String;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    move-object v3, v0

    iget-object v3, v3, Lokhttp3/internal/tls/DistinguishedNameParser;->chars:[C

    move-object v4, v0

    iget v4, v4, Lokhttp3/internal/tls/DistinguishedNameParser;->beg:I

    move-object v5, v0

    iget v5, v5, Lokhttp3/internal/tls/DistinguishedNameParser;->cur:I

    move-object v6, v0

    iget v6, v6, Lokhttp3/internal/tls/DistinguishedNameParser;->beg:I

    sub-int/2addr v5, v6

    invoke-direct {v2, v3, v4, v5}, Ljava/lang/String;-><init>([CII)V

    move-object v0, v1

    goto/16 :goto_1

    .line 195
    nop

    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_2
        0x2b -> :sswitch_0
        0x2c -> :sswitch_0
        0x3b -> :sswitch_0
        0x5c -> :sswitch_1
    .end sparse-switch
.end method

.method private getByte(I)I
    .locals 9

    .prologue
    .line 311
    move-object v0, p0

    move v1, p1

    move v4, v1

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    move-object v5, v0

    iget v5, v5, Lokhttp3/internal/tls/DistinguishedNameParser;->length:I

    if-lt v4, v5, :cond_0

    .line 312
    new-instance v4, Ljava/lang/IllegalStateException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Malformed DN: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v0

    iget-object v7, v7, Lokhttp3/internal/tls/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 317
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lokhttp3/internal/tls/DistinguishedNameParser;->chars:[C

    move v5, v1

    aget-char v4, v4, v5

    move v2, v4

    .line 318
    move v4, v2

    const/16 v5, 0x30

    if-lt v4, v5, :cond_1

    move v4, v2

    const/16 v5, 0x39

    if-gt v4, v5, :cond_1

    .line 319
    move v4, v2

    const/16 v5, 0x30

    add-int/lit8 v4, v4, -0x30

    move v2, v4

    .line 328
    :goto_0
    move-object v4, v0

    iget-object v4, v4, Lokhttp3/internal/tls/DistinguishedNameParser;->chars:[C

    move v5, v1

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    aget-char v4, v4, v5

    move v3, v4

    .line 329
    move v4, v3

    const/16 v5, 0x30

    if-lt v4, v5, :cond_4

    move v4, v3

    const/16 v5, 0x39

    if-gt v4, v5, :cond_4

    .line 330
    move v4, v3

    const/16 v5, 0x30

    add-int/lit8 v4, v4, -0x30

    move v3, v4

    .line 339
    :goto_1
    move v4, v2

    const/4 v5, 0x4

    shl-int/lit8 v4, v4, 0x4

    move v5, v3

    add-int/2addr v4, v5

    move v0, v4

    return v0

    .line 320
    :cond_1
    move v4, v2

    const/16 v5, 0x61

    if-lt v4, v5, :cond_2

    move v4, v2

    const/16 v5, 0x66

    if-gt v4, v5, :cond_2

    .line 321
    move v4, v2

    const/16 v5, 0x57

    add-int/lit8 v4, v4, -0x57

    move v2, v4

    goto :goto_0

    .line 322
    :cond_2
    move v4, v2

    const/16 v5, 0x41

    if-lt v4, v5, :cond_3

    move v4, v2

    const/16 v5, 0x46

    if-gt v4, v5, :cond_3

    .line 323
    move v4, v2

    const/16 v5, 0x37

    add-int/lit8 v4, v4, -0x37

    move v2, v4

    goto :goto_0

    .line 325
    :cond_3
    new-instance v4, Ljava/lang/IllegalStateException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Malformed DN: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v0

    iget-object v7, v7, Lokhttp3/internal/tls/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 331
    :cond_4
    move v4, v3

    const/16 v5, 0x61

    if-lt v4, v5, :cond_5

    move v4, v3

    const/16 v5, 0x66

    if-gt v4, v5, :cond_5

    .line 332
    move v4, v3

    const/16 v5, 0x57

    add-int/lit8 v4, v4, -0x57

    move v3, v4

    goto :goto_1

    .line 333
    :cond_5
    move v4, v3

    const/16 v5, 0x41

    if-lt v4, v5, :cond_6

    move v4, v3

    const/16 v5, 0x46

    if-gt v4, v5, :cond_6

    .line 334
    move v4, v3

    const/16 v5, 0x37

    add-int/lit8 v4, v4, -0x37

    move v3, v4

    goto :goto_1

    .line 336
    :cond_6
    new-instance v4, Ljava/lang/IllegalStateException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Malformed DN: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v0

    iget-object v7, v7, Lokhttp3/internal/tls/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private getEscaped()C
    .locals 6

    .prologue
    .line 232
    move-object v0, p0

    move-object v1, v0

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    iget v2, v2, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    .line 233
    move-object v1, v0

    iget v1, v1, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    move-object v2, v0

    iget v2, v2, Lokhttp3/internal/tls/DistinguishedNameParser;->length:I

    if-ne v1, v2, :cond_0

    .line 234
    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected end of DN: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lokhttp3/internal/tls/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 237
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lokhttp3/internal/tls/DistinguishedNameParser;->chars:[C

    move-object v2, v0

    iget v2, v2, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    aget-char v1, v1, v2

    sparse-switch v1, :sswitch_data_0

    .line 256
    move-object v1, v0

    invoke-direct {v1}, Lokhttp3/internal/tls/DistinguishedNameParser;->getUTF8()C

    move-result v1

    move v0, v1

    :goto_0
    return v0

    .line 252
    :sswitch_0
    move-object v1, v0

    iget-object v1, v1, Lokhttp3/internal/tls/DistinguishedNameParser;->chars:[C

    move-object v2, v0

    iget v2, v2, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    aget-char v1, v1, v2

    move v0, v1

    goto :goto_0

    .line 237
    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_0
        0x22 -> :sswitch_0
        0x23 -> :sswitch_0
        0x25 -> :sswitch_0
        0x2a -> :sswitch_0
        0x2b -> :sswitch_0
        0x2c -> :sswitch_0
        0x3b -> :sswitch_0
        0x3c -> :sswitch_0
        0x3d -> :sswitch_0
        0x3e -> :sswitch_0
        0x5c -> :sswitch_0
        0x5f -> :sswitch_0
    .end sparse-switch
.end method

.method private getUTF8()C
    .locals 9

    .prologue
    .line 263
    move-object v0, p0

    move-object v5, v0

    move-object v6, v0

    iget v6, v6, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    invoke-direct {v5, v6}, Lokhttp3/internal/tls/DistinguishedNameParser;->getByte(I)I

    move-result v5

    move v1, v5

    .line 264
    move-object v5, v0

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    iget v6, v6, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    .line 266
    move v5, v1

    const/16 v6, 0x80

    if-ge v5, v6, :cond_0

    .line 267
    move v5, v1

    int-to-char v5, v5

    move v0, v5

    .line 300
    :goto_0
    return v0

    .line 268
    :cond_0
    move v5, v1

    const/16 v6, 0xc0

    if-lt v5, v6, :cond_7

    move v5, v1

    const/16 v6, 0xf7

    if-gt v5, v6, :cond_7

    .line 271
    move v5, v1

    const/16 v6, 0xdf

    if-gt v5, v6, :cond_2

    .line 272
    const/4 v5, 0x1

    move v2, v5

    .line 273
    move v5, v1

    const/16 v6, 0x1f

    and-int/lit8 v5, v5, 0x1f

    move v1, v5

    .line 283
    :goto_1
    const/4 v5, 0x0

    move v4, v5

    :goto_2
    move v5, v4

    move v6, v2

    if-ge v5, v6, :cond_6

    .line 284
    move-object v5, v0

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    iget v6, v6, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    .line 285
    move-object v5, v0

    iget v5, v5, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    move-object v6, v0

    iget v6, v6, Lokhttp3/internal/tls/DistinguishedNameParser;->length:I

    if-eq v5, v6, :cond_1

    move-object v5, v0

    iget-object v5, v5, Lokhttp3/internal/tls/DistinguishedNameParser;->chars:[C

    move-object v6, v0

    iget v6, v6, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    aget-char v5, v5, v6

    const/16 v6, 0x5c

    if-eq v5, v6, :cond_4

    .line 286
    :cond_1
    const/16 v5, 0x3f

    move v0, v5

    goto :goto_0

    .line 274
    :cond_2
    move v5, v1

    const/16 v6, 0xef

    if-gt v5, v6, :cond_3

    .line 275
    const/4 v5, 0x2

    move v2, v5

    .line 276
    move v5, v1

    const/16 v6, 0xf

    and-int/lit8 v5, v5, 0xf

    move v1, v5

    goto :goto_1

    .line 278
    :cond_3
    const/4 v5, 0x3

    move v2, v5

    .line 279
    move v5, v1

    const/4 v6, 0x7

    and-int/lit8 v5, v5, 0x7

    move v1, v5

    goto :goto_1

    .line 288
    :cond_4
    move-object v5, v0

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    iget v6, v6, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    .line 290
    move-object v5, v0

    move-object v6, v0

    iget v6, v6, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    invoke-direct {v5, v6}, Lokhttp3/internal/tls/DistinguishedNameParser;->getByte(I)I

    move-result v5

    move v3, v5

    .line 291
    move-object v5, v0

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    iget v6, v6, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    .line 292
    move v5, v3

    const/16 v6, 0xc0

    and-int/lit16 v5, v5, 0xc0

    const/16 v6, 0x80

    if-eq v5, v6, :cond_5

    .line 293
    const/16 v5, 0x3f

    move v0, v5

    goto/16 :goto_0

    .line 296
    :cond_5
    move v5, v1

    const/4 v6, 0x6

    shl-int/lit8 v5, v5, 0x6

    move v6, v3

    const/16 v7, 0x3f

    and-int/lit8 v6, v6, 0x3f

    add-int/2addr v5, v6

    move v1, v5

    .line 283
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 298
    :cond_6
    move v5, v1

    int-to-char v5, v5

    move v0, v5

    goto/16 :goto_0

    .line 300
    :cond_7
    const/16 v5, 0x3f

    move v0, v5

    goto/16 :goto_0
.end method

.method private hexAV()Ljava/lang/String;
    .locals 12

    .prologue
    .line 137
    move-object v0, p0

    move-object v5, v0

    iget v5, v5, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    const/4 v6, 0x4

    add-int/lit8 v5, v5, 0x4

    move-object v6, v0

    iget v6, v6, Lokhttp3/internal/tls/DistinguishedNameParser;->length:I

    if-lt v5, v6, :cond_0

    .line 139
    new-instance v5, Ljava/lang/IllegalStateException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unexpected end of DN: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v0

    iget-object v8, v8, Lokhttp3/internal/tls/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 142
    :cond_0
    move-object v5, v0

    move-object v6, v0

    iget v6, v6, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    iput v6, v5, Lokhttp3/internal/tls/DistinguishedNameParser;->beg:I

    .line 143
    move-object v5, v0

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    iget v6, v6, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    .line 148
    :goto_0
    move-object v5, v0

    iget v5, v5, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    move-object v6, v0

    iget v6, v6, Lokhttp3/internal/tls/DistinguishedNameParser;->length:I

    if-eq v5, v6, :cond_1

    move-object v5, v0

    iget-object v5, v5, Lokhttp3/internal/tls/DistinguishedNameParser;->chars:[C

    move-object v6, v0

    iget v6, v6, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    aget-char v5, v5, v6

    const/16 v6, 0x2b

    if-eq v5, v6, :cond_1

    move-object v5, v0

    iget-object v5, v5, Lokhttp3/internal/tls/DistinguishedNameParser;->chars:[C

    move-object v6, v0

    iget v6, v6, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    aget-char v5, v5, v6

    const/16 v6, 0x2c

    if-eq v5, v6, :cond_1

    move-object v5, v0

    iget-object v5, v5, Lokhttp3/internal/tls/DistinguishedNameParser;->chars:[C

    move-object v6, v0

    iget v6, v6, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    aget-char v5, v5, v6

    const/16 v6, 0x3b

    if-ne v5, v6, :cond_4

    .line 150
    :cond_1
    move-object v5, v0

    move-object v6, v0

    iget v6, v6, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    iput v6, v5, Lokhttp3/internal/tls/DistinguishedNameParser;->end:I

    .line 171
    :cond_2
    move-object v5, v0

    iget v5, v5, Lokhttp3/internal/tls/DistinguishedNameParser;->end:I

    move-object v6, v0

    iget v6, v6, Lokhttp3/internal/tls/DistinguishedNameParser;->beg:I

    sub-int/2addr v5, v6

    move v1, v5

    .line 172
    move v5, v1

    const/4 v6, 0x5

    if-lt v5, v6, :cond_3

    move v5, v1

    const/4 v6, 0x1

    and-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_7

    .line 173
    :cond_3
    new-instance v5, Ljava/lang/IllegalStateException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unexpected end of DN: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v0

    iget-object v8, v8, Lokhttp3/internal/tls/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 154
    :cond_4
    move-object v5, v0

    iget-object v5, v5, Lokhttp3/internal/tls/DistinguishedNameParser;->chars:[C

    move-object v6, v0

    iget v6, v6, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    aget-char v5, v5, v6

    const/16 v6, 0x20

    if-ne v5, v6, :cond_5

    .line 155
    move-object v5, v0

    move-object v6, v0

    iget v6, v6, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    iput v6, v5, Lokhttp3/internal/tls/DistinguishedNameParser;->end:I

    .line 156
    move-object v5, v0

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    iget v6, v6, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    .line 159
    :goto_1
    move-object v5, v0

    iget v5, v5, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    move-object v6, v0

    iget v6, v6, Lokhttp3/internal/tls/DistinguishedNameParser;->length:I

    if-ge v5, v6, :cond_2

    move-object v5, v0

    iget-object v5, v5, Lokhttp3/internal/tls/DistinguishedNameParser;->chars:[C

    move-object v6, v0

    iget v6, v6, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    aget-char v5, v5, v6

    const/16 v6, 0x20

    if-ne v5, v6, :cond_2

    move-object v5, v0

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    iget v6, v6, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    goto :goto_1

    .line 162
    :cond_5
    move-object v5, v0

    iget-object v5, v5, Lokhttp3/internal/tls/DistinguishedNameParser;->chars:[C

    move-object v6, v0

    iget v6, v6, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    aget-char v5, v5, v6

    const/16 v6, 0x41

    if-lt v5, v6, :cond_6

    move-object v5, v0

    iget-object v5, v5, Lokhttp3/internal/tls/DistinguishedNameParser;->chars:[C

    move-object v6, v0

    iget v6, v6, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    aget-char v5, v5, v6

    const/16 v6, 0x46

    if-gt v5, v6, :cond_6

    .line 163
    move-object v5, v0

    iget-object v5, v5, Lokhttp3/internal/tls/DistinguishedNameParser;->chars:[C

    move-object v6, v0

    iget v6, v6, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    move-object v10, v5

    move v11, v6

    move-object v5, v10

    move v6, v11

    move-object v7, v10

    move v8, v11

    aget-char v7, v7, v8

    const/16 v8, 0x20

    add-int/lit8 v7, v7, 0x20

    int-to-char v7, v7

    aput-char v7, v5, v6

    .line 166
    :cond_6
    move-object v5, v0

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    iget v6, v6, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    goto/16 :goto_0

    .line 177
    :cond_7
    move v5, v1

    const/4 v6, 0x2

    div-int/lit8 v5, v5, 0x2

    new-array v5, v5, [B

    move-object v2, v5

    .line 178
    const/4 v5, 0x0

    move v3, v5

    move-object v5, v0

    iget v5, v5, Lokhttp3/internal/tls/DistinguishedNameParser;->beg:I

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    move v4, v5

    :goto_2
    move v5, v3

    move-object v6, v2

    array-length v6, v6

    if-ge v5, v6, :cond_8

    .line 179
    move-object v5, v2

    move v6, v3

    move-object v7, v0

    move v8, v4

    invoke-direct {v7, v8}, Lokhttp3/internal/tls/DistinguishedNameParser;->getByte(I)I

    move-result v7

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 178
    add-int/lit8 v4, v4, 0x2

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 182
    :cond_8
    new-instance v5, Ljava/lang/String;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    iget-object v7, v7, Lokhttp3/internal/tls/DistinguishedNameParser;->chars:[C

    move-object v8, v0

    iget v8, v8, Lokhttp3/internal/tls/DistinguishedNameParser;->beg:I

    move v9, v1

    invoke-direct {v6, v7, v8, v9}, Ljava/lang/String;-><init>([CII)V

    move-object v0, v5

    return-object v0
.end method

.method private nextAT()Ljava/lang/String;
    .locals 8

    .prologue
    .line 50
    move-object v0, p0

    :goto_0
    move-object v1, v0

    iget v1, v1, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    move-object v2, v0

    iget v2, v2, Lokhttp3/internal/tls/DistinguishedNameParser;->length:I

    if-ge v1, v2, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/internal/tls/DistinguishedNameParser;->chars:[C

    move-object v2, v0

    iget v2, v2, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    aget-char v1, v1, v2

    const/16 v2, 0x20

    if-ne v1, v2, :cond_0

    move-object v1, v0

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    iget v2, v2, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    goto :goto_0

    .line 52
    :cond_0
    move-object v1, v0

    iget v1, v1, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    move-object v2, v0

    iget v2, v2, Lokhttp3/internal/tls/DistinguishedNameParser;->length:I

    if-ne v1, v2, :cond_1

    .line 53
    const/4 v1, 0x0

    move-object v0, v1

    .line 99
    :goto_1
    return-object v0

    .line 57
    :cond_1
    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    iput v2, v1, Lokhttp3/internal/tls/DistinguishedNameParser;->beg:I

    .line 60
    move-object v1, v0

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    iget v2, v2, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    .line 61
    :goto_2
    move-object v1, v0

    iget v1, v1, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    move-object v2, v0

    iget v2, v2, Lokhttp3/internal/tls/DistinguishedNameParser;->length:I

    if-ge v1, v2, :cond_2

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/internal/tls/DistinguishedNameParser;->chars:[C

    move-object v2, v0

    iget v2, v2, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    aget-char v1, v1, v2

    const/16 v2, 0x3d

    if-eq v1, v2, :cond_2

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/internal/tls/DistinguishedNameParser;->chars:[C

    move-object v2, v0

    iget v2, v2, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    aget-char v1, v1, v2

    const/16 v2, 0x20

    if-eq v1, v2, :cond_2

    move-object v1, v0

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    iget v2, v2, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    goto :goto_2

    .line 65
    :cond_2
    move-object v1, v0

    iget v1, v1, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    move-object v2, v0

    iget v2, v2, Lokhttp3/internal/tls/DistinguishedNameParser;->length:I

    if-lt v1, v2, :cond_3

    .line 66
    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected end of DN: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lokhttp3/internal/tls/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 70
    :cond_3
    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    iput v2, v1, Lokhttp3/internal/tls/DistinguishedNameParser;->end:I

    .line 74
    move-object v1, v0

    iget-object v1, v1, Lokhttp3/internal/tls/DistinguishedNameParser;->chars:[C

    move-object v2, v0

    iget v2, v2, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    aget-char v1, v1, v2

    const/16 v2, 0x20

    if-ne v1, v2, :cond_6

    .line 75
    :goto_3
    move-object v1, v0

    iget v1, v1, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    move-object v2, v0

    iget v2, v2, Lokhttp3/internal/tls/DistinguishedNameParser;->length:I

    if-ge v1, v2, :cond_4

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/internal/tls/DistinguishedNameParser;->chars:[C

    move-object v2, v0

    iget v2, v2, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    aget-char v1, v1, v2

    const/16 v2, 0x3d

    if-eq v1, v2, :cond_4

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/internal/tls/DistinguishedNameParser;->chars:[C

    move-object v2, v0

    iget v2, v2, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    aget-char v1, v1, v2

    const/16 v2, 0x20

    if-ne v1, v2, :cond_4

    move-object v1, v0

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    iget v2, v2, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    goto :goto_3

    .line 78
    :cond_4
    move-object v1, v0

    iget-object v1, v1, Lokhttp3/internal/tls/DistinguishedNameParser;->chars:[C

    move-object v2, v0

    iget v2, v2, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    aget-char v1, v1, v2

    const/16 v2, 0x3d

    if-ne v1, v2, :cond_5

    move-object v1, v0

    iget v1, v1, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    move-object v2, v0

    iget v2, v2, Lokhttp3/internal/tls/DistinguishedNameParser;->length:I

    if-ne v1, v2, :cond_6

    .line 79
    :cond_5
    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected end of DN: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lokhttp3/internal/tls/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 83
    :cond_6
    move-object v1, v0

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    iget v2, v2, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    .line 87
    :goto_4
    move-object v1, v0

    iget v1, v1, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    move-object v2, v0

    iget v2, v2, Lokhttp3/internal/tls/DistinguishedNameParser;->length:I

    if-ge v1, v2, :cond_7

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/internal/tls/DistinguishedNameParser;->chars:[C

    move-object v2, v0

    iget v2, v2, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    aget-char v1, v1, v2

    const/16 v2, 0x20

    if-ne v1, v2, :cond_7

    move-object v1, v0

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    iget v2, v2, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    goto :goto_4

    .line 92
    :cond_7
    move-object v1, v0

    iget v1, v1, Lokhttp3/internal/tls/DistinguishedNameParser;->end:I

    move-object v2, v0

    iget v2, v2, Lokhttp3/internal/tls/DistinguishedNameParser;->beg:I

    sub-int/2addr v1, v2

    const/4 v2, 0x4

    if-le v1, v2, :cond_b

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/internal/tls/DistinguishedNameParser;->chars:[C

    move-object v2, v0

    iget v2, v2, Lokhttp3/internal/tls/DistinguishedNameParser;->beg:I

    const/4 v3, 0x3

    add-int/lit8 v2, v2, 0x3

    aget-char v1, v1, v2

    const/16 v2, 0x2e

    if-ne v1, v2, :cond_b

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/internal/tls/DistinguishedNameParser;->chars:[C

    move-object v2, v0

    iget v2, v2, Lokhttp3/internal/tls/DistinguishedNameParser;->beg:I

    aget-char v1, v1, v2

    const/16 v2, 0x4f

    if-eq v1, v2, :cond_8

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/internal/tls/DistinguishedNameParser;->chars:[C

    move-object v2, v0

    iget v2, v2, Lokhttp3/internal/tls/DistinguishedNameParser;->beg:I

    aget-char v1, v1, v2

    const/16 v2, 0x6f

    if-ne v1, v2, :cond_b

    :cond_8
    move-object v1, v0

    iget-object v1, v1, Lokhttp3/internal/tls/DistinguishedNameParser;->chars:[C

    move-object v2, v0

    iget v2, v2, Lokhttp3/internal/tls/DistinguishedNameParser;->beg:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, 0x1

    aget-char v1, v1, v2

    const/16 v2, 0x49

    if-eq v1, v2, :cond_9

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/internal/tls/DistinguishedNameParser;->chars:[C

    move-object v2, v0

    iget v2, v2, Lokhttp3/internal/tls/DistinguishedNameParser;->beg:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, 0x1

    aget-char v1, v1, v2

    const/16 v2, 0x69

    if-ne v1, v2, :cond_b

    :cond_9
    move-object v1, v0

    iget-object v1, v1, Lokhttp3/internal/tls/DistinguishedNameParser;->chars:[C

    move-object v2, v0

    iget v2, v2, Lokhttp3/internal/tls/DistinguishedNameParser;->beg:I

    const/4 v3, 0x2

    add-int/lit8 v2, v2, 0x2

    aget-char v1, v1, v2

    const/16 v2, 0x44

    if-eq v1, v2, :cond_a

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/internal/tls/DistinguishedNameParser;->chars:[C

    move-object v2, v0

    iget v2, v2, Lokhttp3/internal/tls/DistinguishedNameParser;->beg:I

    const/4 v3, 0x2

    add-int/lit8 v2, v2, 0x2

    aget-char v1, v1, v2

    const/16 v2, 0x64

    if-ne v1, v2, :cond_b

    .line 96
    :cond_a
    move-object v1, v0

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    iget v2, v2, Lokhttp3/internal/tls/DistinguishedNameParser;->beg:I

    const/4 v3, 0x4

    add-int/lit8 v2, v2, 0x4

    iput v2, v1, Lokhttp3/internal/tls/DistinguishedNameParser;->beg:I

    .line 99
    :cond_b
    new-instance v1, Ljava/lang/String;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    move-object v3, v0

    iget-object v3, v3, Lokhttp3/internal/tls/DistinguishedNameParser;->chars:[C

    move-object v4, v0

    iget v4, v4, Lokhttp3/internal/tls/DistinguishedNameParser;->beg:I

    move-object v5, v0

    iget v5, v5, Lokhttp3/internal/tls/DistinguishedNameParser;->end:I

    move-object v6, v0

    iget v6, v6, Lokhttp3/internal/tls/DistinguishedNameParser;->beg:I

    sub-int/2addr v5, v6

    invoke-direct {v2, v3, v4, v5}, Ljava/lang/String;-><init>([CII)V

    move-object v0, v1

    goto/16 :goto_1
.end method

.method private quotedAV()Ljava/lang/String;
    .locals 8

    .prologue
    .line 104
    move-object v0, p0

    move-object v1, v0

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    iget v2, v2, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    .line 105
    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    iput v2, v1, Lokhttp3/internal/tls/DistinguishedNameParser;->beg:I

    .line 106
    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Lokhttp3/internal/tls/DistinguishedNameParser;->beg:I

    iput v2, v1, Lokhttp3/internal/tls/DistinguishedNameParser;->end:I

    .line 109
    :goto_0
    move-object v1, v0

    iget v1, v1, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    move-object v2, v0

    iget v2, v2, Lokhttp3/internal/tls/DistinguishedNameParser;->length:I

    if-ne v1, v2, :cond_0

    .line 110
    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected end of DN: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lokhttp3/internal/tls/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 113
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lokhttp3/internal/tls/DistinguishedNameParser;->chars:[C

    move-object v2, v0

    iget v2, v2, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    aget-char v1, v1, v2

    const/16 v2, 0x22

    if-ne v1, v2, :cond_1

    .line 115
    move-object v1, v0

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    iget v2, v2, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    .line 129
    :goto_1
    move-object v1, v0

    iget v1, v1, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    move-object v2, v0

    iget v2, v2, Lokhttp3/internal/tls/DistinguishedNameParser;->length:I

    if-ge v1, v2, :cond_3

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/internal/tls/DistinguishedNameParser;->chars:[C

    move-object v2, v0

    iget v2, v2, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    aget-char v1, v1, v2

    const/16 v2, 0x20

    if-ne v1, v2, :cond_3

    move-object v1, v0

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    iget v2, v2, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    goto :goto_1

    .line 117
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Lokhttp3/internal/tls/DistinguishedNameParser;->chars:[C

    move-object v2, v0

    iget v2, v2, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    aget-char v1, v1, v2

    const/16 v2, 0x5c

    if-ne v1, v2, :cond_2

    .line 118
    move-object v1, v0

    iget-object v1, v1, Lokhttp3/internal/tls/DistinguishedNameParser;->chars:[C

    move-object v2, v0

    iget v2, v2, Lokhttp3/internal/tls/DistinguishedNameParser;->end:I

    move-object v3, v0

    invoke-direct {v3}, Lokhttp3/internal/tls/DistinguishedNameParser;->getEscaped()C

    move-result v3

    aput-char v3, v1, v2

    .line 123
    :goto_2
    move-object v1, v0

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    iget v2, v2, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    .line 124
    move-object v1, v0

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    iget v2, v2, Lokhttp3/internal/tls/DistinguishedNameParser;->end:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lokhttp3/internal/tls/DistinguishedNameParser;->end:I

    goto/16 :goto_0

    .line 121
    :cond_2
    move-object v1, v0

    iget-object v1, v1, Lokhttp3/internal/tls/DistinguishedNameParser;->chars:[C

    move-object v2, v0

    iget v2, v2, Lokhttp3/internal/tls/DistinguishedNameParser;->end:I

    move-object v3, v0

    iget-object v3, v3, Lokhttp3/internal/tls/DistinguishedNameParser;->chars:[C

    move-object v4, v0

    iget v4, v4, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    aget-char v3, v3, v4

    aput-char v3, v1, v2

    goto :goto_2

    .line 132
    :cond_3
    new-instance v1, Ljava/lang/String;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    move-object v3, v0

    iget-object v3, v3, Lokhttp3/internal/tls/DistinguishedNameParser;->chars:[C

    move-object v4, v0

    iget v4, v4, Lokhttp3/internal/tls/DistinguishedNameParser;->beg:I

    move-object v5, v0

    iget v5, v5, Lokhttp3/internal/tls/DistinguishedNameParser;->end:I

    move-object v6, v0

    iget v6, v6, Lokhttp3/internal/tls/DistinguishedNameParser;->beg:I

    sub-int/2addr v5, v6

    invoke-direct {v2, v3, v4, v5}, Ljava/lang/String;-><init>([CII)V

    move-object v0, v1

    return-object v0
.end method


# virtual methods
.method public findMostSpecific(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .prologue
    .line 350
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    .line 351
    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Lokhttp3/internal/tls/DistinguishedNameParser;->beg:I

    .line 352
    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Lokhttp3/internal/tls/DistinguishedNameParser;->end:I

    .line 353
    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Lokhttp3/internal/tls/DistinguishedNameParser;->cur:I

    .line 354
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lokhttp3/internal/tls/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    iput-object v5, v4, Lokhttp3/internal/tls/DistinguishedNameParser;->chars:[C

    .line 356
    move-object v4, v0

    invoke-direct {v4}, Lokhttp3/internal/tls/DistinguishedNameParser;->nextAT()Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 357
    move-object v4, v2

    if-nez v4, :cond_0

    .line 358
    const/4 v4, 0x0

    move-object v0, v4

    .line 391
    :goto_0
    return-object v0

    .line 361
    :cond_0
    const-string v4, ""

    move-object v3, v4

    .line 363
    move-object v4, v0

    iget v4, v4, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    move-object v5, v0

    iget v5, v5, Lokhttp3/internal/tls/DistinguishedNameParser;->length:I

    if-ne v4, v5, :cond_1

    .line 364
    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_0

    .line 367
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Lokhttp3/internal/tls/DistinguishedNameParser;->chars:[C

    move-object v5, v0

    iget v5, v5, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    aget-char v4, v4, v5

    sparse-switch v4, :sswitch_data_0

    .line 380
    move-object v4, v0

    invoke-direct {v4}, Lokhttp3/internal/tls/DistinguishedNameParser;->escapedAV()Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 386
    :goto_1
    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 387
    move-object v4, v3

    move-object v0, v4

    goto :goto_0

    .line 369
    :sswitch_0
    move-object v4, v0

    invoke-direct {v4}, Lokhttp3/internal/tls/DistinguishedNameParser;->quotedAV()Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 370
    goto :goto_1

    .line 372
    :sswitch_1
    move-object v4, v0

    invoke-direct {v4}, Lokhttp3/internal/tls/DistinguishedNameParser;->hexAV()Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 373
    goto :goto_1

    .line 378
    :sswitch_2
    goto :goto_1

    .line 390
    :cond_2
    move-object v4, v0

    iget v4, v4, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    move-object v5, v0

    iget v5, v5, Lokhttp3/internal/tls/DistinguishedNameParser;->length:I

    if-lt v4, v5, :cond_3

    .line 391
    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_0

    .line 394
    :cond_3
    move-object v4, v0

    iget-object v4, v4, Lokhttp3/internal/tls/DistinguishedNameParser;->chars:[C

    move-object v5, v0

    iget v5, v5, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    aget-char v4, v4, v5

    const/16 v5, 0x2c

    if-eq v4, v5, :cond_4

    move-object v4, v0

    iget-object v4, v4, Lokhttp3/internal/tls/DistinguishedNameParser;->chars:[C

    move-object v5, v0

    iget v5, v5, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    aget-char v4, v4, v5

    const/16 v5, 0x3b

    if-ne v4, v5, :cond_5

    .line 399
    :cond_4
    move-object v4, v0

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    iget v5, v5, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    .line 400
    move-object v4, v0

    invoke-direct {v4}, Lokhttp3/internal/tls/DistinguishedNameParser;->nextAT()Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 401
    move-object v4, v2

    if-nez v4, :cond_0

    .line 402
    new-instance v4, Ljava/lang/IllegalStateException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Malformed DN: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v0

    iget-object v7, v7, Lokhttp3/internal/tls/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 395
    :cond_5
    move-object v4, v0

    iget-object v4, v4, Lokhttp3/internal/tls/DistinguishedNameParser;->chars:[C

    move-object v5, v0

    iget v5, v5, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    aget-char v4, v4, v5

    const/16 v5, 0x2b

    if-eq v4, v5, :cond_4

    .line 396
    new-instance v4, Ljava/lang/IllegalStateException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Malformed DN: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v0

    iget-object v7, v7, Lokhttp3/internal/tls/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 367
    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_0
        0x23 -> :sswitch_1
        0x2b -> :sswitch_2
        0x2c -> :sswitch_2
        0x3b -> :sswitch_2
    .end sparse-switch
.end method
