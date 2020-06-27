.class public final Lokio/HashingSource;
.super Lokio/ForwardingSource;
.source "HashingSource.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokio/HashingSource$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 \u00162\u00020\u0001:\u0001\u0016B\u0017\u0008\u0010\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006B\u001f\u0008\u0010\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\tJ\r\u0010\n\u001a\u00020\u0008H\u0007\u00a2\u0006\u0002\u0008\u0010J\u0018\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0012H\u0016R\u0011\u0010\n\u001a\u00020\u00088G\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000bR\u0010\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lokio/HashingSource;",
        "Lokio/ForwardingSource;",
        "source",
        "Lokio/Source;",
        "algorithm",
        "",
        "(Lokio/Source;Ljava/lang/String;)V",
        "key",
        "Lokio/ByteString;",
        "(Lokio/Source;Lokio/ByteString;Ljava/lang/String;)V",
        "hash",
        "()Lokio/ByteString;",
        "mac",
        "Ljavax/crypto/Mac;",
        "messageDigest",
        "Ljava/security/MessageDigest;",
        "-deprecated_hash",
        "read",
        "",
        "sink",
        "Lokio/Buffer;",
        "byteCount",
        "Companion",
        "okio"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final Companion:Lokio/HashingSource$Companion;


# instance fields
.field private final mac:Ljavax/crypto/Mac;

.field private final messageDigest:Ljava/security/MessageDigest;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lokio/HashingSource$Companion;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lokio/HashingSource$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lokio/HashingSource;->Companion:Lokio/HashingSource$Companion;

    return-void
.end method

.method public constructor <init>(Lokio/Source;Ljava/lang/String;)V
    .locals 5
    .param p1    # Lokio/Source;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v1

    const-string v4, "source"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v2

    const-string v4, "algorithm"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lokio/ForwardingSource;-><init>(Lokio/Source;)V

    .line 46
    move-object v3, v0

    move-object v4, v2

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    iput-object v4, v3, Lokio/HashingSource;->messageDigest:Ljava/security/MessageDigest;

    .line 47
    move-object v3, v0

    const/4 v4, 0x0

    check-cast v4, Ljavax/crypto/Mac;

    iput-object v4, v3, Lokio/HashingSource;->mac:Ljavax/crypto/Mac;

    return-void
.end method

