.class public Lokio/ByteString;
.super Ljava/lang/Object;
.source "ByteString.kt"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokio/ByteString$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable",
        "<",
        "Lokio/ByteString;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000p\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0005\n\u0002\u0008\u001a\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0016\u0018\u0000 Z2\u00020\u00012\u0008\u0012\u0004\u0012\u00020\u00000\u0002:\u0001ZB\u000f\u0008\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0008\u0010\u0015\u001a\u00020\u0016H\u0016J\u0008\u0010\u0017\u001a\u00020\u0010H\u0016J\u0008\u0010\u0018\u001a\u00020\u0010H\u0016J\u0011\u0010\u0019\u001a\u00020\t2\u0006\u0010\u001a\u001a\u00020\u0000H\u0096\u0002J\u0015\u0010\u001b\u001a\u00020\u00002\u0006\u0010\u001c\u001a\u00020\u0010H\u0010\u00a2\u0006\u0002\u0008\u001dJ\u000e\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u0004J\u000e\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u0000J\u0013\u0010!\u001a\u00020\u001f2\u0008\u0010\u001a\u001a\u0004\u0018\u00010\"H\u0096\u0002J\u0016\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020\tH\u0087\u0002\u00a2\u0006\u0002\u0008&J\u0015\u0010&\u001a\u00020$2\u0006\u0010%\u001a\u00020\tH\u0007\u00a2\u0006\u0002\u0008\'J\r\u0010(\u001a\u00020\tH\u0010\u00a2\u0006\u0002\u0008)J\u0008\u0010\u0008\u001a\u00020\tH\u0016J\u0008\u0010*\u001a\u00020\u0010H\u0016J\u001d\u0010+\u001a\u00020\u00002\u0006\u0010\u001c\u001a\u00020\u00102\u0006\u0010,\u001a\u00020\u0000H\u0010\u00a2\u0006\u0002\u0008-J\u0010\u0010.\u001a\u00020\u00002\u0006\u0010,\u001a\u00020\u0000H\u0016J\u0010\u0010/\u001a\u00020\u00002\u0006\u0010,\u001a\u00020\u0000H\u0016J\u0010\u00100\u001a\u00020\u00002\u0006\u0010,\u001a\u00020\u0000H\u0016J\u001a\u00101\u001a\u00020\t2\u0006\u0010\u001a\u001a\u00020\u00042\u0008\u0008\u0002\u00102\u001a\u00020\tH\u0017J\u001a\u00101\u001a\u00020\t2\u0006\u0010\u001a\u001a\u00020\u00002\u0008\u0008\u0002\u00102\u001a\u00020\tH\u0007J\r\u00103\u001a\u00020\u0004H\u0010\u00a2\u0006\u0002\u00084J\u0015\u00105\u001a\u00020$2\u0006\u00106\u001a\u00020\tH\u0010\u00a2\u0006\u0002\u00087J\u001a\u00108\u001a\u00020\t2\u0006\u0010\u001a\u001a\u00020\u00042\u0008\u0008\u0002\u00102\u001a\u00020\tH\u0017J\u001a\u00108\u001a\u00020\t2\u0006\u0010\u001a\u001a\u00020\u00002\u0008\u0008\u0002\u00102\u001a\u00020\tH\u0007J\u0008\u00109\u001a\u00020\u0000H\u0016J(\u0010:\u001a\u00020\u001f2\u0006\u0010;\u001a\u00020\t2\u0006\u0010\u001a\u001a\u00020\u00042\u0006\u0010<\u001a\u00020\t2\u0006\u0010=\u001a\u00020\tH\u0016J(\u0010:\u001a\u00020\u001f2\u0006\u0010;\u001a\u00020\t2\u0006\u0010\u001a\u001a\u00020\u00002\u0006\u0010<\u001a\u00020\t2\u0006\u0010=\u001a\u00020\tH\u0016J\u0010\u0010>\u001a\u00020?2\u0006\u0010@\u001a\u00020AH\u0002J\u0008\u0010B\u001a\u00020\u0000H\u0016J\u0008\u0010C\u001a\u00020\u0000H\u0016J\u0008\u0010D\u001a\u00020\u0000H\u0016J\r\u0010\u000e\u001a\u00020\tH\u0007\u00a2\u0006\u0002\u0008EJ\u000e\u0010F\u001a\u00020\u001f2\u0006\u0010G\u001a\u00020\u0004J\u000e\u0010F\u001a\u00020\u001f2\u0006\u0010G\u001a\u00020\u0000J\u0010\u0010H\u001a\u00020\u00102\u0006\u0010I\u001a\u00020JH\u0016J\u001c\u0010K\u001a\u00020\u00002\u0008\u0008\u0002\u0010L\u001a\u00020\t2\u0008\u0008\u0002\u0010M\u001a\u00020\tH\u0017J\u0008\u0010N\u001a\u00020\u0000H\u0016J\u0008\u0010O\u001a\u00020\u0000H\u0016J\u0008\u0010P\u001a\u00020\u0004H\u0016J\u0008\u0010Q\u001a\u00020\u0010H\u0016J\u0008\u0010\u000f\u001a\u00020\u0010H\u0016J\u0010\u0010R\u001a\u00020?2\u0006\u0010S\u001a\u00020TH\u0016J%\u0010R\u001a\u00020?2\u0006\u0010U\u001a\u00020V2\u0006\u0010;\u001a\u00020\t2\u0006\u0010=\u001a\u00020\tH\u0010\u00a2\u0006\u0002\u0008WJ\u0010\u0010X\u001a\u00020?2\u0006\u0010S\u001a\u00020YH\u0002R\u0014\u0010\u0003\u001a\u00020\u0004X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u001a\u0010\u0008\u001a\u00020\tX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\u0011\u0010\u000e\u001a\u00020\t8G\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u000bR\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014\u00a8\u0006["
    }
    d2 = {
        "Lokio/ByteString;",
        "Ljava/io/Serializable;",
        "",
        "data",
        "",
        "([B)V",
        "getData$okio",
        "()[B",
        "hashCode",
        "",
        "getHashCode$okio",
        "()I",
        "setHashCode$okio",
        "(I)V",
        "size",
        "utf8",
        "",
        "getUtf8$okio",
        "()Ljava/lang/String;",
        "setUtf8$okio",
        "(Ljava/lang/String;)V",
        "asByteBuffer",
        "Ljava/nio/ByteBuffer;",
        "base64",
        "base64Url",
        "compareTo",
        "other",
        "digest",
        "algorithm",
        "digest$okio",
        "endsWith",
        "",
        "suffix",
        "equals",
        "",
        "get",
        "",
        "index",
        "getByte",
        "-deprecated_getByte",
        "getSize",
        "getSize$okio",
        "hex",
        "hmac",
        "key",
        "hmac$okio",
        "hmacSha1",
        "hmacSha256",
        "hmacSha512",
        "indexOf",
        "fromIndex",
        "internalArray",
        "internalArray$okio",
        "internalGet",
        "pos",
        "internalGet$okio",
        "lastIndexOf",
        "md5",
        "rangeEquals",
        "offset",
        "otherOffset",
        "byteCount",
        "readObject",
        "",
        "in",
        "Ljava/io/ObjectInputStream;",
        "sha1",
        "sha256",
        "sha512",
        "-deprecated_size",
        "startsWith",
        "prefix",
        "string",
        "charset",
        "Ljava/nio/charset/Charset;",
        "substring",
        "beginIndex",
        "endIndex",
        "toAsciiLowercase",
        "toAsciiUppercase",
        "toByteArray",
        "toString",
        "write",
        "out",
        "Ljava/io/OutputStream;",
        "buffer",
        "Lokio/Buffer;",
        "write$okio",
        "writeObject",
        "Ljava/io/ObjectOutputStream;",
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
.field public static final Companion:Lokio/ByteString$Companion;

.field public static final EMPTY:Lokio/ByteString;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final data:[B
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private transient hashCode:I

.field private transient utf8:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    new-instance v0, Lokio/ByteString$Companion;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lokio/ByteString$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lokio/ByteString;->Companion:Lokio/ByteString$Companion;

    .line 219
    new-instance v0, Lokio/ByteString;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const/4 v2, 0x0

    new-array v2, v2, [B

    invoke-direct {v1, v2}, Lokio/ByteString;-><init>([B)V

    sput-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 4
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    const-string v3, "data"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lokio/ByteString;->data:[B

    return-void
.end method

.method public static final decodeBase64(Ljava/lang/String;)Lokio/ByteString;
    .locals 3
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    move-object v0, p0

    sget-object v1, Lokio/ByteString;->Companion:Lokio/ByteString$Companion;

    move-object v2, v0

    invoke-virtual {v1, v2}, Lokio/ByteString$Companion;->decodeBase64(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static final decodeHex(Ljava/lang/String;)Lokio/ByteString;
    .locals 3
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object v0, p0

    sget-object v1, Lokio/ByteString;->Companion:Lokio/ByteString$Companion;

    move-object v2, v0

    invoke-virtual {v1, v2}, Lokio/ByteString$Companion;->decodeHex(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static final encodeString(Ljava/lang/String;Ljava/nio/charset/Charset;)Lokio/ByteString;
    .locals 5
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/nio/charset/Charset;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmName;
        name = "encodeString"
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object v0, p0

    move-object v1, p1

    sget-object v2, Lokio/ByteString;->Companion:Lokio/ByteString$Companion;

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lokio/ByteString$Companion;->encodeString(Ljava/lang/String;Ljava/nio/charset/Charset;)Lokio/ByteString;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public static final encodeUtf8(Ljava/lang/String;)Lokio/ByteString;
    .locals 3
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object v0, p0

    sget-object v1, Lokio/ByteString;->Companion:Lokio/ByteString$Companion;

    move-object v2, v0

    invoke-virtual {v1, v2}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static synthetic indexOf$default(Lokio/ByteString;Lokio/ByteString;IILjava/lang/Object;)I
    .locals 9

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, v4

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/UnsupportedOperationException;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const-string v7, "Super calls with default arguments not supported in this target, function: indexOf"

    invoke-direct {v6, v7}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_0
    move v5, v3

    const/4 v6, 0x2

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_1

    const/4 v5, 0x0

    move v2, v5

    :cond_1
    move-object v5, v0

    move-object v6, v1

    move v7, v2

    invoke-virtual {v5, v6, v7}, Lokio/ByteString;->indexOf(Lokio/ByteString;I)I

    move-result v5

    move v0, v5

    return v0
.end method

.method public static synthetic indexOf$default(Lokio/ByteString;[BIILjava/lang/Object;)I
    .locals 9

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, v4

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/UnsupportedOperationException;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const-string v7, "Super calls with default arguments not supported in this target, function: indexOf"

    invoke-direct {v6, v7}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_0
    move v5, v3

    const/4 v6, 0x2

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_1

    const/4 v5, 0x0

    move v2, v5

    :cond_1
    move-object v5, v0

    move-object v6, v1

    move v7, v2

    invoke-virtual {v5, v6, v7}, Lokio/ByteString;->indexOf([BI)I

    move-result v5

    move v0, v5

    return v0
.end method

.method public static synthetic lastIndexOf$default(Lokio/ByteString;Lokio/ByteString;IILjava/lang/Object;)I
    .locals 9

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, v4

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/UnsupportedOperationException;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const-string v7, "Super calls with default arguments not supported in this target, function: lastIndexOf"

    invoke-direct {v6, v7}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_0
    move v5, v3

    const/4 v6, 0x2

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_1

    move-object v5, v0

    invoke-virtual {v5}, Lokio/ByteString;->size()I

    move-result v5

    move v2, v5

    :cond_1
    move-object v5, v0

    move-object v6, v1

    move v7, v2

    invoke-virtual {v5, v6, v7}, Lokio/ByteString;->lastIndexOf(Lokio/ByteString;I)I

    move-result v5

    move v0, v5

    return v0
.end method

.method public static synthetic lastIndexOf$default(Lokio/ByteString;[BIILjava/lang/Object;)I
    .locals 9

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, v4

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/UnsupportedOperationException;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const-string v7, "Super calls with default arguments not supported in this target, function: lastIndexOf"

    invoke-direct {v6, v7}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_0
    move v5, v3

    const/4 v6, 0x2

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_1

    move-object v5, v0

    invoke-virtual {v5}, Lokio/ByteString;->size()I

    move-result v5

    move v2, v5

    :cond_1
    move-object v5, v0

    move-object v6, v1

    move v7, v2

    invoke-virtual {v5, v6, v7}, Lokio/ByteString;->lastIndexOf([BI)I

    move-result v5

    move v0, v5

    return v0
.end method

.method public static final of(Ljava/nio/ByteBuffer;)Lokio/ByteString;
    .locals 3
    .param p0    # Ljava/nio/ByteBuffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmName;
        name = "of"
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object v0, p0

    sget-object v1, Lokio/ByteString;->Companion:Lokio/ByteString$Companion;

    move-object v2, v0

    invoke-virtual {v1, v2}, Lokio/ByteString$Companion;->of(Ljava/nio/ByteBuffer;)Lokio/ByteString;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static final varargs of([B)Lokio/ByteString;
    .locals 3
    .param p0    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object v0, p0

    sget-object v1, Lokio/ByteString;->Companion:Lokio/ByteString$Companion;

    move-object v2, v0

    invoke-virtual {v1, v2}, Lokio/ByteString$Companion;->of([B)Lokio/ByteString;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static final of([BII)Lokio/ByteString;
    .locals 7
    .param p0    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmName;
        name = "of"
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object v0, p0

    move v1, p1

    move v2, p2

    sget-object v3, Lokio/ByteString;->Companion:Lokio/ByteString$Companion;

    move-object v4, v0

    move v5, v1

    move v6, v2

    invoke-virtual {v3, v4, v5, v6}, Lokio/ByteString$Companion;->of([BII)Lokio/ByteString;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method public static final read(Ljava/io/InputStream;I)Lokio/ByteString;
    .locals 5
    .param p0    # Ljava/io/InputStream;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
        name = "read"
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object v0, p0

    move v1, p1

    sget-object v2, Lokio/ByteString;->Companion:Lokio/ByteString$Companion;

    move-object v3, v0

    move v4, v1

    invoke-virtual {v2, v3, v4}, Lokio/ByteString$Companion;->read(Ljava/io/InputStream;I)Lokio/ByteString;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method private final readObject(Ljava/io/ObjectInputStream;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 188
    move-object v0, p0

    move-object v1, p1

    move-object v5, v1

    invoke-virtual {v5}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v5

    move v2, v5

    .line 189
    sget-object v5, Lokio/ByteString;->Companion:Lokio/ByteString$Companion;

    move-object v6, v1

    check-cast v6, Ljava/io/InputStream;

    move v7, v2

    invoke-virtual {v5, v6, v7}, Lokio/ByteString$Companion;->read(Ljava/io/InputStream;I)Lokio/ByteString;

    move-result-object v5

    move-object v3, v5

    .line 190
    const-class v5, Lokio/ByteString;

    const-string v6, "data"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    move-object v4, v5

    .line 191
    move-object v5, v4

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const-string v7, "field"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 192
    move-object v5, v4

    move-object v6, v0

    move-object v7, v3

    iget-object v7, v7, Lokio/ByteString;->data:[B

    invoke-virtual {v5, v6, v7}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 193
    return-void
.end method

.method public static synthetic substring$default(Lokio/ByteString;IIILjava/lang/Object;)Lokio/ByteString;
    .locals 9

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, v4

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/UnsupportedOperationException;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const-string v7, "Super calls with default arguments not supported in this target, function: substring"

    invoke-direct {v6, v7}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_0
    move v5, v3

    const/4 v6, 0x1

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_1

    const/4 v5, 0x0

    move v1, v5

    :cond_1
    move v5, v3

    const/4 v6, 0x2

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_2

    move-object v5, v0

    invoke-virtual {v5}, Lokio/ByteString;->size()I

    move-result v5

    move v2, v5

    :cond_2
    move-object v5, v0

    move v6, v1

    move v7, v2

    invoke-virtual {v5, v6, v7}, Lokio/ByteString;->substring(II)Lokio/ByteString;

    move-result-object v5

    move-object v0, v5

    return-object v0
.end method

.method private final writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 197
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lokio/ByteString;->data:[B

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 198
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lokio/ByteString;->data:[B

    invoke-virtual {v2, v3}, Ljava/io/ObjectOutputStream;->write([B)V

    .line 199
    return-void
.end method


# virtual methods
.method public final -deprecated_getByte(I)B
    .locals 4
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "moved to operator function"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "this[index]"
            imports = {}
        .end subannotation
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
        name = "-deprecated_getByte"
    .end annotation

    .prologue
    .line 206
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lokio/ByteString;->getByte(I)B

    move-result v2

    move v0, v2

    return v0
.end method

.method public final -deprecated_size()I
    .locals 2
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "moved to val"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "size"
            imports = {}
        .end subannotation
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
        name = "-deprecated_size"
    .end annotation

    .prologue
    .line 213
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lokio/ByteString;->size()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public asByteBuffer()Ljava/nio/ByteBuffer;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 133
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokio/ByteString;->data:[B

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "ByteBuffer.wrap(data).asReadOnlyBuffer()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v1

    return-object v0
.end method

.method public base64()Ljava/lang/String;
    .locals 7
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 70
    move-object v0, p0

    move-object v3, v0

    move-object v1, v3

    const/4 v3, 0x0

    move v2, v3

    .line 346
    move-object v3, v1

    invoke-virtual {v3}, Lokio/ByteString;->getData$okio()[B

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6}, Lokio/-Base64;->encodeBase64$default([B[BILjava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 70
    move-object v0, v3

    return-object v0
.end method

.method public base64Url()Ljava/lang/String;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 106
    move-object v0, p0

    move-object v3, v0

    move-object v1, v3

    const/4 v3, 0x0

    move v2, v3

    .line 347
    move-object v3, v1

    invoke-virtual {v3}, Lokio/ByteString;->getData$okio()[B

    move-result-object v3

    invoke-static {}, Lokio/-Base64;->getBASE64_URL_SAFE()[B

    move-result-object v4

    invoke-static {v3, v4}, Lokio/-Base64;->encodeBase64([B[B)Ljava/lang/String;

    move-result-object v3

    .line 106
    move-object v0, v3

    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 4

    .prologue
    .line 58
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Lokio/ByteString;

    invoke-virtual {v2, v3}, Lokio/ByteString;->compareTo(Lokio/ByteString;)I

    move-result v2

    move v0, v2

    return v0
.end method

.method public compareTo(Lokio/ByteString;)I
    .locals 15
    .param p1    # Lokio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move-object/from16 v1, p1

    move-object v13, v1

    const-string v14, "other"

    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 182
    move-object v13, v0

    move-object v2, v13

    const/4 v13, 0x0

    move v3, v13

    .line 448
    move-object v13, v2

    invoke-virtual {v13}, Lokio/ByteString;->size()I

    move-result v13

    move v4, v13

    .line 449
    move-object v13, v1

    invoke-virtual {v13}, Lokio/ByteString;->size()I

    move-result v13

    move v5, v13

    .line 450
    const/4 v13, 0x0

    move v6, v13

    .line 451
    const/4 v13, 0x0

    move v7, v13

    move v13, v4

    move v14, v5

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v13

    move v8, v13

    .line 452
    :goto_0
    move v13, v6

    move v14, v8

    if-ge v13, v14, :cond_2

    .line 453
    move-object v13, v2

    move v14, v6

    invoke-virtual {v13, v14}, Lokio/ByteString;->getByte(I)B

    move-result v13

    move v9, v13

    const/16 v13, 0xff

    move v10, v13

    const/4 v13, 0x0

    move v11, v13

    .line 454
    move v13, v9

    move v14, v10

    and-int/2addr v13, v14

    .line 453
    move v7, v13

    .line 455
    move-object v13, v1

    move v14, v6

    invoke-virtual {v13, v14}, Lokio/ByteString;->getByte(I)B

    move-result v13

    move v10, v13

    const/16 v13, 0xff

    move v11, v13

    const/4 v13, 0x0

    move v12, v13

    .line 456
    move v13, v10

    move v14, v11

    and-int/2addr v13, v14

    .line 455
    move v9, v13

    .line 457
    move v13, v7

    move v14, v9

    if-ne v13, v14, :cond_0

    .line 458
    add-int/lit8 v6, v6, 0x1

    .line 459
    goto :goto_0

    .line 461
    :cond_0
    move v13, v7

    move v14, v9

    if-ge v13, v14, :cond_1

    const/4 v13, -0x1

    .line 182
    :goto_1
    move v0, v13

    return v0

    .line 461
    :cond_1
    const/4 v13, 0x1

    goto :goto_1

    .line 463
    :cond_2
    move v13, v4

    move v14, v5

    if-ne v13, v14, :cond_3

    const/4 v13, 0x0

    goto :goto_1

    .line 464
    :cond_3
    move v13, v4

    move v14, v5

    if-ge v13, v14, :cond_4

    const/4 v13, -0x1

    goto :goto_1

    :cond_4
    const/4 v13, 0x1

    goto :goto_1
.end method

.method public digest$okio(Ljava/lang/String;)Lokio/ByteString;
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    const-string v3, "algorithm"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    new-instance v2, Lokio/ByteString;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v1

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Lokio/ByteString;->data:[B

    invoke-virtual {v4, v5}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v4

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string v6, "MessageDigest.getInstance(algorithm).digest(data)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lokio/ByteString;-><init>([B)V

    move-object v0, v2

    return-object v0
.end method

.method public final endsWith(Lokio/ByteString;)Z
    .locals 9
    .param p1    # Lokio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v4, v1

    const-string v5, "suffix"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    move-object v4, v0

    move-object v2, v4

    const/4 v4, 0x0

    move v3, v4

    .line 422
    move-object v4, v2

    move-object v5, v2

    invoke-virtual {v5}, Lokio/ByteString;->size()I

    move-result v5

    move-object v6, v1

    invoke-virtual {v6}, Lokio/ByteString;->size()I

    move-result v6

    sub-int/2addr v5, v6

    move-object v6, v1

    const/4 v7, 0x0

    move-object v8, v1

    invoke-virtual {v8}, Lokio/ByteString;->size()I

    move-result v8

    invoke-virtual {v4, v5, v6, v7, v8}, Lokio/ByteString;->rangeEquals(ILokio/ByteString;II)Z

    move-result v4

    .line 162
    move v0, v4

    return v0
.end method

.method public final endsWith([B)Z
    .locals 9
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v4, v1

    const-string v5, "suffix"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 164
    move-object v4, v0

    move-object v2, v4

    const/4 v4, 0x0

    move v3, v4

    .line 423
    move-object v4, v2

    move-object v5, v2

    invoke-virtual {v5}, Lokio/ByteString;->size()I

    move-result v5

    move-object v6, v1

    array-length v6, v6

    sub-int/2addr v5, v6

    move-object v6, v1

    const/4 v7, 0x0

    move-object v8, v1

    array-length v8, v8

    invoke-virtual {v4, v5, v6, v7, v8}, Lokio/ByteString;->rangeEquals(I[BII)Z

    move-result v4

    .line 164
    move v0, v4

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 9
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 178
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    move-object v2, v4

    const/4 v4, 0x0

    move v3, v4

    .line 439
    nop

    .line 440
    move-object v4, v1

    move-object v5, v2

    if-ne v4, v5, :cond_0

    const/4 v4, 0x1

    .line 178
    :goto_0
    move v0, v4

    return v0

    .line 441
    :cond_0
    move-object v4, v1

    instance-of v4, v4, Lokio/ByteString;

    if-eqz v4, :cond_2

    move-object v4, v1

    check-cast v4, Lokio/ByteString;

    invoke-virtual {v4}, Lokio/ByteString;->size()I

    move-result v4

    move-object v5, v2

    invoke-virtual {v5}, Lokio/ByteString;->getData$okio()[B

    move-result-object v5

    array-length v5, v5

    if-ne v4, v5, :cond_1

    move-object v4, v1

    check-cast v4, Lokio/ByteString;

    const/4 v5, 0x0

    move-object v6, v2

    invoke-virtual {v6}, Lokio/ByteString;->getData$okio()[B

    move-result-object v6

    const/4 v7, 0x0

    move-object v8, v2

    invoke-virtual {v8}, Lokio/ByteString;->getData$okio()[B

    move-result-object v8

    array-length v8, v8

    invoke-virtual {v4, v5, v6, v7, v8}, Lokio/ByteString;->rangeEquals(I[BII)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 442
    :cond_2
    const/4 v4, 0x0

    .line 439
    nop

    goto :goto_0
.end method

.method public final getByte(I)B
    .locals 4
    .annotation build Lkotlin/jvm/JvmName;
        name = "getByte"
    .end annotation

    .prologue
    .line 121
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lokio/ByteString;->internalGet$okio(I)B

    move-result v2

    move v0, v2

    return v0
.end method

.method public final getData$okio()[B
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 60
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokio/ByteString;->data:[B

    move-object v0, v1

    return-object v0
.end method

.method public final getHashCode$okio()I
    .locals 2

    .prologue
    .line 62
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lokio/ByteString;->hashCode:I

    move v0, v1

    return v0
.end method

.method public getSize$okio()I
    .locals 4

    .prologue
    .line 126
    move-object v0, p0

    move-object v3, v0

    move-object v1, v3

    const/4 v3, 0x0

    move v2, v3

    .line 413
    move-object v3, v1

    invoke-virtual {v3}, Lokio/ByteString;->getData$okio()[B

    move-result-object v3

    array-length v3, v3

    .line 126
    move v0, v3

    return v0
.end method

.method public final getUtf8$okio()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 63
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokio/ByteString;->utf8:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public hashCode()I
    .locals 11

    .prologue
    .line 180
    move-object v0, p0

    move-object v9, v0

    move-object v1, v9

    const/4 v9, 0x0

    move v2, v9

    .line 443
    move-object v9, v1

    invoke-virtual {v9}, Lokio/ByteString;->getHashCode$okio()I

    move-result v9

    move v3, v9

    .line 444
    move v9, v3

    if-eqz v9, :cond_0

    move v9, v3

    .line 180
    :goto_0
    move v0, v9

    return v0

    .line 445
    :cond_0
    move-object v9, v1

    invoke-virtual {v9}, Lokio/ByteString;->getData$okio()[B

    move-result-object v9

    move-object v4, v9

    const/4 v9, 0x0

    move v5, v9

    move-object v9, v4

    invoke-static {v9}, Ljava/util/Arrays;->hashCode([B)I

    move-result v9

    move v4, v9

    const/4 v9, 0x0

    move v5, v9

    const/4 v9, 0x0

    move v6, v9

    move v9, v4

    move v7, v9

    const/4 v9, 0x0

    move v8, v9

    .line 446
    move-object v9, v1

    move v10, v7

    invoke-virtual {v9, v10}, Lokio/ByteString;->setHashCode$okio(I)V

    .line 447
    nop

    .line 445
    move v9, v4

    goto :goto_0
.end method

.method public hex()Ljava/lang/String;
    .locals 24
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 108
    move-object/from16 v2, p0

    move-object/from16 v18, v2

    move-object/from16 v3, v18

    const/16 v18, 0x0

    move/from16 v4, v18

    .line 348
    move-object/from16 v18, v3

    invoke-virtual/range {v18 .. v18}, Lokio/ByteString;->getData$okio()[B

    move-result-object v18

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    const/16 v19, 0x2

    mul-int/lit8 v18, v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [C

    move-object/from16 v18, v0

    move-object/from16 v5, v18

    .line 349
    const/16 v18, 0x0

    move/from16 v6, v18

    .line 350
    move-object/from16 v18, v3

    invoke-virtual/range {v18 .. v18}, Lokio/ByteString;->getData$okio()[B

    move-result-object v18

    move-object/from16 v7, v18

    move-object/from16 v18, v7

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v8, v18

    const/16 v18, 0x0

    move/from16 v9, v18

    :goto_0
    move/from16 v18, v9

    move/from16 v19, v8

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_0

    move-object/from16 v18, v7

    move/from16 v19, v9

    aget-byte v18, v18, v19

    move/from16 v10, v18

    .line 351
    move-object/from16 v18, v5

    move/from16 v19, v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {}, Lokio/internal/ByteStringKt;->getHEX_DIGIT_CHARS()[C

    move-result-object v20

    move/from16 v21, v10

    move/from16 v11, v21

    const/16 v21, 0x4

    move/from16 v12, v21

    move-object/from16 v13, v20

    move/from16 v14, v19

    move-object/from16 v15, v18

    const/16 v18, 0x0

    move/from16 v16, v18

    .line 352
    move/from16 v18, v11

    move/from16 v19, v12

    shr-int v18, v18, v19

    move/from16 v17, v18

    move-object/from16 v18, v15

    move/from16 v19, v14

    move-object/from16 v20, v13

    move/from16 v21, v17

    .line 351
    const/16 v22, 0xf

    and-int/lit8 v21, v21, 0xf

    aget-char v20, v20, v21

    aput-char v20, v18, v19

    .line 353
    move-object/from16 v18, v5

    move/from16 v19, v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {}, Lokio/internal/ByteStringKt;->getHEX_DIGIT_CHARS()[C

    move-result-object v20

    move/from16 v21, v10

    move/from16 v11, v21

    const/16 v21, 0xf

    move/from16 v12, v21

    move-object/from16 v13, v20

    move/from16 v14, v19

    move-object/from16 v15, v18

    const/16 v18, 0x0

    move/from16 v16, v18

    .line 354
    move/from16 v18, v11

    move/from16 v19, v12

    and-int v18, v18, v19

    move/from16 v17, v18

    move-object/from16 v18, v15

    move/from16 v19, v14

    move-object/from16 v20, v13

    move/from16 v21, v17

    aget-char v20, v20, v21

    aput-char v20, v18, v19

    .line 350
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 355
    :cond_0
    const/16 v18, 0x0

    move/from16 v10, v18

    new-instance v18, Ljava/lang/String;

    move-object/from16 v23, v18

    move-object/from16 v18, v23

    move-object/from16 v19, v23

    move-object/from16 v20, v5

    invoke-direct/range {v19 .. v20}, Ljava/lang/String;-><init>([C)V

    .line 108
    move-object/from16 v2, v18

    return-object v2
.end method

.method public hmac$okio(Ljava/lang/String;Lokio/ByteString;)Lokio/ByteString;
    .locals 10
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lokio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v1

    const-string v5, "algorithm"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, v2

    const-string v5, "key"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    nop

    .line 98
    move-object v4, v1

    :try_start_0
    invoke-static {v4}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v4

    move-object v3, v4

    .line 99
    move-object v4, v3

    new-instance v5, Ljavax/crypto/spec/SecretKeySpec;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v2

    invoke-virtual {v7}, Lokio/ByteString;->toByteArray()[B

    move-result-object v7

    move-object v8, v1

    invoke-direct {v6, v7, v8}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    check-cast v5, Ljava/security/Key;

    invoke-virtual {v4, v5}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 100
    new-instance v4, Lokio/ByteString;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v3

    move-object v7, v0

    iget-object v7, v7, Lokio/ByteString;->data:[B

    invoke-virtual {v6, v7}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v6

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    const-string v8, "mac.doFinal(data)"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v5, v6}, Lokio/ByteString;-><init>([B)V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v4

    return-object v0

    .line 101
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 102
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v3

    check-cast v6, Ljava/lang/Throwable;

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    check-cast v4, Ljava/lang/Throwable;

    throw v4
.end method

.method public hmacSha1(Lokio/ByteString;)Lokio/ByteString;
    .locals 5
    .param p1    # Lokio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    const-string v3, "key"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    move-object v2, v0

    const-string v3, "HmacSHA1"

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lokio/ByteString;->hmac$okio(Ljava/lang/String;Lokio/ByteString;)Lokio/ByteString;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public hmacSha256(Lokio/ByteString;)Lokio/ByteString;
    .locals 5
    .param p1    # Lokio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    const-string v3, "key"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    move-object v2, v0

    const-string v3, "HmacSHA256"

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lokio/ByteString;->hmac$okio(Ljava/lang/String;Lokio/ByteString;)Lokio/ByteString;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public hmacSha512(Lokio/ByteString;)Lokio/ByteString;
    .locals 5
    .param p1    # Lokio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    const-string v3, "key"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    move-object v2, v0

    const-string v3, "HmacSHA512"

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lokio/ByteString;->hmac$okio(Ljava/lang/String;Lokio/ByteString;)Lokio/ByteString;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public final indexOf(Lokio/ByteString;)I
    .locals 7
    .param p1    # Lokio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static {v2, v3, v4, v5, v6}, Lokio/ByteString;->indexOf$default(Lokio/ByteString;Lokio/ByteString;IILjava/lang/Object;)I

    move-result v2

    move v0, v2

    return v0
.end method

.method public final indexOf(Lokio/ByteString;I)I
    .locals 6
    .param p1    # Lokio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v1

    const-string v4, "other"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Lokio/ByteString;->internalArray$okio()[B

    move-result-object v4

    move v5, v2

    invoke-virtual {v3, v4, v5}, Lokio/ByteString;->indexOf([BI)I

    move-result v3

    move v0, v3

    return v0
.end method

.method public indexOf([B)I
    .locals 7
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static {v2, v3, v4, v5, v6}, Lokio/ByteString;->indexOf$default(Lokio/ByteString;[BIILjava/lang/Object;)I

    move-result v2

    move v0, v2

    return v0
.end method

.method public indexOf([BI)I
    .locals 15
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .prologue
    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object v10, v1

    const-string v11, "other"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    move-object v10, v0

    move-object v3, v10

    const/4 v10, 0x0

    move v4, v10

    .line 424
    move-object v10, v3

    invoke-virtual {v10}, Lokio/ByteString;->getData$okio()[B

    move-result-object v10

    array-length v10, v10

    move-object v11, v1

    array-length v11, v11

    sub-int/2addr v10, v11

    move v5, v10

    .line 425
    const/4 v10, 0x0

    move v6, v10

    const/4 v10, 0x0

    move v7, v10

    move v10, v2

    move v11, v6

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    move v8, v10

    move v10, v5

    move v9, v10

    move v10, v8

    move v11, v9

    if-gt v10, v11, :cond_1

    .line 426
    :goto_0
    move-object v10, v3

    invoke-virtual {v10}, Lokio/ByteString;->getData$okio()[B

    move-result-object v10

    move v11, v8

    move-object v12, v1

    const/4 v13, 0x0

    move-object v14, v1

    array-length v14, v14

    invoke-static {v10, v11, v12, v13, v14}, Lokio/-Util;->arrayRangeEquals([BI[BII)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 427
    move v10, v8

    .line 170
    :goto_1
    move v0, v10

    return v0

    .line 425
    :cond_0
    move v10, v8

    move v11, v9

    if-eq v10, v11, :cond_1

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 430
    :cond_1
    const/4 v10, -0x1

    goto :goto_1
.end method

.method public internalArray$okio()[B
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 130
    move-object v0, p0

    move-object v3, v0

    move-object v1, v3

    const/4 v3, 0x0

    move v2, v3

    .line 415
    move-object v3, v1

    invoke-virtual {v3}, Lokio/ByteString;->getData$okio()[B

    move-result-object v3

    .line 130
    move-object v0, v3

    return-object v0
.end method

.method public internalGet$okio(I)B
    .locals 6

    .prologue
    .line 118
    move-object v0, p0

    move v1, p1

    move-object v4, v0

    move-object v2, v4

    const/4 v4, 0x0

    move v3, v4

    .line 412
    move-object v4, v2

    invoke-virtual {v4}, Lokio/ByteString;->getData$okio()[B

    move-result-object v4

    move v5, v1

    aget-byte v4, v4, v5

    .line 118
    move v0, v4

    return v0
.end method

.method public final lastIndexOf(Lokio/ByteString;)I
    .locals 7
    .param p1    # Lokio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static {v2, v3, v4, v5, v6}, Lokio/ByteString;->lastIndexOf$default(Lokio/ByteString;Lokio/ByteString;IILjava/lang/Object;)I

    move-result v2

    move v0, v2

    return v0
.end method

.method public final lastIndexOf(Lokio/ByteString;I)I
    .locals 8
    .param p1    # Lokio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v1

    const-string v6, "other"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    move-object v5, v0

    move-object v3, v5

    const/4 v5, 0x0

    move v4, v5

    .line 431
    move-object v5, v3

    move-object v6, v1

    invoke-virtual {v6}, Lokio/ByteString;->internalArray$okio()[B

    move-result-object v6

    move v7, v2

    invoke-virtual {v5, v6, v7}, Lokio/ByteString;->lastIndexOf([BI)I

    move-result v5

    .line 173
    move v0, v5

    return v0
.end method

.method public lastIndexOf([B)I
    .locals 7
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static {v2, v3, v4, v5, v6}, Lokio/ByteString;->lastIndexOf$default(Lokio/ByteString;[BIILjava/lang/Object;)I

    move-result v2

    move v0, v2

    return v0
.end method

.method public lastIndexOf([BI)I
    .locals 14
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move-object v9, v1

    const-string v10, "other"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 176
    move-object v9, v0

    move-object v3, v9

    const/4 v9, 0x0

    move v4, v9

    .line 432
    move-object v9, v3

    invoke-virtual {v9}, Lokio/ByteString;->getData$okio()[B

    move-result-object v9

    array-length v9, v9

    move-object v10, v1

    array-length v10, v10

    sub-int/2addr v9, v10

    move v5, v9

    .line 433
    const/4 v9, 0x0

    move v6, v9

    move v9, v2

    move v10, v5

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    move v7, v9

    const/4 v9, 0x0

    move v8, v9

    :goto_0
    move v9, v7

    if-ltz v9, :cond_1

    .line 434
    move-object v9, v3

    invoke-virtual {v9}, Lokio/ByteString;->getData$okio()[B

    move-result-object v9

    move v10, v7

    move-object v11, v1

    const/4 v12, 0x0

    move-object v13, v1

    array-length v13, v13

    invoke-static {v9, v10, v11, v12, v13}, Lokio/-Util;->arrayRangeEquals([BI[BII)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 435
    move v9, v7

    .line 176
    :goto_1
    move v0, v9

    return v0

    .line 433
    :cond_0
    add-int/lit8 v7, v7, -0x1

    goto :goto_0

    .line 438
    :cond_1
    const/4 v9, -0x1

    goto :goto_1
.end method

.method public md5()Lokio/ByteString;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 73
    move-object v0, p0

    move-object v1, v0

    const-string v2, "MD5"

    invoke-virtual {v1, v2}, Lokio/ByteString;->digest$okio(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public rangeEquals(ILokio/ByteString;II)Z
    .locals 12
    .param p2    # Lokio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move/from16 v4, p4

    move-object v7, v2

    const-string v8, "other"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    move-object v7, v0

    move-object v5, v7

    const/4 v7, 0x0

    move v6, v7

    .line 416
    move-object v7, v2

    move v8, v3

    move-object v9, v5

    invoke-virtual {v9}, Lokio/ByteString;->getData$okio()[B

    move-result-object v9

    move v10, v1

    move v11, v4

    invoke-virtual {v7, v8, v9, v10, v11}, Lokio/ByteString;->rangeEquals(I[BII)Z

    move-result v7

    .line 149
    move v0, v7

    return v0
.end method

.method public rangeEquals(I[BII)Z
    .locals 12
    .param p2    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move/from16 v4, p4

    move-object v7, v2

    const-string v8, "other"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    move-object v7, v0

    move-object v5, v7

    const/4 v7, 0x0

    move v6, v7

    .line 417
    move v7, v1

    if-ltz v7, :cond_0

    move v7, v1

    move-object v8, v5

    invoke-virtual {v8}, Lokio/ByteString;->getData$okio()[B

    move-result-object v8

    array-length v8, v8

    move v9, v4

    sub-int/2addr v8, v9

    if-gt v7, v8, :cond_0

    move v7, v3

    if-ltz v7, :cond_0

    move v7, v3

    .line 418
    move-object v8, v2

    array-length v8, v8

    move v9, v4

    sub-int/2addr v8, v9

    if-gt v7, v8, :cond_0

    .line 419
    move-object v7, v5

    invoke-virtual {v7}, Lokio/ByteString;->getData$okio()[B

    move-result-object v7

    move v8, v1

    move-object v9, v2

    move v10, v3

    move v11, v4

    invoke-static {v7, v8, v9, v10, v11}, Lokio/-Util;->arrayRangeEquals([BI[BII)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, 0x1

    .line 156
    :goto_0
    move v0, v7

    return v0

    .line 419
    :cond_0
    const/4 v7, 0x0

    goto :goto_0
.end method

.method public final setHashCode$okio(I)V
    .locals 4

    .prologue
    .line 62
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lokio/ByteString;->hashCode:I

    return-void
.end method

.method public final setUtf8$okio(Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 63
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lokio/ByteString;->utf8:Ljava/lang/String;

    return-void
.end method

.method public sha1()Lokio/ByteString;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 76
    move-object v0, p0

    move-object v1, v0

    const-string v2, "SHA-1"

    invoke-virtual {v1, v2}, Lokio/ByteString;->digest$okio(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public sha256()Lokio/ByteString;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 79
    move-object v0, p0

    move-object v1, v0

    const-string v2, "SHA-256"

    invoke-virtual {v1, v2}, Lokio/ByteString;->digest$okio(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public sha512()Lokio/ByteString;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 82
    move-object v0, p0

    move-object v1, v0

    const-string v2, "SHA-512"

    invoke-virtual {v1, v2}, Lokio/ByteString;->digest$okio(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public final size()I
    .locals 2
    .annotation build Lkotlin/jvm/JvmName;
        name = "size"
    .end annotation

    .prologue
    .line 124
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lokio/ByteString;->getSize$okio()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public final startsWith(Lokio/ByteString;)Z
    .locals 9
    .param p1    # Lokio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v4, v1

    const-string v5, "prefix"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    move-object v4, v0

    move-object v2, v4

    const/4 v4, 0x0

    move v3, v4

    .line 420
    move-object v4, v2

    const/4 v5, 0x0

    move-object v6, v1

    const/4 v7, 0x0

    move-object v8, v1

    invoke-virtual {v8}, Lokio/ByteString;->size()I

    move-result v8

    invoke-virtual {v4, v5, v6, v7, v8}, Lokio/ByteString;->rangeEquals(ILokio/ByteString;II)Z

    move-result v4

    .line 158
    move v0, v4

    return v0
.end method

.method public final startsWith([B)Z
    .locals 9
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v4, v1

    const-string v5, "prefix"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    move-object v4, v0

    move-object v2, v4

    const/4 v4, 0x0

    move v3, v4

    .line 421
    move-object v4, v2

    const/4 v5, 0x0

    move-object v6, v1

    const/4 v7, 0x0

    move-object v8, v1

    array-length v8, v8

    invoke-virtual {v4, v5, v6, v7, v8}, Lokio/ByteString;->rangeEquals(I[BII)Z

    move-result v4

    .line 160
    move v0, v4

    return v0
.end method

.method public string(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 9
    .param p1    # Ljava/nio/charset/Charset;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v4, v1

    const-string v5, "charset"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    move-object v4, v0

    iget-object v4, v4, Lokio/ByteString;->data:[B

    move-object v2, v4

    const/4 v4, 0x0

    move v3, v4

    new-instance v4, Ljava/lang/String;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v2

    move-object v7, v1

    invoke-direct {v5, v6, v7}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    move-object v0, v4

    return-object v0
.end method

.method public substring()Lokio/ByteString;
    .locals 6
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Lokio/ByteString;->substring$default(Lokio/ByteString;IIILjava/lang/Object;)Lokio/ByteString;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public substring(I)Lokio/ByteString;
    .locals 7
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static {v2, v3, v4, v5, v6}, Lokio/ByteString;->substring$default(Lokio/ByteString;IIILjava/lang/Object;)Lokio/ByteString;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public substring(II)Lokio/ByteString;
    .locals 18
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 116
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object v14, v0

    move-object v3, v14

    const/4 v14, 0x0

    move v4, v14

    .line 402
    move v14, v1

    if-ltz v14, :cond_0

    const/4 v14, 0x1

    :goto_0
    move v5, v14

    const/4 v14, 0x0

    move v6, v14

    const/4 v14, 0x0

    move v7, v14

    move v14, v5

    if-nez v14, :cond_1

    const/4 v14, 0x0

    move v8, v14

    const-string v14, "beginIndex < 0"

    move-object v7, v14

    new-instance v14, Ljava/lang/IllegalArgumentException;

    move-object/from16 v17, v14

    move-object/from16 v14, v17

    move-object/from16 v15, v17

    move-object/from16 v16, v7

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v14, Ljava/lang/Throwable;

    throw v14

    :cond_0
    const/4 v14, 0x0

    goto :goto_0

    .line 403
    :cond_1
    move v14, v2

    move-object v15, v3

    invoke-virtual {v15}, Lokio/ByteString;->getData$okio()[B

    move-result-object v15

    array-length v15, v15

    if-gt v14, v15, :cond_2

    const/4 v14, 0x1

    :goto_1
    move v5, v14

    const/4 v14, 0x0

    move v6, v14

    const/4 v14, 0x0

    move v7, v14

    move v14, v5

    if-nez v14, :cond_3

    const/4 v14, 0x0

    move v8, v14

    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v17, v14

    move-object/from16 v14, v17

    move-object/from16 v15, v17

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "endIndex > length("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v15, v3

    invoke-virtual {v15}, Lokio/ByteString;->getData$okio()[B

    move-result-object v15

    array-length v15, v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const/16 v15, 0x29

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object v7, v14

    new-instance v14, Ljava/lang/IllegalArgumentException;

    move-object/from16 v17, v14

    move-object/from16 v14, v17

    move-object/from16 v15, v17

    move-object/from16 v16, v7

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v14, Ljava/lang/Throwable;

    throw v14

    :cond_2
    const/4 v14, 0x0

    goto :goto_1

    .line 405
    :cond_3
    move v14, v2

    move v15, v1

    sub-int/2addr v14, v15

    move v5, v14

    .line 406
    move v14, v5

    if-ltz v14, :cond_4

    const/4 v14, 0x1

    :goto_2
    move v6, v14

    const/4 v14, 0x0

    move v7, v14

    const/4 v14, 0x0

    move v8, v14

    move v14, v6

    if-nez v14, :cond_5

    const/4 v14, 0x0

    move v9, v14

    const-string v14, "endIndex < beginIndex"

    move-object v8, v14

    new-instance v14, Ljava/lang/IllegalArgumentException;

    move-object/from16 v17, v14

    move-object/from16 v14, v17

    move-object/from16 v15, v17

    move-object/from16 v16, v8

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v14, Ljava/lang/Throwable;

    throw v14

    :cond_4
    const/4 v14, 0x0

    goto :goto_2

    .line 408
    :cond_5
    move v14, v1

    if-nez v14, :cond_6

    move v14, v2

    move-object v15, v3

    invoke-virtual {v15}, Lokio/ByteString;->getData$okio()[B

    move-result-object v15

    array-length v15, v15

    if-ne v14, v15, :cond_6

    .line 409
    move-object v14, v3

    .line 116
    :goto_3
    move-object v0, v14

    return-object v0

    .line 411
    :cond_6
    move-object v14, v3

    invoke-virtual {v14}, Lokio/ByteString;->getData$okio()[B

    move-result-object v14

    move-object v6, v14

    const/4 v14, 0x0

    move v7, v14

    move-object v14, v6

    move v15, v1

    move/from16 v16, v2

    invoke-static/range {v14 .. v16}, Lkotlin/collections/ArraysKt;->copyOfRange([BII)[B

    move-result-object v14

    move-object v12, v14

    move-object v14, v12

    move-object v13, v14

    new-instance v14, Lokio/ByteString;

    move-object/from16 v17, v14

    move-object/from16 v14, v17

    move-object/from16 v15, v17

    move-object/from16 v16, v13

    invoke-direct/range {v15 .. v16}, Lokio/ByteString;-><init>([B)V

    goto :goto_3
.end method

.method public toAsciiLowercase()Lokio/ByteString;
    .locals 13
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 110
    move-object v0, p0

    move-object v8, v0

    move-object v1, v8

    const/4 v8, 0x0

    move v2, v8

    .line 356
    const/4 v8, 0x0

    move v3, v8

    .line 357
    :goto_0
    move v8, v3

    move-object v9, v1

    invoke-virtual {v9}, Lokio/ByteString;->getData$okio()[B

    move-result-object v9

    array-length v9, v9

    if-ge v8, v9, :cond_5

    .line 358
    move-object v8, v1

    invoke-virtual {v8}, Lokio/ByteString;->getData$okio()[B

    move-result-object v8

    move v9, v3

    aget-byte v8, v8, v9

    move v4, v8

    .line 359
    move v8, v4

    const/16 v9, 0x41

    int-to-byte v9, v9

    if-lt v8, v9, :cond_0

    move v8, v4

    const/16 v9, 0x5a

    int-to-byte v9, v9

    if-le v8, v9, :cond_1

    .line 360
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 361
    goto :goto_0

    .line 365
    :cond_1
    move-object v8, v1

    invoke-virtual {v8}, Lokio/ByteString;->getData$okio()[B

    move-result-object v8

    move-object v5, v8

    const/4 v8, 0x0

    move v6, v8

    move-object v8, v5

    move-object v9, v5

    array-length v9, v9

    invoke-static {v8, v9}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v8

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const-string v10, "java.util.Arrays.copyOf(this, size)"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v7, v8

    .line 366
    move-object v8, v7

    move v9, v3

    add-int/lit8 v3, v3, 0x1

    move v10, v4

    const/16 v11, -0x20

    add-int/lit8 v10, v10, 0x20

    int-to-byte v10, v10

    aput-byte v10, v8, v9

    .line 367
    :goto_1
    move v8, v3

    move-object v9, v7

    array-length v9, v9

    if-ge v8, v9, :cond_4

    .line 368
    move-object v8, v7

    move v9, v3

    aget-byte v8, v8, v9

    move v4, v8

    .line 369
    move v8, v4

    const/16 v9, 0x41

    int-to-byte v9, v9

    if-lt v8, v9, :cond_2

    move v8, v4

    const/16 v9, 0x5a

    int-to-byte v9, v9

    if-le v8, v9, :cond_3

    .line 370
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 371
    goto :goto_1

    .line 373
    :cond_3
    move-object v8, v7

    move v9, v3

    move v10, v4

    const/16 v11, -0x20

    add-int/lit8 v10, v10, 0x20

    int-to-byte v10, v10

    aput-byte v10, v8, v9

    .line 374
    add-int/lit8 v3, v3, 0x1

    .line 367
    goto :goto_1

    .line 376
    :cond_4
    new-instance v8, Lokio/ByteString;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v10, v7

    invoke-direct {v9, v10}, Lokio/ByteString;-><init>([B)V

    .line 110
    :goto_2
    move-object v0, v8

    return-object v0

    .line 378
    :cond_5
    move-object v8, v1

    goto :goto_2
.end method

.method public toAsciiUppercase()Lokio/ByteString;
    .locals 13
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 112
    move-object v0, p0

    move-object v8, v0

    move-object v1, v8

    const/4 v8, 0x0

    move v2, v8

    .line 379
    const/4 v8, 0x0

    move v3, v8

    .line 380
    :goto_0
    move v8, v3

    move-object v9, v1

    invoke-virtual {v9}, Lokio/ByteString;->getData$okio()[B

    move-result-object v9

    array-length v9, v9

    if-ge v8, v9, :cond_5

    .line 381
    move-object v8, v1

    invoke-virtual {v8}, Lokio/ByteString;->getData$okio()[B

    move-result-object v8

    move v9, v3

    aget-byte v8, v8, v9

    move v4, v8

    .line 382
    move v8, v4

    const/16 v9, 0x61

    int-to-byte v9, v9

    if-lt v8, v9, :cond_0

    move v8, v4

    const/16 v9, 0x7a

    int-to-byte v9, v9

    if-le v8, v9, :cond_1

    .line 383
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 384
    goto :goto_0

    .line 388
    :cond_1
    move-object v8, v1

    invoke-virtual {v8}, Lokio/ByteString;->getData$okio()[B

    move-result-object v8

    move-object v5, v8

    const/4 v8, 0x0

    move v6, v8

    move-object v8, v5

    move-object v9, v5

    array-length v9, v9

    invoke-static {v8, v9}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v8

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const-string v10, "java.util.Arrays.copyOf(this, size)"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v7, v8

    .line 389
    move-object v8, v7

    move v9, v3

    add-int/lit8 v3, v3, 0x1

    move v10, v4

    const/16 v11, 0x20

    add-int/lit8 v10, v10, -0x20

    int-to-byte v10, v10

    aput-byte v10, v8, v9

    .line 390
    :goto_1
    move v8, v3

    move-object v9, v7

    array-length v9, v9

    if-ge v8, v9, :cond_4

    .line 391
    move-object v8, v7

    move v9, v3

    aget-byte v8, v8, v9

    move v4, v8

    .line 392
    move v8, v4

    const/16 v9, 0x61

    int-to-byte v9, v9

    if-lt v8, v9, :cond_2

    move v8, v4

    const/16 v9, 0x7a

    int-to-byte v9, v9

    if-le v8, v9, :cond_3

    .line 393
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 394
    goto :goto_1

    .line 396
    :cond_3
    move-object v8, v7

    move v9, v3

    move v10, v4

    const/16 v11, 0x20

    add-int/lit8 v10, v10, -0x20

    int-to-byte v10, v10

    aput-byte v10, v8, v9

    .line 397
    add-int/lit8 v3, v3, 0x1

    .line 390
    goto :goto_1

    .line 399
    :cond_4
    new-instance v8, Lokio/ByteString;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v10, v7

    invoke-direct {v9, v10}, Lokio/ByteString;-><init>([B)V

    .line 112
    :goto_2
    move-object v0, v8

    return-object v0

    .line 401
    :cond_5
    move-object v8, v1

    goto :goto_2
.end method

.method public toByteArray()[B
    .locals 9
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 128
    move-object v0, p0

    move-object v5, v0

    move-object v1, v5

    const/4 v5, 0x0

    move v2, v5

    .line 414
    move-object v5, v1

    invoke-virtual {v5}, Lokio/ByteString;->getData$okio()[B

    move-result-object v5

    move-object v3, v5

    const/4 v5, 0x0

    move v4, v5

    move-object v5, v3

    move-object v6, v3

    array-length v6, v6

    invoke-static {v5, v6}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v5

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const-string v7, "java.util.Arrays.copyOf(this, size)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    nop

    .line 128
    move-object v0, v5

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 28
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 184
    move-object/from16 v2, p0

    move-object/from16 v21, v2

    move-object/from16 v3, v21

    const/16 v21, 0x0

    move/from16 v4, v21

    .line 465
    move-object/from16 v21, v3

    invoke-virtual/range {v21 .. v21}, Lokio/ByteString;->getData$okio()[B

    move-result-object v21

    move-object/from16 v5, v21

    const/16 v21, 0x0

    move/from16 v6, v21

    move-object/from16 v21, v5

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    if-nez v21, :cond_0

    const/16 v21, 0x1

    :goto_0
    if-eqz v21, :cond_1

    const-string v21, "[size=0]"

    .line 184
    :goto_1
    move-object/from16 v2, v21

    return-object v2

    .line 465
    :cond_0
    const/16 v21, 0x0

    goto :goto_0

    .line 467
    :cond_1
    move-object/from16 v21, v3

    invoke-virtual/range {v21 .. v21}, Lokio/ByteString;->getData$okio()[B

    move-result-object v21

    const/16 v22, 0x40

    invoke-static/range {v21 .. v22}, Lokio/internal/ByteStringKt;->access$codePointIndexToCharIndex([BI)I

    move-result v21

    move/from16 v5, v21

    .line 468
    move/from16 v21, v5

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_8

    .line 469
    move-object/from16 v21, v3

    invoke-virtual/range {v21 .. v21}, Lokio/ByteString;->getData$okio()[B

    move-result-object v21

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    const/16 v22, 0x40

    move/from16 v0, v21

    move/from16 v1, v22

    if-gt v0, v1, :cond_2

    .line 470
    new-instance v21, Ljava/lang/StringBuilder;

    move-object/from16 v27, v21

    move-object/from16 v21, v27

    move-object/from16 v22, v27

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "[hex="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v22, v3

    invoke-virtual/range {v22 .. v22}, Lokio/ByteString;->hex()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v22, 0x5d

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    goto :goto_1

    .line 472
    :cond_2
    new-instance v21, Ljava/lang/StringBuilder;

    move-object/from16 v27, v21

    move-object/from16 v21, v27

    move-object/from16 v22, v27

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "[size="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v22, v3

    invoke-virtual/range {v22 .. v22}, Lokio/ByteString;->getData$okio()[B

    move-result-object v22

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " hex="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v22, v3

    move-object/from16 v6, v22

    const/16 v22, 0x0

    move/from16 v7, v22

    const/16 v22, 0x40

    move/from16 v8, v22

    move-object/from16 v9, v21

    const/16 v21, 0x0

    move/from16 v10, v21

    .line 473
    const/16 v21, 0x1

    move/from16 v11, v21

    const/16 v21, 0x0

    move/from16 v12, v21

    const/16 v21, 0x0

    move/from16 v13, v21

    .line 474
    move/from16 v21, v8

    move-object/from16 v22, v6

    invoke-virtual/range {v22 .. v22}, Lokio/ByteString;->getData$okio()[B

    move-result-object v22

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-gt v0, v1, :cond_3

    const/16 v21, 0x1

    :goto_2
    move/from16 v11, v21

    const/16 v21, 0x0

    move/from16 v12, v21

    const/16 v21, 0x0

    move/from16 v13, v21

    move/from16 v21, v11

    if-nez v21, :cond_4

    const/16 v21, 0x0

    move/from16 v14, v21

    new-instance v21, Ljava/lang/StringBuilder;

    move-object/from16 v27, v21

    move-object/from16 v21, v27

    move-object/from16 v22, v27

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "endIndex > length("

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v22, v6

    invoke-virtual/range {v22 .. v22}, Lokio/ByteString;->getData$okio()[B

    move-result-object v22

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v22, 0x29

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v13, v21

    new-instance v21, Ljava/lang/IllegalArgumentException;

    move-object/from16 v27, v21

    move-object/from16 v21, v27

    move-object/from16 v22, v27

    move-object/from16 v23, v13

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v21, Ljava/lang/Throwable;

    throw v21

    :cond_3
    const/16 v21, 0x0

    goto :goto_2

    .line 476
    :cond_4
    move/from16 v21, v8

    move/from16 v22, v7

    sub-int v21, v21, v22

    move/from16 v11, v21

    .line 477
    move/from16 v21, v11

    if-ltz v21, :cond_5

    const/16 v21, 0x1

    :goto_3
    move/from16 v12, v21

    const/16 v21, 0x0

    move/from16 v13, v21

    const/16 v21, 0x0

    move/from16 v14, v21

    move/from16 v21, v12

    if-nez v21, :cond_6

    const/16 v21, 0x0

    move/from16 v15, v21

    const-string v21, "endIndex < beginIndex"

    move-object/from16 v14, v21

    new-instance v21, Ljava/lang/IllegalArgumentException;

    move-object/from16 v27, v21

    move-object/from16 v21, v27

    move-object/from16 v22, v27

    move-object/from16 v23, v14

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v21, Ljava/lang/Throwable;

    throw v21

    :cond_5
    const/16 v21, 0x0

    goto :goto_3

    .line 479
    :cond_6
    move/from16 v21, v8

    move-object/from16 v22, v6

    invoke-virtual/range {v22 .. v22}, Lokio/ByteString;->getData$okio()[B

    move-result-object v22

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_7

    .line 480
    move-object/from16 v21, v6

    .line 482
    :goto_4
    move-object/from16 v19, v21

    move-object/from16 v21, v9

    move-object/from16 v22, v19

    .line 472
    invoke-virtual/range {v22 .. v22}, Lokio/ByteString;->hex()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "\u2026]"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 469
    goto/16 :goto_1

    .line 482
    :cond_7
    move-object/from16 v21, v6

    invoke-virtual/range {v21 .. v21}, Lokio/ByteString;->getData$okio()[B

    move-result-object v21

    move-object/from16 v12, v21

    const/16 v21, 0x0

    move/from16 v13, v21

    move-object/from16 v21, v12

    move/from16 v22, v7

    move/from16 v23, v8

    invoke-static/range {v21 .. v23}, Lkotlin/collections/ArraysKt;->copyOfRange([BII)[B

    move-result-object v21

    move-object/from16 v18, v21

    move-object/from16 v21, v18

    move-object/from16 v20, v21

    new-instance v21, Lokio/ByteString;

    move-object/from16 v27, v21

    move-object/from16 v21, v27

    move-object/from16 v22, v27

    move-object/from16 v23, v20

    invoke-direct/range {v22 .. v23}, Lokio/ByteString;-><init>([B)V

    goto :goto_4

    .line 483
    :cond_8
    move-object/from16 v21, v3

    invoke-virtual/range {v21 .. v21}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v6, v21

    .line 484
    move-object/from16 v21, v6

    move-object/from16 v8, v21

    const/16 v21, 0x0

    move/from16 v10, v21

    const/16 v21, 0x0

    move/from16 v11, v21

    move-object/from16 v21, v8

    move-object/from16 v27, v21

    move-object/from16 v21, v27

    move-object/from16 v22, v27

    if-nez v22, :cond_9

    new-instance v22, Lkotlin/TypeCastException;

    move-object/from16 v27, v22

    move-object/from16 v22, v27

    move-object/from16 v23, v27

    const-string v24, "null cannot be cast to non-null type java.lang.String"

    invoke-direct/range {v23 .. v24}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v22

    :cond_9
    move/from16 v22, v10

    move/from16 v23, v5

    invoke-virtual/range {v21 .. v23}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v27, v21

    move-object/from16 v21, v27

    move-object/from16 v22, v27

    const-string v23, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static/range {v22 .. v23}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 489
    const-string v22, "\\"

    const-string v23, "\\\\"

    const/16 v24, 0x0

    const/16 v25, 0x4

    const/16 v26, 0x0

    invoke-static/range {v21 .. v26}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    .line 488
    const-string v22, "\n"

    const-string v23, "\\n"

    const/16 v24, 0x0

    const/16 v25, 0x4

    const/16 v26, 0x0

    invoke-static/range {v21 .. v26}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    .line 487
    const-string v22, "\r"

    const-string v23, "\\r"

    const/16 v24, 0x0

    const/16 v25, 0x4

    const/16 v26, 0x0

    invoke-static/range {v21 .. v26}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    .line 484
    move-object/from16 v7, v21

    .line 492
    move/from16 v21, v5

    move-object/from16 v22, v6

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_a

    .line 493
    new-instance v21, Ljava/lang/StringBuilder;

    move-object/from16 v27, v21

    move-object/from16 v21, v27

    move-object/from16 v22, v27

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "[size="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v22, v3

    invoke-virtual/range {v22 .. v22}, Lokio/ByteString;->getData$okio()[B

    move-result-object v22

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " text="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v22, v7

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "\u2026]"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_1

    .line 495
    :cond_a
    new-instance v21, Ljava/lang/StringBuilder;

    move-object/from16 v27, v21

    move-object/from16 v21, v27

    move-object/from16 v22, v27

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "[text="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v22, v7

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v22, 0x5d

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 492
    nop

    goto/16 :goto_1
.end method

.method public utf8()Ljava/lang/String;
    .locals 6
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 65
    move-object v0, p0

    move-object v4, v0

    move-object v1, v4

    const/4 v4, 0x0

    move v2, v4

    .line 339
    move-object v4, v1

    invoke-virtual {v4}, Lokio/ByteString;->getUtf8$okio()Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 340
    move-object v4, v3

    if-nez v4, :cond_0

    .line 342
    move-object v4, v1

    invoke-virtual {v4}, Lokio/ByteString;->internalArray$okio()[B

    move-result-object v4

    invoke-static {v4}, Lokio/-Platform;->toUtf8String([B)Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 343
    move-object v4, v1

    move-object v5, v3

    invoke-virtual {v4, v5}, Lokio/ByteString;->setUtf8$okio(Ljava/lang/String;)V

    .line 345
    :cond_0
    move-object v4, v3

    .line 65
    move-object v0, v4

    return-object v0
.end method

.method public write(Ljava/io/OutputStream;)V
    .locals 4
    .param p1    # Ljava/io/OutputStream;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    const-string v3, "out"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lokio/ByteString;->data:[B

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V

    .line 139
    return-void
.end method

.method public write$okio(Lokio/Buffer;II)V
    .locals 8
    .param p1    # Lokio/Buffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v1

    const-string v5, "buffer"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    move-object v4, v0

    move-object v5, v1

    move v6, v2

    move v7, v3

    invoke-static {v4, v5, v6, v7}, Lokio/internal/ByteStringKt;->commonWrite(Lokio/ByteString;Lokio/Buffer;II)V

    return-void
.end method
