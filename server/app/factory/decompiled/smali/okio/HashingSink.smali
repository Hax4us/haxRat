.class public final Lokio/HashingSink;
.super Lokio/ForwardingSink;
.source "HashingSink.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokio/HashingSink$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\u0018\u0000 \u00172\u00020\u0001:\u0001\u0017B\u0017\u0008\u0010\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006B\u001f\u0008\u0010\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\tJ\r\u0010\n\u001a\u00020\u0008H\u0007\u00a2\u0006\u0002\u0008\u0010J\u0018\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016H\u0016R\u0011\u0010\n\u001a\u00020\u00088G\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000bR\u0010\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "Lokio/HashingSink;",
        "Lokio/ForwardingSink;",
        "sink",
        "Lokio/Sink;",
        "algorithm",
        "",
        "(Lokio/Sink;Ljava/lang/String;)V",
        "key",
        "Lokio/ByteString;",
        "(Lokio/Sink;Lokio/ByteString;Ljava/lang/String;)V",
        "hash",
        "()Lokio/ByteString;",
        "mac",
        "Ljavax/crypto/Mac;",
        "messageDigest",
        "Ljava/security/MessageDigest;",
        "-deprecated_hash",
        "write",
        "",
        "source",
        "Lokio/Buffer;",
        "byteCount",
        "",
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
.field public static final Companion:Lokio/HashingSink$Companion;


# instance fields
.field private final mac:Ljavax/crypto/Mac;

.field private final messageDigest:Ljava/security/MessageDigest;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lokio/HashingSink$Companion;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lokio/HashingSink$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lokio/HashingSink;->Companion:Lokio/HashingSink$Companion;

    return-void
.end method

.method public constructor <init>(Lokio/Sink;Ljava/lang/String;)V
    .locals 5
    .param p1    # Lokio/Sink;
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

    const-string v4, "sink"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v2

    const-string v4, "algorithm"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lokio/ForwardingSink;-><init>(Lokio/Sink;)V

    .line 45
    move-object v3, v0

    move-object v4, v2

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    iput-object v4, v3, Lokio/HashingSink;->messageDigest:Ljava/security/MessageDigest;

    .line 46
    move-object v3, v0

    const/4 v4, 0x0

    check-cast v4, Ljavax/crypto/Mac;

    iput-object v4, v3, Lokio/HashingSink;->mac:Ljavax/crypto/Mac;

    return-void
.end method

.method public constructor <init>(Lokio/Sink;Lokio/ByteString;Ljava/lang/String;)V
    .locals 17
    .param p1    # Lokio/Sink;
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

    const-string v12, "sink"

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v11, v2

    const-string v12, "key"

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v11, v3

    const-string v12, "algorithm"

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    move-object v11, v0

    move-object v12, v1

    invoke-direct {v11, v12}, Lokio/ForwardingSink;-><init>(Lokio/Sink;)V

    .line 50
    nop

    .line 51
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

    .line 52
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

    .line 53
    nop

    .line 51
    move-object v11, v4

    move-object v10, v11

    move-object v11, v9

    move-object v12, v10

    iput-object v12, v11, Lokio/HashingSink;->mac:Ljavax/crypto/Mac;

    .line 54
    move-object v11, v0

    const/4 v12, 0x0

    check-cast v12, Ljava/security/MessageDigest;

    iput-object v12, v11, Lokio/HashingSink;->messageDigest:Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    return-void

    .line 55
    :catch_0
    move-exception v11

    move-object v4, v11

    .line 56
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

.method public static final hmacSha1(Lokio/Sink;Lokio/ByteString;)Lokio/HashingSink;
    .locals 5
    .param p0    # Lokio/Sink;
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

    sget-object v2, Lokio/HashingSink;->Companion:Lokio/HashingSink$Companion;

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lokio/HashingSink$Companion;->hmacSha1(Lokio/Sink;Lokio/ByteString;)Lokio/HashingSink;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public static final hmacSha256(Lokio/Sink;Lokio/ByteString;)Lokio/HashingSink;
    .locals 5
    .param p0    # Lokio/Sink;
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

    sget-object v2, Lokio/HashingSink;->Companion:Lokio/HashingSink$Companion;

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lokio/HashingSink$Companion;->hmacSha256(Lokio/Sink;Lokio/ByteString;)Lokio/HashingSink;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public static final hmacSha512(Lokio/Sink;Lokio/ByteString;)Lokio/HashingSink;
    .locals 5
    .param p0    # Lokio/Sink;
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

    sget-object v2, Lokio/HashingSink;->Companion:Lokio/HashingSink$Companion;

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lokio/HashingSink$Companion;->hmacSha512(Lokio/Sink;Lokio/ByteString;)Lokio/HashingSink;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public static final md5(Lokio/Sink;)Lokio/HashingSink;
    .locals 3
    .param p0    # Lokio/Sink;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object v0, p0

    sget-object v1, Lokio/HashingSink;->Companion:Lokio/HashingSink$Companion;

    move-object v2, v0

    invoke-virtual {v1, v2}, Lokio/HashingSink$Companion;->md5(Lokio/Sink;)Lokio/HashingSink;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static final sha1(Lokio/Sink;)Lokio/HashingSink;
    .locals 3
    .param p0    # Lokio/Sink;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object v0, p0

    sget-object v1, Lokio/HashingSink;->Companion:Lokio/HashingSink$Companion;

    move-object v2, v0

    invoke-virtual {v1, v2}, Lokio/HashingSink$Companion;->sha1(Lokio/Sink;)Lokio/HashingSink;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static final sha256(Lokio/Sink;)Lokio/HashingSink;
    .locals 3
    .param p0    # Lokio/Sink;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object v0, p0

    sget-object v1, Lokio/HashingSink;->Companion:Lokio/HashingSink$Companion;

    move-object v2, v0

    invoke-virtual {v1, v2}, Lokio/HashingSink$Companion;->sha256(Lokio/Sink;)Lokio/HashingSink;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static final sha512(Lokio/Sink;)Lokio/HashingSink;
    .locals 3
    .param p0    # Lokio/Sink;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object v0, p0

    sget-object v1, Lokio/HashingSink;->Companion:Lokio/HashingSink$Companion;

    move-object v2, v0

    invoke-virtual {v1, v2}, Lokio/HashingSink$Companion;->sha512(Lokio/Sink;)Lokio/HashingSink;

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
    .line 100
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lokio/HashingSink;->hash()Lokio/ByteString;

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
    .line 91
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lokio/HashingSink;->messageDigest:Ljava/security/MessageDigest;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lokio/HashingSink;->messageDigest:Ljava/security/MessageDigest;

    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    :goto_0
    move-object v1, v2

    .line 92
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

    .line 91
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lokio/HashingSink;->mac:Ljavax/crypto/Mac;

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