.method public constructor <init>(Lokio/Source;Lokio/ByteString;Ljava/lang/String;)V
    .locals 17
    .param p1    # Lokio/Source;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lokio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object v11, v1

    const-string v12, "source"

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v11, v2

    const-string v12, "key"

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v11, v3

    const-string v12, "algorithm"

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    move-object v11, v0

    move-object v12, v1

    invoke-direct {v11, v12}, Lokio/ForwardingSource;-><init>(Lokio/Source;)V

    .line 51
    nop

    .line 52
    move-object v11, v0

    move-object v12, v3

    :try_start_0
    invoke-static {v12}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v12

    move-object v4, v12

    move-object v9, v11

    const/4 v11, 0x0

    move v5, v11

    const/4 v11, 0x0

    move v6, v11

    move-object v11, v4

    move-object v7, v11

    const/4 v11, 0x0

    move v8, v11

    .line 53
    move-object v11, v7

    new-instance v12, Ljavax/crypto/spec/SecretKeySpec;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    move-object v14, v2

    invoke-virtual {v14}, Lokio/ByteString;->toByteArray()[B

    move-result-object v14

    move-object v15, v3

    invoke-direct {v13, v14, v15}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    check-cast v12, Ljava/security/Key;

    invoke-virtual {v11, v12}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 54
    nop

    .line 52
    move-object v11, v4

    move-object v10, v11

    move-object v11, v9

    move-object v12, v10

    iput-object v12, v11, Lokio/HashingSource;->mac:Ljavax/crypto/Mac;

    .line 55
    move-object v11, v0

    const/4 v12, 0x0

    check-cast v12, Ljava/security/MessageDigest;

    iput-object v12, v11, Lokio/HashingSource;->messageDigest:Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    return-void

    .line 56
    :catch_0
    move-exception v11

    move-object v4, v11

    .line 57
    new-instance v11, Ljava/lang/IllegalArgumentException;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    move-object v13, v4

    check-cast v13, Ljava/lang/Throwable;

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    check-cast v11, Ljava/lang/Throwable;

    throw v11
.end method

.method public static final hmacSha1(Lokio/Source;Lokio/ByteString;)Lokio/HashingSource;
    .locals 5
    .param p0    # Lokio/Source;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lokio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object v0, p0

    move-object v1, p1

    sget-object v2, Lokio/HashingSource;->Companion:Lokio/HashingSource$Companion;

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lokio/HashingSource$Companion;->hmacSha1(Lokio/Source;Lokio/ByteString;)Lokio/HashingSource;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public static final hmacSha256(Lokio/Source;Lokio/ByteString;)Lokio/HashingSource;
    .locals 5
    .param p0    # Lokio/Source;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lokio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object v0, p0

    move-object v1, p1

    sget-object v2, Lokio/HashingSource;->Companion:Lokio/HashingSource$Companion;

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lokio/HashingSource$Companion;->hmacSha256(Lokio/Source;Lokio/ByteString;)Lokio/HashingSource;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public static final hmacSha512(Lokio/Source;Lokio/ByteString;)Lokio/HashingSource;
    .locals 5
    .param p0    # Lokio/Source;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lokio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object v0, p0

    move-object v1, p1

    sget-object v2, Lokio/HashingSource;->Companion:Lokio/HashingSource$Companion;

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lokio/HashingSource$Companion;->hmacSha512(Lokio/Source;Lokio/ByteString;)Lokio/HashingSource;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public static final md5(Lokio/Source;)Lokio/HashingSource;
    .locals 3
    .param p0    # Lokio/Source;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object v0, p0

    sget-object v1, Lokio/HashingSource;->Companion:Lokio/HashingSource$Companion;

    move-object v2, v0

    invoke-virtual {v1, v2}, Lokio/HashingSource$Companion;->md5(Lokio/Source;)Lokio/HashingSource;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static final sha1(Lokio/Source;)Lokio/HashingSource;
    .locals 3
    .param p0    # Lokio/Source;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object v0, p0

    sget-object v1, Lokio/HashingSource;->Companion:Lokio/HashingSource$Companion;

    move-object v2, v0

    invoke-virtual {v1, v2}, Lokio/HashingSource$Companion;->sha1(Lokio/Source;)Lokio/HashingSource;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static final sha256(Lokio/Source;)Lokio/HashingSource;
    .locals 3
    .param p0    # Lokio/Source;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object v0, p0

    sget-object v1, Lokio/HashingSource;->Companion:Lokio/HashingSource$Companion;

    move-object v2, v0

    invoke-virtual {v1, v2}, Lokio/HashingSource$Companion;->sha256(Lokio/Source;)Lokio/HashingSource;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static final sha512(Lokio/Source;)Lokio/HashingSource;
    .locals 3
    .param p0    # Lokio/Source;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object v0, p0

    sget-object v1, Lokio/HashingSource;->Companion:Lokio/HashingSource$Companion;

    move-object v2, v0

    invoke-virtual {v1, v2}, Lokio/HashingSource$Companion;->sha512(Lokio/Source;)Lokio/HashingSource;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method


# virtual methods
.method public final -deprecated_hash()Lokio/ByteString;
    .locals 2
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "moved to val"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "hash"
            imports = {}
        .end subannotation
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
        name = "-deprecated_hash"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 111
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lokio/HashingSource;->hash()Lokio/ByteString;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public final hash()Lokio/ByteString;
    .locals 8
    .annotation build Lkotlin/jvm/JvmName;
        name = "hash"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 102
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lokio/HashingSource;->messageDigest:Ljava/security/MessageDigest;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lokio/HashingSource;->messageDigest:Ljava/security/MessageDigest;

    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    :goto_0
    move-object v1, v2

    .line 103
    new-instance v2, Lokio/ByteString;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v1

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string v6, "result"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lokio/ByteString;-><init>([B)V

    move-object v0, v2

    return-object v0

    .line 102
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lokio/HashingSource;->mac:Ljavax/crypto/Mac;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    if-nez v3, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-virtual {v2}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object v2

    goto :goto_0
.end method

.method public read(Lokio/Buffer;J)J
    .locals 18
    .param p1    # Lokio/Buffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-object v12, v1

    const-string v13, "sink"

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    move-object v12, v0

    move-object v13, v1

    move-wide v14, v2

    invoke-super {v12, v13, v14, v15}, Lokio/ForwardingSource;->read(Lokio/Buffer;J)J

    move-result-wide v12

    move-wide v4, v12

    .line 65
    move-wide v12, v4

    const-wide/16 v14, -0x1

    cmp-long v12, v12, v14

    if-eqz v12, :cond_6

    .line 66
    move-object v12, v1

    invoke-virtual {v12}, Lokio/Buffer;->size()J

    move-result-wide v12

    move-wide v14, v4

    sub-long/2addr v12, v14

    move-wide v6, v12

    .line 69
    move-object v12, v1

    invoke-virtual {v12}, Lokio/Buffer;->size()J

    move-result-wide v12

    move-wide v8, v12

    .line 70
    move-object v12, v1

    iget-object v12, v12, Lokio/Buffer;->head:Lokio/Segment;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    if-nez v13, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    move-object v10, v12

    .line 71
    :goto_0
    move-wide v12, v8

    move-wide v14, v6

    cmp-long v12, v12, v14

    if-lez v12, :cond_2

    .line 72
    move-object v12, v10

    iget-object v12, v12, Lokio/Segment;->prev:Lokio/Segment;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    if-nez v13, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    move-object v10, v12

    .line 73
    move-wide v12, v8

    move-object v14, v10

    iget v14, v14, Lokio/Segment;->limit:I

    move-object v15, v10

    iget v15, v15, Lokio/Segment;->pos:I

    sub-int/2addr v14, v15

    int-to-long v14, v14

    sub-long/2addr v12, v14

    move-wide v8, v12

    .line 71
    goto :goto_0

    .line 77
    :cond_2
    :goto_1
    move-wide v12, v8

    move-object v14, v1

    invoke-virtual {v14}, Lokio/Buffer;->size()J

    move-result-wide v14

    cmp-long v12, v12, v14

    if-gez v12, :cond_6

    .line 78
    move-object v12, v10

    iget v12, v12, Lokio/Segment;->pos:I

    int-to-long v12, v12

    move-wide v14, v6

    add-long/2addr v12, v14

    move-wide v14, v8

    sub-long/2addr v12, v14

    long-to-int v12, v12

    move v11, v12

    .line 79
    move-object v12, v0

    iget-object v12, v12, Lokio/HashingSource;->messageDigest:Ljava/security/MessageDigest;

    if-eqz v12, :cond_4

    .line 80
    move-object v12, v0

    iget-object v12, v12, Lokio/HashingSource;->messageDigest:Ljava/security/MessageDigest;

    move-object v13, v10

    iget-object v13, v13, Lokio/Segment;->data:[B

    move v14, v11

    move-object v15, v10

    iget v15, v15, Lokio/Segment;->limit:I

    move/from16 v16, v11

    sub-int v15, v15, v16

    invoke-virtual {v12, v13, v14, v15}, Ljava/security/MessageDigest;->update([BII)V

    .line 83
    :goto_2
    move-wide v12, v8

    move-object v14, v10

    iget v14, v14, Lokio/Segment;->limit:I

    move-object v15, v10

    iget v15, v15, Lokio/Segment;->pos:I

    sub-int/2addr v14, v15

    int-to-long v14, v14

    add-long/2addr v12, v14

    move-wide v8, v12

    .line 85
    move-wide v12, v8

    move-wide v6, v12

    .line 86
    move-object v12, v10

    iget-object v12, v12, Lokio/Segment;->next:Lokio/Segment;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    if-nez v13, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    move-object v10, v12

    .line 77
    goto :goto_1

    .line 82
    :cond_4
    move-object v12, v0

    iget-object v12, v12, Lokio/HashingSource;->mac:Ljavax/crypto/Mac;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    if-nez v13, :cond_5

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_5
    move-object v13, v10

    iget-object v13, v13, Lokio/Segment;->data:[B

    move v14, v11

    move-object v15, v10

    iget v15, v15, Lokio/Segment;->limit:I

    move/from16 v16, v11

    sub-int v15, v15, v16

    invoke-virtual {v12, v13, v14, v15}, Ljavax/crypto/Mac;->update([BII)V

    goto :goto_2

    .line 90
    :cond_6
    move-wide v12, v4

    move-wide v0, v12

    return-wide v0
.end method