.method public write(Lokio/Buffer;J)V
    .locals 24
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
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-wide/from16 v4, p2

    move-object/from16 v17, v3

    const-string v18, "source"

    invoke-static/range {v17 .. v18}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    move-object/from16 v17, v3

    invoke-virtual/range {v17 .. v17}, Lokio/Buffer;->size()J

    move-result-wide v17

    const-wide/16 v19, 0x0

    move-wide/from16 v21, v4

    invoke-static/range {v17 .. v22}, Lokio/-Util;->checkOffsetAndCount(JJJ)V

    .line 65
    const-wide/16 v17, 0x0

    move-wide/from16 v6, v17

    .line 66
    move-object/from16 v17, v3

    move-object/from16 v0, v17

    iget-object v0, v0, Lokio/Buffer;->head:Lokio/Segment;

    move-object/from16 v17, v0

    move-object/from16 v23, v17

    move-object/from16 v17, v23

    move-object/from16 v18, v23

    if-nez v18, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    move-object/from16 v8, v17

    .line 67
    :goto_0
    move-wide/from16 v17, v6

    move-wide/from16 v19, v4

    cmp-long v17, v17, v19

    if-gez v17, :cond_4

    .line 68
    move-wide/from16 v17, v4

    move-wide/from16 v19, v6

    sub-long v17, v17, v19

    move-wide/from16 v10, v17

    move-object/from16 v17, v8

    move-object/from16 v0, v17

    iget v0, v0, Lokio/Segment;->limit:I

    move/from16 v17, v0

    move-object/from16 v18, v8

    move-object/from16 v0, v18

    iget v0, v0, Lokio/Segment;->pos:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move/from16 v12, v17

    const/16 v17, 0x0

    move/from16 v13, v17

    .line 126
    move/from16 v17, v12

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    move-wide/from16 v14, v17

    const/16 v17, 0x0

    move/from16 v16, v17

    move-wide/from16 v17, v10

    move-wide/from16 v19, v14

    invoke-static/range {v17 .. v20}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v17

    nop

    .line 68
    move-wide/from16 v0, v17

    long-to-int v0, v0

    move/from16 v17, v0

    move/from16 v9, v17

    .line 69
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lokio/HashingSink;->messageDigest:Ljava/security/MessageDigest;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2

    .line 70
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lokio/HashingSink;->messageDigest:Ljava/security/MessageDigest;

    move-object/from16 v17, v0

    move-object/from16 v18, v8

    move-object/from16 v0, v18

    iget-object v0, v0, Lokio/Segment;->data:[B

    move-object/from16 v18, v0

    move-object/from16 v19, v8

    move-object/from16 v0, v19

    iget v0, v0, Lokio/Segment;->pos:I

    move/from16 v19, v0

    move/from16 v20, v9

    invoke-virtual/range {v17 .. v20}, Ljava/security/MessageDigest;->update([BII)V

    .line 73
    :goto_1
    move-wide/from16 v17, v6

    move/from16 v19, v9

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v19, v0

    add-long v17, v17, v19

    move-wide/from16 v6, v17

    .line 75
    move-object/from16 v17, v8

    move-object/from16 v0, v17

    iget-object v0, v0, Lokio/Segment;->next:Lokio/Segment;

    move-object/from16 v17, v0

    move-object/from16 v23, v17

    move-object/from16 v17, v23

    move-object/from16 v18, v23

    if-nez v18, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    move-object/from16 v8, v17

    .line 67
    goto/16 :goto_0

    .line 72
    :cond_2
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lokio/HashingSink;->mac:Ljavax/crypto/Mac;

    move-object/from16 v17, v0

    move-object/from16 v23, v17

    move-object/from16 v17, v23

    move-object/from16 v18, v23

    if-nez v18, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    move-object/from16 v18, v8

    move-object/from16 v0, v18

    iget-object v0, v0, Lokio/Segment;->data:[B

    move-object/from16 v18, v0

    move-object/from16 v19, v8

    move-object/from16 v0, v19

    iget v0, v0, Lokio/Segment;->pos:I

    move/from16 v19, v0

    move/from16 v20, v9

    invoke-virtual/range {v17 .. v20}, Ljavax/crypto/Mac;->update([BII)V

    goto :goto_1

    .line 79
    :cond_4
    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move-wide/from16 v19, v4

    invoke-super/range {v17 .. v20}, Lokio/ForwardingSink;->write(Lokio/Buffer;J)V

    .line 80
    return-void
.end method
